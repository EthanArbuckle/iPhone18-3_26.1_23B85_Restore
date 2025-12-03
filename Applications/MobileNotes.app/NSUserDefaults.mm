@interface NSUserDefaults
- (BOOL)_ICDebugWindowEnabled;
- (void)set_ICDebugWindowEnabled:(BOOL)enabled;
@end

@implementation NSUserDefaults

- (BOOL)_ICDebugWindowEnabled
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)set_ICDebugWindowEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setBool:enabledCopy forKey:v4];
}

@end