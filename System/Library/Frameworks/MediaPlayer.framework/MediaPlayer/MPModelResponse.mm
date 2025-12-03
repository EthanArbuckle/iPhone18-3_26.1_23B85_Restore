@interface MPModelResponse
- (BOOL)isEmpty;
- (MPModelResponse)init;
- (MPModelResponse)initWithRequest:(id)request;
- (id)debugDescription;
- (id)description;
- (void)_invalidate;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation MPModelResponse

- (void)_invalidate
{
  if (self->_valid)
  {
    self->_valid = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPModelResponseDidInvalidateNotification" object:self];
  }
}

- (BOOL)isEmpty
{
  results = [(MPModelResponse *)self results];
  v3 = [results totalItemCount] == 0;

  return v3;
}

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MPModelResponse_getChangeDetailsFromPreviousResponse_completion___block_invoke;
    block[3] = &unk_1E7682370;
    v6 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (!self->_valid)
  {
    [v6 appendString:@"; isValid = NO"];
  }

  results = self->_results;
  if (results)
  {
    v8 = [(MPSectionedCollection *)results description];
    [v6 appendFormat:@"; results = %@", v8];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (!self->_valid)
  {
    [v6 appendString:@"; isValid = NO"];
  }

  results = self->_results;
  if (results)
  {
    v8 = [(MPSectionedCollection *)results debugDescription];
    [v6 appendFormat:@"; results = %@", v8];
  }

  [v6 appendString:@">"];

  return v6;
}

- (MPModelResponse)initWithRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelResponse.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"request != nil"}];
  }

  v11.receiver = self;
  v11.super_class = MPModelResponse;
  v6 = [(MPModelResponse *)&v11 init];
  if (v6)
  {
    v7 = [requestCopy copy];
    request = v6->_request;
    v6->_request = v7;

    v6->_valid = 1;
  }

  return v6;
}

- (MPModelResponse)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelResponse.m" lineNumber:23 description:@"-initWithRequest: must be used."];

  v5 = objc_alloc_init(MPModelRequest);
  v6 = [(MPModelResponse *)self initWithRequest:v5];

  return v6;
}

@end