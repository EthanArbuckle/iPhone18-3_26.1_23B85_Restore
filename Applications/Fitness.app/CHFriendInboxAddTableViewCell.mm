@interface CHFriendInboxAddTableViewCell
- (CHFriendInboxAddTableViewCell)initWithCoder:(id)coder;
- (CHFriendInboxAddTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation CHFriendInboxAddTableViewCell

- (CHFriendInboxAddTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1004BD6F0(style, identifier, v6);
}

- (CHFriendInboxAddTableViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  selfCopy = self;
  accessoryView = [(CHFriendInboxAddTableViewCell *)selfCopy accessoryView];
  if (accessoryView)
  {
    v5 = accessoryView;
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
      v8 = selfCopy;
      selfCopy = v5;
    }
  }
}

@end