@interface CNUIAAfamilyMember
+ (id)cnuiFamilyMemberWithAAFamilyMember:(id)member;
- (CNUIAAfamilyMember)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNUIAAfamilyMember

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUIAAfamilyMember.m" lineNumber:56 description:@"Keyed coder expected"];
  }

  firstName = [(CNUIAAfamilyMember *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"firstName"];

  lastName = [(CNUIAAfamilyMember *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"lastName"];

  appleID = [(CNUIAAfamilyMember *)self appleID];
  [coderCopy encodeObject:appleID forKey:@"appleID"];

  [coderCopy encodeBool:-[CNUIAAfamilyMember isMe](self forKey:{"isMe"), @"isMe"}];
}

- (CNUIAAfamilyMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNUIAAfamilyMember;
  v5 = [(CNUIAAfamilyMember *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(CNUIAAfamilyMember *)v5 setFirstName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    [(CNUIAAfamilyMember *)v5 setLastName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    [(CNUIAAfamilyMember *)v5 setAppleID:v8];

    -[CNUIAAfamilyMember setIsMe:](v5, "setIsMe:", [coderCopy decodeBoolForKey:@"isMe"]);
    v9 = v5;
  }

  return v5;
}

+ (id)cnuiFamilyMemberWithAAFamilyMember:(id)member
{
  memberCopy = member;
  v4 = objc_alloc_init(CNUIAAfamilyMember);
  firstName = [memberCopy firstName];
  [(CNUIAAfamilyMember *)v4 setFirstName:firstName];

  lastName = [memberCopy lastName];
  [(CNUIAAfamilyMember *)v4 setLastName:lastName];

  appleID = [memberCopy appleID];
  [(CNUIAAfamilyMember *)v4 setAppleID:appleID];

  isMe = [memberCopy isMe];
  [(CNUIAAfamilyMember *)v4 setIsMe:isMe];

  return v4;
}

@end