@interface JSAWindow
- (JSAWindow)initWithHosting:(id)hosting;
- (NSDictionary)size;
@end

@implementation JSAWindow

- (JSAWindow)initWithHosting:(id)hosting
{
  hostingCopy = hosting;
  v9.receiver = self;
  v9.super_class = JSAWindow;
  v6 = [(JSAWindow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hosting, hosting);
  }

  return v7;
}

- (NSDictionary)size
{
  hosting = [(JSAWindow *)self hosting];
  [hosting windowHostingWindowSize];
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