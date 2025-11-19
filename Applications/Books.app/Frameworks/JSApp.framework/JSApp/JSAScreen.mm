@interface JSAScreen
- (BOOL)supportsWideGamut;
- (JSAWindow)keyWindow;
- (NSDictionary)size;
- (NSNumber)scale;
@end

@implementation JSAScreen

- (BOOL)supportsWideGamut
{
  v2 = sub_7F41C(self);
  v3 = [v2 traitCollection];
  v4 = [v3 displayGamut] == &dword_0 + 1;

  return v4;
}

- (JSAWindow)keyWindow
{
  v2 = objc_alloc_init(_JSAWindowManagerKeyWindowHosting);
  v3 = [[JSAWindow alloc] initWithHosting:v2];

  return v3;
}

- (NSNumber)scale
{
  v2 = sub_7F41C(self);
  [v2 scale];
  v3 = [NSNumber numberWithDouble:?];

  return v3;
}

- (NSDictionary)size
{
  v2 = sub_7F41C(self);
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v11[0] = @"width";
  v7 = [NSNumber numberWithDouble:v4];
  v11[1] = @"height";
  v12[0] = v7;
  v8 = [NSNumber numberWithDouble:v6];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end