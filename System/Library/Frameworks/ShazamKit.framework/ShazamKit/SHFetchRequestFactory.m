@interface SHFetchRequestFactory
+ (id)groupsFetchRequestWithContext:(id)a3;
@end

@implementation SHFetchRequestFactory

+ (id)groupsFetchRequestWithContext:(id)a3
{
  v3 = +[SHGroupMO fetchRequest];
  [v3 setSortDescriptors:&__NSArray0__struct];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = NSStringFromSelector("metadata");
  v8[0] = v4;
  v5 = NSStringFromSelector("tracks");
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];
  [v3 setRelationshipKeyPathsForPrefetching:v6];

  return v3;
}

@end