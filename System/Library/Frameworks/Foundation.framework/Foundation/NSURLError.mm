@interface NSURLError
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSURLError

- (void)encodeWithCoder:(id)coder
{
  v7[5] = *MEMORY[0x1E69E9840];
  userInfo = [(NSError *)self userInfo];
  v6 = [(NSDictionary *)userInfo mutableCopy];
  [v6 removeObjectForKey:@"NSErrorPeerCertificateChainKey"];
  [v6 removeObjectForKey:@"NSErrorClientCertificateChainKey"];
  [v6 removeObjectForKey:@"NSURLErrorFailingURLPeerTrustErrorKey"];
  [v6 removeObjectForKey:@"NSUnderlyingError"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __dictionaryThatCanCode_block_invoke;
  v7[3] = &unk_1E69F3270;
  v7[4] = v6;
  [(NSDictionary *)userInfo enumerateKeysAndObjectsUsingBlock:v7];
  [[NSError errorWithDomain:[(NSError *)self code] code:v6 userInfo:?], "encodeWithCoder:", coder];
}

@end