@interface CNMeContactsPredicate
- (CNMeContactsPredicate)initWithCoder:(id)a3;
- (id)contactsFromDonationStore:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNMeContactsPredicate

- (id)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 appendName:@"kind" object:@"-[CNContact predicateForMeContact]"];
  v4 = [v2 build];

  return v4;
}

- (CNMeContactsPredicate)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNMeContactsPredicate;
  return [(CNPredicate *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CNMeContactsPredicate;
  [(CNPredicate *)&v3 encodeWithCoder:a3];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (id)contactsFromDonationStore:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 donatedMeCardEither];
  v4 = [v3 isLeft];
  v5 = MEMORY[0x1E69966C0];
  if (v4)
  {
    v6 = [v3 left];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v5 eitherWithLeft:v7];
  }

  else
  {
    v6 = [v3 right];
    v8 = [v5 eitherWithRight:v6];
  }

  return v8;
}

@end