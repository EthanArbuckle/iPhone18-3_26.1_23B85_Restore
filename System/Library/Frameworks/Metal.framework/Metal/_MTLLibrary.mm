@interface _MTLLibrary
- (BOOL)getFunctionAliasAndNameForHash:(id *)hash functionName:(id *)name alias:(id *)alias;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (NSArray)externFunctionNames;
- (NSArray)functionNames;
- (NSData)bitcodeData;
- (_MTLLibrary)initWithLibraryContainer:(MTLLibraryContainer *)container device:(id)device;
- (id)formattedDescription:(unint64_t)description;
- (id)newExternFunctionWithName:(id)name;
- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error;
- (id)newFunctionWithHash:(id *)hash;
- (id)newFunctionWithName:(id)name;
- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache specializedName:(id)specializedName error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error;
- (id)newFunctionWithNameInternal:(id)internal;
- (id)newSpecializedFunctionWithDescriptorInternal:(id)internal destinationArchive:(id)archive functionCache:(id)cache error:(id *)error;
- (id)newSpecializedFunctionWithHash:(id *)hash libraryPath:(id)path;
- (id)newStitchedFunctionWithHash:(id *)hash;
- (id)reflectionForFunctionWithName:(id)name;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache specializedName:(id)specializedName completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler;
@end

@implementation _MTLLibrary

- (NSArray)functionNames
{
  cacheEntry = self->_cacheEntry;
  result = cacheEntry->var5;
  if (!result)
  {
    return (*(*cacheEntry->var3 + 40))();
  }

  return result;
}

- (void)dealloc
{
  self->_functionDictionary = 0;
  libraryData = self->_libraryData;
  if (libraryData)
  {
    (*(*libraryData + 24))(libraryData);
    self->_libraryData = 0;
  }

  if (self->_cacheEntry)
  {
    [(MTLDevice *)self->_device releaseCacheEntry:?];
  }

  self->_device = 0;
  v4.receiver = self;
  v4.super_class = _MTLLibrary;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (id)newFunctionWithHash:(id *)hash
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v6 = (*(*self->_libraryData + 168))(self->_libraryData, hash, self->_device);
  os_unfair_lock_unlock(v5);
  return v6;
}

- (id)newSpecializedFunctionWithHash:(id *)hash libraryPath:(id)path
{
  v7 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v7);
  v8 = (*(*self->_libraryData + 176))(self->_libraryData, hash, path, self->_device);
  os_unfair_lock_unlock(v7);
  return v8;
}

- (id)newStitchedFunctionWithHash:(id *)hash
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v6 = (*(*self->_libraryData + 184))(self->_libraryData, hash, self->_device);
  os_unfair_lock_unlock(v5);
  return v6;
}

- (BOOL)getFunctionAliasAndNameForHash:(id *)hash functionName:(id *)name alias:(id *)alias
{
  v6 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v6);
  v7 = (*(*self->_libraryData + 272))();
  os_unfair_lock_unlock(v6);
  return v7;
}

- (NSArray)externFunctionNames
{
  cacheEntry = self->_cacheEntry;
  result = cacheEntry->var6;
  if (!result)
  {
    return (*(*cacheEntry->var3 + 48))();
  }

  return result;
}

- (NSData)bitcodeData
{
  v7 = 0;
  v8 = 0;
  (*(*self->_libraryData + 256))(self->_libraryData, &v8, &v7);
  if (!v7)
  {
    return 0;
  }

  v3 = (*(*self->_libraryData + 32))(self->_libraryData);
  v4 = v7 + v8;
  if (v4 <= [v3 length])
  {
    v5 = [v3 subdataWithRange:{v8, v7}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newFunctionWithNameInternal:(id)internal
{
  if (internal)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLLibrary *)isKindOfClass newFunctionWithNameInternal:v11, v12, v13, v14, v15, v16, v17, v25];
    }
  }

  else
  {
    [(_MTLLibrary *)self newFunctionWithNameInternal:a2, 0, v3, v4, v5, v6, v7, v25];
  }

  v18 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v18);
  v19 = [(NSMutableDictionary *)self->_functionDictionary objectForKey:internal];
  if (!v19)
  {
    device = self->_device;
    v19 = MTLLibraryContainer::functionWithName(self->_cacheEntry, internal);
  }

  v21 = v19;
  var0 = self->_cacheEntry->var0;
  if (var0)
  {
    v23 = v19 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    MTLPipelineCollection::addFunction(var0, v19, self->_libraryData, 0);
  }

  os_unfair_lock_unlock(v18);
  return v19;
}

- (id)newExternFunctionWithName:(id)name
{
  v4 = [(_MTLLibrary *)self newFunctionWithNameInternal:?];
  v5 = v4;
  if (v4 && [v4 functionType] != 4)
  {
    [(_MTLLibrary *)v5 newExternFunctionWithName:name];
  }

  return v5;
}

- (id)newFunctionWithName:(id)name
{
  v4 = [(_MTLLibrary *)self newFunctionWithNameInternal:?];
  v5 = v4;
  if (v4 && [v4 functionType] == 4)
  {
    [(_MTLLibrary *)name newFunctionWithName:v6, v7, v8, v9, v10, v11, v12];
  }

  return v5;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache specializedName:(id)specializedName error:(id *)error
{
  v13 = [(_MTLLibrary *)self newFunctionWithName:?];
  if (v13)
  {
    v14 = v13;
    needsFunctionConstantValues = [v13 needsFunctionConstantValues];
    if (specializedName || needsFunctionConstantValues)
    {
      v20 = objc_opt_new();
      [v20 setName:name];
      if (specializedName)
      {
        [v20 setSpecializedName:specializedName];
      }

      if (values)
      {
        [v20 setConstantValues:values];
      }

      v17 = [v14 newSpecializedFunctionWithDescriptor:v20 destinationArchive:0 functionCache:cache error:error];
      var0 = self->_cacheEntry->var0;
      if (var0)
      {
        v22 = v17 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        MTLPipelineCollection::addSpecializedFunction(var0, v14, v17, self, v20);
      }
    }

    else
    {
      v16 = self->_cacheEntry->var0;
      if (v16)
      {
        MTLPipelineCollection::addFunction(v16, v14, self->_libraryData, 0);
      }

      return v14;
    }
  }

  else
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", name];
    if (error)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:name forKey:*MEMORY[0x1E696A578]];
      v17 = 0;
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v19];
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error
{
  functionCache = [library functionCache];

  return [(_MTLLibrary *)self newFunctionWithName:name constantValues:values functionCache:functionCache error:error];
}

- (void)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache specializedName:(id)specializedName completionHandler:(id)handler
{
  v13 = objc_opt_new();
  [v13 setName:name];
  if (specializedName)
  {
    [v13 setSpecializedName:specializedName];
  }

  if (values)
  {
    [v13 setConstantValues:values];
  }

  [(_MTLLibrary *)self newFunctionWithDescriptor:v13 destinationArchive:0 functionCache:cache completionHandler:handler];
}

- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler
{
  functionCache = [library functionCache];

  [(_MTLLibrary *)self newFunctionWithName:name constantValues:values functionCache:functionCache specializedName:0 completionHandler:handler];
}

- (void)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive functionCache:(id)cache completionHandler:(id)handler
{
  v10 = -[_MTLLibrary newFunctionWithName:](self, "newFunctionWithName:", [descriptor name]);
  if (v10)
  {
    v11 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___MTLLibrary_newFunctionWithDescriptor_destinationArchive_functionCache_completionHandler___block_invoke;
    v16[3] = &unk_1E6EEBFE0;
    v16[4] = self;
    v16[5] = descriptor;
    v16[6] = v10;
    v16[7] = handler;
    [v10 newSpecializedFunctionWithDescriptor:descriptor destinationArchive:0 functionCache:cache sync:0 completionHandler:v16];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", objc_msgSend(descriptor, "name")];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:*MEMORY[0x1E696A578]];
    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v13];
    v15 = *(handler + 2);

    v15(handler, 0, v14);
  }
}

- (id)newSpecializedFunctionWithDescriptorInternal:(id)internal destinationArchive:(id)archive functionCache:(id)cache error:(id *)error
{
  v11 = -[_MTLLibrary newFunctionWithName:](self, "newFunctionWithName:", [internal name]);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 newSpecializedFunctionWithDescriptor:internal destinationArchive:archive functionCache:cache error:error];
    if (self->_cacheEntry->var0)
    {
      options = [internal options];
      if (v13 == v12)
      {
        if ((options & 0x10) == 0)
        {
          MTLPipelineCollection::addFunction(self->_cacheEntry->var0, v12, self->_libraryData, [internal options]);
        }
      }

      else if (v13 && (options & 0x10) == 0)
      {
        MTLPipelineCollection::addSpecializedFunction(self->_cacheEntry->var0, v12, v13, self, internal);
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", objc_msgSend(internal, "name")];
    if (error)
    {
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:*MEMORY[0x1E696A578]];
      v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v16];
      v13 = 0;
      *error = v17;
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error
{
  v18 = 0;
  v9 = [(_MTLLibrary *)self newSpecializedFunctionWithDescriptorInternal:descriptor destinationArchive:archive functionCache:0 error:&v18];
  if (v9)
  {
    v10 = v9;
    if (archive)
    {
      v11 = ([archive options] >> 1) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if ([v10 functionType] == 5 || objc_msgSend(v10, "functionType") == 6) && -[MTLDevice supportsFunctionPointers](-[_MTLLibrary device](self, "device"), "supportsFunctionPointers") && (objc_msgSend(descriptor, "options"))
    {
      device = [(_MTLLibrary *)self device];
      if (v11)
      {
        [(MTLDevice *)device compileVisibleFunction:v10 withDescriptor:descriptor destinationBinaryArchive:archive error:&v17];
      }

      else
      {
        [(MTLDevice *)device compileVisibleFunction:v10 withDescriptor:descriptor error:&v17];
      }
    }

    if (([descriptor options] & 1) != 0 && v17)
    {
      if (error)
      {
        *error = v17;
      }

      return 0;
    }

    else
    {
      precompiledOutput = [v10 precompiledOutput];
      options = [descriptor options];
      v15 = options;
      if (precompiledOutput)
      {
        v15 = options | 1;
      }

      [v10 setOptions:v15];
    }
  }

  else
  {
    v10 = 0;
    if (error)
    {
      *error = v18;
    }
  }

  return v10;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  v6 = (*(*self->_libraryData + 128))(self->_libraryData, a2);
  if (v6)
  {

    return [v6 writeToURL:l options:1 error:error];
  }

  else
  {
    if (error)
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"MTLLibrary is not formatted as a MetalLib file." forKey:*MEMORY[0x1E696A578]];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v8];
    }

    return 0;
  }
}

- (_MTLLibrary)initWithLibraryContainer:(MTLLibraryContainer *)container device:(id)device
{
  v9.receiver = self;
  v9.super_class = _MTLLibrary;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  var3 = container->var3;
  (*(*var3 + 16))(var3);
  v6->_device = device;
  v6->_cacheEntry = container;
  MTLAtomicIncrement(&container->var1);
  v6->_libraryData = var3;
  v6->_functionDictionary = container->var4;
  return v6;
}

- (id)reflectionForFunctionWithName:(id)name
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v7 = (*(*self->_libraryData + 192))(self->_libraryData, name);
  if (v7)
  {
    v8 = [[MTLFunctionReflectionInternal alloc] initWithDevice:self->_device libReflectionData:v7 functionType:v6];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5);
  return v9;
}

- (id)formattedDescription:(unint64_t)description
{
  v18[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  functionNames = [(_MTLLibrary *)self functionNames];
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];
  v8 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = _MTLLibrary;
  v9 = [(_MTLLibrary *)&v17 description];
  v18[0] = v5;
  v18[1] = @"label =";
  if (retainedLabel)
  {
    v10 = retainedLabel;
  }

  else
  {
    v10 = @"<none>";
  }

  v18[2] = v10;
  v18[3] = v5;
  v18[4] = @"device =";
  device = self->_device;
  if (device)
  {
    v12 = [(MTLDevice *)device formattedDescription:description + 4];
  }

  else
  {
    v12 = @"<null>";
  }

  v18[5] = v12;
  v18[6] = v5;
  v18[7] = @"functionNames:";
  if (functionNames)
  {
    v13 = [(NSArray *)functionNames componentsJoinedByString:@" "];
  }

  else
  {
    v13 = @"<null>";
  }

  v18[8] = v13;
  v14 = [v8 stringWithFormat:@"%@%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 9), "componentsJoinedByString:", @" "];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end