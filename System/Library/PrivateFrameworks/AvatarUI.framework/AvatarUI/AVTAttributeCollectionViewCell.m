@interface AVTAttributeCollectionViewCell
- (AVTAttributeValueView)valueView;
- (CGRect)frameForAttributeView;
- (void)discardContent;
- (void)prepareForReuse;
- (void)setAttributeView:(id)a3;
@end

@implementation AVTAttributeCollectionViewCell

- (AVTAttributeValueView)valueView
{
  v3 = [(AVTAttributeCollectionViewCell *)self attributeView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AVTAttributeCollectionViewCell *)self attributeView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAttributeView:(id)a3
{
  v6 = a3;
  if (self->_attributeView != v6)
  {
    objc_storeStrong(&self->_attributeView, a3);
  }

  [(AVTAttributeCollectionViewCell *)self frameForAttributeView];
  [(UIView *)self->_attributeView setFrame:?];
  [(UIView *)self->_attributeView setAutoresizingMask:18];
  v5 = [(AVTAttributeCollectionViewCell *)self contentView];
  [v5 addSubview:self->_attributeView];
}

- (CGRect)frameForAttributeView
{
  v2 = [(AVTAttributeCollectionViewCell *)self contentView];
  [v2 bounds];
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
  v3 = [(AVTAttributeCollectionViewCell *)self attributeView];
  v4 = [v3 superview];
  v5 = [(AVTAttributeCollectionViewCell *)self contentView];

  if (v4 == v5)
  {
    v6 = [(AVTAttributeCollectionViewCell *)self attributeView];
    [v6 removeFromSuperview];
  }

  v7.receiver = self;
  v7.super_class = AVTAttributeCollectionViewCell;
  [(AVTAttributeCollectionViewCell *)&v7 prepareForReuse];
}

- (void)discardContent
{
  v3 = [(AVTAttributeCollectionViewCell *)self valueView];
  [v3 discardContent];

  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    v5 = *(discardableContentHandler + 2);

    v5();
  }
}

@end