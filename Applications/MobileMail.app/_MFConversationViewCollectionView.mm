@interface _MFConversationViewCollectionView
- (NSDirectionalEdgeInsets)_updateLayoutMarginsForFrame:(CGRect)frame;
- (NSDirectionalEdgeInsets)updateLayoutMargins;
- (void)setFrame:(CGRect)frame;
@end

@implementation _MFConversationViewCollectionView

- (NSDirectionalEdgeInsets)_updateLayoutMarginsForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegate = [(_MFConversationViewCollectionView *)self delegate];
  [delegate layoutMarginsForCollectionViewFrame:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(_MFConversationViewCollectionView *)self directionalLayoutMargins];
  if (v12 != v20 || v10 != v17 || v16 != v19 || v14 != v18)
  {
    [(_MFConversationViewCollectionView *)self setDirectionalLayoutMargins:v10, v12, v14, v16];
    [delegate collectionViewMarginsDidChange:{v10, v12, v14, v16}];
  }

  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = v16;
  result.trailing = v27;
  result.bottom = v26;
  result.leading = v25;
  result.top = v24;
  return result;
}

- (NSDirectionalEdgeInsets)updateLayoutMargins
{
  [(_MFConversationViewCollectionView *)self frame];

  [(_MFConversationViewCollectionView *)self _updateLayoutMarginsForFrame:?];
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_MFConversationViewCollectionView *)self frame];
  v8 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v9 = v8 - CGRectGetWidth(v13);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 2.22044605e-16)
  {
    [(_MFConversationViewCollectionView *)self _updateLayoutMarginsForFrame:x, y, width, height];
    collectionViewLayout = [(_MFConversationViewCollectionView *)self collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  v11.receiver = self;
  v11.super_class = _MFConversationViewCollectionView;
  [(_MFConversationViewCollectionView *)&v11 setFrame:x, y, width, height];
  [(_MFConversationViewCollectionView *)self setAccessibilityIdentifier:MSAccessibilityIdentifierMailConversationViewCollection];
}

@end