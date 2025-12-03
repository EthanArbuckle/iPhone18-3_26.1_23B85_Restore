@interface NSError(TabDocumentExtras)
- (id)failingURL;
@end

@implementation NSError(TabDocumentExtras)

- (id)failingURL
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A980]];

  return v2;
}

@end