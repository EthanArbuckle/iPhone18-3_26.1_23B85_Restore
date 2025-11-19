@interface GLKTextureInfo
- (GLKTextureInfo)initWithTexture:(id)a3 textureName:(unsigned int)a4;
- (GLKTextureInfo)initWithTextureTXR:(id)a3 textureName:(unsigned int)a4;
- (id)description;
- (void)dealloc;
@end

@implementation GLKTextureInfo

- (GLKTextureInfo)initWithTexture:(id)a3 textureName:(unsigned int)a4
{
  v15.receiver = self;
  v15.super_class = GLKTextureInfo;
  v6 = [(GLKTextureInfo *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->name = a4;
  v6->target = [a3 bindTarget];
  v7->width = [a3 width];
  v7->height = [a3 height];
  v7->depth = 1;
  if ([a3 hasAlpha])
  {
    if ([a3 hasPremultipliedAlpha])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v7->alphaState = v8;
  if ([a3 orientation] == 1)
  {
    v9 = 1;
  }

  else
  {
    if ([a3 orientation] != 4)
    {
      v7->textureOrigin = 0;
      goto LABEL_13;
    }

    v9 = 2;
  }

  v7->textureOrigin = v9;
LABEL_13:
  v7->containsMipmaps = [a3 isMipmapped];
  v7->arrayLength = 1;
  v10 = [a3 numMipMapLevels];
  v7->mimapLevelCount = v10;
  if (v10 == 1 && [a3 requestIssuedForMipmapGeneration])
  {
    width = v7->width;
    if (width <= v7->height)
    {
      width = v7->height;
    }

    v12 = __clz(width) ^ 0x1F;
    if (width)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1;
    }

    v7->mimapLevelCount = v13;
  }

  return v7;
}

- (GLKTextureInfo)initWithTextureTXR:(id)a3 textureName:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = GLKTextureInfo;
  v6 = [(GLKTextureInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->name = a4;
    v6->target = [a3 target];
    v7->width = [a3 width];
    v7->height = [a3 height];
    v7->depth = [a3 depth];
    v7->lossyCompressedSource = [a3 lossyCompressedSource];
    v7->alphaState = [a3 hasAlpha];
    v7->textureOrigin = 0;
    v7->containsMipmaps = [a3 mipmapLevelCount] > 1;
    v7->arrayLength = [a3 arrayLength];
    v7->mimapLevelCount = [a3 mipmapLevelCount];
  }

  return v7;
}

- (id)description
{
  if ([(GLKTextureInfo *)self target]== 3553)
  {
    v3 = @"GL_TEXTURE_2D";
  }

  else if ([(GLKTextureInfo *)self target]== 34067)
  {
    v3 = @"GL_TEXTURE_CUBE_MAP";
  }

  else
  {
    v3 = @"Unknown / Invalid";
  }

  if ([(GLKTextureInfo *)self alphaState])
  {
    if ([(GLKTextureInfo *)self alphaState]== GLKTextureInfoAlphaStateNonPremultiplied)
    {
      v4 = @"GLKTextureInfoAlphaStateNonPremultiplied";
    }

    else if ([(GLKTextureInfo *)self alphaState]== GLKTextureInfoAlphaStatePremultiplied)
    {
      v4 = @"GLKTextureInfoAlphaStatePremultiplied";
    }

    else
    {
      v4 = @"Unknown / Invalid";
    }
  }

  else
  {
    v4 = @"GLKTextureInfoAlphaStateNone";
  }

  if ([(GLKTextureInfo *)self textureOrigin])
  {
    if ([(GLKTextureInfo *)self textureOrigin]== GLKTextureInfoOriginTopLeft)
    {
      v5 = @"GLKTextureInfoOriginTopLeft";
    }

    else if ([(GLKTextureInfo *)self textureOrigin]== GLKTextureInfoOriginBottomLeft)
    {
      v5 = @"GLKTextureInfoOriginBottomLeft";
    }

    else
    {
      v5 = @"Unknown / Invaid";
    }
  }

  else
  {
    v5 = @"GLKTextureInfoOriginUnknown";
  }

  v7.receiver = self;
  v7.super_class = GLKTextureInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ \nname=%d, \ntarget=%@, \nwidth=%d, \nheight=%d, \nalphaState=%@, \ntextureOrigin=%@, \ncontainsMipmaps=%d", -[GLKTextureInfo description](&v7, sel_description), -[GLKTextureInfo name](self, "name"), v3, -[GLKTextureInfo width](self, "width"), -[GLKTextureInfo height](self, "height"), v4, v5, -[GLKTextureInfo containsMipmaps](self, "containsMipmaps")];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKTextureInfo;
  [(GLKTextureInfo *)&v2 dealloc];
}

@end