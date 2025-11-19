@interface MapsSwiftDemangler
+ (id)demangledStringForClass:(Class)a3;
@end

@implementation MapsSwiftDemangler

+ (id)demangledStringForClass:(Class)a3
{
  v3 = NSStringFromClass(a3);
  v4 = [v3 UTF8String];
  if (qword_10195D830 != -1)
  {
    dispatch_once(&qword_10195D830, &stru_10162A088);
  }

  if (!off_10195D838)
  {
    goto LABEL_8;
  }

  v5 = 0;
  do
  {
    v6 = v5;
  }

  while (v4[v5++]);
  v8 = off_10195D838(v4, v6, 0, 0, 0);
  if (v8)
  {
    v9 = [[NSString alloc] initWithCString:v8 encoding:4];
  }

  else
  {
LABEL_8:
    v9 = v3;
  }

  v10 = v9;

  return v10;
}

@end