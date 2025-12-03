@interface ILClassificationRequest
- (ILClassificationRequest)initWithCoder:(id)coder;
@end

@implementation ILClassificationRequest

- (ILClassificationRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ILClassificationRequest;
  return [(ILClassificationRequest *)&v4 init];
}

@end