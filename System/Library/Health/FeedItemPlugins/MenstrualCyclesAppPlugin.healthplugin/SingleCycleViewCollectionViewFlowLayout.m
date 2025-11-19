@interface SingleCycleViewCollectionViewFlowLayout
- (_TtC24MenstrualCyclesAppPlugin39SingleCycleViewCollectionViewFlowLayout)init;
- (_TtC24MenstrualCyclesAppPlugin39SingleCycleViewCollectionViewFlowLayout)initWithCoder:(id)a3;
- (void)prepareLayout;
@end

@implementation SingleCycleViewCollectionViewFlowLayout

- (_TtC24MenstrualCyclesAppPlugin39SingleCycleViewCollectionViewFlowLayout)init
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(UICollectionViewFlowLayout *)&v4 init];
  [(UICollectionViewFlowLayout *)v2 setScrollDirection:1];
  return v2;
}

- (_TtC24MenstrualCyclesAppPlugin39SingleCycleViewCollectionViewFlowLayout)initWithCoder:(id)a3
{
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  v2 = self;
  sub_29E074938();
}

@end