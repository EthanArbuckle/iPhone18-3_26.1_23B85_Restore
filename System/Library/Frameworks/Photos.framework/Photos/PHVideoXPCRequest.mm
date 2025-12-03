@interface PHVideoXPCRequest
- (CGSize)size;
- (PHVideoXPCRequest)initWithCoder:(id)coder;
- (PHVideoXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d size:(CGSize)size behavior:(id)behavior;
- (void)encodeWithCoder:(id)coder;
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

- (PHVideoXPCRequest)initWithCoder:(id)coder
{
  v19[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PHVideoXPCRequest;
  v5 = [(PLResourceXPCRequest *)&v17 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_size = &v5->_size;
    [coderCopy decodeDoubleForKey:@"width"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"height"];
    *&p_size->width = v9;
    v6->_size.height = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"behaviorSpec"];
    behaviorSpec = v6->_behaviorSpec;
    v6->_behaviorSpec = v11;

    if (!v6->_behaviorSpec)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"behavior spec is required";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
      [coderCopy failWithError:v15];

      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PHVideoXPCRequest;
  coderCopy = coder;
  [(PLResourceXPCRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"width" forKey:{self->_size.width, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"height" forKey:self->_size.height];
  [coderCopy encodeObject:self->_behaviorSpec forKey:@"behaviorSpec"];
}

- (PHVideoXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d size:(CGSize)size behavior:(id)behavior
{
  height = size.height;
  width = size.width;
  behaviorCopy = behavior;
  v16.receiver = self;
  v16.super_class = PHVideoXPCRequest;
  v13 = [(PLResourceXPCRequest *)&v16 initWithTaskIdentifier:identifier assetObjectID:d];
  v14 = v13;
  if (v13)
  {
    v13->_size.width = width;
    v13->_size.height = height;
    objc_storeStrong(&v13->_behaviorSpec, behavior);
  }

  return v14;
}

@end