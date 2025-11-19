@interface AAPersonalInfoUIRequest
- (id)urlString;
@end

@implementation AAPersonalInfoUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 personalInfoUIURL];

  return v3;
}

@end