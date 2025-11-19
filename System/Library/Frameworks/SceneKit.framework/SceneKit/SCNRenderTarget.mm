@interface SCNRenderTarget
- (BOOL)matchesDescription:(id *)a3 size:(unint64_t)a4 arrayLength:;
- (SCNRenderTarget)initWithDescription:(id *)a3 size:(unint64_t)a4 arrayLength:;
- (id)ciImage;
- (id)description;
- (id)textureForSliceIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setTexture:(id)a3;
@end

@implementation SCNRenderTarget

- (SCNRenderTarget)initWithDescription:(id *)a3 size:(unint64_t)a4 arrayLength:
{
  v6 = v4;
  v9.receiver = self;
  v9.super_class = SCNRenderTarget;
  result = [(SCNRenderTarget *)&v9 init];
  if (result)
  {
    result->_description = *a3;
    *result->_size = v6;
    result->_arrayLength = a4;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNRenderTarget;
  [(SCNRenderTarget *)&v3 dealloc];
}

- (id)description
{
  result = [MEMORY[0x277CCACA8] stringWithFormat:@"Format: %@ ; Size: %gx%g[%d] ; Texture: <%p> ; [rc:%ld/ts:%ld]\n", C3DRenderBufferFormatToString(self->_description.format), COERCE_FLOAT(*self->_size), COERCE_FLOAT(HIDWORD(*self->_size)), LOBYTE(self->_arrayLength), self->_texture, self->_referenceCount, self->_timeStamp];
  if (self->_name)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Name: %@ ; %@", self->_name, result];
  }

  return result;
}

- (BOOL)matchesDescription:(id *)a3 size:(unint64_t)a4 arrayLength:
{
  v5 = vceq_f32(*self->_size, v4);
  result = (vpmin_u32(v5, v5).u32[0] & 0x80000000) != 0 && self->_description.format == a3->var0 && self->_description.sampleCount == a3->var1 && ((*(a3 + 3) ^ *(&self->_description + 3)) & 5) == 0 && (((*(a3 + 3) ^ *(&self->_description + 3)) & 0x30) == 0 ? (v6 = self->_description.textureUsage == a3->var2) : (v6 = 0), v6) && self->_arrayLength == a4;
  return result;
}

- (void)setTexture:(id)a3
{
  texture = self->_texture;
  if (texture != a3)
  {

    v6 = a3;
    self->_texture = v6;
    if (self->_name)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [self->_texture setLabel:self->_name];
    }

    self->_ciImage = 0;
  }
}

- (id)textureForSliceIndex:(unint64_t)a3
{
  sliceTextures = self->_sliceTextures;
  if (!sliceTextures)
  {
    texture = self->_texture;
    if ([texture textureType] != 3 && objc_msgSend(texture, "textureType") != 5)
    {
      return self->_texture;
    }

    sliceTextures = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(texture, "arrayLength")}];
    if ([texture arrayLength])
    {
      v7 = 0;
      do
      {
        v8 = [texture newTextureViewWithPixelFormat:objc_msgSend(texture textureType:"pixelFormat") levels:2 slices:0, 1, v7, 1];
        [(NSArray *)sliceTextures setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (v7 < [texture arrayLength]);
    }

    self->_sliceTextures = sliceTextures;
    if (!sliceTextures)
    {
      [SCNRenderTarget textureForSliceIndex:];
    }
  }

  return [(NSArray *)sliceTextures objectAtIndexedSubscript:a3];
}

- (id)ciImage
{
  result = self->_ciImage;
  if (!result)
  {
    if (self->_texture)
    {
      result = [objc_alloc(MEMORY[0x277CBF758]) initWithMTLTexture:self->_texture options:0];
      self->_ciImage = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end