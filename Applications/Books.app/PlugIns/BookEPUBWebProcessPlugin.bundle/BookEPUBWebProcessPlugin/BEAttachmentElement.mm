@interface BEAttachmentElement
- (BAXObjectWrapper)objectWrapper;
- (BEAttachmentElement)initWithObjectWrapperElement:(id)element;
- (CGRect)accessibilityFrame;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation BEAttachmentElement

- (BEAttachmentElement)initWithObjectWrapperElement:(id)element
{
  elementCopy = element;
  baxBookContentElement = [elementCopy baxBookContentElement];
  v8.receiver = self;
  v8.super_class = BEAttachmentElement;
  v6 = [(BEAttachmentElement *)&v8 initWithAccessibilityContainer:baxBookContentElement];

  if (v6)
  {
    [(BEAttachmentElement *)v6 setObjectWrapper:elementCopy];
  }

  return v6;
}

- (id)accessibilityLabel
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  accessibilityLabel = [objectWrapper accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityAttributedLabel
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  accessibilityAttributedValue = [objectWrapper accessibilityAttributedValue];

  return accessibilityAttributedValue;
}

- (id)accessibilityValue
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  accessibilityValue = [objectWrapper accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityAttributedValue
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  accessibilityAttributedValue = [objectWrapper accessibilityAttributedValue];

  return accessibilityAttributedValue;
}

- (unint64_t)accessibilityTraits
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  accessibilityTraits = [objectWrapper accessibilityTraits];

  return accessibilityTraits;
}

- (CGRect)accessibilityFrame
{
  objectWrapper = [(BEAttachmentElement *)self objectWrapper];
  [objectWrapper accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BAXObjectWrapper)objectWrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_objectWrapper);

  return WeakRetained;
}

@end