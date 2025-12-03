@interface UIPresentationController
- (BOOL)crl_willOnlyEverBePresentedAsAPopover;
- (void)crl_setWillOnlyEverBePresentedAsAPopover:(BOOL)popover;
@end

@implementation UIPresentationController

- (BOOL)crl_willOnlyEverBePresentedAsAPopover
{
  v3 = objc_opt_class();
  v4 = objc_getAssociatedObject(self, off_1019EFCE8);
  v5 = sub_100013F00(v3, v4);

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)crl_setWillOnlyEverBePresentedAsAPopover:(BOOL)popover
{
  v4 = off_1019EFCE8;
  v5 = [NSNumber numberWithBool:popover];
  objc_setAssociatedObject(self, v4, v5, 0x301);
}

@end