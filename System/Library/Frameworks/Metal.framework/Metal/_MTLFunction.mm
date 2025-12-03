@interface _MTLFunction
- (_MTLFunction)initWithName:(id)name type:(unint64_t)type libraryData:(void *)data device:(id)device;
- (id)bitcodeData;
- (id)formattedDescription:(unint64_t)description;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection functionReflection:(id)functionReflection;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library;
- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives;
- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library;
- (void)dealloc;
- (void)reflectionWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setVendorPrivate:(id)private;
@end

@implementation _MTLFunction

- (void)dealloc
{
  self->_device = 0;

  self->_vendorPrivate = 0;
  self->_name = 0;

  self->_vertexAttributes = 0;
  self->_arguments = 0;

  self->_returnType = 0;
  libraryData = self->_libraryData;
  if (libraryData)
  {
    (*(*libraryData + 24))(libraryData);
    self->_libraryData = 0;
  }

  self->_unpackedFilePath = 0;
  debugInstrumentationData = self->_debugInstrumentationData;
  if (debugInstrumentationData)
  {
  }

  v5.receiver = self;
  v5.super_class = _MTLFunction;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (id)bitcodeData
{
  bitcodeDataInternal = [(_MTLFunction *)self bitcodeDataInternal];

  return bitcodeDataInternal;
}

- (_MTLFunction)initWithName:(id)name type:(unint64_t)type libraryData:(void *)data device:(id)device
{
  if (name)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLFunction *)isKindOfClass initWithName:v14 type:v15 libraryData:v16 device:v17, v18, v19, v20, v33.receiver];
    }
  }

  else
  {
    [(_MTLFunction *)self initWithName:a2 type:0 libraryData:type device:data, device, v6, v7, v33.receiver];
  }

  if (device)
  {
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    if ((v21 & 1) == 0)
    {
      [(_MTLFunction *)v21 initWithName:v22 type:v23 libraryData:v24 device:v25, v26, v27, v28, v33.receiver];
    }
  }

  else
  {
    [(_MTLFunction *)isKindOfClass initWithName:v14 type:v15 libraryData:v16 device:v17, v18, v19, v20, v33.receiver];
  }

  if (type - 1 >= 8)
  {
    MTLReportFailure(0, "validateMTLFunctionType", 11075, @"type is not a valid MTLFunctionType.", v25, v26, v27, v28, v33.receiver);
  }

  v33.receiver = self;
  v33.super_class = _MTLFunction;
  v29 = [(_MTLObjectWithLabel *)&v33 init];
  v29->_device = device;
  deviceCopy = device;
  v29->_libraryData = data;
  (*(*data + 16))(data);
  v29->_vendorPrivate = 0;
  v29->_functionType = type;
  v29->_vertexAttributes = 0;
  v29->_returnType = 0;
  v29->_arguments = 0;
  v29->_name = name;
  nameCopy = name;
  return v29;
}

- (void)setVendorPrivate:(id)private
{
  privateCopy = private;

  self->_vendorPrivate = private;
}

- (id)formattedDescription:(unint64_t)description
{
  v20[12] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 5 withString:@" " startingAtIndex:0];
  stageInputAttributes = [(_MTLFunction *)self stageInputAttributes];
  if (stageInputAttributes)
  {
    v8 = [stageInputAttributes componentsJoinedByString:@" "];
    v9 = [objc_msgSend(v8 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")), "componentsJoinedByString:", v6}];
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = _MTLFunction;
  v11 = [(_MTLFunction *)&v19 description];
  name = self->_name;
  v20[0] = v5;
  v20[1] = @"name =";
  if (name)
  {
    v13 = name;
  }

  else
  {
    v13 = @"<none>";
  }

  v20[2] = v13;
  v20[3] = v5;
  v20[4] = @"device =";
  device = self->_device;
  if (device)
  {
    v15 = [(MTLDevice *)device formattedDescription:description + 4];
  }

  else
  {
    v15 = @"<null>";
  }

  v20[5] = v15;
  v20[6] = v5;
  v20[7] = @"functionType =";
  v20[8] = MTLFunctionTypeString(self->_functionType);
  v20[9] = v5;
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = @"<none>";
  }

  v20[10] = @"attributes:";
  v20[11] = v16;
  result = [v10 stringWithFormat:@"%@%@", v11, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 12), "componentsJoinedByString:", @" "];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  compiler = [(MTLDevice *)self->_device compiler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53___MTLFunction_reflectionWithOptions_binaryArchives___block_invoke;
  v10[3] = &unk_1E6EEC0A0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = options;
  [compiler reflectionWithFunction:self options:options sync:1 binaryArchives:archives completionHandler:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  compiler = [(MTLDevice *)self->_device compiler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___MTLFunction_reflectionWithOptions_pipelineLibrary___block_invoke;
  v10[3] = &unk_1E6EEC0A0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = options;
  [compiler reflectionWithFunction:self options:options sync:1 pipelineLibrary:library completionHandler:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)reflectionWithOptions:(unint64_t)options completionHandler:(id)handler
{
  compiler = [(MTLDevice *)self->_device compiler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___MTLFunction_reflectionWithOptions_completionHandler___block_invoke;
  v8[3] = &unk_1E6EEC0C8;
  v8[5] = handler;
  v8[6] = options;
  v8[4] = self;
  [compiler reflectionWithFunction:self options:options sync:0 completionHandler:v8];
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library
{
  v8 = [(_MTLFunction *)self reflectionWithOptions:3 pipelineLibrary:library];

  return [(_MTLFunction *)self newArgumentEncoderWithBufferIndex:index reflection:reflection functionReflection:v8];
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives
{
  v8 = [(_MTLFunction *)self reflectionWithOptions:3 binaryArchives:archives];

  return [(_MTLFunction *)self newArgumentEncoderWithBufferIndex:index reflection:reflection functionReflection:v8];
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection functionReflection:(id)functionReflection
{
  if (![objc_msgSend(functionReflection "arguments")])
  {
    goto LABEL_6;
  }

  v13 = 0;
  while (1)
  {
    v14 = [objc_msgSend(functionReflection "arguments")];
    if (![v14 type] && objc_msgSend(v14, "index") == index)
    {
      break;
    }

    if (++v13 >= [objc_msgSend(functionReflection "arguments")])
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = -[MTLDevice newIndirectArgumentBufferLayoutWithStructType:](self->_device, "newIndirectArgumentBufferLayoutWithStructType:", [v17 bufferStructType]);
    [v19 setStructType:objc_msgSend(v18 withDevice:{"bufferStructType"), self->_device}];
    v15 = [(MTLDevice *)self->_device newArgumentEncoderWithLayout:v19];
    if (reflection)
    {
      *reflection = v18;
      _MTLFixIABReflectionOffsetsWithLayout(v18, v19, self->_device);
    }

    v20 = v18;
  }

  else
  {
LABEL_6:
    MTLReportFailure(0, "[_MTLFunction newArgumentEncoderWithBufferIndex:reflection:functionReflection:]", 11454, @"bufferIndex %lu does not identify an argument buffer", v9, v10, v11, v12, index);
    return 0;
  }

  return v15;
}

@end