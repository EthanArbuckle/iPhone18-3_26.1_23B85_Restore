@interface ICImageCollectionViewCell
+ (id)thumbnailCache;
- (ICImageCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAttachment:(id)a3;
- (void)updatePreviewImage;
@end

@implementation ICImageCollectionViewCell

- (id)accessibilityLabel
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"image" value:&stru_100661CF0 table:0];

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

+ (id)thumbnailCache
{
  if (qword_1006CB3F0 != -1)
  {
    sub_1004E04AC();
  }

  v3 = qword_1006CB3E8;

  return v3;
}

- (ICImageCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [[UIImageView alloc] initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
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
  v10 = [(ICImagesAndMoviesBaseCell *)&v12 initWithThumbnailView:v8 frame:x, y, width, height];

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICImageCollectionViewCell;
  [(ICImageCollectionViewCell *)&v3 layoutSubviews];
  [(ICImageCollectionViewCell *)self updatePreviewImage];
}

- (void)setAttachment:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICImageCollectionViewCell;
  v4 = a3;
  [(ICImagesAndMoviesBaseCell *)&v5 setAttachment:v4];
  [(ICImageCollectionViewCell *)self ic_annotateWithAttachment:v4, v5.receiver, v5.super_class];

  [(ICImageCollectionViewCell *)self updatePreviewImage];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = ICImageCollectionViewCell;
  [(ICImagesAndMoviesBaseCell *)&v5 didMoveToWindow];
  v3 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  v4 = [v3 image];

  if (!v4)
  {
    [(ICImageCollectionViewCell *)self updatePreviewImage];
  }
}

- (void)updatePreviewImage
{
  v3 = [(ICImageCollectionViewCell *)self window];
  if (v3 && (v32 = v3, [(ICImageCollectionViewCell *)self frame], v3 = v32, v4 > 0.0))
  {
    [(ICImageCollectionViewCell *)self frame];
    v6 = v5;

    if (v6 > 0.0)
    {
      objc_initWeak(&location, self);
      v7 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      v8 = [v7 identifier];
      v9 = [v8 copy];

      v10 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      v11 = [v10 imageCacheKey];

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
      v18 = [(ICImageCollectionViewCell *)self window];
      v19 = [v18 screen];
      [v19 scale];
      v21 = v20;

      v22 = [(ICImageCollectionViewCell *)self window];
      v23 = [v22 screen];
      [v23 scale];
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
      v29 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      v30 = [(ICImageCollectionViewCell *)self ic_appearanceInfo];
      v31 = +[ICImageCollectionViewCell thumbnailCache];
      [v29 fetchThumbnailImageWithMinSize:v30 scale:v31 appearanceInfo:v11 cache:v28 cacheKey:v13 processingBlock:0 completionBlock:v26 fallbackBlock:v27 aboutToLoadHandler:{1.0, 0}];

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
  v3 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [v3 setImage:0];
}

@end