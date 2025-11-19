@interface MTLTextureReferenceTypeInternal
- (BOOL)isEqual:(id)a3;
- (MTLTextureReferenceTypeInternal)initWithDataType:(unint64_t)a3 textureType:(unint64_t)a4 access:(unint64_t)a5 isDepthTexture:(BOOL)a6;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
- (void)dealloc;
@end

@implementation MTLTextureReferenceTypeInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLTextureReferenceTypeInternal;
  [(MTLTextureReferenceTypeInternal *)&v2 dealloc];
}

- (MTLTextureReferenceTypeInternal)initWithDataType:(unint64_t)a3 textureType:(unint64_t)a4 access:(unint64_t)a5 isDepthTexture:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = MTLTextureReferenceTypeInternal;
  result = [(MTLTextureReferenceTypeInternal *)&v11 init];
  result->_dataType = 58;
  result->_textureDataType = a3;
  result->_textureType = a4;
  result->_access = a5;
  result->_isDepthTexture = a6;
  return result;
}

- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4
{
  v11[15] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_dataType == *(a3 + 1) && self->_textureDataType == *(a3 + 2) && self->_textureType == *(a3 + 3) && self->_access == *(a3 + 4) && self->_isDepthTexture == *(a3 + 40);
}

@end