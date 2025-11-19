@interface MTLTextureViewDescriptor
+ (id)textureViewDescriptorWithTexture:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MTLTextureViewDescriptor)init;
- (_NSRange)levelRange;
- (_NSRange)levels;
- (_NSRange)sliceRange;
- (_NSRange)slices;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
@end

@implementation MTLTextureViewDescriptor

- (MTLTextureViewDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLTextureViewDescriptor;
  result = [(MTLTextureViewDescriptor *)&v3 init];
  if (result)
  {
    *&result->_private.pixelFormat = xmmword_185DE1D50;
    result->_private.swizzle = 84148994;
    result->_private.levels = xmmword_185DB7AF0;
    result->_private.slices = xmmword_185DB7AF0;
    result->_private.writeAccessPattern = 0;
    result->_private.resourceIndex = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && memcmp(&self->_private, a3 + 8, 0x48uLL) == 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 8) = *&self->_private.pixelFormat;
    levels = self->_private.levels;
    slices = self->_private.slices;
    v7 = *&self->_private.writeAccessPattern;
    *(result + 9) = self->_private.resourceIndex;
    *(result + 56) = v7;
    *(result + 40) = slices;
    *(result + 24) = levels;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v12[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLTextureViewDescriptor;
  v6 = [(MTLTextureViewDescriptor *)&v11 description];
  v12[0] = v4;
  v12[1] = @"pixelFormat =";
  v12[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.pixelFormat)];
  v12[3] = v4;
  v12[4] = @"textureType =";
  v12[5] = MTLTextureTypeString(self->_private.textureType);
  v12[6] = v4;
  v12[7] = @"levels =";
  v12[8] = NSStringFromRange(self->_private.levels);
  v12[9] = v4;
  v12[10] = @"slices =";
  v12[11] = NSStringFromRange(self->_private.slices);
  v12[12] = v4;
  v12[13] = @"writeAccessPattern =";
  writeAccessPattern = self->_private.writeAccessPattern;
  if (writeAccessPattern > 2)
  {
    v8 = @"Invalid";
  }

  else
  {
    v8 = *(&off_1E6EEB7E8 + writeAccessPattern);
  }

  v12[14] = v8;
  v12[15] = v4;
  v12[16] = @"swizzle =";
  v12[17] = MTLTextureSwizzleString(self->_private.swizzle);
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 18), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (_NSRange)levelRange
{
  length = self->_private.levels.length;
  location = self->_private.levels.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)sliceRange
{
  length = self->_private.slices.length;
  location = self->_private.slices.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)levels
{
  length = self->_private.levels.length;
  location = self->_private.levels.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)slices
{
  length = self->_private.slices.length;
  location = self->_private.slices.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)textureViewDescriptorWithTexture:(id)a3
{
  v4 = objc_alloc_init(MTLTextureViewDescriptor);
  if ([a3 textureType] == 5)
  {
    -[MTLTextureViewDescriptor setPixelFormat:](v4, "setPixelFormat:", [a3 pixelFormat]);
    -[MTLTextureViewDescriptor setTextureType:](v4, "setTextureType:", [a3 textureType]);
    -[MTLTextureViewDescriptor setLevels:](v4, "setLevels:", 0, [a3 mipmapLevelCount]);
LABEL_4:
    v6 = 6 * [a3 arrayLength];
    goto LABEL_6;
  }

  v5 = [a3 textureType];
  -[MTLTextureViewDescriptor setPixelFormat:](v4, "setPixelFormat:", [a3 pixelFormat]);
  -[MTLTextureViewDescriptor setTextureType:](v4, "setTextureType:", [a3 textureType]);
  -[MTLTextureViewDescriptor setLevels:](v4, "setLevels:", 0, [a3 mipmapLevelCount]);
  if (v5 == 6)
  {
    goto LABEL_4;
  }

  v6 = [a3 arrayLength];
LABEL_6:
  [(MTLTextureViewDescriptor *)v4 setSlices:0, v6];
  v7 = objc_opt_respondsToSelector();
  v8 = 0;
  if (v7)
  {
    v8 = [a3 writeAccessPattern];
  }

  [(MTLTextureViewDescriptor *)v4 setWriteAccessPattern:v8];
  -[MTLTextureViewDescriptor setSwizzle:](v4, "setSwizzle:", [a3 swizzle]);
  return v4;
}

@end