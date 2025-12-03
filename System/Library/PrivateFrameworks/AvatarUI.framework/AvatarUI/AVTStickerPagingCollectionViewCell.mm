@interface AVTStickerPagingCollectionViewCell
- (UIEdgeInsets)additionalContentInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPageContentView:(id)view;
@end

@implementation AVTStickerPagingCollectionViewCell

- (void)setPageContentView:(id)view
{
  viewCopy = view;
  pageContentView = self->_pageContentView;
  if (pageContentView != viewCopy)
  {
    v11 = viewCopy;
    superview = [(UIView *)pageContentView superview];
    contentView = [(AVTStickerPagingCollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_pageContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_pageContentView, view);
    viewCopy = v11;
    if (v11)
    {
      [(UIView *)v11 removeFromSuperview];
      contentView2 = [(AVTStickerPagingCollectionViewCell *)self contentView];
      [contentView2 bounds];
      [(UIView *)v11 setFrame:?];

      [(UIView *)v11 setAutoresizingMask:18];
      contentView3 = [(AVTStickerPagingCollectionViewCell *)self contentView];
      [contentView3 addSubview:v11];

      pageContentView = [(AVTStickerPagingCollectionViewCell *)self setNeedsLayout];
      viewCopy = v11;
    }
  }

  MEMORY[0x1EEE66BB8](pageContentView, viewCopy);
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = AVTStickerPagingCollectionViewCell;
  [(AVTStickerPagingCollectionViewCell *)&v21 layoutSubviews];
  contentView = [(AVTStickerPagingCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AVTStickerPagingCollectionViewCell *)self additionalContentInsets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  pageContentView = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
  [pageContentView setFrame:{v13, v15, v17, v19}];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = AVTStickerPagingCollectionViewCell;
  [(AVTStickerPagingCollectionViewCell *)&v10 prepareForReuse];
  pageContentView = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
  if (pageContentView)
  {
    v4 = pageContentView;
    pageContentView2 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
    superview = [pageContentView2 superview];
    contentView = [(AVTStickerPagingCollectionViewCell *)self contentView];

    if (superview == contentView)
    {
      pageContentView3 = [(AVTStickerPagingCollectionViewCell *)self pageContentView];
      [pageContentView3 removeFromSuperview];
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