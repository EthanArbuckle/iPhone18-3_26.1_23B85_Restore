@interface AAPersonalInfoUIRequest
- (id)urlString;
@end

@implementation AAPersonalInfoUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  personalInfoUIURL = [v2 personalInfoUIURL];

  return personalInfoUIURL;
}

@end