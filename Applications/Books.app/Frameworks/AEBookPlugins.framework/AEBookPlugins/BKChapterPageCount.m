@interface BKChapterPageCount
+ (id)newEmptyChapterPageNumber:(id)a3;
- (NSString)name;
@end

@implementation BKChapterPageCount

+ (id)newEmptyChapterPageNumber:(id)a3
{
  v3 = a3;
  v4 = [v3 newByClass:objc_opt_class()];

  return v4;
}

- (NSString)name
{
  v2 = [(BKChapterPageCount *)self primitiveValueForKey:@"name"];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

@end