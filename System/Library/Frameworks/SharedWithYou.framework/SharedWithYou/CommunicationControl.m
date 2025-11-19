@interface CommunicationControl
- (BOOL)isEnabled;
- (CGSize)intrinsicContentSize;
- (UIColor)tintColor;
- (_TtC13SharedWithYou20CommunicationControl)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)setTintColor:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CommunicationControl

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = [(CommunicationControl *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(CommunicationControl *)&v6 setTintColor:v4];
  sub_1BBC33264();
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_1BBC341E4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BBC34370(a3);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1BBC349D4();

  return v7;
}

- (_TtC13SharedWithYou20CommunicationControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end