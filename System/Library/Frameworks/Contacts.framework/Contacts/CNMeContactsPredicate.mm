@interface CNMeContactsPredicate
- (CNMeContactsPredicate)initWithCoder:(id)coder;
- (id)contactsFromDonationStore:(id)store;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNMeContactsPredicate

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForMeContact]"];
  build = [v2 build];

  return build;
}

- (CNMeContactsPredicate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CNMeContactsPredicate;
  return [(CNPredicate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CNMeContactsPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:coder];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (id)contactsFromDonationStore:(id)store
{
  v10[1] = *MEMORY[0x1E69E9840];
  donatedMeCardEither = [store donatedMeCardEither];
  isLeft = [donatedMeCardEither isLeft];
  v5 = MEMORY[0x1E69966C0];
  if (isLeft)
  {
    left = [donatedMeCardEither left];
    v10[0] = left;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v5 eitherWithLeft:v7];
  }

  else
  {
    left = [donatedMeCardEither right];
    v8 = [v5 eitherWithRight:left];
  }

  return v8;
}

@end