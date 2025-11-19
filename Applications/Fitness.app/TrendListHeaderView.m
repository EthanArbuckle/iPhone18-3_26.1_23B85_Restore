@interface TrendListHeaderView
- (_TtC10FitnessApp19TrendListHeaderView)initWithCoder:(id)a3;
@end

@implementation TrendListHeaderView

- (_TtC10FitnessApp19TrendListHeaderView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_label;
  sub_1000059F8(0, &qword_1008E2D40);
  v6 = a3;
  *(&self->super.super.super.isa + v5) = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp19TrendListHeaderView_topConstraint;
  v8 = [objc_allocWithZone(NSLayoutConstraint) init];

  *(&self->super.super.super.isa + v7) = v8;
  type metadata accessor for TrendListHeaderView();
  swift_deallocPartialClassInstance();
  return 0;
}

@end