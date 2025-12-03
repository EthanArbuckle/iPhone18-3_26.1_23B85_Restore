@interface _BCPPTImageSet
+ (id)imageSetWithEntry:(id)entry;
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

+ (id)imageSetWithEntry:(id)entry
{
  entryCopy = entry;
  v4 = objc_opt_new();
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  [v4 setIdentifier:uUIDString];

  v10 = entryCopy;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v8 = [NSSet setWithArray:v7];

  [v4 setImageEntries:v8];

  return v4;
}

- (id)primaryEntry
{
  imageEntries = [(_BCPPTImageSet *)self imageEntries];
  allObjects = [imageEntries allObjects];
  firstObject = [allObjects firstObject];

  return firstObject;
}

@end