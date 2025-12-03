@interface AVTAttributeCollectionViewCell
- (AVTAttributeValueView)valueView;
- (CGRect)frameForAttributeView;
- (void)discardContent;
- (void)prepareForReuse;
- (void)setAttributeView:(id)view;
@end

@implementation AVTAttributeCollectionViewCell

- (AVTAttributeValueView)valueView
{
  attributeView = [(AVTAttributeCollectionViewCell *)self attributeView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    attributeView2 = [(AVTAttributeCollectionViewCell *)self attributeView];
  }

  else
  {
    attributeView2 = 0;
  }

  return attributeView2;
}

- (void)setAttributeView:(id)view
{
  viewCopy = view;
  if (self->_attributeView != viewCopy)
  {
    objc_storeStrong(&self->_attributeView, view);
  }

  [(AVTAttributeCollectionViewCell *)self frameForAttributeView];
  [(UIView *)self->_attributeView setFrame:?];
  [(UIView *)self->_attributeView setAutoresizingMask:18];
  contentView = [(AVTAttributeCollectionViewCell *)self contentView];
  [contentView addSubview:self->_attributeView];
}

- (CGRect)frameForAttributeView
{
  contentView = [(AVTAttributeCollectionViewCell *)self contentView];
  [contentView bounds];
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

- (void)prepareForReuse
{
  attributeView = [(AVTAttributeCollectionViewCell *)self attributeView];
  superview = [attributeView superview];
  contentView = [(AVTAttributeCollectionViewCell *)self contentView];

  if (superview == contentView)
  {
    attributeView2 = [(AVTAttributeCollectionViewCell *)self attributeView];
    [attributeView2 removeFromSuperview];
  }

  v7.receiver = self;
  v7.super_class = AVTAttributeCollectionViewCell;
  [(AVTAttributeCollectionViewCell *)&v7 prepareForReuse];
}

- (void)discardContent
{
  valueView = [(AVTAttributeCollectionViewCell *)self valueView];
  [valueView discardContent];

  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    v5 = *(discardableContentHandler + 2);

    v5();
  }
}

@end