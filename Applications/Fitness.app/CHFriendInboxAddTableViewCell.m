@interface CHFriendInboxAddTableViewCell
- (CHFriendInboxAddTableViewCell)initWithCoder:(id)a3;
- (CHFriendInboxAddTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation CHFriendInboxAddTableViewCell

- (CHFriendInboxAddTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1004BD6F0(a3, a4, v6);
}

- (CHFriendInboxAddTableViewCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v9 = self;
  v4 = [(CHFriendInboxAddTableViewCell *)v9 accessoryView];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1004BDCC8();
      [v7 setImage:v8];
    }

    else
    {
      v8 = v9;
      v9 = v5;
    }
  }
}

@end