@interface MapsSwiftDemangler
+ (id)demangledStringForClass:(Class)class;
@end

@implementation MapsSwiftDemangler

+ (id)demangledStringForClass:(Class)class
{
  v3 = NSStringFromClass(class);
  uTF8String = [v3 UTF8String];
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

  while (uTF8String[v5++]);
  v8 = off_10195D838(uTF8String, v6, 0, 0, 0);
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