@interface ICDrawingCollectionViewCell
- (ICDrawingCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)computedThumbnailLayout;
- (void)respondToLongPressGesture:(id)gesture;
- (void)setAttachment:(id)attachment;
@end

@implementation ICDrawingCollectionViewCell

- (ICDrawingCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [[ICDrawingInlineView alloc] initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  layer = [v8 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  [v8 setThumbnailDisplay:1];
  [v8 setEditable:0];
  [v8 setHideLoadingProgress:1];
  v14.receiver = self;
  v14.super_class = ICDrawingCollectionViewCell;
  height = [(ICImagesAndMoviesBaseCell *)&v14 initWithThumbnailView:v8 frame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(ICDrawingCollectionViewCell *)height setClipsToBounds:1];
    v12 = [[UILongPressGestureRecognizer alloc] initWithTarget:v11 action:"respondToLongPressGesture:"];
    [(ICDrawingCollectionViewCell *)v11 addGestureRecognizer:v12];
  }

  return v11;
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [thumbnailView setAttachment:attachmentCopy];

  v6.receiver = self;
  v6.super_class = ICDrawingCollectionViewCell;
  [(ICImagesAndMoviesBaseCell *)&v6 setAttachment:attachmentCopy];
}

- (unint64_t)computedThumbnailLayout
{
  if (![(ICImagesAndMoviesBaseCell *)self thumbnailLayout])
  {
    return 1;
  }

  return [(ICImagesAndMoviesBaseCell *)self thumbnailLayout];
}

- (void)respondToLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = +[UIMenuController sharedMenuController];
  if (([v4 isMenuVisible] & 1) == 0)
  {
    [(ICDrawingCollectionViewCell *)self becomeFirstResponder];
    view = [gestureCopy view];
    view2 = [gestureCopy view];
    [view2 bounds];
    [v4 showMenuFromView:view rect:?];
  }
}

- (id)accessibilityLabel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"sketch" value:&stru_100661CF0 table:0];

  itemNumberAccessibilityString = [(ICBrowseAttachmentsBaseCell *)self itemNumberAccessibilityString];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  title = [attachment title];
  v5 = [title length];

  attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  v7 = attachment2;
  if (v5)
  {
    [attachment2 title];
  }

  else
  {
    [attachment2 modificationDateForSpeaking];
  }
  v8 = ;

  return v8;
}

@end