@interface MTLTextureReferenceTypeInternal
- (BOOL)isEqual:(id)equal;
- (MTLTextureReferenceTypeInternal)initWithDataType:(unint64_t)type textureType:(unint64_t)textureType access:(unint64_t)access isDepthTexture:(BOOL)texture;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLTextureReferenceTypeInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLTextureReferenceTypeInternal;
  [(MTLTextureReferenceTypeInternal *)&v2 dealloc];
}

- (MTLTextureReferenceTypeInternal)initWithDataType:(unint64_t)type textureType:(unint64_t)textureType access:(unint64_t)access isDepthTexture:(BOOL)texture
{
  v11.receiver = self;
  v11.super_class = MTLTextureReferenceTypeInternal;
  result = [(MTLTextureReferenceTypeInternal *)&v11 init];
  result->_dataType = 58;
  result->_textureDataType = type;
  result->_textureType = textureType;
  result->_access = access;
  result->_isDepthTexture = texture;
  return result;
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v11[15] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v11[0] = v5;
  v11[1] = @"DataType =";
  v11[2] = MTLDataTypeString(self->_dataType);
  v11[3] = v5;
  v11[4] = @"TextureDataType =";
  v11[5] = MTLDataTypeString(self->_textureDataType);
  v11[6] = v5;
  v11[7] = @"TextureType =";
  v11[8] = MTLTextureTypeString(self->_textureType);
  v11[9] = v5;
  v11[10] = @"Access =";
  access = self->_access;
  if (access > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E6EECDC0[access];
  }

  v11[11] = v8;
  v11[12] = v5;
  v11[13] = @"IsDepthTexture =";
  v11[14] = [MEMORY[0x1E696AD98] numberWithBool:self->_isDepthTexture];
  result = [v6 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 15), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_dataType == *(equal + 1) && self->_textureDataType == *(equal + 2) && self->_textureType == *(equal + 3) && self->_access == *(equal + 4) && self->_isDepthTexture == *(equal + 40);
}

@end