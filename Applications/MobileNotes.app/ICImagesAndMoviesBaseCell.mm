@interface ICImagesAndMoviesBaseCell
- (ICImagesAndMoviesBaseCell)initWithThumbnailView:(id)a3 frame:(CGRect)a4;
- (ICImagesAndMoviesScrollView)scrollView;
- (id)collectionView;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAspectRatio:(double)a3;
- (void)setAttachment:(id)a3;
- (void)setThumbnailLayout:(unint64_t)a3;
- (void)updateAspectRatio;
- (void)updateConstraints;
- (void)updateFocusEffect;
@end

@implementation ICImagesAndMoviesBaseCell

- (ICImagesAndMoviesBaseCell)initWithThumbnailView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v20.receiver = self;
  v20.super_class = ICImagesAndMoviesBaseCell;
  v10 = [(ICImagesAndMoviesBaseCell *)&v20 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(ICImagesAndMoviesBaseCell *)v10 setThumbnailView:v9];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setClipsToBounds:1];
    if (+[UIDevice ic_isVision])
    {
      v12 = [v9 layer];
      [v12 setCornerRadius:16.0];
    }

    else
    {
      v13 = +[UIColor tertiaryLabelColor];
      v14 = [v13 CGColor];
      v15 = [v9 layer];
      [v15 setBorderColor:v14];

      [(ICImagesAndMoviesBaseCell *)v11 ic_hairlineWidth];
      v17 = v16;
      v12 = [v9 layer];
      [v12 setBorderWidth:v17];
    }

    v18 = [(ICImagesAndMoviesBaseCell *)v11 thumbnailView];
    [(ICImagesAndMoviesBaseCell *)v11 addSubview:v18];

    [(ICImagesAndMoviesBaseCell *)v11 needsUpdateConstraints];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (v3)
  {
    v4 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v4 ic_removeObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    v5 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v5 ic_removeObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
  }

  v6.receiver = self;
  v6.super_class = ICImagesAndMoviesBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v6 dealloc];
}

- (void)didMoveToWindow
{
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    [(ICImagesAndMoviesBaseCell *)self ic_hairlineWidth];
    v4 = v3;
    v6 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v5 = [v6 layer];
    [v5 setBorderWidth:v4];
  }
}

- (void)setThumbnailLayout:(unint64_t)a3
{
  if (self->_thumbnailLayout != a3)
  {
    self->_thumbnailLayout = a3;
    [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (v5)
  {
    v6 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v6 ic_removeObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    v7 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v7 ic_removeObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
  }

  v11.receiver = self;
  v11.super_class = ICImagesAndMoviesBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v11 setAttachment:v4];
  v8 = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (v8)
  {
    v9 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v9 ic_addObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    v10 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v10 ic_addObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
  }

  [(ICImagesAndMoviesBaseCell *)self updateAspectRatio];
  [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
}

- (void)updateAspectRatio
{
  v3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [v3 sizeWidth];
  v4 = 1.0;
  if (v5 > 0.0)
  {
    v6 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v6 sizeHeight];
    v8 = v7;

    if (v8 <= 0.0)
    {
      goto LABEL_5;
    }

    v3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v3 sizeWidth];
    v10 = v9;
    v11 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v11 sizeHeight];
    v4 = v10 / v12;
  }

LABEL_5:

  [(ICImagesAndMoviesBaseCell *)self setAspectRatio:v4];
}

- (void)setAspectRatio:(double)a3
{
  if (self->_aspectRatio != a3)
  {
    self->_aspectRatio = a3;
    if ([(ICImagesAndMoviesBaseCell *)self thumbnailLayout])
    {

      [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)updateConstraints
{
  v3 = [(ICImagesAndMoviesBaseCell *)self ourConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  v4 = [NSMutableArray arrayWithCapacity:4];
  if ([(ICImagesAndMoviesBaseCell *)self computedThumbnailLayout])
  {
    v5 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v4 addObject:v6];

    v7 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v8 = [NSLayoutConstraint constraintWithItem:v7 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v8];

    v9 = [(ICImagesAndMoviesBaseCell *)self computedThumbnailLayout];
    [(ICImagesAndMoviesBaseCell *)self aspectRatio];
    if (v9 == 1)
    {
      v11 = v10 > 1.0;
    }

    else
    {
      v11 = v10 < 1.0;
    }

    v12 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    if (v11)
    {
      v13 = 8;
    }

    else
    {
      v13 = 7;
    }

    if (v11)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    v15 = [NSLayoutConstraint constraintWithItem:v12 attribute:v13 relatedBy:0 toItem:self attribute:v13 multiplier:1.0 constant:0.0];
    [v4 addObject:v15];

    v16 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v17 = [NSLayoutConstraint constraintWithItem:v16 attribute:v14 relatedBy:-1 toItem:self attribute:v14 multiplier:1.0 constant:0.0];
    [v4 addObject:v17];

    v18 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v19 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    [(ICImagesAndMoviesBaseCell *)self aspectRatio];
    v20 = [NSLayoutConstraint ic_constraintWithItem:"ic_constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:" attribute:v18 relatedBy:7 toItem:0 attribute:v19 multiplier:8 constant:? priority:?];
    [v4 addObject:v20];
  }

  else
  {
    v25 = @"thumbnailView";
    v21 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v26 = v21;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    v22 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[thumbnailView]|" options:0 metrics:0 views:v18];
    [v4 addObjectsFromArray:v22];

    v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[thumbnailView]|" options:0 metrics:0 views:v18];
    [v4 addObjectsFromArray:v23];
  }

  [NSLayoutConstraint activateConstraints:v4];
  [(ICImagesAndMoviesBaseCell *)self setOurConstraints:v4];
  v24.receiver = self;
  v24.super_class = ICImagesAndMoviesBaseCell;
  [(ICImagesAndMoviesBaseCell *)&v24 updateConstraints];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICImagesAndMoviesBaseCell *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Attachment Browser/ImageScroller/ICImagesAndMoviesBaseCell.m"]& 1) != 0)
  {
    v13 = [(ICImagesAndMoviesBaseCell *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &off_1006BAFE8 && (v13 & 1) == 0)
    {

      [(ICImagesAndMoviesBaseCell *)self updateAspectRatio];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICImagesAndMoviesBaseCell;
    [(ICImagesAndMoviesBaseCell *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ([(ICImagesAndMoviesBaseCell *)self thumbnailLayout]== 1)
  {
    [v4 size];
    v6 = v5;
    v8 = v7;
    v9 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    if (v11 <= 0.0 || v13 <= 0.0)
    {
      v14 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      v15 = [(ICImagesAndMoviesBaseCell *)self window];
      v16 = [v15 screen];
      [v16 scale];
      v18 = [v14 attachmentPreviewImageWithMinSize:v6 scale:{v8, v17}];

      [v18 width];
      v11 = v19;
      [v18 height];
      v13 = v20;
    }

    if (v11 > 0.0 && v13 > 0.0)
    {
      v6 = v8 * v11 / v13;
      if (v6 > v8 + v8)
      {
        v6 = v8 + v8;
      }
    }

    [v4 size];
    if (v21 != v6)
    {
      [v4 setSize:{v6, v8}];
    }
  }

  return v4;
}

- (id)collectionView
{
  v2 = [(ICImagesAndMoviesBaseCell *)self scrollView];
  v3 = [v2 collectionView];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [v5 isEqual:self];

  if (v6)
  {

    [(ICImagesAndMoviesBaseCell *)self updateFocusEffect];
  }
}

- (void)updateFocusEffect
{
  v15 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [v15 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  v12 = [v11 layer];
  [v12 cornerRadius];
  v14 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v13];
  [(ICImagesAndMoviesBaseCell *)self setFocusEffect:v14];
}

- (ICImagesAndMoviesScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end