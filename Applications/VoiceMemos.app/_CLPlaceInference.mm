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
  v3 = [(_CLPlaceInference *)self placemark];
  v4 = [v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(_CLPlaceInference *)self userType];
  if (v7)
  {
    v6 = [qword_1002D70B8 objectAtIndexedSubscript:v7];
    goto LABEL_5;
  }

  v10 = [v3 subThoroughfare];
  v11 = [v3 thoroughfare];
  v12 = v11;
  v8 = 0;
  if (v10 && v11)
  {
    v8 = [NSString stringWithFormat:@"%@ %@", v10, v11];
  }

LABEL_6:

  return v8;
}

@end