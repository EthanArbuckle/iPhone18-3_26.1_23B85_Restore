@interface CRLShapeLibraryCategory
- (NSString)name;
@end

@implementation CRLShapeLibraryCategory

- (NSString)name
{
  localizationKey = [(CRLShapeLibraryCategory *)self localizationKey];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:localizationKey value:0 table:@"CRLShapeLibrarianCategoryNames"];

  return v4;
}

@end