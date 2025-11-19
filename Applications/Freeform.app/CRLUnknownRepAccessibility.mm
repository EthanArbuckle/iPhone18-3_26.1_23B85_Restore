@interface CRLUnknownRepAccessibility
- (id)crlaxLabel;
@end

@implementation CRLUnknownRepAccessibility

- (id)crlaxLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Unsupported Object" value:0 table:0];

  return v3;
}

@end