@interface PuppetCollectionViewCell
+ (UIColor)selectedBorderColor;
- (BOOL)isAnimatingHighlight;
- (CGSize)maxSize;
- (PuppetCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)asyncPuppetThumbnailHandler;
- (void)displayHighlight:(BOOL)a3;
- (void)displaySelection:(BOOL)a3;
- (void)layoutSubviews;
- (void)onImageButtonTapped:(id)a3;
- (void)prepareForReuse;
- (void)setButtonImageNamed:(id)a3 alpha:(double)a4 maxSize:(CGSize)a5 enabled:(BOOL)a6 touchedHandler:(id)a7;
- (void)setPuppetThumbnail:(id)a3 alpha:(double)a4 maxSize:(CGSize)a5;
@end

@implementation PuppetCollectionViewCell

- (PuppetCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v56.receiver = self;
  v56.super_class = PuppetCollectionViewCell;
  v5 = [(PuppetCollectionViewCell *)&v56 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [[AdditivelyAnimatableView alloc] initWithFrame:0.0, 0.0, width, height];
    [(PuppetCollectionViewCell *)v5 setContentContainerView:v6];

    v7 = [(PuppetCollectionViewCell *)v5 contentContainerView];
    [v7 setAutoresizingMask:0];

    v8 = [(PuppetCollectionViewCell *)v5 contentView];
    v9 = [(PuppetCollectionViewCell *)v5 contentContainerView];
    [v8 addSubview:v9];

    v10 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, width + -24.0, height + -24.0}];
    [(PuppetCollectionViewCell *)v5 setPuppetImgView:v10];

    v11 = [(PuppetCollectionViewCell *)v5 contentContainerView];
    v12 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [v11 addSubview:v12];

    v13 = [(PuppetCollectionViewCell *)v5 contentView];
    [v13 frame];
    v15 = v14 * 0.5;
    v16 = [(PuppetCollectionViewCell *)v5 contentView];
    [v16 frame];
    v18 = v17 * 0.5;
    v19 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [v19 setCenter:{v15, v18}];

    v20 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [v20 setAutoresizingMask:0];

    v21 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    [v21 setHidden:1];

    v22 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    v23 = [v22 layer];
    [v23 setMasksToBounds:1];

    v24 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    v25 = [v24 layer];
    [v25 setCornerRadius:6.0];

    v26 = [(PuppetCollectionViewCell *)v5 puppetImgView];
    v27 = [v26 layer];
    [v27 setCornerCurve:kCACornerCurveContinuous];

    v28 = [[AdditivelyAnimatableView alloc] initWithFrame:0.0, 0.0, width, height];
    [(PuppetCollectionViewCell *)v5 setBorderView:v28];

    v29 = +[UIColor clearColor];
    v30 = [(PuppetCollectionViewCell *)v5 borderView];
    [v30 setBackgroundColor:v29];

    v31 = [(PuppetCollectionViewCell *)v5 contentView];
    v32 = [(PuppetCollectionViewCell *)v5 borderView];
    [v31 addSubview:v32];

    v33 = [(PuppetCollectionViewCell *)v5 contentView];
    [v33 frame];
    v35 = v34 * 0.5;
    v36 = [(PuppetCollectionViewCell *)v5 contentView];
    [v36 frame];
    v38 = v37 * 0.5;
    v39 = [(PuppetCollectionViewCell *)v5 borderView];
    [v39 setCenter:{v35, v38}];

    v40 = [(PuppetCollectionViewCell *)v5 borderView];
    v41 = [v40 layer];
    [v41 setBorderWidth:3.0];

    v42 = [(PuppetCollectionViewCell *)v5 borderView];
    v43 = [v42 layer];
    [v43 setCornerRadius:12.0];

    v44 = [(PuppetCollectionViewCell *)v5 borderView];
    v45 = [v44 layer];
    [v45 setCornerCurve:kCACornerCurveContinuous];

    v46 = [(PuppetCollectionViewCell *)v5 borderView];
    [v46 setAutoresizingMask:18];

    v47 = [objc_opt_class() selectedBorderColor];
    v48 = [v47 CGColor];
    v49 = [(PuppetCollectionViewCell *)v5 borderView];
    v50 = [v49 layer];
    [v50 setBorderColor:v48];

    v51 = [(PuppetCollectionViewCell *)v5 borderView];
    [v51 setAlpha:0.0];

    v52 = [AVTCircularButton buttonWithType:0];
    [v52 addTarget:v5 action:"onImageButtonTapped:" forControlEvents:64];
    v53 = [(PuppetCollectionViewCell *)v5 contentView];
    [v53 addSubview:v52];

    [(PuppetCollectionViewCell *)v5 setImageButton:v52];
    v54 = [(PuppetCollectionViewCell *)v5 imageButton];
    [v54 setHidden:1];

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
  v3 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v3 isHidden];

  [(PuppetCollectionViewCell *)self maxSize];
  v5 = v4;
  v6 = [(PuppetCollectionViewCell *)self contentView];
  [v6 bounds];
  v7 = CGRectGetWidth(v19) + -24.0;

  if (v5 >= v7)
  {
    v5 = v7;
  }

  [(PuppetCollectionViewCell *)self maxSize];
  v9 = v8;
  v10 = [(PuppetCollectionViewCell *)self contentView];
  [v10 bounds];
  v11 = CGRectGetHeight(v20) + -24.0;

  if (v9 >= v11)
  {
    v9 = v11;
  }

  v12 = [(PuppetCollectionViewCell *)self contentView];
  [v12 bounds];
  v13 = (CGRectGetWidth(v21) - v5) * 0.5;

  v14 = [(PuppetCollectionViewCell *)self contentView];
  [v14 bounds];
  v15 = (CGRectGetHeight(v22) - v9) * 0.5;

  v16 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v16 setFrame:{v13, v15, v5, v9}];

  v17 = [(PuppetCollectionViewCell *)self imageButton];
  [v17 setFrame:{v13, v15, v5, v9}];
}

- (void)setPuppetThumbnail:(id)a3 alpha:(double)a4 maxSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v10 setAlpha:a4];

  v11 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v11 setImage:v9];

  v12 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v12 setHidden:0];

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

- (void)setButtonImageNamed:(id)a3 alpha:(double)a4 maxSize:(CGSize)a5 enabled:(BOOL)a6 touchedHandler:(id)a7
{
  v7 = a6;
  height = a5.height;
  width = a5.width;
  v13 = a7;
  v14 = a3;
  [(PuppetCollectionViewCell *)self setMaxSize:width, height];
  v22 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:1];
  v15 = [(PuppetCollectionViewCell *)self imageButton];
  [v15 setSymbolImageWithName:v14 configuration:v22];

  v16 = [(PuppetCollectionViewCell *)self imageButton];
  [v16 setHidden:0];

  v17 = [(PuppetCollectionViewCell *)self imageButton];
  [v17 setAlpha:a4];

  v18 = [(PuppetCollectionViewCell *)self imageButton];
  [v18 setEnabled:v7];

  if (v7)
  {
    [(PuppetCollectionViewCell *)self setTintColor:0];
  }

  else
  {
    v19 = +[UIColor grayColor];
    [(PuppetCollectionViewCell *)self setTintColor:v19];
  }

  [(PuppetCollectionViewCell *)self setImageButtonHandlerBlock:v13];

  v20 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v20 setImage:0];

  v21 = [(PuppetCollectionViewCell *)self puppetImgView];
  [v21 setHidden:1];

  [(PuppetCollectionViewCell *)self setNeedsLayout];
}

- (void)onImageButtonTapped:(id)a3
{
  v3 = [(PuppetCollectionViewCell *)self imageButtonHandlerBlock];
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (BOOL)isAnimatingHighlight
{
  v2 = [(PuppetCollectionViewCell *)self contentContainerView];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"transform"];
  v5 = v4 != 0;

  return v5;
}

- (void)displayHighlight:(BOOL)a3
{
  v3 = a3;
  memset(&v21, 0, sizeof(v21));
  if (a3)
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
  v7 = [(PuppetCollectionViewCell *)self contentContainerView];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
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
    v14 = [(PuppetCollectionViewCell *)self contentContainerView];
    [v14 _removeAllAnimations:0];

    goto LABEL_12;
  }

  if (v9 | ![(PuppetCollectionViewCell *)self isAnimatingHighlight]|| (v13 = v12, v3))
  {
    (v12[2])(v12);
LABEL_12:
    v13 = 0;
  }

  [(PuppetCollectionViewCell *)self setPendingHighlightBounceAnimation:v13];
}

- (void)displaySelection:(BOOL)a3
{
  v5 = a3;
  v6 = +[UIView areAnimationsEnabled];
  v7 = [(PuppetCollectionViewCell *)self borderView];
  [v7 alpha];
  v9 = v8;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004DA4;
  v13[3] = &unk_1000348C8;
  v13[4] = self;
  *&v13[5] = v5;
  v10 = objc_retainBlock(v13);
  if (!v6)
  {
    [UIView performWithoutAnimation:v10];
    v12 = [(PuppetCollectionViewCell *)self borderView];
    [v12 _removeAllAnimations:0];

    goto LABEL_7;
  }

  if (![(PuppetCollectionViewCell *)self isAnimatingHighlight]|| v9 == v5 || (v11 = v10, !a3))
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