@interface NSUserActivity
- (BOOL)isStateRestorationActivity;
@end

@implementation NSUserActivity

- (BOOL)isStateRestorationActivity
{
  v2 = self;
  v3 = [(NSUserActivity *)v2 activityType];
  v4 = sub_3ED244();
  v6 = v5;

  if (v4 == 0xD000000000000023 && 0x800000000042E280 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

@end