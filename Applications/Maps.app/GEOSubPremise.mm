@interface GEOSubPremise
- (NSString)localizedDescription;
@end

@implementation GEOSubPremise

- (NSString)localizedDescription
{
  type = [(GEOSubPremise *)self type];
  if (type <= 3)
  {
    v5 = *(&off_101629D98 + type);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];
    name = [(GEOSubPremise *)self name];
    v2 = [NSString stringWithFormat:v7, name];
  }

  return v2;
}

@end