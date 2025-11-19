@interface CNMissingBackgroundColorsContactPredicate
- (CNMissingBackgroundColorsContactPredicate)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNMissingBackgroundColorsContactPredicate

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForContactsMissingBackgroundColors]"];
  v4 = [v2 build];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (CNMissingBackgroundColorsContactPredicate)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNMissingBackgroundColorsContactPredicate;
  v3 = [(CNPredicate *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CNMissingBackgroundColorsContactPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:a3];
}

@end