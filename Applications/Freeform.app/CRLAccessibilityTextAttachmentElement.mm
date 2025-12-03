@interface CRLAccessibilityTextAttachmentElement
- (CRLAccessibilityTextAttachmentElement)initWithAccessibilityParent:(id)parent textEquivalent:(id)equivalent;
@end

@implementation CRLAccessibilityTextAttachmentElement

- (CRLAccessibilityTextAttachmentElement)initWithAccessibilityParent:(id)parent textEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v11.receiver = self;
  v11.super_class = CRLAccessibilityTextAttachmentElement;
  v8 = [(CRLAccessibilityElement *)&v11 initWithAccessibilityParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textEquivalent, equivalent);
  }

  return v9;
}

@end