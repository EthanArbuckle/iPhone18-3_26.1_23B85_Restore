@interface CNUIAAfamilyMember
+ (id)cnuiFamilyMemberWithAAFamilyMember:(id)a3;
- (CNUIAAfamilyMember)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNUIAAfamilyMember

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if (([v9 allowsKeyedCoding] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CNUIAAfamilyMember.m" lineNumber:56 description:@"Keyed coder expected"];
  }

  v5 = [(CNUIAAfamilyMember *)self firstName];
  [v9 encodeObject:v5 forKey:@"firstName"];

  v6 = [(CNUIAAfamilyMember *)self lastName];
  [v9 encodeObject:v6 forKey:@"lastName"];

  v7 = [(CNUIAAfamilyMember *)self appleID];
  [v9 encodeObject:v7 forKey:@"appleID"];

  [v9 encodeBool:-[CNUIAAfamilyMember isMe](self forKey:{"isMe"), @"isMe"}];
}

- (CNUIAAfamilyMember)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNUIAAfamilyMember;
  v5 = [(CNUIAAfamilyMember *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(CNUIAAfamilyMember *)v5 setFirstName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    [(CNUIAAfamilyMember *)v5 setLastName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    [(CNUIAAfamilyMember *)v5 setAppleID:v8];

    -[CNUIAAfamilyMember setIsMe:](v5, "setIsMe:", [v4 decodeBoolForKey:@"isMe"]);
    v9 = v5;
  }

  return v5;
}

+ (id)cnuiFamilyMemberWithAAFamilyMember:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNUIAAfamilyMember);
  v5 = [v3 firstName];
  [(CNUIAAfamilyMember *)v4 setFirstName:v5];

  v6 = [v3 lastName];
  [(CNUIAAfamilyMember *)v4 setLastName:v6];

  v7 = [v3 appleID];
  [(CNUIAAfamilyMember *)v4 setAppleID:v7];

  v8 = [v3 isMe];
  [(CNUIAAfamilyMember *)v4 setIsMe:v8];

  return v4;
}

@end