@interface GEOSubPremise
- (NSString)localizedDescription;
@end

@implementation GEOSubPremise

- (NSString)localizedDescription
{
  v4 = [(GEOSubPremise *)self type];
  if (v4 <= 3)
  {
    v5 = *(&off_101629D98 + v4);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];
    v8 = [(GEOSubPremise *)self name];
    v2 = [NSString stringWithFormat:v7, v8];
  }

  return v2;
}

@end