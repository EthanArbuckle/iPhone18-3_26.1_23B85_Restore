@interface CommunicationControl
- (BOOL)isEnabled;
- (CGSize)intrinsicContentSize;
- (UIColor)tintColor;
- (_TtC13SharedWithYou20CommunicationControl)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)setTintColor:(id)color;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CommunicationControl

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1BBC32A78();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CommunicationControl *)&v3 isEnabled];
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  tintColor = [(CommunicationControl *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  colorCopy = color;
  v5 = v6.receiver;
  [(CommunicationControl *)&v6 setTintColor:colorCopy];
  sub_1BBC33264();
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1BBC341E4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BBC34370(change);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_1BBC349D4();

  return v7;
}

- (_TtC13SharedWithYou20CommunicationControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end