@interface RDFileURLs
+ (void)initialize;
- (RDFileURLs)init;
- (void)dealloc;
@end

@implementation RDFileURLs

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100016910 = os_log_create("com.apple.SensorKit", "RDFileURLs");
  }
}

- (RDFileURLs)init
{
  objc_opt_self();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([(NSArray *)v3 count])
  {
    v4 = [NSURL fileURLWithPath:[(NSArray *)v3 firstObject] isDirectory:1];
    if (!self)
    {
      return self;
    }
  }

  else
  {
    v4 = 0;
    if (!self)
    {
      return self;
    }
  }

  v6.receiver = self;
  v6.super_class = RDFileURLs;
  self = [(RDFileURLs *)&v6 init];
  if (self)
  {
    self->_rootDir = v4;
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RDFileURLs;
  [(RDFileURLs *)&v3 dealloc];
}

@end