@interface ICImageCollectionViewCell
+ (id)thumbnailCache;
- (ICImageCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAttachment:(id)attachment;
- (void)updatePreviewImage;
@end

@implementation ICImageCollectionViewCell

- (id)accessibilityLabel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"image" value:&stru_100661CF0 table:0];

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

+ (id)thumbnailCache
{
  if (qword_1006CB3F0 != -1)
  {
    sub_1004E04AC();
  }

  v3 = qword_1006CB3E8;

  return v3;
}

- (ICImageCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [[UIImageView alloc] initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  if (+[UIDevice ic_isVision])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v8 setContentMode:v9];
  v12.receiver = self;
  v12.super_class = ICImageCollectionViewCell;
  height = [(ICImagesAndMoviesBaseCell *)&v12 initWithThumbnailView:v8 frame:x, y, width, height];

  return height;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICImageCollectionViewCell;
  [(ICImageCollectionViewCell *)&v3 layoutSubviews];
  [(ICImageCollectionViewCell *)self updatePreviewImage];
}

- (void)setAttachment:(id)attachment
{
  v5.receiver = self;
  v5.super_class = ICImageCollectionViewCell;
  attachmentCopy = attachment;
  [(ICImagesAndMoviesBaseCell *)&v5 setAttachment:attachmentCopy];
  [(ICImageCollectionViewCell *)self ic_annotateWithAttachment:attachmentCopy, v5.receiver, v5.super_class];

  [(ICImageCollectionViewCell *)self updatePreviewImage];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = ICImageCollectionViewCell;
  [(ICImagesAndMoviesBaseCell *)&v5 didMoveToWindow];
  thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  image = [thumbnailView image];

  if (!image)
  {
    [(ICImageCollectionViewCell *)self updatePreviewImage];
  }
}

- (void)updatePreviewImage
{
  window = [(ICImageCollectionViewCell *)self window];
  if (window && (v32 = window, [(ICImageCollectionViewCell *)self frame], window = v32, v4 > 0.0))
  {
    [(ICImageCollectionViewCell *)self frame];
    v6 = v5;

    if (v6 > 0.0)
    {
      objc_initWeak(&location, self);
      attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
      identifier = [attachment identifier];
      v9 = [identifier copy];

      attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      imageCacheKey = [attachment2 imageCacheKey];

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1001104E0;
      v34[3] = &unk_10064A360;
      objc_copyWeak(&v36, &location);
      v12 = v9;
      v35 = v12;
      v13 = objc_retainBlock(v34);
      [(ICImageCollectionViewCell *)self frame];
      v15 = v14;
      v17 = v16;
      window2 = [(ICImageCollectionViewCell *)self window];
      screen = [window2 screen];
      [screen scale];
      v21 = v20;

      window3 = [(ICImageCollectionViewCell *)self window];
      screen2 = [window3 screen];
      [screen2 scale];
      v25 = v24;
      v26 = v15 * fmax(v21, 1.0);

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100110638;
      v33[3] = &unk_10064A380;
      v27 = v17 * fmax(v25, 1.0);
      *&v33[4] = v26;
      *&v33[5] = v27;
      v28 = objc_retainBlock(v33);
      attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      ic_appearanceInfo = [(ICImageCollectionViewCell *)self ic_appearanceInfo];
      v31 = +[ICImageCollectionViewCell thumbnailCache];
      [attachment3 fetchThumbnailImageWithMinSize:ic_appearanceInfo scale:v31 appearanceInfo:imageCacheKey cache:v28 cacheKey:v13 processingBlock:0 completionBlock:v26 fallbackBlock:v27 aboutToLoadHandler:{1.0, 0}];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = ICImageCollectionViewCell;
  [(ICBrowseAttachmentsBaseCell *)&v4 prepareForReuse];
  thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [thumbnailView setImage:0];
}

@end