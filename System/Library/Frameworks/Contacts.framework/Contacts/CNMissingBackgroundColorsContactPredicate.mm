@interface CNMissingBackgroundColorsContactPredicate
- (CNMissingBackgroundColorsContactPredicate)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNMissingBackgroundColorsContactPredicate

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForContactsMissingBackgroundColors]"];
  build = [v2 build];

  return build;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (CNMissingBackgroundColorsContactPredicate)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CNMissingBackgroundColorsContactPredicate;
  v3 = [(CNPredicate *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CNMissingBackgroundColorsContactPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:coder];
}

@end