@interface SiriAttributionViewController
- (CGSize)_imageView:(id)view sizeThatFit:(CGSize)fit;
- (void)_configureWithImage:(id)image superViewWidth:(double)width;
- (void)_positionButtonToFitWidth:(double)width isImage:(BOOL)image;
- (void)_punchoutButtonTapped:(id)tapped;
- (void)configureReusableTransparentFooterView:(id)view;
- (void)setAceObject:(id)object;
@end

@implementation SiriAttributionViewController

- (void)setAceObject:(id)object
{
  objectCopy = object;
  v6.receiver = self;
  v6.super_class = SiriAttributionViewController;
  [(SiriAttributionViewController *)&v6 setAceObject:objectCopy];
  attributionSnippet = self->_attributionSnippet;
  self->_attributionSnippet = objectCopy;
}

- (void)configureReusableTransparentFooterView:(id)view
{
  viewCopy = view;
  subviews = [viewCopy subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  [viewCopy frame];
  v7 = v6;
  v9 = v8;
  [(SiriAttributionViewController *)self desiredHeightForFooterView];
  v11 = v10;
  v12 = [UIButton alloc];
  [viewCopy bounds];
  v13 = [v12 initWithFrame:?];
  attributionButton = self->_attributionButton;
  self->_attributionButton = v13;

  [(UIButton *)self->_attributionButton addTarget:self action:"_punchoutButtonTapped:" forControlEvents:64];
  appPunchOut = [(SAUIAttributionSnippet *)self->_attributionSnippet appPunchOut];
  appIcon = [appPunchOut appIcon];

  if (appIcon)
  {
    delegate = [(SiriAttributionViewController *)self delegate];
    v18 = [delegate persistentDataStoreForSiriViewController:self];

    appIcon2 = [appPunchOut appIcon];
    resourceUrl = [appIcon2 resourceUrl];
    absoluteString = [resourceUrl absoluteString];

    v22 = [v18 imageForKey:absoluteString];
    if (v22)
    {
      v42.origin.x = 0.0;
      v42.origin.y = v7;
      v42.size.width = v9;
      v42.size.height = v11;
      [(SiriAttributionViewController *)self _configureWithImage:v22 superViewWidth:CGRectGetWidth(v42)];
    }

    else
    {
      v27 = +[SiriUIURLSession sharedURLSession];
      appIcon3 = [appPunchOut appIcon];
      resourceUrl2 = [appIcon3 resourceUrl];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_B670;
      v34[3] = &unk_185E0;
      v35 = v18;
      v36 = absoluteString;
      selfCopy = self;
      v38 = 0;
      v39 = v7;
      v40 = v9;
      v41 = v11;
      v29 = [v27 imageTaskWithHTTPGetRequest:resourceUrl2 client:self completionHandler:v34];
    }
  }

  else
  {
    v23 = self->_attributionButton;
    punchOutName = [appPunchOut punchOutName];
    [(UIButton *)v23 setTitle:punchOutName forState:0];

    titleLabel = [(UIButton *)self->_attributionButton titleLabel];
    v26 = [UIFont siriui_lightWeightFontWithSize:18.0];
    [titleLabel setFont:v26];

    v43.origin.x = 0.0;
    v43.origin.y = v7;
    v43.size.width = v9;
    v43.size.height = v11;
    [(SiriAttributionViewController *)self _positionButtonToFitWidth:0 isImage:CGRectGetWidth(v43)];
  }

  [viewCopy addSubview:self->_attributionButton];
  if ([(SAUIAttributionSnippet *)self->_attributionSnippet showKeyLine])
  {
    v30 = [SiriUIKeyline keylineWithKeylineType:1];
    [v30 sizeThatFits:{v9, v11}];
    [v30 setFrame:{0.0, 14.0, v31, v32}];
    [viewCopy addSubview:v30];
  }
}

- (void)_configureWithImage:(id)image superViewWidth:(double)width
{
  imageCopy = image;
  v7 = [UIImageView alloc];
  v8 = +[UIColor siriui_maskingColor];
  v9 = [imageCopy _flatImageWithColor:v8];

  v10 = [v7 initWithImage:v9];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v10;

  [(UIImageView *)self->_iconImageView setContentMode:1];
  superview = [(UIButton *)self->_attributionButton superview];
  [superview insertSubview:self->_iconImageView below:self->_attributionButton];

  [(SiriAttributionViewController *)self _positionButtonToFitWidth:1 isImage:width];
}

- (CGSize)_imageView:(id)view sizeThatFit:(CGSize)fit
{
  height = fit.height;
  width = fit.width;
  viewCopy = view;
  v7 = viewCopy;
  if (!viewCopy || ([viewCopy image], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "size"), v10 = v9, v12 = v11, v8, v10 == 0.0) || v12 == 0.0 || width == 0.0 || height == 0.0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v13 = v10 / v12;
    if (v10 / v12 <= width / height)
    {
      width = height * v13;
    }

    else
    {
      height = width / v13;
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_positionButtonToFitWidth:(double)width isImage:(BOOL)image
{
  if (image)
  {
    [(SiriAttributionViewController *)self _imageView:self->_iconImageView sizeThatFit:width, 24.0];
    v7 = v6;
    v9 = v8;
    v10 = 22.0;
  }

  else
  {
    [(UIButton *)self->_attributionButton sizeThatFits:width, 24.0];
    v7 = v11;
    v9 = v12;
    v10 = 13.0;
  }

  IsRTL = SiriLanguageIsRTL();
  v14 = SiriUIPlatterStyle[32];
  if (!IsRTL)
  {
    v14 = width - v14 - v7;
  }

  [(UIButton *)self->_attributionButton setFrame:v14, v10, v7, v9];
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(UIButton *)self->_attributionButton frame];

    [(UIImageView *)iconImageView setFrame:?];
  }
}

- (void)_punchoutButtonTapped:(id)tapped
{
  delegate = [(SiriAttributionViewController *)self delegate];
  appPunchOut = [(SAUIAttributionSnippet *)self->_attributionSnippet appPunchOut];
  v7 = appPunchOut;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [delegate siriViewController:self performAceCommands:v6];
}

@end