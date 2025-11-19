@interface BEAttachmentElement
- (BAXObjectWrapper)objectWrapper;
- (BEAttachmentElement)initWithObjectWrapperElement:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation BEAttachmentElement

- (BEAttachmentElement)initWithObjectWrapperElement:(id)a3
{
  v4 = a3;
  v5 = [v4 baxBookContentElement];
  v8.receiver = self;
  v8.super_class = BEAttachmentElement;
  v6 = [(BEAttachmentElement *)&v8 initWithAccessibilityContainer:v5];

  if (v6)
  {
    [(BEAttachmentElement *)v6 setObjectWrapper:v4];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityAttributedLabel
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  v3 = [v2 accessibilityAttributedValue];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityAttributedValue
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  v3 = [v2 accessibilityAttributedValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(BEAttachmentElement *)self objectWrapper];
  [v2 accessibilityFrame];
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