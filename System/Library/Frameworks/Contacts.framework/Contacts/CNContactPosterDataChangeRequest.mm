@interface CNContactPosterDataChangeRequest
- (void)acceptVisitor:(id)visitor;
@end

@implementation CNContactPosterDataChangeRequest

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

@end