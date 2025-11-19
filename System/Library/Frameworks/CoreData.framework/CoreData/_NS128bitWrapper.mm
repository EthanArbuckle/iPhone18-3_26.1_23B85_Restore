@interface _NS128bitWrapper
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation _NS128bitWrapper

- (id)description
{
  v6 = *MEMORY[0x1E69E9840];
  bits = self->bits;
  uuid_unparse(&bits, out);
  result = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)compare:(id)a3
{
  high64 = self->bits.high64;
  v4 = *(a3 + 1);
  if (high64 == v4)
  {
    high64 = self->bits.low64;
    v4 = *(a3 + 2);
  }

  v5 = high64 < v4;
  v6 = high64 > v4;
  v7 = v5;
  return v6 - v7;
}

@end