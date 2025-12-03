@interface ICImagesAndMoviesBaseCell
- (ICImagesAndMoviesBaseCell)initWithThumbnailView:(id)view frame:(CGRect)frame;
- (ICImagesAndMoviesScrollView)scrollView;
- (id)collectionView;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAspectRatio:(double)ratio;
- (void)setAttachment:(id)attachment;
- (void)setThumbnailLayout:(unint64_t)layout;
- (void)updateAspectRatio;
- (void)updateConstraints;
- (void)updateFocusEffect;
@end

@implementation ICImagesAndMoviesBaseCell

- (ICImagesAndMoviesBaseCell)initWithThumbnailView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = ICImagesAndMoviesBaseCell;
  height = [(ICImagesAndMoviesBaseCell *)&v20 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(ICImagesAndMoviesBaseCell *)height setThumbnailView:viewCopy];
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [viewCopy setClipsToBounds:1];
    if (+[UIDevice ic_isVision])
    {
      layer = [viewCopy layer];
      [layer setCornerRadius:16.0];
    }

    else
    {
      v13 = +[UIColor tertiaryLabelColor];
      cGColor = [v13 CGColor];
      layer2 = [viewCopy layer];
      [layer2 setBorderColor:cGColor];

      [(ICImagesAndMoviesBaseCell *)v11 ic_hairlineWidth];
      v17 = v16;
      layer = [viewCopy layer];
      [layer setBorderWidth:v17];
    }

    thumbnailView = [(ICImagesAndMoviesBaseCell *)v11 thumbnailView];
    [(ICImagesAndMoviesBaseCell *)v11 addSubview:thumbnailView];

    [(ICImagesAndMoviesBaseCell *)v11 needsUpdateConstraints];
  }

  return v11;
}

- (void)dealloc
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment2 ic_removeObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment3 ic_removeObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
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
    thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    layer = [thumbnailView layer];
    [layer setBorderWidth:v4];
  }
}

- (void)setThumbnailLayout:(unint64_t)layout
{
  if (self->_thumbnailLayout != layout)
  {
    self->_thumbnailLayout = layout;
    [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment2 ic_removeObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment3 ic_removeObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
  }

  v11.receiver = self;
  v11.super_class = ICImagesAndMoviesBaseCell;
  [(ICBrowseAttachmentsBaseCell *)&v11 setAttachment:attachmentCopy];
  attachment4 = [(ICBrowseAttachmentsBaseCell *)self attachment];

  if (attachment4)
  {
    attachment5 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment5 ic_addObserver:self forKeyPath:@"sizeWidth" context:&off_1006BAFE8];

    attachment6 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment6 ic_addObserver:self forKeyPath:@"sizeHeight" context:&off_1006BAFE8];
  }

  [(ICImagesAndMoviesBaseCell *)self updateAspectRatio];
  [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
}

- (void)updateAspectRatio
{
  attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
  [attachment sizeWidth];
  v4 = 1.0;
  if (v5 > 0.0)
  {
    attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment2 sizeHeight];
    v8 = v7;

    if (v8 <= 0.0)
    {
      goto LABEL_5;
    }

    attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment sizeWidth];
    v10 = v9;
    attachment3 = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment3 sizeHeight];
    v4 = v10 / v12;
  }

LABEL_5:

  [(ICImagesAndMoviesBaseCell *)self setAspectRatio:v4];
}

- (void)setAspectRatio:(double)ratio
{
  if (self->_aspectRatio != ratio)
  {
    self->_aspectRatio = ratio;
    if ([(ICImagesAndMoviesBaseCell *)self thumbnailLayout])
    {

      [(ICImagesAndMoviesBaseCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)updateConstraints
{
  ourConstraints = [(ICImagesAndMoviesBaseCell *)self ourConstraints];
  [NSLayoutConstraint deactivateConstraints:ourConstraints];

  v4 = [NSMutableArray arrayWithCapacity:4];
  if ([(ICImagesAndMoviesBaseCell *)self computedThumbnailLayout])
  {
    thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v6 = [NSLayoutConstraint constraintWithItem:thumbnailView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v4 addObject:v6];

    thumbnailView2 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v8 = [NSLayoutConstraint constraintWithItem:thumbnailView2 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v8];

    computedThumbnailLayout = [(ICImagesAndMoviesBaseCell *)self computedThumbnailLayout];
    [(ICImagesAndMoviesBaseCell *)self aspectRatio];
    if (computedThumbnailLayout == 1)
    {
      v11 = v10 > 1.0;
    }

    else
    {
      v11 = v10 < 1.0;
    }

    thumbnailView3 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
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

    v15 = [NSLayoutConstraint constraintWithItem:thumbnailView3 attribute:v13 relatedBy:0 toItem:self attribute:v13 multiplier:1.0 constant:0.0];
    [v4 addObject:v15];

    thumbnailView4 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v17 = [NSLayoutConstraint constraintWithItem:thumbnailView4 attribute:v14 relatedBy:-1 toItem:self attribute:v14 multiplier:1.0 constant:0.0];
    [v4 addObject:v17];

    thumbnailView5 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    thumbnailView6 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    [(ICImagesAndMoviesBaseCell *)self aspectRatio];
    v20 = [NSLayoutConstraint ic_constraintWithItem:"ic_constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:" attribute:thumbnailView5 relatedBy:7 toItem:0 attribute:thumbnailView6 multiplier:8 constant:? priority:?];
    [v4 addObject:v20];
  }

  else
  {
    v25 = @"thumbnailView";
    thumbnailView7 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
    v26 = thumbnailView7;
    thumbnailView5 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    v22 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[thumbnailView]|" options:0 metrics:0 views:thumbnailView5];
    [v4 addObjectsFromArray:v22];

    v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[thumbnailView]|" options:0 metrics:0 views:thumbnailView5];
    [v4 addObjectsFromArray:v23];
  }

  [NSLayoutConstraint activateConstraints:v4];
  [(ICImagesAndMoviesBaseCell *)self setOurConstraints:v4];
  v24.receiver = self;
  v24.super_class = ICImagesAndMoviesBaseCell;
  [(ICImagesAndMoviesBaseCell *)&v24 updateConstraints];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICImagesAndMoviesBaseCell *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Attachment Browser/ImageScroller/ICImagesAndMoviesBaseCell.m"]& 1) != 0)
  {
    v13 = [(ICImagesAndMoviesBaseCell *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_1006BAFE8 && (v13 & 1) == 0)
    {

      [(ICImagesAndMoviesBaseCell *)self updateAspectRatio];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICImagesAndMoviesBaseCell;
    [(ICImagesAndMoviesBaseCell *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(ICImagesAndMoviesBaseCell *)self thumbnailLayout]== 1)
  {
    [attributesCopy size];
    v6 = v5;
    v8 = v7;
    attachment = [(ICBrowseAttachmentsBaseCell *)self attachment];
    [attachment bounds];
    v11 = v10;
    v13 = v12;

    if (v11 <= 0.0 || v13 <= 0.0)
    {
      attachment2 = [(ICBrowseAttachmentsBaseCell *)self attachment];
      window = [(ICImagesAndMoviesBaseCell *)self window];
      screen = [window screen];
      [screen scale];
      v18 = [attachment2 attachmentPreviewImageWithMinSize:v6 scale:{v8, v17}];

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

    [attributesCopy size];
    if (v21 != v6)
    {
      [attributesCopy setSize:{v6, v8}];
    }
  }

  return attributesCopy;
}

- (id)collectionView
{
  scrollView = [(ICImagesAndMoviesBaseCell *)self scrollView];
  collectionView = [scrollView collectionView];

  return collectionView;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = [nextFocusedItem isEqual:self];

  if (v6)
  {

    [(ICImagesAndMoviesBaseCell *)self updateFocusEffect];
  }
}

- (void)updateFocusEffect
{
  thumbnailView = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  [thumbnailView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  thumbnailView2 = [(ICImagesAndMoviesBaseCell *)self thumbnailView];
  layer = [thumbnailView2 layer];
  [layer cornerRadius];
  v14 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v4 curve:v6, v8, v10, v13];
  [(ICImagesAndMoviesBaseCell *)self setFocusEffect:v14];
}

- (ICImagesAndMoviesScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end