@interface RefinementsViewModelFactory
+ (id)multiSelectRefinementsViewModelWith:(id)a3 tappedAtIndex:(int64_t)a4;
+ (id)openOptionsRefinementsViewModelWith:(id)a3 tappedAtIndex:(int64_t)a4;
+ (id)refinementsViewModelWithGroup:(id)a3;
- (_TtC4Maps27RefinementsViewModelFactory)init;
@end

@implementation RefinementsViewModelFactory

+ (id)refinementsViewModelWithGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 resultRefinementView];
  if (v4)
  {
    v5 = v4;
    swift_getObjCClassMetadata();
    v6 = sub_100336E00(v5);
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

+ (id)multiSelectRefinementsViewModelWith:(id)a3 tappedAtIndex:(int64_t)a4
{
  v5 = a3;
  v6 = sub_100338DF8(v5, a4);

  return v6;
}

+ (id)openOptionsRefinementsViewModelWith:(id)a3 tappedAtIndex:(int64_t)a4
{
  v5 = a3;
  v6 = sub_1003395B4(v5, a4);

  return v6;
}

- (_TtC4Maps27RefinementsViewModelFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RefinementsViewModelFactory();
  return [(RefinementsViewModelFactory *)&v3 init];
}

@end