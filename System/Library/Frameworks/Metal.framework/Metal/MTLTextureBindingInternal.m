@interface MTLTextureBindingInternal
- (BOOL)isEqual:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
@end

@implementation MTLTextureBindingInternal

- (id)formattedDescription:(unint64_t)a3
{
  v11[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLTextureBindingInternal;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:a3];
  v11[0] = v5;
  v11[1] = @"TextureType =";
  v11[2] = MTLTextureTypeString(*(self + 84) & 0x7FFF);
  v11[3] = v5;
  v11[4] = @"TextureDataType =";
  v11[5] = MTLDataTypeString(self->_textureDataType);
  v11[6] = v5;
  v11[7] = @"IsDepthTexture =";
  v11[8] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self + 169) >> 7];
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 9), "componentsJoinedByString:", @" "];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((*(a3 + 84) ^ *(self + 84)) & 0x7FFF) != 0 || ((*(a3 + 169) ^ *(self + 169)) & 0x80) != 0 || self->_textureDataType != *(a3 + 85))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLTextureBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:a3];
}

@end