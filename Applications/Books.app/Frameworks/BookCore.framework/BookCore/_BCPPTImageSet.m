@interface _BCPPTImageSet
+ (id)imageSetWithEntry:(id)a3;
- (id)imageColor;
- (id)primaryEntry;
@end

@implementation _BCPPTImageSet

- (id)imageColor
{
  if (qword_342130 != -1)
  {
    sub_1E4C64();
  }

  v0 = qword_342128;
  v1 = arc4random();
  v2 = v1 % [qword_342128 count];

  return [v0 objectAtIndexedSubscript:v2];
}

+ (id)imageSetWithEntry:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];
  [v4 setIdentifier:v6];

  v10 = v3;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [NSSet setWithArray:v7];

  [v4 setImageEntries:v8];

  return v4;
}

- (id)primaryEntry
{
  v2 = [(_BCPPTImageSet *)self imageEntries];
  v3 = [v2 allObjects];
  v4 = [v3 firstObject];

  return v4;
}

@end