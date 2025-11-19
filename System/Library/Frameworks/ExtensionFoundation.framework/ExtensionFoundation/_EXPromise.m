@interface _EXPromise
- (_EXPromise)initWithCoder:(id)a3;
- (_EXPromise)initWithPromiseBlock:(id)a3;
- (id)resolveObjectOfClass:(Class)a3 error:(id *)a4;
- (id)resolveObjectOfClasses:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)resolveObjectOfClass:(Class)a3 completion:(id)a4;
- (void)resolveObjectOfClasses:(id)a3 completion:(id)a4;
@end

@implementation _EXPromise

- (_EXPromise)initWithPromiseBlock:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _EXPromise;
  v5 = [(_EXPromise *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v6;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35___EXPromise_initWithPromiseBlock___block_invoke;
    aBlock[3] = &unk_1E6E4E280;
    v12 = v4;
    v8 = _Block_copy(aBlock);
    promiseBlock = v5->_promiseBlock;
    v5->_promiseBlock = v8;
  }

  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _EXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138543362;
    v9 = identifier;
  }

  v5 = +[_EXPromiseManager sharedInstance];
  [v5 unregisterPromise:self];

  v7.receiver = self;
  v7.super_class = _EXPromise;
  [(_EXPromise *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_identifier = &self->_identifier;
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = _EXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_EXPromise *)p_identifier encodeWithCoder:v13, v14, v15, v16, v17, v18, v19];
    }

    v20 = objc_alloc(MEMORY[0x1E695DF30]);
    objc_exception_throw([v20 initWithName:@"EXPromiseCoderException" reason:@"This class may only be encoded by an NSXPCCoder" userInfo:MEMORY[0x1E695E0F8]]);
  }

  v6 = v4;
  v7 = _EXDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 connection];
    v21 = 138543362;
    v22 = v8;
    _os_log_impl(&dword_1847D1000, v7, OS_LOG_TYPE_DEFAULT, "Registering promise to send over XPC connection: %{public}@", &v21, 0xCu);
  }

  v9 = +[_EXPromiseManager sharedInstance];
  [v9 registerPromise:self];

  v10 = +[_EXPromiseManager sharedInstance];
  v11 = [v10 endpoint];
  [v6 encodeObject:v11 forKey:@"endpoint"];

  v12 = *MEMORY[0x1E69E9840];
}

- (_EXPromise)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _EXPromise;
  v5 = [(_EXPromise *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v15 = objc_alloc(MEMORY[0x1E695DF30]);
    }

    v9 = v7;
    objc_storeStrong(&v5->_identifier, v6);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __28___EXPromise_initWithCoder___block_invoke;
    v16[3] = &unk_1E6E4E2A8;
    v17 = v6;
    v18 = v9;
    v10 = v9;
    v11 = v6;
    v12 = _Block_copy(v16);
    promiseBlock = v5->_promiseBlock;
    v5->_promiseBlock = v12;
  }

  return v5;
}

- (id)resolveObjectOfClass:(Class)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v7 = [(_EXPromise *)self resolveObjectOfClasses:v6 error:a4];

  return v7;
}

- (void)resolveObjectOfClass:(Class)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(_EXPromise *)self resolveObjectOfClasses:v8 completion:v7];
}

- (id)resolveObjectOfClasses:(id)a3 error:(id *)a4
{
  v6 = (*(self->_promiseBlock + 2))();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___EXPromise_resolveObjectOfClasses_error___block_invoke;
  aBlock[3] = &unk_1E6E4E2D0;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  promiseBlock = self->_promiseBlock;
  self->_promiseBlock = v8;

  if (a4 && !v7)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
  }

  return v7;
}

- (void)resolveObjectOfClasses:(id)a3 completion:(id)a4
{
  v5 = a4;
  promiseBlock = self->_promiseBlock;
  v17 = 0;
  v7 = promiseBlock[2]();
  v8 = v17;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __48___EXPromise_resolveObjectOfClasses_completion___block_invoke;
  v15 = &unk_1E6E4E2F8;
  v9 = v7;
  v16 = v9;
  v10 = _Block_copy(&v12);
  v11 = self->_promiseBlock;
  self->_promiseBlock = v10;

  if (v9)
  {
    v5[2](v5, v9, 0);
  }

  else
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:{MEMORY[0x1E695E0F8], v12, v13, v14, v15}];
    }

    (v5)[2](v5, 0, v8);
  }
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  v8 = *MEMORY[0x1E69E9840];
}

@end