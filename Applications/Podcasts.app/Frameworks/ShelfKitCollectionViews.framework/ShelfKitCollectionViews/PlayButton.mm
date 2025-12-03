@interface PlayButton
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityLabel;
- (_TtC23ShelfKitCollectionViews10PlayButton)initWithFrame:(CGRect)frame;
- (void)setAccessibilityLabel:(id)label;
- (void)tintColorDidChange;
- (void)trigger;
@end

@implementation PlayButton

- (void)trigger
{
  selfCopy = self;
  sub_2A450C();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PlayButton *)&v3 tintColorDidChange];
  sub_2A9100();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  PlayButton.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSString)accessibilityLabel
{
  v3 = sub_309858();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews10PlayButton_buttonState;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  sub_3097B8();
  (*(v4 + 8))(v6, v3);
  v8 = sub_30C098();

  return v8;
}

- (void)setAccessibilityLabel:(id)label
{
  ObjectType = swift_getObjectType();
  if (label)
  {
    sub_30C0D8();
    selfCopy = self;
    label = sub_30C098();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(PlayButton *)&v8 setAccessibilityLabel:label];
}

- (_TtC23ShelfKitCollectionViews10PlayButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end