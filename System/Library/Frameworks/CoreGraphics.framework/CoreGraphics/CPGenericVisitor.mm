@interface CPGenericVisitor
- (void)visitChunk:(id)chunk;
@end

@implementation CPGenericVisitor

- (void)visitChunk:(id)chunk
{
  v5 = [chunk count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [objc_msgSend(chunk childAtIndex:{v7), "accept:", self}];
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }
}

@end