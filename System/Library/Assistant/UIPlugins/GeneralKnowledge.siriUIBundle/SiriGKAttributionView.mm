@interface SiriGKAttributionView
- (CGSize)sizeThatFits:(CGSize)result;
- (SiriGKAttributionView)initWithAppPunchOut:(id)out usingPersistentStore:(id)store;
- (void)_configureWithImage:(id)image;
- (void)updateConstraints;
@end

@implementation SiriGKAttributionView

- (SiriGKAttributionView)initWithAppPunchOut:(id)out usingPersistentStore:(id)store
{
  outCopy = out;
  storeCopy = store;
  v37.receiver = self;
  v37.super_class = SiriGKAttributionView;
  v8 = [(SiriGKAttributionView *)&v37 init];
  v9 = v8;
  if (v8)
  {
    [(SiriGKView *)v8 setCommand:outCopy];
    [(SiriGKView *)v9 setEdgeInsets:0.0, SiriUIPlatterStyle[32], 0.0, SiriUIPlatterStyle[34]];
    punchOutName = [outCopy punchOutName];
    v11 = [punchOutName length];

    if (v11)
    {
      v12 = +[SiriSharedUIContentLabel label];
      attributionLabel = v9->_attributionLabel;
      v9->_attributionLabel = v12;

      [(SiriSharedUIContentLabel *)v9->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = v9->_attributionLabel;
      v15 = [UIFont siriui_lightWeightFontWithSize:14.0];
      [(SiriSharedUIContentLabel *)v14 setFont:v15];

      v16 = v9->_attributionLabel;
      punchOutName2 = [outCopy punchOutName];
      [(SiriSharedUIContentLabel *)v16 setText:punchOutName2];

      v18 = v9->_attributionLabel;
      v19 = +[UIColor siriui_maskingColor];
      [(SiriSharedUIContentLabel *)v18 setTextColor:v19];

      [(SiriGKAttributionView *)v9 addSubview:v9->_attributionLabel];
      [(SiriGKAttributionView *)v9 setNeedsUpdateConstraints];
    }

    else
    {
      v20 = objc_alloc_init(UIImageView);
      attributionImageView = v9->_attributionImageView;
      v9->_attributionImageView = v20;

      [(UIImageView *)v9->_attributionImageView setContentMode:4];
      [(UIImageView *)v9->_attributionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v22) = 1148846080;
      [(UIImageView *)v9->_attributionImageView setContentHuggingPriority:0 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [(UIImageView *)v9->_attributionImageView setContentHuggingPriority:1 forAxis:v23];
      [(SiriGKAttributionView *)v9 addSubview:v9->_attributionImageView];
      appIcon = [outCopy appIcon];
      resourceUrl = [appIcon resourceUrl];
      absoluteString = [resourceUrl absoluteString];

      v27 = [storeCopy imageForKey:absoluteString];
      if (v27)
      {
        [(SiriGKAttributionView *)v9 _configureWithImage:v27];
      }

      else
      {
        v28 = +[SiriUIURLSession sharedURLSession];
        appIcon2 = [outCopy appIcon];
        resourceUrl2 = [appIcon2 resourceUrl];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_19C8;
        v33[3] = &unk_18540;
        v34 = storeCopy;
        v35 = absoluteString;
        v36 = v9;
        v31 = [v28 imageTaskWithHTTPGetRequest:resourceUrl2 client:v36 completionHandler:v33];
      }

      [(SiriGKAttributionView *)v9 setNeedsUpdateConstraints];
    }
  }

  return v9;
}

- (void)_configureWithImage:(id)image
{
  imageCopy = image;
  v5 = +[UIColor siriui_maskingColor];
  v6 = [imageCopy _flatImageWithColor:v5];

  [(UIImageView *)self->_attributionImageView setImage:v6];
  [(UIImageView *)self->_attributionImageView sizeToFit];
  [(SiriGKAttributionView *)self layoutSubviews];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = SiriUIPlatterStyle[26];
  result.height = v3;
  return result;
}

- (void)updateConstraints
{
  v11.receiver = self;
  v11.super_class = SiriGKAttributionView;
  [(SiriGKAttributionView *)&v11 updateConstraints];
  if (self->_hasSetUpConstraints)
  {
    return;
  }

  attributionImageView = self->_attributionImageView;
  if (attributionImageView)
  {
    v4 = attributionImageView;
  }

  else
  {
    v4 = self->_attributionLabel;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = _NSDictionaryOfVariableBindings(@"trailingView", v4, 0);
  v6 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[trailingView]|" options:0 metrics:0 views:v5];
  [(SiriGKAttributionView *)self addConstraints:v6];

LABEL_6:
  if (self->_attributionLabel)
  {
    if (!self->_attributionImageView || ([NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:1.0 relatedBy:-6.0 toItem:? attribute:? multiplier:? constant:?], v7 = objc_claimAutoreleasedReturnValue(), [(SiriGKAttributionView *)self addConstraint:v7], v7, self->_attributionLabel))
    {
      v8 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:1.0 relatedBy:27.0 toItem:? attribute:? multiplier:? constant:?];
      [(SiriGKAttributionView *)self addConstraint:v8];
    }
  }

  v9 = self->_attributionImageView;
  if (v9)
  {
    v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [(SiriGKAttributionView *)self addConstraint:v10];
  }

  self->_hasSetUpConstraints = 1;
}

@end