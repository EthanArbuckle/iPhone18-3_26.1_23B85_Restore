@interface NSObject
- (void)performSelector:(SEL)a3 withIndexesFromSet:(id)a4;
@end

@implementation NSObject

- (void)performSelector:(SEL)a3 withIndexesFromSet:(id)a4
{
  for (i = [a4 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(a4, "indexGreaterThanIndex:", i))
  {
    v7 = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:a3]];
    [(NSInvocation *)v7 setSelector:a3];
    [(NSInvocation *)v7 setArgument:&i atIndex:2];
    [(NSInvocation *)v7 invokeWithTarget:self];
  }
}

@end