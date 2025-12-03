@interface HMMMRegistrationOptions
- (HMMMRegistrationOptions)initWithUserRestriction:(int64_t)restriction;
- (id)attributeDescriptions;
@end

@implementation HMMMRegistrationOptions

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  userRestriction = [(HMMMRegistrationOptions *)self userRestriction];
  if (userRestriction > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7548980[userRestriction];
  }

  v6 = [v3 initWithName:@"UserRestriction" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMMMRegistrationOptions)initWithUserRestriction:(int64_t)restriction
{
  v5.receiver = self;
  v5.super_class = HMMMRegistrationOptions;
  result = [(HMMMRegistrationOptions *)&v5 init];
  if (result)
  {
    result->_userRestriction = restriction;
  }

  return result;
}

@end