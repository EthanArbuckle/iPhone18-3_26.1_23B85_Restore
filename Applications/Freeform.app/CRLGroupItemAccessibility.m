@interface CRLGroupItemAccessibility
- (id)crlaxTypeDescription;
@end

@implementation CRLGroupItemAccessibility

- (id)crlaxTypeDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"GROUP_ACCESSIBILITY" value:@"Group" table:0];

  return v3;
}

@end