@interface AVTStickerPagingCollectionViewCell
- (UIEdgeInsets)additionalContentInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPageContentView:(id)a3;
@end

@implementation AVTStickerPagingCollectionViewCell

- (void)setPageContentView:(id)a3
{
  v5 = a3;
  pageContentView = self->_pageContentView;
  if (pageContentView != v5)
  {
    v11 = v5;
    v7 = [(UIView *)pageContentView superview];
    v8 = [(AVTStickerPagingCollectionViewCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_pageContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_pageContentView, a3);
    v5 = v11;
    if (v11)
    {
      [(UIView *)v11 removeFromSuperview];
      v9 = [(AVTStickerPagingCollectionViewCell *)self contentView];
      [v9 bounds];
      [(UIView *)v11 setFrame:?];

      [(UIView *)v11 setAutoresizingMask:18];
      v10 = [(AVTStickerPagingCollectionViewCell *)self contentView];
      [v10 addSubview:v11];

      pageContentView = [(AVTStickerPagingCollectionViewCell *)self setNeedsLayout];
      v5 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](pageContentView, v5);
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = AVTStickerPagingCollectionViewCell;
  [(AVTStickerPagingCollectionViewCell *)&v21 layoutSubviews];
  v3 = [(AVTStickerPagingCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AVTStickerPagingCollectionViewCell *)self additionalContentInsets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  v20 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = AVTStickerPagingCollectionViewCell;
  [(AVTStickerPagingCollectionViewCell *)&v10 prepareForReuse];
  v3 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
  if (v3)
  {
    v4 = v3;
    v5 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
    v6 = [v5 superview];
    v7 = [(AVTStickerPagingCollectionViewCell *)self contentView];

    if (v6 == v7)
    {
      v8 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
      [v8 removeFromSuperview];
    }
  }

  pageContentView = self->_pageContentView;
  self->_pageContentView = 0;
}

- (UIEdgeInsets)additionalContentInsets
{
  top = self->_additionalContentInsets.top;
  left = self->_additionalContentInsets.left;
  bottom = self->_additionalContentInsets.bottom;
  right = self->_additionalContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end