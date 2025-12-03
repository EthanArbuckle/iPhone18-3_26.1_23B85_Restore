@interface SmallBreakoutCollectionViewCell
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
@end

@implementation SmallBreakoutCollectionViewCell

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  backgroundColor = [(SmallBreakoutCollectionViewCell *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  colorCopy = color;
  selfCopy = self;
  [(SmallBreakoutCollectionViewCell *)&v12 setBackgroundColor:colorCopy];
  v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView);
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  v9 = v8;
  backgroundColor = [(SmallBreakoutCollectionViewCell *)&v11 backgroundColor];
  sub_10075FB8C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100651F5C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100651258();
}

@end