@interface ICDrawingCollectionViewCell
- (ICDrawingCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)computedThumbnailLayout;
- (void)respondToLongPressGesture:(id)a3;
- (void)setAttachment:(id)a3;
@end

@implementation ICDrawingCollectionViewCell

- (ICDrawingCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [[ICDrawingInlineView alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v9 = [v8 layer];
  [v9 setAnchorPoint:{0.5, 0.5}];

  [v8 setThumbnailDisplay:1];
  [v8 setEditable:0];
  [v8 setHideLoadingProgress:1];
  v14.receiver = self;
  v14.super_class = ICDrawingCollectionViewCell;
  v10 = [(ICImagesAndMoviesBaseCell *)&v14 initWithThumbnailView:v8 frame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(ICDrawingCollectionViewCell *)v10 setClipsToBounds:1];
    v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:v11 action:"respondToLongPressGesture:"];
    [(ICDrawingCollectionViewCell *)v11 addGestureRecognizer:v12];
  }

  return v11;
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [v5 setAttachment:v4];

  v6.receiver = self;
  v6.super_class = ICDrawingCollectionViewCell;
  [(ICImagesAndMoviesBaseCell *)&v6 setAttachment:v4];
}

- (unint64_t)computedThumbnailLayout
{
  if (![(ICImagesAndMoviesBaseCell *)self thumbnailLayout])
  {
    return 1;
  }

  return [(ICImagesAndMoviesBaseCell *)self thumbnailLayout];
}

- (void)respondToLongPressGesture:(id)a3
{
  v7 = a3;
  v4 = +[UIMenuController sharedMenuController];
  if (([v4 isMenuVisible] & 1) == 0)
  {
    [(ICDrawingCollectionViewCell *)self becomeFirstResponder];
    v5 = [v7 view];
    v6 = [v7 view];
    [v6 bounds];
    [v4 showMenuFromView:v5 rect:?];
  }
}

- (id)accessibilityLabel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"sketch" value:&stru_100661CF0 table:0];

  v7 = [(ICBrowseAttachmentsBaseCell *)self itemNumberAccessibilityString];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v4 = [v3 title];
  v5 = [v4 length];

  v6 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v7 = v6;
  if (v5)
  {
    [v6 title];
  }

  else
  {
    [v6 modificationDateForSpeaking];
  }
  v8 = ;

  return v8;
}

@end