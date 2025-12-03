@interface MPModelShimRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)middlewareClasses;
@end

@implementation MPModelShimRequest

- (id)middlewareClasses
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MPModelShimRequest;
  v4 = [(MPRequest *)&v8 copyWithZone:zone];
  v5 = [(MPModelRequest *)self->_modelRequest copy];
  v6 = v4[9];
  v4[9] = v5;

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MPModelShimRequest;
  v3 = [(MPRequest *)&v7 description];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" modelRequest=%@", self->_modelRequest];
  v5 = [v3 stringByReplacingCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 0, v4}];

  return v5;
}

@end