@interface BSActionResponse
+ (BSActionResponse)responseWithInfo:(id)info;
+ (id)response;
+ (id)responseForError:(id)error;
+ (id)responseForErrorCode:(uint64_t)code;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BSActionResponse)initWithInfo:(id)info error:(id)error;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)membersForCoder;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)_setAuditToken:(uint64_t)token;
- (void)dealloc;
@end

@implementation BSActionResponse

- (void)dealloc
{
  [(BSSettings *)self->_info setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = BSActionResponse;
  [(BSActionResponse *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BSXPCAutoCodingInitialize(self, &__block_literal_global_35);
  }
}

void __30__BSActionResponse_initialize__block_invoke(uint64_t a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = &unk_1F03BA3C0;
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setSupportedCodings:v4];
}

- (id)membersForCoder
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_info";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, 0, v24[0]);
  v24[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_error";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, 0, v24[0]);
  v24[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  return v22;
}

+ (id)response
{
  v2 = [[self alloc] initWithInfo:0 error:0];

  return v2;
}

+ (id)responseForErrorCode:(uint64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = MEMORY[0x1E696ABC0];
  v9 = @"BSErrorCodeDescription";
  v4 = NSStringFromBSActionErrorCode(a2);
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 errorWithDomain:@"BSActionErrorDomain" code:a2 userInfo:v5];
  v7 = [BSActionResponse responseForError:v6];

  return v7;
}

- (BSActionResponse)initWithInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = BSActionResponse;
    self = [(BSActionResponse *)&v11 init];
    if (self)
    {
      v8 = [infoCopy copy];
      info = self->_info;
      self->_info = v8;

      [(BSSettings *)self->_info setDescriptionProvider:self];
      objc_storeStrong(&self->_error, error);
    }
  }

  return self;
}

+ (BSActionResponse)responseWithInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithInfo:infoCopy error:0];

  return v5;
}

+ (id)responseForError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithInfo:0 error:errorCopy];

  return v5;
}

- (void)_setAuditToken:(uint64_t)token
{
  v4 = a2;
  if (token)
  {
    objc_storeStrong((token + 24), a2);
  }
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendObject:self->_info];
  v5 = [v4 appendObject:self->_error];
  v6 = [v5 hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v7 = 1;
  if (self != equalCopy)
  {
    if (!equalCopy || (v6 = objc_opt_class(), v6 != objc_opt_class()) || (info = self->_info, info != v5->_info) && ![(BSSettings *)info isEqual:?]|| (error = self->_error, error != v5->_error) && ![(NSError *)error isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSActionResponse *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSActionResponse *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSActionResponse *)self succinctDescriptionBuilder];
  info = self->_info;
  if (info && ![(BSSettings *)info isEmpty])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__BSActionResponse_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E72CACC0;
    v10 = succinctDescriptionBuilder;
    selfCopy = self;
    [v10 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  }

  else
  {
    v7 = [succinctDescriptionBuilder appendObject:self->_error withName:@"error" skipIfNil:1];
  }

  return succinctDescriptionBuilder;
}

@end