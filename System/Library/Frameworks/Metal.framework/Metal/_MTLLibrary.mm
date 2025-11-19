@interface _MTLLibrary
- (BOOL)getFunctionAliasAndNameForHash:(id *)a3 functionName:(id *)a4 alias:(id *)a5;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (NSArray)externFunctionNames;
- (NSArray)functionNames;
- (NSData)bitcodeData;
- (_MTLLibrary)initWithLibraryContainer:(MTLLibraryContainer *)a3 device:(id)a4;
- (id)formattedDescription:(unint64_t)a3;
- (id)newExternFunctionWithName:(id)a3;
- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5;
- (id)newFunctionWithHash:(id *)a3;
- (id)newFunctionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 specializedName:(id)a6 error:(id *)a7;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6;
- (id)newFunctionWithNameInternal:(id)a3;
- (id)newSpecializedFunctionWithDescriptorInternal:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 error:(id *)a6;
- (id)newSpecializedFunctionWithHash:(id *)a3 libraryPath:(id)a4;
- (id)newStitchedFunctionWithHash:(id *)a3;
- (id)reflectionForFunctionWithName:(id)a3;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 completionHandler:(id)a6;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 specializedName:(id)a6 completionHandler:(id)a7;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6;
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

- (id)newFunctionWithHash:(id *)a3
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v6 = (*(*self->_libraryData + 168))(self->_libraryData, a3, self->_device);
  os_unfair_lock_unlock(v5);
  return v6;
}

- (id)newSpecializedFunctionWithHash:(id *)a3 libraryPath:(id)a4
{
  v7 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v7);
  v8 = (*(*self->_libraryData + 176))(self->_libraryData, a3, a4, self->_device);
  os_unfair_lock_unlock(v7);
  return v8;
}

- (id)newStitchedFunctionWithHash:(id *)a3
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v6 = (*(*self->_libraryData + 184))(self->_libraryData, a3, self->_device);
  os_unfair_lock_unlock(v5);
  return v6;
}

- (BOOL)getFunctionAliasAndNameForHash:(id *)a3 functionName:(id *)a4 alias:(id *)a5
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

- (id)newFunctionWithNameInternal:(id)a3
{
  if (a3)
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
  v19 = [(NSMutableDictionary *)self->_functionDictionary objectForKey:a3];
  if (!v19)
  {
    device = self->_device;
    v19 = MTLLibraryContainer::functionWithName(self->_cacheEntry, a3);
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

- (id)newExternFunctionWithName:(id)a3
{
  v4 = [(_MTLLibrary *)self newFunctionWithNameInternal:?];
  v5 = v4;
  if (v4 && [v4 functionType] != 4)
  {
    [(_MTLLibrary *)v5 newExternFunctionWithName:a3];
  }

  return v5;
}

- (id)newFunctionWithName:(id)a3
{
  v4 = [(_MTLLibrary *)self newFunctionWithNameInternal:?];
  v5 = v4;
  if (v4 && [v4 functionType] == 4)
  {
    [(_MTLLibrary *)a3 newFunctionWithName:v6, v7, v8, v9, v10, v11, v12];
  }

  return v5;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 specializedName:(id)a6 error:(id *)a7
{
  v13 = [(_MTLLibrary *)self newFunctionWithName:?];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 needsFunctionConstantValues];
    if (a6 || v15)
    {
      v20 = objc_opt_new();
      [v20 setName:a3];
      if (a6)
      {
        [v20 setSpecializedName:a6];
      }

      if (a4)
      {
        [v20 setConstantValues:a4];
      }

      v17 = [v14 newSpecializedFunctionWithDescriptor:v20 destinationArchive:0 functionCache:a5 error:a7];
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
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", a3];
    if (a7)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v18 forKey:*MEMORY[0x1E696A578]];
      v17 = 0;
      *a7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v19];
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6
{
  v10 = [a5 functionCache];

  return [(_MTLLibrary *)self newFunctionWithName:a3 constantValues:a4 functionCache:v10 error:a6];
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 specializedName:(id)a6 completionHandler:(id)a7
{
  v13 = objc_opt_new();
  [v13 setName:a3];
  if (a6)
  {
    [v13 setSpecializedName:a6];
  }

  if (a4)
  {
    [v13 setConstantValues:a4];
  }

  [(_MTLLibrary *)self newFunctionWithDescriptor:v13 destinationArchive:0 functionCache:a5 completionHandler:a7];
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6
{
  v10 = [a5 functionCache];

  [(_MTLLibrary *)self newFunctionWithName:a3 constantValues:a4 functionCache:v10 specializedName:0 completionHandler:a6];
}

- (void)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 completionHandler:(id)a6
{
  v10 = -[_MTLLibrary newFunctionWithName:](self, "newFunctionWithName:", [a3 name]);
  if (v10)
  {
    v11 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92___MTLLibrary_newFunctionWithDescriptor_destinationArchive_functionCache_completionHandler___block_invoke;
    v16[3] = &unk_1E6EEBFE0;
    v16[4] = self;
    v16[5] = a3;
    v16[6] = v10;
    v16[7] = a6;
    [v10 newSpecializedFunctionWithDescriptor:a3 destinationArchive:0 functionCache:a5 sync:0 completionHandler:v16];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", objc_msgSend(a3, "name")];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:*MEMORY[0x1E696A578]];
    v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v13];
    v15 = *(a6 + 2);

    v15(a6, 0, v14);
  }
}

- (id)newSpecializedFunctionWithDescriptorInternal:(id)a3 destinationArchive:(id)a4 functionCache:(id)a5 error:(id *)a6
{
  v11 = -[_MTLLibrary newFunctionWithName:](self, "newFunctionWithName:", [a3 name]);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 newSpecializedFunctionWithDescriptor:a3 destinationArchive:a4 functionCache:a5 error:a6];
    if (self->_cacheEntry->var0)
    {
      v14 = [a3 options];
      if (v13 == v12)
      {
        if ((v14 & 0x10) == 0)
        {
          MTLPipelineCollection::addFunction(self->_cacheEntry->var0, v12, self->_libraryData, [a3 options]);
        }
      }

      else if (v13 && (v14 & 0x10) == 0)
      {
        MTLPipelineCollection::addSpecializedFunction(self->_cacheEntry->var0, v12, v13, self, a3);
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Function %@ was not found in the library", objc_msgSend(a3, "name")];
    if (a6)
    {
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:*MEMORY[0x1E696A578]];
      v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:5 userInfo:v16];
      v13 = 0;
      *a6 = v17;
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5
{
  v18 = 0;
  v9 = [(_MTLLibrary *)self newSpecializedFunctionWithDescriptorInternal:a3 destinationArchive:a4 functionCache:0 error:&v18];
  if (v9)
  {
    v10 = v9;
    if (a4)
    {
      v11 = ([a4 options] >> 1) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if ([v10 functionType] == 5 || objc_msgSend(v10, "functionType") == 6) && -[MTLDevice supportsFunctionPointers](-[_MTLLibrary device](self, "device"), "supportsFunctionPointers") && (objc_msgSend(a3, "options"))
    {
      v12 = [(_MTLLibrary *)self device];
      if (v11)
      {
        [(MTLDevice *)v12 compileVisibleFunction:v10 withDescriptor:a3 destinationBinaryArchive:a4 error:&v17];
      }

      else
      {
        [(MTLDevice *)v12 compileVisibleFunction:v10 withDescriptor:a3 error:&v17];
      }
    }

    if (([a3 options] & 1) != 0 && v17)
    {
      if (a5)
      {
        *a5 = v17;
      }

      return 0;
    }

    else
    {
      v13 = [v10 precompiledOutput];
      v14 = [a3 options];
      v15 = v14;
      if (v13)
      {
        v15 = v14 | 1;
      }

      [v10 setOptions:v15];
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      *a5 = v18;
    }
  }

  return v10;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = (*(*self->_libraryData + 128))(self->_libraryData, a2);
  if (v6)
  {

    return [v6 writeToURL:a3 options:1 error:a4];
  }

  else
  {
    if (a4)
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"MTLLibrary is not formatted as a MetalLib file." forKey:*MEMORY[0x1E696A578]];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v8];
    }

    return 0;
  }
}

- (_MTLLibrary)initWithLibraryContainer:(MTLLibraryContainer *)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = _MTLLibrary;
  v6 = [(_MTLObjectWithLabel *)&v9 init];
  var3 = a3->var3;
  (*(*var3 + 16))(var3);
  v6->_device = a4;
  v6->_cacheEntry = a3;
  MTLAtomicIncrement(&a3->var1);
  v6->_libraryData = var3;
  v6->_functionDictionary = a3->var4;
  return v6;
}

- (id)reflectionForFunctionWithName:(id)a3
{
  v5 = MTLLibraryData::mutex(self->_libraryData);
  os_unfair_lock_lock(v5);
  v7 = (*(*self->_libraryData + 192))(self->_libraryData, a3);
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

- (id)formattedDescription:(unint64_t)a3
{
  v18[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [(_MTLLibrary *)self functionNames];
  v7 = [(_MTLObjectWithLabel *)self retainedLabel];
  v8 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = _MTLLibrary;
  v9 = [(_MTLLibrary *)&v17 description];
  v18[0] = v5;
  v18[1] = @"label =";
  if (v7)
  {
    v10 = v7;
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
    v12 = [(MTLDevice *)device formattedDescription:a3 + 4];
  }

  else
  {
    v12 = @"<null>";
  }

  v18[5] = v12;
  v18[6] = v5;
  v18[7] = @"functionNames:";
  if (v6)
  {
    v13 = [(NSArray *)v6 componentsJoinedByString:@" "];
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