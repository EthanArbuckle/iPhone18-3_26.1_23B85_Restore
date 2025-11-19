@interface AVTAvatarDescriptor
+ (BOOL)canLoadDataRepresentation:(id)a3;
+ (id)_descriptorWithDictionaryRepresentation:(id)a3 error:(id *)a4;
+ (id)_dictionaryRepresentationFromDataRepresentation:(id)a3 error:(id *)a4;
+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)a3 error:(id *)a4;
+ (id)descriptorWithDataRepresentation:(id)a3 error:(id *)a4;
+ (id)descriptorWithURL:(id)a3 error:(id *)a4;
+ (unsigned)classIdentifier;
+ (void)classIdentifier;
- (AVTAvatarDescriptor)initWithCoder:(id)a3;
- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (void)encodeInDictionaryRepresentation:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)_dictionaryRepresentationFromDataRepresentation:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v20 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v20];
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

      if (a4)
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

    else if (a4)
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
      *a4 = [v11 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v17];
    }

    v9 = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"There's no data to load";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v10 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v8];
    *a4 = v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)canLoadDataRepresentation:(id)a3
{
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    v5 = [v4 avt_objectForKey:@"minVersion" ofClass:objc_opt_class() didFail:&v9 error:0];
    v6 = [v4 avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v9 error:0];
    v7 = 0;
    if ((v9 & 1) == 0)
    {
      v7 = [a1 _canLoadDataRepresentationWithVersion:objc_msgSend(v6 minimumCompatibleVersion:"intValue") error:{objc_msgSend(v5, "intValue"), 0}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_descriptorWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v14 = 0;
  v6 = [v5 avt_objectForKey:@"minVersion" ofClass:objc_opt_class() didFail:&v14 error:a4];
  v7 = [v5 avt_objectForKey:@"version" ofClass:objc_opt_class() didFail:&v14 error:a4];
  if ((v14 & 1) == 0 && [objc_opt_class() _canLoadDataRepresentationWithVersion:objc_msgSend(v7 minimumCompatibleVersion:"intValue") error:{objc_msgSend(v6, "intValue"), a4}])
  {
    v8 = [v5 avt_objectForKey:@"class" ofClass:objc_opt_class() didFail:&v14 error:a4];
    v9 = v8;
    if ((v14 & 1) == 0)
    {
      v10 = [v8 intValue];
      if (v10 == 1)
      {
        v11 = off_1E7F470E0;
        goto LABEL_12;
      }

      if (v10 == 2)
      {
        v11 = off_1E7F47158;
LABEL_12:
        v12 = [objc_alloc(*v11) initWithDictionaryRepresentation:v5 error:a4];
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

+ (id)descriptorWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:a4];
  if (v6)
  {
    v7 = [a1 descriptorWithDataRepresentation:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)descriptorWithDataRepresentation:(id)a3 error:(id *)a4
{
  v6 = [a1 _dictionaryRepresentationFromDataRepresentation:a3 error:?];
  v7 = [a1 _descriptorWithDictionaryRepresentation:v6 error:a4];

  return v7;
}

+ (id)dataRepresentationFromUnsecureDataRepresentation:(id)a3 error:(id *)a4
{
  v4 = [a1 descriptorWithDataRepresentation:a3 error:a4];
  v5 = [v4 dataRepresentation];

  return v5;
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

- (void)encodeInDictionaryRepresentation:(id)a3
{
  v3 = avt_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor encodeInDictionaryRepresentation:];
  }
}

- (AVTAvatarDescriptor)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v5 = avt_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor initWithDictionaryRepresentation:error:];
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = avt_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatarDescriptor copyWithZone:];
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  [v3 encodeInteger:12 forKey:@"version"];
  [v3 encodeInteger:12 forKey:@"minVersion"];
}

- (AVTAvatarDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  v6 = [v4 decodeIntegerForKey:@"minVersion"];

  if (v5 > 6)
  {
    if (v6 < 13)
    {
      v8 = self;
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

  v8 = 0;
LABEL_9:

  return v8;
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