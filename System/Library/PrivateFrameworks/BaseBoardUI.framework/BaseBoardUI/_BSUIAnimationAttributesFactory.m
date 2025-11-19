@interface _BSUIAnimationAttributesFactory
- (BOOL)isEqual:(id)a3;
@end

@implementation _BSUIAnimationAttributesFactory

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(_UIViewAnimationAttributes *)self->_attributes isEqual:v4[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end