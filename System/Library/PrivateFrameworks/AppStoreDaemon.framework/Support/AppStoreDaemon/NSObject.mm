@interface NSObject
- (id)_tcr_associatedReader;
- (void)_tcr_associateWithReader:(id)reader;
@end

@implementation NSObject

- (void)_tcr_associateWithReader:(id)reader
{
  selfCopy = self;
  value = reader;
  objc_opt_self();
  objc_setAssociatedObject(selfCopy, &unk_10044BBC0, value, 0x301);
}

- (id)_tcr_associatedReader
{
  selfCopy = self;
  objc_opt_self();
  v3 = objc_getAssociatedObject(selfCopy, &unk_10044BBC0);

  return v3;
}

@end