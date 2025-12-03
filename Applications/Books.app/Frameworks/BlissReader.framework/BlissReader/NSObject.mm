@interface NSObject
- (void)performSelector:(SEL)selector withIndexesFromSet:(id)set;
@end

@implementation NSObject

- (void)performSelector:(SEL)selector withIndexesFromSet:(id)set
{
  for (i = [set firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(set, "indexGreaterThanIndex:", i))
  {
    v7 = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:selector]];
    [(NSInvocation *)v7 setSelector:selector];
    [(NSInvocation *)v7 setArgument:&i atIndex:2];
    [(NSInvocation *)v7 invokeWithTarget:self];
  }
}

@end