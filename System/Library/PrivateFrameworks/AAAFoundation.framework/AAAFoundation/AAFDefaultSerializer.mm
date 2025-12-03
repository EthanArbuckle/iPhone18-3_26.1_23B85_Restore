@interface AAFDefaultSerializer
- (NSArray)mediaTypes;
- (id)_className;
- (id)_dataFromDictionary:(id)dictionary error:(id *)error;
- (id)_dictionaryFromObject:(id)object error:(id *)error;
- (id)dataFromDictionary:(id)dictionary;
- (id)dataFromDictionary:(id)dictionary error:(id *)error;
- (id)dictionaryFromObject:(id)object;
- (id)dictionaryFromObject:(id)object error:(id *)error;
- (id)stringFromData:(id)data;
- (id)stringFromDictionary:(id)dictionary;
@end

@implementation AAFDefaultSerializer

- (id)dictionaryFromObject:(id)object
{
  v8 = 0;
  v4 = [(AAFDefaultSerializer *)self dictionaryFromObject:object error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = _AAFLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFDefaultSerializer dictionaryFromObject:?];
    }
  }

  return v4;
}

- (id)dictionaryFromObject:(id)object error:(id *)error
{
  v20[3] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objectCopy dataUsingEncoding:4];

    objectCopy = v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![objectCopy length])
  {
    goto LABEL_11;
  }

  v8 = [(AAFDefaultSerializer *)self _dictionaryFromObject:objectCopy error:error];
  v9 = v8;
  if (error)
  {
    if (!*error)
    {
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = MEMORY[0x1E696AEC0];
          _className = [(AAFDefaultSerializer *)self _className];
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = [v10 stringWithFormat:@"[%@] result [%@] was not in the expected format (NSDictionary)", _className, v13];

          v15 = MEMORY[0x1E696ABC0];
          v19 = *MEMORY[0x1E696A578];
          v20[0] = v14;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
          *error = [v15 errorWithDomain:@"AAFSerializationError" code:-702 userInfo:v16];

LABEL_11:
          v9 = 0;
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)dataFromDictionary:(id)dictionary
{
  v8 = 0;
  v4 = [(AAFDefaultSerializer *)self dataFromDictionary:dictionary error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = _AAFLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFDefaultSerializer dataFromDictionary:?];
    }
  }

  return v4;
}

- (id)dataFromDictionary:(id)dictionary error:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v7 = [(AAFDefaultSerializer *)self _dataFromDictionary:dictionaryCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)stringFromDictionary:(id)dictionary
{
  v4 = [(AAFDefaultSerializer *)self dataFromDictionary:dictionary];
  v5 = [(AAFDefaultSerializer *)self stringFromData:v4];

  return v5;
}

- (id)stringFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_className
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSArray)mediaTypes
{
  v3 = NSStringFromSelector(a2);
  [(AAFDefaultSerializer *)self _raiseException:v3];

  return 0;
}

- (id)_dictionaryFromObject:(id)object error:(id *)error
{
  v5 = NSStringFromSelector(a2);
  [(AAFDefaultSerializer *)self _raiseException:v5];

  return 0;
}

- (id)_dataFromDictionary:(id)dictionary error:(id *)error
{
  v5 = NSStringFromSelector(a2);
  [(AAFDefaultSerializer *)self _raiseException:v5];

  return 0;
}

- (void)dictionaryFromObject:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 _className];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_1C8644000, v2, v3, "[%@] unable to parse data, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dataFromDictionary:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 _className];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_1C8644000, v2, v3, "[%@] serialization failed, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end