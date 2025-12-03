@interface CRLWPTextualAttachment
- (id)stringEquivalentWithLayoutParent:(id)parent;
@end

@implementation CRLWPTextualAttachment

- (id)stringEquivalentWithLayoutParent:(id)parent
{
  stringEquivalent = [(CRLWPTextualAttachment *)self stringEquivalent];

  return stringEquivalent;
}

@end