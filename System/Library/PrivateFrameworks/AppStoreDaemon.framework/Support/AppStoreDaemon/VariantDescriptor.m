@interface VariantDescriptor
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation VariantDescriptor

- (id)description
{
  v3 = sub_1002291AC(&self->super.isa);
  v4 = [NSString stringWithFormat:@"<VariantDescriptor %p>: {%@}", self, v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = sub_10022994C(self, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end