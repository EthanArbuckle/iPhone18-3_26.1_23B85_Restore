@interface NSObject
- (id)_axAssociatedObjectForKey:(id)a3;
- (void)_axSetAssociatedObject:(id)a3 forKey:(id)a4;
@end

@implementation NSObject

- (id)_axAssociatedObjectForKey:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, [v4 hash]);

  return v5;
}

- (void)_axSetAssociatedObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  value = a3;
  objc_setAssociatedObject(self, [v6 hash], value, &dword_0 + 1);
}

@end