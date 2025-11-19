@interface NSObject(SwiftUI)
- (void)_performSelector:()SwiftUI withObject:;
@end

@implementation NSObject(SwiftUI)

- (void)_performSelector:()SwiftUI withObject:
{
  if (a4)
  {
    v5 = a4;
    ([v5 methodForSelector:a3])(v5, a3);
  }
}

@end