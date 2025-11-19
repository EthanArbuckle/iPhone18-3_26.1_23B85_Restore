@interface CPUIGridViewBaseTableViewCell
+ (id)reuseIdentifierFor:(unint64_t)a3;
@end

@implementation CPUIGridViewBaseTableViewCell

+ (id)reuseIdentifierFor:(unint64_t)a3
{
  swift_getObjCClassMetadata();
  sub_1003C5BDC(a3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

@end