@interface SiriGKImageDetailView
- (CGSize)_displayedImageSizeForImageSize:(CGSize)result inWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriGKImageDetailView)initWithAceImageView:(id)view expectedWidth:(double)width;
- (SiriGKImageDetailViewDelegate)delegate;
- (id)_titleLabelAttributes;
- (id)_urlLabelAttributes;
- (void)_imageButtonTapped;
- (void)layoutSubviews;
@end

@implementation SiriGKImageDetailView

- (SiriGKImageDetailView)initWithAceImageView:(id)view expectedWidth:(double)width
{
  viewCopy = view;
  v55.receiver = self;
  v55.super_class = SiriGKImageDetailView;
  v7 = [(SiriGKImageDetailView *)&v55 init];
  if (v7)
  {
    image = [viewCopy image];
    imageResource = v7->_imageResource;
    v7->_imageResource = image;

    v10 = objc_alloc_init(UIStackView);
    stackView = v7->_stackView;
    v7->_stackView = v10;

    [(UIStackView *)v7->_stackView setAxis:1];
    [(UIStackView *)v7->_stackView setSpacing:8.0];
    [(UIStackView *)v7->_stackView setDistribution:0];
    v12 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"_imageButtonTapped"];
    [(UIStackView *)v7->_stackView setUserInteractionEnabled:1];
    v48 = v12;
    [(UIStackView *)v7->_stackView addGestureRecognizer:v12];
    v47 = objc_alloc_init(UIView);
    [(UIStackView *)v7->_stackView addArrangedSubview:?];
    v13 = objc_alloc_init(UIImageView);
    imageView = v7->_imageView;
    v7->_imageView = v13;

    v15 = v7->_imageView;
    v16 = +[UIColor clearColor];
    [(UIImageView *)v15 setBackgroundColor:v16];

    [(UIImageView *)v7->_imageView setContentMode:1];
    [(UIStackView *)v7->_stackView addArrangedSubview:v7->_imageView];
    v49 = viewCopy;
    commands = [viewCopy commands];
    firstObject = [commands firstObject];

    subtitle = [firstObject subtitle];
    if ([subtitle length])
    {
      v20 = objc_alloc_init(UILabel);
      v21 = +[UIColor clearColor];
      [v20 setBackgroundColor:v21];

      v22 = [NSAttributedString alloc];
      _titleLabelAttributes = [(SiriGKImageDetailView *)v7 _titleLabelAttributes];
      v24 = [v22 initWithString:subtitle attributes:_titleLabelAttributes];
      [v20 setAttributedText:v24];

      [v20 setLineBreakMode:4];
      [v20 setTextAlignment:1];
      [(UIStackView *)v7->_stackView addArrangedSubview:v20];
    }

    punchOutUri = [firstObject punchOutUri];
    host = [punchOutUri host];

    if ([host length])
    {
      v27 = objc_alloc_init(UILabel);
      v28 = +[UIColor clearColor];
      [v27 setBackgroundColor:v28];

      v29 = [NSAttributedString alloc];
      _urlLabelAttributes = [(SiriGKImageDetailView *)v7 _urlLabelAttributes];
      v31 = [v29 initWithString:host attributes:_urlLabelAttributes];
      [v27 setAttributedText:v31];

      [v27 setLineBreakMode:4];
      [v27 setTextAlignment:1];
      [(UIStackView *)v7->_stackView addArrangedSubview:v27];
    }

    v32 = objc_alloc_init(UIView);
    [(UIStackView *)v7->_stackView addArrangedSubview:v32];
    resourceUrl = [(SAUIImageResource *)v7->_imageResource resourceUrl];
    if (resourceUrl)
    {
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v54 = 0;
      objc_initWeak(&location, v7);
      v34 = +[SiriUIURLSession sharedURLSession];
      [(SAUIImageResource *)v7->_imageResource pixelWidth];
      v36 = v35;
      [(SAUIImageResource *)v7->_imageResource pixelHeight];
      [(SiriGKImageDetailView *)v7 _displayedImageSizeForImageSize:v36 inWidth:v37, width];
      v39 = v38;
      v41 = v40;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_5C64;
      v50[3] = &unk_18568;
      objc_copyWeak(&v51, &location);
      v50[4] = v53;
      userAgent = [(SAUIImageResource *)v7->_imageResource userAgent];
      v43 = [v34 imageTaskWithHTTPGetRequest:resourceUrl client:v7 fitToSize:1 incremental:v50 progressHandler:0 fillColor:userAgent userAgent:{v39, v41}];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
      _Block_object_dispose(v53, 8);
    }

    v44 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    activityIndicator = v7->_activityIndicator;
    v7->_activityIndicator = v44;

    [(UIActivityIndicatorView *)v7->_activityIndicator startAnimating];
    [(SiriGKImageDetailView *)v7 addSubview:v7->_stackView];
    [(SiriGKImageDetailView *)v7 addSubview:v7->_activityIndicator];

    viewCopy = v49;
  }

  return v7;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SiriGKImageDetailView;
  [(SiriGKImageDetailView *)&v5 layoutSubviews];
  stackView = self->_stackView;
  [(SiriGKImageDetailView *)self bounds];
  [(UIStackView *)stackView setFrame:?];
  activityIndicator = self->_activityIndicator;
  [(SiriGKImageDetailView *)self bounds];
  [(UIActivityIndicatorView *)activityIndicator setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SAUIImageResource *)self->_imageResource pixelHeight:fits.width];
  v5 = v4;
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v5 / v7;

  v9 = +[UIScreen mainScreen];
  [v9 bounds];
  v10 = CGRectGetHeight(v14) * 0.5;

  if (v8 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_imageButtonTapped
{
  delegate = [(SiriGKImageDetailView *)self delegate];
  [delegate siriGeneralKnowledgeImageDetailViewImageTapped:self];
}

- (id)_titleLabelAttributes
{
  v6[0] = NSFontAttributeName;
  v2 = [UIFont siriui_mediumWeightFontWithSize:15.0];
  v7[0] = v2;
  v6[1] = NSForegroundColorAttributeName;
  v3 = +[UIColor labelColor];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_urlLabelAttributes
{
  v6[0] = NSFontAttributeName;
  v2 = [UIFont siriui_lightWeightFontWithSize:13.0];
  v7[0] = v2;
  v6[1] = NSForegroundColorAttributeName;
  v3 = +[UIColor labelColor];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (CGSize)_displayedImageSizeForImageSize:(CGSize)result inWidth:(double)width
{
  v4 = result.height * (width / result.width);
  v5 = fmax(result.height, 160.0);
  if (width / result.width < 1.0)
  {
    v5 = v4;
    result.width = width;
  }

  result.height = v5;
  return result;
}

- (SiriGKImageDetailViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end