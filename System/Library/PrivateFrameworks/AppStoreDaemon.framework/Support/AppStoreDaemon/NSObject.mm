@interface NSObject
- (id)_tcr_associatedReader;
- (void)_tcr_associateWithReader:(id)a3;
@end

@implementation NSObject

- (void)_tcr_associateWithReader:(id)a3
{
  v4 = self;
  value = a3;
  objc_opt_self();
  objc_setAssociatedObject(v4, &unk_10044BBC0, value, 0x301);
}

- (id)_tcr_associatedReader
{
  v2 = self;
  objc_opt_self();
  v3 = objc_getAssociatedObject(v2, &unk_10044BBC0);

  return v3;
}

@end