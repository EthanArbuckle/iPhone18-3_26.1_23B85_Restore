@interface PuppetCollectionViewCell
+ (UIColor)selectedBorderColor;
- (BOOL)isAnimatingHighlight;
- (CGSize)maxSize;
- (PuppetCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)asyncPuppetThumbnailHandler;
- (void)displayHighlight:(BOOL)highlight;
- (void)displaySelection:(BOOL)selection;
- (void)layoutSubviews;
- (void)onImageButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setButtonImageNamed:(id)named alpha:(double)alpha maxSize:(CGSize)size enabled:(BOOL)enabled touchedHandler:(id)handler;
- (void)setPuppetThumbnail:(id)thumbnail alpha:(double)alpha maxSize:(CGSize)size;
@end

@implementation PuppetCollectionViewCell

- (PuppetCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v56.receiver = self;
  v56.super_class = PuppetCollectionViewCell;
  v5 = [(PuppetCollectionViewCell *)&v56 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    height = [[AdditivelyAnimatableView alloc] initWithFrame:0.0, 0.0, width, height];
    [(PuppetCollectionViewCell *)v5 setContentContainerView:height];

    contentContainerView = [(PuppetCollectionViewCell *)v5 contentContainerView];
    [contentContainerView setAutoresizingMask:0];

    contentView = [(PuppetCollectionViewCell *)v5 contentView];
    contentContainerView2 = [(PuppetCollectionViewCell *)v5 contentContainerView];
    [contentView addSubview:contentContainerView2];

    v10 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, width + -24.0, height + -24.0}];
    [(PuppetCollectionViewCell *)v5 setPuppetImgView:v10];

    contentContainerView3 = [(PuppetCollectionViewCell *)v5 contentContainerView];
    puppetImgView = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [contentContainerView3 addSubview:puppetImgView];

    contentView2 = [(PuppetCollectionViewCell *)v5 contentView];
    [contentView2 frame];
    v15 = v14 * 0.5;
    contentView3 = [(PuppetCollectionViewCell *)v5 contentView];
    [contentView3 frame];
    v18 = v17 * 0.5;
    puppetImgView2 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [puppetImgView2 setCenter:{v15, v18}];

    puppetImgView3 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [puppetImgView3 setAutoresizingMask:0];

    puppetImgView4 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [puppetImgView4 setHidden:1];

    puppetImgView5 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    layer = [puppetImgView5 layer];
    [layer setMasksToBounds:1];

    puppetImgView6 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    layer2 = [puppetImgView6 layer];
    [layer2 setCornerRadius:6.0];

    puppetImgView7 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    layer3 = [puppetImgView7 layer];
    [layer3 setCornerCurve:kCACornerCurveContinuous];

    height2 = [[AdditivelyAnimatableView alloc] initWithFrame:0.0, 0.0, width, height];
    [(PuppetCollectionViewCell *)v5 setBorderView:height2];

    v29 = +[UIColor clearColor];
    borderView = [(PuppetCollectionViewCell *)v5 borderView];
    [borderView setBackgroundColor:v29];

    contentView4 = [(PuppetCollectionViewCell *)v5 contentView];
    borderView2 = [(PuppetCollectionViewCell *)v5 borderView];
    [contentView4 addSubview:borderView2];

    contentView5 = [(PuppetCollectionViewCell *)v5 contentView];
    [contentView5 frame];
    v35 = v34 * 0.5;
    contentView6 = [(PuppetCollectionViewCell *)v5 contentView];
    [contentView6 frame];
    v38 = v37 * 0.5;
    borderView3 = [(PuppetCollectionViewCell *)v5 borderView];
    [borderView3 setCenter:{v35, v38}];

    borderView4 = [(PuppetCollectionViewCell *)v5 borderView];
    layer4 = [borderView4 layer];
    [layer4 setBorderWidth:3.0];

    borderView5 = [(PuppetCollectionViewCell *)v5 borderView];
    layer5 = [borderView5 layer];
    [layer5 setCornerRadius:12.0];

    borderView6 = [(PuppetCollectionViewCell *)v5 borderView];
    layer6 = [borderView6 layer];
    [layer6 setCornerCurve:kCACornerCurveContinuous];

    borderView7 = [(PuppetCollectionViewCell *)v5 borderView];
    [borderView7 setAutoresizingMask:18];

    selectedBorderColor = [objc_opt_class() selectedBorderColor];
    cGColor = [selectedBorderColor CGColor];
    borderView8 = [(PuppetCollectionViewCell *)v5 borderView];
    layer7 = [borderView8 layer];
    [layer7 setBorderColor:cGColor];

    borderView9 = [(PuppetCollectionViewCell *)v5 borderView];
    [borderView9 setAlpha:0.0];

    v52 = [AVTCircularButton buttonWithType:0];
    [v52 addTarget:v5 action:"onImageButtonTapped:" forControlEvents:64];
    contentView7 = [(PuppetCollectionViewCell *)v5 contentView];
    [contentView7 addSubview:v52];

    [(PuppetCollectionViewCell *)v5 setImageButton:v52];
    imageButton = [(PuppetCollectionViewCell *)v5 imageButton];
    [imageButton setHidden:1];

    [(PuppetCollectionViewCell *)v5 setThumbRequestId:-1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PuppetCollectionViewCell;
  [(PuppetCollectionViewCell *)&v4 prepareForReuse];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004128;
  v3[3] = &unk_100034788;
  v3[4] = self;
  [UIView performWithoutAnimation:v3];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PuppetCollectionViewCell;
  [(PuppetCollectionViewCell *)&v18 layoutSubviews];
  puppetImgView = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView isHidden];

  [(PuppetCollectionViewCell *)self maxSize];
  v5 = v4;
  contentView = [(PuppetCollectionViewCell *)self contentView];
  [contentView bounds];
  v7 = CGRectGetWidth(v19) + -24.0;

  if (v5 >= v7)
  {
    v5 = v7;
  }

  [(PuppetCollectionViewCell *)self maxSize];
  v9 = v8;
  contentView2 = [(PuppetCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v11 = CGRectGetHeight(v20) + -24.0;

  if (v9 >= v11)
  {
    v9 = v11;
  }

  contentView3 = [(PuppetCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v13 = (CGRectGetWidth(v21) - v5) * 0.5;

  contentView4 = [(PuppetCollectionViewCell *)self contentView];
  [contentView4 bounds];
  v15 = (CGRectGetHeight(v22) - v9) * 0.5;

  puppetImgView2 = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView2 setFrame:{v13, v15, v5, v9}];

  imageButton = [(PuppetCollectionViewCell *)self imageButton];
  [imageButton setFrame:{v13, v15, v5, v9}];
}

- (void)setPuppetThumbnail:(id)thumbnail alpha:(double)alpha maxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  puppetImgView = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView setAlpha:alpha];

  puppetImgView2 = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView2 setImage:thumbnailCopy];

  puppetImgView3 = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView3 setHidden:0];

  [(PuppetCollectionViewCell *)self setMaxSize:width, height];

  [(PuppetCollectionViewCell *)self setNeedsLayout];
}

- (id)asyncPuppetThumbnailHandler
{
  v3 = qword_10003E020++;
  [(PuppetCollectionViewCell *)self setThumbRequestId:v3];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000452C;
  v6[3] = &unk_100034828;
  objc_copyWeak(v7, &location);
  v7[1] = v3;
  v4 = objc_retainBlock(v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);

  return v4;
}

- (void)setButtonImageNamed:(id)named alpha:(double)alpha maxSize:(CGSize)size enabled:(BOOL)enabled touchedHandler:(id)handler
{
  enabledCopy = enabled;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  namedCopy = named;
  [(PuppetCollectionViewCell *)self setMaxSize:width, height];
  v22 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:1];
  imageButton = [(PuppetCollectionViewCell *)self imageButton];
  [imageButton setSymbolImageWithName:namedCopy configuration:v22];

  imageButton2 = [(PuppetCollectionViewCell *)self imageButton];
  [imageButton2 setHidden:0];

  imageButton3 = [(PuppetCollectionViewCell *)self imageButton];
  [imageButton3 setAlpha:alpha];

  imageButton4 = [(PuppetCollectionViewCell *)self imageButton];
  [imageButton4 setEnabled:enabledCopy];

  if (enabledCopy)
  {
    [(PuppetCollectionViewCell *)self setTintColor:0];
  }

  else
  {
    v19 = +[UIColor grayColor];
    [(PuppetCollectionViewCell *)self setTintColor:v19];
  }

  [(PuppetCollectionViewCell *)self setImageButtonHandlerBlock:handlerCopy];

  puppetImgView = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView setImage:0];

  puppetImgView2 = [(PuppetCollectionViewCell *)self puppetImgView];
  [puppetImgView2 setHidden:1];

  [(PuppetCollectionViewCell *)self setNeedsLayout];
}

- (void)onImageButtonTapped:(id)tapped
{
  imageButtonHandlerBlock = [(PuppetCollectionViewCell *)self imageButtonHandlerBlock];
  if (imageButtonHandlerBlock)
  {
    v4 = imageButtonHandlerBlock;
    imageButtonHandlerBlock[2]();
    imageButtonHandlerBlock = v4;
  }
}

- (BOOL)isAnimatingHighlight
{
  contentContainerView = [(PuppetCollectionViewCell *)self contentContainerView];
  layer = [contentContainerView layer];
  v4 = [layer animationForKey:@"transform"];
  v5 = v4 != 0;

  return v5;
}

- (void)displayHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  memset(&v21, 0, sizeof(v21));
  if (highlight)
  {
    CGAffineTransformMakeScale(&v21, 0.95, 0.95);
  }

  else
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v21.a = *&CGAffineTransformIdentity.a;
    *&v21.c = v5;
    *&v21.tx = *&CGAffineTransformIdentity.tx;
  }

  v6 = +[UIView areAnimationsEnabled];
  contentContainerView = [(PuppetCollectionViewCell *)self contentContainerView];
  v8 = contentContainerView;
  if (contentContainerView)
  {
    [contentContainerView transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v21;
  v9 = CGAffineTransformEqualToTransform(&t1, &t2);

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004A34;
  v18[3] = &unk_100034788;
  v18[4] = self;
  v10 = objc_retainBlock(v18);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004B0C;
  v15[3] = &unk_1000348A0;
  v15[4] = self;
  v17 = v21;
  v11 = v10;
  v16 = v11;
  v12 = objc_retainBlock(v15);
  if (!v6)
  {
    [UIView performWithoutAnimation:v12];
    contentContainerView2 = [(PuppetCollectionViewCell *)self contentContainerView];
    [contentContainerView2 _removeAllAnimations:0];

    goto LABEL_12;
  }

  if (v9 | ![(PuppetCollectionViewCell *)self isAnimatingHighlight]|| (v13 = v12, highlightCopy))
  {
    (v12[2])(v12);
LABEL_12:
    v13 = 0;
  }

  [(PuppetCollectionViewCell *)self setPendingHighlightBounceAnimation:v13];
}

- (void)displaySelection:(BOOL)selection
{
  selectionCopy = selection;
  v6 = +[UIView areAnimationsEnabled];
  borderView = [(PuppetCollectionViewCell *)self borderView];
  [borderView alpha];
  v9 = v8;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004DA4;
  v13[3] = &unk_1000348C8;
  v13[4] = self;
  *&v13[5] = selectionCopy;
  v10 = objc_retainBlock(v13);
  if (!v6)
  {
    [UIView performWithoutAnimation:v10];
    borderView2 = [(PuppetCollectionViewCell *)self borderView];
    [borderView2 _removeAllAnimations:0];

    goto LABEL_7;
  }

  if (![(PuppetCollectionViewCell *)self isAnimatingHighlight]|| v9 == selectionCopy || (v11 = v10, !selection))
  {
    (v10[2])(v10);
LABEL_7:
    v11 = 0;
  }

  [(PuppetCollectionViewCell *)self setPendingSelectionAnimation:v11];
}

+ (UIColor)selectedBorderColor
{
  if (qword_10003E018)
  {
    v2 = qword_10003E018;
  }

  else
  {
    v2 = [UIColor colorWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  }

  return v2;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end