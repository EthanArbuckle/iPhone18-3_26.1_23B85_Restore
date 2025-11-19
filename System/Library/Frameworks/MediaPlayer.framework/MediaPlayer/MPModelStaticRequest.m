@interface MPModelStaticRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelStaticRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(MPModelStaticRequest *)self staticResponse];
  v6 = MEMORY[0x1E696AAE0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MPModelStaticRequest_newOperationWithResponseHandler___block_invoke;
  v11[3] = &unk_1E76824C8;
  v12 = v5;
  v13 = v4;
  v7 = v5;
  v8 = v4;
  v9 = [v6 blockOperationWithBlock:v11];

  return v9;
}

uint64_t __56__MPModelStaticRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPModelStaticRequest;
  v4 = [(MPModelRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 8, self->_staticResponse);
  }

  return v5;
}

@end