@interface BKChapterPageCount
+ (id)newEmptyChapterPageNumber:(id)number;
- (NSString)name;
@end

@implementation BKChapterPageCount

+ (id)newEmptyChapterPageNumber:(id)number
{
  numberCopy = number;
  v4 = [numberCopy newByClass:objc_opt_class()];

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