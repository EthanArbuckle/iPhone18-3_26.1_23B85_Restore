@interface CRLAccessibilityTextAttachmentElement
- (CRLAccessibilityTextAttachmentElement)initWithAccessibilityParent:(id)a3 textEquivalent:(id)a4;
@end

@implementation CRLAccessibilityTextAttachmentElement

- (CRLAccessibilityTextAttachmentElement)initWithAccessibilityParent:(id)a3 textEquivalent:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLAccessibilityTextAttachmentElement;
  v8 = [(CRLAccessibilityElement *)&v11 initWithAccessibilityParent:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textEquivalent, a4);
  }

  return v9;
}

@end