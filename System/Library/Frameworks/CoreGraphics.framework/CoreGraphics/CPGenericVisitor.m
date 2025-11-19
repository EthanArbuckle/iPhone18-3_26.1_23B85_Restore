@interface CPGenericVisitor
- (void)visitChunk:(id)a3;
@end

@implementation CPGenericVisitor

- (void)visitChunk:(id)a3
{
  v5 = [a3 count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [objc_msgSend(a3 childAtIndex:{v7), "accept:", self}];
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }
}

@end