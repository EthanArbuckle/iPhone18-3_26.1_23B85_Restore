@interface COSControlCenterTriggerAnimationCell
- (COSControlCenterTriggerAnimationCell)initWithCoder:(id)coder;
- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation COSControlCenterTriggerAnimationCell

- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = 0;
    self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *&self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = 0;
    self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for ControlCenterTriggerAnimationCell();
  v7 = [(COSControlCenterTriggerAnimationCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10014DD6C(style, v7, v8, specifier);
  return result;
}

- (COSControlCenterTriggerAnimationCell)initWithCoder:(id)coder
{
  *&self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = 0;
  self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_10014E1B4();
}

@end