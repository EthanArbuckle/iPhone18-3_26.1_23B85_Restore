@interface CRLImageItemAccessibility
- (id)crlaxTypeDescription;
@end

@implementation CRLImageItemAccessibility

- (id)crlaxTypeDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Image" value:0 table:0];

  return v3;
}

@end