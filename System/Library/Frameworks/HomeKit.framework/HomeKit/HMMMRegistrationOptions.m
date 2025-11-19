@interface HMMMRegistrationOptions
- (HMMMRegistrationOptions)initWithUserRestriction:(int64_t)a3;
- (id)attributeDescriptions;
@end

@implementation HMMMRegistrationOptions

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMMRegistrationOptions *)self userRestriction];
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7548980[v4];
  }

  v6 = [v3 initWithName:@"UserRestriction" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMMMRegistrationOptions)initWithUserRestriction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMMMRegistrationOptions;
  result = [(HMMMRegistrationOptions *)&v5 init];
  if (result)
  {
    result->_userRestriction = a3;
  }

  return result;
}

@end