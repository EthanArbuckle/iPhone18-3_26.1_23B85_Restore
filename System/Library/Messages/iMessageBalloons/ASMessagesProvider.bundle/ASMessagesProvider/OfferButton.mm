@interface OfferButton
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider11OfferButton)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v19.receiver = self;
  v19.super_class = ObjectType;
  v9 = self;
  [(OfferButton *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v9;
  v18.super_class = ObjectType;
  [(OfferButton *)&v18 setFrame:x, y, width, height];
  sub_1DC798(v11, v13, v15, v17);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(OfferButton *)&v7 dealloc];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(OfferButton *)&v3 didMoveToSuperview];
  sub_1DE3E0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1DE594();
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(OfferButton *)&v4 invalidateIntrinsicContentSize];
  v3 = &v2[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1DF7CC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1DF7CC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(OfferButton *)&v8 setHighlighted:v3];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(v4 + v5, v7);
  sub_B170(v7, v7[3]);
  [v4 bounds];
  sub_1DF6D4(&qword_949A60, v6, type metadata accessor for OfferButton);
  sub_760E00();

  sub_BEB8(v7);
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(OfferButton *)&v6 tintColorDidChange];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
  swift_beginAccess();
  sub_134D8(v2 + v3, v5);
  sub_B170(v5, v5[3]);
  sub_1DF6D4(&qword_949A60, v4, type metadata accessor for OfferButton);
  sub_760E20();

  sub_BEB8(v5);
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = self;
  if ([(OfferButton *)&v8 isEnabled]!= v3)
  {
    sub_1DEC1C(v3);
  }

  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(OfferButton *)&v7 setEnabled:v3];
}

- (_TtC18ASMessagesProvider11OfferButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end