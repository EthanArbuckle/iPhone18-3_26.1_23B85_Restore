@interface LSBundleRecord(DOCExtensions)
- (id)fpui_containingApplicationRecord;
@end

@implementation LSBundleRecord(DOCExtensions)

- (id)fpui_containingApplicationRecord
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [selfCopy containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = containingBundleRecord;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end