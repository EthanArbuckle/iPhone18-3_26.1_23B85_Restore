@interface CNFetchRequest
- (void)acceptVisitor:(id)visitor;
@end

@implementation CNFetchRequest

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

@end