@interface STUser
- (STUser)initWithCoder:(id)coder;
- (STUser)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation STUser

- (STUser)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_100049E08();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_100049E08();
  v11 = v10;
  if (hint)
  {
    v12 = sub_100049E08();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return STUser.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (STUser)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for STUser();
  coderCopy = coder;
  v5 = [(STUser *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end