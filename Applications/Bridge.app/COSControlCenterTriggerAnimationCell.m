@interface COSControlCenterTriggerAnimationCell
- (COSControlCenterTriggerAnimationCell)initWithCoder:(id)a3;
- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)updateConstraints;
@end

@implementation COSControlCenterTriggerAnimationCell

- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(COSControlCenterTriggerAnimationCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (COSControlCenterTriggerAnimationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10014DD6C(a3, v7, v8, a5);
  return result;
}

- (COSControlCenterTriggerAnimationCell)initWithCoder:(id)a3
{
  *&self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = 0;
  self->PSTableCell_opaque[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  v2 = self;
  sub_10014E1B4();
}

@end