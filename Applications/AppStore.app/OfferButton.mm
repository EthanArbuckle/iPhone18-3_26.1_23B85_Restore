@interface OfferButton
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore11OfferButton)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation OfferButton

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(OfferButton *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v19.receiver = self;
  v19.super_class = ObjectType;
  selfCopy = self;
  [(OfferButton *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = ObjectType;
  [(OfferButton *)&v18 setFrame:x, y, width, height];
  sub_1000F4A10(v11, v13, v15, v17);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(OfferButton *)&v7 dealloc];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OfferButton *)&v3 didMoveToSuperview];
  sub_1000F65D4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000F6788();
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OfferButton *)&v4 invalidateIntrinsicContentSize];
  v3 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1000F79BC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1000F79BC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(OfferButton *)&v8 setHighlighted:highlightedCopy];
  v5 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v4 + v5, v7);
  sub_10002A400(v7, v7[3]);
  [v4 bounds];
  sub_1000F78C4(&qword_1009741F0, v6, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.layout<A>(button:in:disableAnimations:)();

  sub_100007000(v7);
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(OfferButton *)&v6 tintColorDidChange];
  v3 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v2 + v3, v5);
  sub_10002A400(v5, v5[3]);
  sub_1000F78C4(&qword_1009741F0, v4, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.reapply<A>(colorsTo:)();

  sub_100007000(v5);
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  ObjectType = swift_getObjectType();
  v8.receiver = self;
  v8.super_class = ObjectType;
  selfCopy = self;
  if ([(OfferButton *)&v8 isEnabled]!= enabledCopy)
  {
    sub_1000F6E50(enabledCopy);
  }

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(OfferButton *)&v7 setEnabled:enabledCopy];
}

- (_TtC8AppStore11OfferButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end