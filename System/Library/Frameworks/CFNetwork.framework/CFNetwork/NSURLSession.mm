@interface NSURLSession
+ (Class)class;
- (id).cxx_construct;
@end

@implementation NSURLSession

+ (Class)class
{
  if (!_os_feature_enabled_impl())
  {
    return self;
  }

  Name = class_getName(self);
  if (strcmp(Name, "NSURLSession"))
  {
    return self;
  }

  v5 = dyld_image_path_containing_address();
  if (!v5 || !strstr(v5, "Embrace.framework"))
  {
    return self;
  }

  return objc_getClass("NWURLSession");
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end