@interface VenueAllLabel
- (VenueAllLabel)init;
@end

@implementation VenueAllLabel

- (VenueAllLabel)init
{
  v7.receiver = self;
  v7.super_class = VenueAllLabel;
  v2 = [(VenueAllLabel *)&v7 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"[Venues] All" value:@"localized string not found" table:0];
    name = v2->_name;
    v2->_name = v4;
  }

  return v2;
}

@end