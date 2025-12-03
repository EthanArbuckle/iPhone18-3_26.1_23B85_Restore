@interface _PXGuidedAccessStringTuple
- (_PXGuidedAccessStringTuple)initWithPrimaryText:(id)text detailText:(id)detailText;
@end

@implementation _PXGuidedAccessStringTuple

- (_PXGuidedAccessStringTuple)initWithPrimaryText:(id)text detailText:(id)detailText
{
  textCopy = text;
  detailTextCopy = detailText;
  v12.receiver = self;
  v12.super_class = _PXGuidedAccessStringTuple;
  v9 = [(_PXGuidedAccessStringTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primaryText, text);
    objc_storeStrong(&v10->_detailText, detailText);
  }

  return v10;
}

@end