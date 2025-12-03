@interface _BSUIAnimationAttributesFactory
- (BOOL)isEqual:(id)equal;
@end

@implementation _BSUIAnimationAttributesFactory

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(_UIViewAnimationAttributes *)self->_attributes isEqual:equalCopy[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end