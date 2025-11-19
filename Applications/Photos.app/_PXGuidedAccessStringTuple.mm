@interface _PXGuidedAccessStringTuple
- (_PXGuidedAccessStringTuple)initWithPrimaryText:(id)a3 detailText:(id)a4;
@end

@implementation _PXGuidedAccessStringTuple

- (_PXGuidedAccessStringTuple)initWithPrimaryText:(id)a3 detailText:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PXGuidedAccessStringTuple;
  v9 = [(_PXGuidedAccessStringTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primaryText, a3);
    objc_storeStrong(&v10->_detailText, a4);
  }

  return v10;
}

@end