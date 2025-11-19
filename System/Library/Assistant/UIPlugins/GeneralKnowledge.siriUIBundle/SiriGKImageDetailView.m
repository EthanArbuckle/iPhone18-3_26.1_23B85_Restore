@interface SiriGKImageDetailView
- (CGSize)_displayedImageSizeForImageSize:(CGSize)result inWidth:(double)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriGKImageDetailView)initWithAceImageView:(id)a3 expectedWidth:(double)a4;
- (SiriGKImageDetailViewDelegate)delegate;
- (id)_titleLabelAttributes;
- (id)_urlLabelAttributes;
- (void)_imageButtonTapped;
- (void)layoutSubviews;
@end

@implementation SiriGKImageDetailView

- (SiriGKImageDetailView)initWithAceImageView:(id)a3 expectedWidth:(double)a4
{
  v6 = a3;
  v55.receiver = self;
  v55.super_class = SiriGKImageDetailView;
  v7 = [(SiriGKImageDetailView *)&v55 init];
  if (v7)
  {
    v8 = [v6 image];
    imageResource = v7->_imageResource;
    v7->_imageResource = v8;

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
    v49 = v6;
    v17 = [v6 commands];
    v18 = [v17 firstObject];

    v19 = [v18 subtitle];
    if ([v19 length])
    {
      v20 = objc_alloc_init(UILabel);
      v21 = +[UIColor clearColor];
      [v20 setBackgroundColor:v21];

      v22 = [NSAttributedString alloc];
      v23 = [(SiriGKImageDetailView *)v7 _titleLabelAttributes];
      v24 = [v22 initWithString:v19 attributes:v23];
      [v20 setAttributedText:v24];

      [v20 setLineBreakMode:4];
      [v20 setTextAlignment:1];
      [(UIStackView *)v7->_stackView addArrangedSubview:v20];
    }

    v25 = [v18 punchOutUri];
    v26 = [v25 host];

    if ([v26 length])
    {
      v27 = objc_alloc_init(UILabel);
      v28 = +[UIColor clearColor];
      [v27 setBackgroundColor:v28];

      v29 = [NSAttributedString alloc];
      v30 = [(SiriGKImageDetailView *)v7 _urlLabelAttributes];
      v31 = [v29 initWithString:v26 attributes:v30];
      [v27 setAttributedText:v31];

      [v27 setLineBreakMode:4];
      [v27 setTextAlignment:1];
      [(UIStackView *)v7->_stackView addArrangedSubview:v27];
    }

    v32 = objc_alloc_init(UIView);
    [(UIStackView *)v7->_stackView addArrangedSubview:v32];
    v33 = [(SAUIImageResource *)v7->_imageResource resourceUrl];
    if (v33)
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
      [(SiriGKImageDetailView *)v7 _displayedImageSizeForImageSize:v36 inWidth:v37, a4];
      v39 = v38;
      v41 = v40;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_5C64;
      v50[3] = &unk_18568;
      objc_copyWeak(&v51, &location);
      v50[4] = v53;
      v42 = [(SAUIImageResource *)v7->_imageResource userAgent];
      v43 = [v34 imageTaskWithHTTPGetRequest:v33 client:v7 fitToSize:1 incremental:v50 progressHandler:0 fillColor:v42 userAgent:{v39, v41}];

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

    v6 = v49;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SAUIImageResource *)self->_imageResource pixelHeight:a3.width];
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
  v3 = [(SiriGKImageDetailView *)self delegate];
  [v3 siriGeneralKnowledgeImageDetailViewImageTapped:self];
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

- (CGSize)_displayedImageSizeForImageSize:(CGSize)result inWidth:(double)a4
{
  v4 = result.height * (a4 / result.width);
  v5 = fmax(result.height, 160.0);
  if (a4 / result.width < 1.0)
  {
    v5 = v4;
    result.width = a4;
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