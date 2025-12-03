@interface RefinementsViewModelFactory
+ (id)multiSelectRefinementsViewModelWith:(id)with tappedAtIndex:(int64_t)index;
+ (id)openOptionsRefinementsViewModelWith:(id)with tappedAtIndex:(int64_t)index;
+ (id)refinementsViewModelWithGroup:(id)group;
- (_TtC4Maps27RefinementsViewModelFactory)init;
@end

@implementation RefinementsViewModelFactory

+ (id)refinementsViewModelWithGroup:(id)group
{
  groupCopy = group;
  resultRefinementView = [groupCopy resultRefinementView];
  if (resultRefinementView)
  {
    v5 = resultRefinementView;
    swift_getObjCClassMetadata();
    v6 = sub_100336E00(v5);
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

+ (id)multiSelectRefinementsViewModelWith:(id)with tappedAtIndex:(int64_t)index
{
  withCopy = with;
  v6 = sub_100338DF8(withCopy, index);

  return v6;
}

+ (id)openOptionsRefinementsViewModelWith:(id)with tappedAtIndex:(int64_t)index
{
  withCopy = with;
  v6 = sub_1003395B4(withCopy, index);

  return v6;
}

- (_TtC4Maps27RefinementsViewModelFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RefinementsViewModelFactory();
  return [(RefinementsViewModelFactory *)&v3 init];
}

@end