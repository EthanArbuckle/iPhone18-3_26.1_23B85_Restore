@interface DistanceAccessoryLabelViewModel
- (UIView)labelView;
- (_TtC4Maps31DistanceAccessoryLabelViewModel)init;
- (void)setLabelView:(id)view;
- (void)setString:(id)string;
@end

@implementation DistanceAccessoryLabelViewModel

- (void)setString:(id)string
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  stringCopy = string;
  selfCopy = self;
  AttributedString.init(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v6 + 16))(v8, v11, v5);
  static Published.subscript.setter();

  (*(v6 + 8))(v11, v5);
}

- (_TtC4Maps31DistanceAccessoryLabelViewModel)init
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps31DistanceAccessoryLabelViewModel____lazy_storage___labelView) = 1;
  AttributedString.init(stringLiteral:)();
  swift_beginAccess();
  (*(v4 + 16))(v6, v9, v3);
  Published.init(initialValue:)();
  (*(v4 + 8))(v9, v3);
  swift_endAccess();
  v10 = type metadata accessor for DistanceAccessoryLabelViewModel();
  v13.receiver = self;
  v13.super_class = v10;
  return [(DistanceAccessoryLabelViewModel *)&v13 init];
}

- (UIView)labelView
{
  selfCopy = self;
  v3 = sub_1003D8960();

  return v3;
}

- (void)setLabelView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps31DistanceAccessoryLabelViewModel____lazy_storage___labelView);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps31DistanceAccessoryLabelViewModel____lazy_storage___labelView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_10005D280(v4);
}

@end