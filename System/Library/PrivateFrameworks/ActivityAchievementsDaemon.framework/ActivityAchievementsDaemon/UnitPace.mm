@interface UnitPace
+ (id)baseUnit;
- (_TtC26ActivityAchievementsDaemonP33_15C46F8846D831575E9C9952FF3C6A058UnitPace)initWithCoder:(id)a3;
- (_TtC26ActivityAchievementsDaemonP33_15C46F8846D831575E9C9952FF3C6A058UnitPace)initWithSymbol:(id)a3 converter:(id)a4;
@end

@implementation UnitPace

- (_TtC26ActivityAchievementsDaemonP33_15C46F8846D831575E9C9952FF3C6A058UnitPace)initWithSymbol:(id)a3 converter:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnitPace();
  return [(NSDimension *)&v7 initWithSymbol:a3 converter:a4];
}

- (_TtC26ActivityAchievementsDaemonP33_15C46F8846D831575E9C9952FF3C6A058UnitPace)initWithCoder:(id)a3
{
  result = sub_221E57060();
  __break(1u);
  return result;
}

+ (id)baseUnit
{
  swift_getObjCClassMetadata();
  v2 = sub_221E4208C();

  return v2;
}

@end