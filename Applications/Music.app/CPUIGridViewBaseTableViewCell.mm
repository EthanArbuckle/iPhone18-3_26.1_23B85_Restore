@interface CPUIGridViewBaseTableViewCell
+ (id)reuseIdentifierFor:(unint64_t)for;
@end

@implementation CPUIGridViewBaseTableViewCell

+ (id)reuseIdentifierFor:(unint64_t)for
{
  swift_getObjCClassMetadata();
  sub_1003C5BDC(for);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

@end