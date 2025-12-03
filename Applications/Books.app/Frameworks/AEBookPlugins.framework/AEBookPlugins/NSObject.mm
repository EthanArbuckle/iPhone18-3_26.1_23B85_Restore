@interface NSObject
- (id)_axAssociatedObjectForKey:(id)key;
- (void)_axSetAssociatedObject:(id)object forKey:(id)key;
@end

@implementation NSObject

- (id)_axAssociatedObjectForKey:(id)key
{
  keyCopy = key;
  v5 = objc_getAssociatedObject(self, [keyCopy hash]);

  return v5;
}

- (void)_axSetAssociatedObject:(id)object forKey:(id)key
{
  keyCopy = key;
  value = object;
  objc_setAssociatedObject(self, [keyCopy hash], value, &dword_0 + 1);
}

@end