@interface PHVideoXPCRequest
- (CGSize)size;
- (PHVideoXPCRequest)initWithCoder:(id)a3;
- (PHVideoXPCRequest)initWithTaskIdentifier:(id)a3 assetObjectID:(id)a4 size:(CGSize)a5 behavior:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHVideoXPCRequest

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PHVideoXPCRequest)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PHVideoXPCRequest;
  v5 = [(PLResourceXPCRequest *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_size = &v5->_size;
    [v4 decodeDoubleForKey:@"width"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"height"];
    *&p_size->width = v9;
    v6->_size.height = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"behaviorSpec"];
    behaviorSpec = v6->_behaviorSpec;
    v6->_behaviorSpec = v11;

    if (!v6->_behaviorSpec)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"behavior spec is required";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
      [v4 failWithError:v15];

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHVideoXPCRequest;
  v4 = a3;
  [(PLResourceXPCRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"width" forKey:{self->_size.width, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"height" forKey:self->_size.height];
  [v4 encodeObject:self->_behaviorSpec forKey:@"behaviorSpec"];
}

- (PHVideoXPCRequest)initWithTaskIdentifier:(id)a3 assetObjectID:(id)a4 size:(CGSize)a5 behavior:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = PHVideoXPCRequest;
  v13 = [(PLResourceXPCRequest *)&v16 initWithTaskIdentifier:a3 assetObjectID:a4];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    objc_storeStrong(&v13->_behaviorSpec, a6);
  }

  return v14;
}

@end