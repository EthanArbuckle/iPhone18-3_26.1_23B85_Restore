@interface URLTarget
+ (id)targetWithBundle:(id)a3 scheme:(id)a4 secureScheme:(id)a5;
- (URLTarget)initWithBundle:(id)a3 scheme:(id)a4 secureScheme:(id)a5;
@end

@implementation URLTarget

- (URLTarget)initWithBundle:(id)a3 scheme:(id)a4 secureScheme:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = URLTarget;
  v12 = [(URLTarget *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a3);
    objc_storeStrong(&v13->_normalScheme, a4);
    objc_storeStrong(&v13->_secureScheme, a5);
  }

  return v13;
}

+ (id)targetWithBundle:(id)a3 scheme:(id)a4 secureScheme:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithBundle:v10 scheme:v9 secureScheme:v8];

  return v11;
}

@end