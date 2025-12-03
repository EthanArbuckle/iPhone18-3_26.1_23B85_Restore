@interface AVTAvatarDescriptor
+ (BOOL)canLoadDataRepresentation:(id)representation;
+ (id)_descriptorWithDictionaryRepresentation:(id)representation error:(id *)error;
+ (id)_dictionaryRepresentationFromDataRepresentation:(id)representation error:(id *)error;
+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)representation error:(id *)error;
+ (id)descriptorWithDataRepresentation:(id)representation error:(id *)error;
+ (id)descriptorWithURL:(id)l error:(id *)error;
+ (unsigned)classIdentifier;
+ (void)classIdentifier;
- (AVTAvatarDescriptor)initWithCoder:(id)coder;
- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (void)encodeInDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAvatarDescriptor

- (id)dataRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:&unk_1F39D9398 forKeyedSubscript:@"version"];
  [v3 setObject:&unk_1F39D9398 forKeyedSubscript:@"minVersion"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(objc_opt_class(), "classIdentifier")}];
  [v3 setObject:v4 forKeyedSubscript:@"class"];

  [(AVTAvatarDescriptor *)self encodeInDictionaryRepresentation:v3];
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:1 error:0];

  return v5;
}

+ (id)_dictionaryRepresentationFromDataRepresentation:(id)representation error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (representationCopy)
  {
    v20 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:representationCopy options:0 error:&v20];
    v7 = v20;
    v8 = v7;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v6;
LABEL_13:

        goto LABEL_14;
      }

      if (error)
      {
        v11 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A578];
        v22 = @"Recipe is invalid";
        v13 = MEMORY[0x1E695DF20];
        v14 = &v22;
        v15 = &v21;
        v16 = 1;
        goto LABEL_11;
      }
    }

    else if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696AA08];
      v23[0] = *MEMORY[0x1E696A578];
      v23[1] = v12;
      v24[0] = @"Data is not a JSON object";
      v24[1] = v7;
      v13 = MEMORY[0x1E695DF20];
      v14 = v24;
      v15 = v23;
      v16 = 2;
LABEL_11:
      v17 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
      *error = [v11 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v17];
    }

    v9 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"There's no data to load";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v10 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v8];
    *error = v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)canLoadDataRepresentation:(id)representation
{
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:representation options:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    v5 = [v4 avt_objectForKey:@"minVersion" ofClass:objc_opt_class() didFail:&v9 error:0];
    v6 = [v4 avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v9 error:0];
    v7 = 0;
    if ((v9 & 1) == 0)
    {
      v7 = [self _canLoadDataRepresentationWithVersion:objc_msgSend(v6 minimumCompatibleVersion:"intValue") error:{objc_msgSend(v5, "intValue"), 0}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_descriptorWithDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v14 = 0;
  v6 = [representationCopy avt_objectForKey:@"minVersion" ofClass:objc_opt_class() didFail:&v14 error:error];
  v7 = [representationCopy avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v14 error:error];
  if ((v14 & 1) == 0 && [objc_opt_class() _canLoadDataRepresentationWithVersion:objc_msgSend(v7 minimumCompatibleVersion:"intValue") error:{objc_msgSend(v6, "intValue"), error}])
  {
    v8 = [representationCopy avt_objectForKey:@"class" ofClass:objc_opt_class() didFail:&v14 error:error];
    v9 = v8;
    if ((v14 & 1) == 0)
    {
      intValue = [v8 intValue];
      if (intValue == 1)
      {
        v11 = off_1E7F470E0;
        goto LABEL_12;
      }

      if (intValue == 2)
      {
        v11 = off_1E7F47158;
LABEL_12:
        v12 = [objc_alloc(*v11) initWithDictionaryRepresentation:representationCopy error:error];
        goto LABEL_13;
      }
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

LABEL_15:

  return v12;
}

+ (id)descriptorWithURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:1 error:error];
  if (v6)
  {
    v7 = [self descriptorWithDataRepresentation:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)descriptorWithDataRepresentation:(id)representation error:(id *)error
{
  v6 = [self _dictionaryRepresentationFromDataRepresentation:representation error:?];
  v7 = [self _descriptorWithDictionaryRepresentation:v6 error:error];

  return v7;
}

+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)representation error:(id *)error
{
  v4 = [self descriptorWithDataRepresentation:representation error:error];
  dataRepresentation = [v4 dataRepresentation];

  return dataRepresentation;
}

+ (unsigned)classIdentifier
{
  v2 = avt_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[AVTAvatarDescriptor classIdentifier];
  }

  return 0;
}

- (void)encodeInDictionaryRepresentation:(id)representation
{
  v3 = avt_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor encodeInDictionaryRepresentation:];
  }
}

- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor initWithDictionaryRepresentation:error:];
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = avt_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor copyWithZone:];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:12 forKey:@"version"];
  [coderCopy encodeInteger:12 forKey:@"minVersion"];
}

- (AVTAvatarDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeIntegerForKey:@"minVersion"];

  if (v5 > 6)
  {
    if (v6 < 13)
    {
      selfCopy = self;
      goto LABEL_9;
    }

    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatarDescriptor initWithCoder:];
    }
  }

  else
  {
    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatarDescriptor initWithCoder:];
    }
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

+ (void)classIdentifier
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)encodeInDictionaryRepresentation:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithDictionaryRepresentation:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyWithZone:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

@end