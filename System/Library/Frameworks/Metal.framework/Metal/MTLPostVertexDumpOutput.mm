@interface MTLPostVertexDumpOutput
- (BOOL)isEqual:(id)a3;
- (MTLPostVertexDumpOutput)initWithAirMDType:(id)a3 dataType:(unint64_t)a4 pixelFormat:(unint64_t)a5 aluType:(unint64_t)a6 name:(id)a7 offset:(unint64_t)a8;
- (id)description;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
- (void)dealloc;
@end

@implementation MTLPostVertexDumpOutput

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLPostVertexDumpOutput;
  [(MTLPostVertexDumpOutput *)&v3 dealloc];
}

- (MTLPostVertexDumpOutput)initWithAirMDType:(id)a3 dataType:(unint64_t)a4 pixelFormat:(unint64_t)a5 aluType:(unint64_t)a6 name:(id)a7 offset:(unint64_t)a8
{
  v18.receiver = self;
  v18.super_class = MTLPostVertexDumpOutput;
  v14 = [(MTLPostVertexDumpOutput *)&v18 init];
  v14->_airMDType = a3;
  v15 = a3;
  v14->_dataType = a4;
  v14->_pixelFormat = a5;
  v14->_aluType = a6;
  v14->_name = a7;
  v16 = a7;
  v14->_offset = a8;
  return v14;
}

- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4
{
  v15[18] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MTLPostVertexDumpOutput;
  v7 = [(MTLPostVertexDumpOutput *)&v14 description];
  v15[0] = v5;
  v15[1] = @"airMDType =";
  airMDType = self->_airMDType;
  dataType = self->_dataType;
  if (!airMDType)
  {
    airMDType = @"<none>";
  }

  v15[2] = airMDType;
  v15[3] = v5;
  v15[4] = @"dataType =";
  v15[5] = MTLDataTypeString(dataType);
  v15[6] = v5;
  v15[7] = @"pixelFormat =";
  v15[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_pixelFormat)];
  v15[9] = v5;
  v15[10] = @"aluType =";
  v15[11] = MTLDataTypeString(self->_aluType);
  v15[12] = v5;
  name = self->_name;
  offset = self->_offset;
  if (!name)
  {
    name = @"<none>";
  }

  v15[13] = @"name =";
  v15[14] = name;
  v15[15] = v5;
  v15[16] = @"offset =";
  v15[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:offset];
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 18), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLPostVertexDumpOutput *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  v6 = [objc_msgSend(a3 "airMDType")];
  if (!v6)
  {
    return v6;
  }

  if ([a3 dataType] == self->_dataType && objc_msgSend(a3, "pixelFormat") == self->_pixelFormat)
  {
    v6 = [objc_msgSend(a3 "name")];
    if (v6)
    {
      LOBYTE(v6) = [a3 offset] == self->_offset;
    }
  }

  else
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end