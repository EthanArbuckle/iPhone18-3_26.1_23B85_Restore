@interface UIPresentationController
- (BOOL)crl_willOnlyEverBePresentedAsAPopover;
- (void)crl_setWillOnlyEverBePresentedAsAPopover:(BOOL)a3;
@end

@implementation UIPresentationController

- (BOOL)crl_willOnlyEverBePresentedAsAPopover
{
  v3 = objc_opt_class();
  v4 = objc_getAssociatedObject(self, off_1019EFCE8);
  v5 = sub_100013F00(v3, v4);

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)crl_setWillOnlyEverBePresentedAsAPopover:(BOOL)a3
{
  v4 = off_1019EFCE8;
  v5 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, v4, v5, 0x301);
}

@end