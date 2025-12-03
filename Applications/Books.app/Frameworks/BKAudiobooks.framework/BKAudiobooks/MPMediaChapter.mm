@interface MPMediaChapter
- (NSString)bk_UTF8Title;
@end

@implementation MPMediaChapter

- (NSString)bk_UTF8Title
{
  title = [(MPMediaChapter *)self title];
  title2 = [(MPMediaChapter *)self title];
  v5 = [title2 cStringUsingEncoding:30];

  if (v5)
  {
    v6 = [[NSString alloc] initWithCString:v5 encoding:4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;

      title = v8;
    }
  }

  return title;
}

@end