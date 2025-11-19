@interface MPMediaChapter
- (NSString)bk_UTF8Title;
@end

@implementation MPMediaChapter

- (NSString)bk_UTF8Title
{
  v3 = [(MPMediaChapter *)self title];
  v4 = [(MPMediaChapter *)self title];
  v5 = [v4 cStringUsingEncoding:30];

  if (v5)
  {
    v6 = [[NSString alloc] initWithCString:v5 encoding:4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;

      v3 = v8;
    }
  }

  return v3;
}

@end