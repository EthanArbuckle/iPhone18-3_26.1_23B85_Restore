@interface TKSecElemTokenDriver
- (id)tokenDriver:(id)a3 tokenForConfiguration:(id)a4 error:(id *)a5;
@end

@implementation TKSecElemTokenDriver

- (id)tokenDriver:(id)a3 tokenForConfiguration:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [TKSecElemToken alloc];
  v9 = [v7 instanceID];

  v10 = [(TKSecElemToken *)v8 initWithTokenDriver:self instanceID:v9 error:a5];

  return v10;
}

@end