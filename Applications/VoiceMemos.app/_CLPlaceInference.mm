@interface _CLPlaceInference
+ (void)initialize;
- (NSString)preferredName;
@end

@implementation _CLPlaceInference

+ (void)initialize
{
  v2 = qword_1002D70B8;
  qword_1002D70B8 = &off_10029AC08;
}

- (NSString)preferredName
{
  placemark = [(_CLPlaceInference *)self placemark];
  name = [placemark name];
  v5 = name;
  if (name)
  {
    v6 = name;
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  userType = [(_CLPlaceInference *)self userType];
  if (userType)
  {
    v6 = [qword_1002D70B8 objectAtIndexedSubscript:userType];
    goto LABEL_5;
  }

  subThoroughfare = [placemark subThoroughfare];
  thoroughfare = [placemark thoroughfare];
  v12 = thoroughfare;
  v8 = 0;
  if (subThoroughfare && thoroughfare)
  {
    v8 = [NSString stringWithFormat:@"%@ %@", subThoroughfare, thoroughfare];
  }

LABEL_6:

  return v8;
}

@end