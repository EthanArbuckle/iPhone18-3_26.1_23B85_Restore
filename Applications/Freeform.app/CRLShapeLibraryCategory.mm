@interface CRLShapeLibraryCategory
- (NSString)name;
@end

@implementation CRLShapeLibraryCategory

- (NSString)name
{
  v2 = [(CRLShapeLibraryCategory *)self localizationKey];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:0 table:@"CRLShapeLibrarianCategoryNames"];

  return v4;
}

@end