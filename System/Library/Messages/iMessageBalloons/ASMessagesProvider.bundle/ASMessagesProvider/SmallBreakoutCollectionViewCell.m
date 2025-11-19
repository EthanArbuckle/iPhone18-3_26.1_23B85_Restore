@interface SmallBreakoutCollectionViewCell
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SmallBreakoutCollectionViewCell

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(SmallBreakoutCollectionViewCell *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v6 = a3;
  v7 = self;
  [(SmallBreakoutCollectionViewCell *)&v12 setBackgroundColor:v6];
  v8 = *(&v7->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView);
  v11.receiver = v7;
  v11.super_class = ObjectType;
  v9 = v8;
  v10 = [(SmallBreakoutCollectionViewCell *)&v11 backgroundColor];
  sub_759070();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_645024();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_644320();
}

@end