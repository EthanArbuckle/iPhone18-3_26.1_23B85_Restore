@interface NSUserDefaults
- (BOOL)_ICDebugWindowEnabled;
- (void)set_ICDebugWindowEnabled:(BOOL)a3;
@end

@implementation NSUserDefaults

- (BOOL)_ICDebugWindowEnabled
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)set_ICDebugWindowEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setBool:v3 forKey:v4];
}

@end