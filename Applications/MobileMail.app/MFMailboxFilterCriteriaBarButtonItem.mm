@interface MFMailboxFilterCriteriaBarButtonItem
- (MFMailboxFilterCriteriaBarButtonItem)initWithCoder:(id)coder;
- (MFMailboxFilterCriteriaBarButtonItem)initWithTarget:(id)target action:(SEL)action;
- (UIImageView)chevronImageView;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)setFilterDescription:(id)description;
@end

@implementation MFMailboxFilterCriteriaBarButtonItem

- (MFMailboxFilterCriteriaBarButtonItem)initWithTarget:(id)target action:(SEL)action
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (target)
  {
    _bridgeAnyObjectToAny(_:)();
    sub_100014898(v7, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return MFMailboxFilterCriteriaBarButtonItem.init(target:action:)(v8, action);
}

- (void)setFilterDescription:(id)description
{
  swift_getObjectType();
  _objc_retain(description);
  _objc_retain(self);
  if (description)
  {
    v4.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4.value._object = v3;
    _objc_release(description);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  MFMailboxFilterCriteriaBarButtonItem.setFilterDescription(_:)(v5);

  _objc_release(self);
}

- (UILabel)titleLabel
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1003C6F08();
  _objc_release(self);

  return v5;
}

- (UILabel)subtitleLabel
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1003C6FC4();
  _objc_release(self);

  return v5;
}

- (UIImageView)chevronImageView
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_1003C7080();
  _objc_release(self);

  return v5;
}

- (MFMailboxFilterCriteriaBarButtonItem)initWithCoder:(id)coder
{
  swift_getObjectType();
  _objc_retain(coder);
  MFMailboxFilterCriteriaBarButtonItem.init(coder:)();
}

@end