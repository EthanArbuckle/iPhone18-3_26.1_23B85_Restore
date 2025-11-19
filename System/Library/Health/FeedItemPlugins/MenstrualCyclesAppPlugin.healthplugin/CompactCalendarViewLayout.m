@interface CompactCalendarViewLayout
- (_TtC24MenstrualCyclesAppPlugin25CompactCalendarViewLayout)init;
- (_TtC24MenstrualCyclesAppPlugin25CompactCalendarViewLayout)initWithCoder:(id)a3;
- (void)prepareLayout;
@end

@implementation CompactCalendarViewLayout

- (_TtC24MenstrualCyclesAppPlugin25CompactCalendarViewLayout)init
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(UICollectionViewFlowLayout *)&v4 init];
  [(UICollectionViewFlowLayout *)v2 setMinimumLineSpacing:6.0];
  [(UICollectionViewFlowLayout *)v2 setMinimumInteritemSpacing:10.0];

  return v2;
}

- (_TtC24MenstrualCyclesAppPlugin25CompactCalendarViewLayout)initWithCoder:(id)a3
{
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  v2 = self;
  sub_29E0AF4F4();
}

@end