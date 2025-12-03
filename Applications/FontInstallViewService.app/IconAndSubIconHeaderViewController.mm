@interface IconAndSubIconHeaderViewController
- (IconAndSubIconHeaderViewController)initWithIconImage:(id)image andSubIconImage:(id)iconImage;
- (void)loadView;
@end

@implementation IconAndSubIconHeaderViewController

- (IconAndSubIconHeaderViewController)initWithIconImage:(id)image andSubIconImage:(id)iconImage
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v19 = 0;
  objc_storeStrong(&v19, iconImage);
  v4 = selfCopy;
  selfCopy = 0;
  v18.receiver = v4;
  v18.super_class = IconAndSubIconHeaderViewController;
  v17 = [(IconAndSubIconHeaderViewController *)&v18 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    v5 = [UIImageView alloc];
    v6 = [v5 initWithImage:location[0]];
    mainImageView = selfCopy->_mainImageView;
    selfCopy->_mainImageView = v6;

    if (v19)
    {
      v8 = [UIImageView alloc];
      v9 = [v8 initWithImage:v19];
      subImageView = selfCopy->_subImageView;
      selfCopy->_subImageView = v9;

      v11 = [UIImageView alloc];
      v12 = [v11 initWithImage:v19];
      subIconShadowView = selfCopy->_subIconShadowView;
      selfCopy->_subIconShadowView = v12;
    }
  }

  v15 = selfCopy;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (void)loadView
{
  selfCopy = self;
  v36 = a2;
  CGRectMake();
  v35.origin.x = v2;
  v35.origin.y = v3;
  v35.size.width = v4;
  v35.size.height = v5;
  v34 = 0;
  if (selfCopy->_subImageView)
  {
    CGSizeMake();
    v34.width = v6;
    v34.height = v7;
  }

  else
  {
    v34 = CGSizeZero;
  }

  CGRectGetMaxY(v35);
  CGRectMake();
  v33.origin.x = v8;
  v33.origin.y = v9;
  v33.size.width = v10;
  v33.size.height = v11;
  v38 = CGRectUnion(v35, v33);
  v31 = *&v38.origin.x;
  *&v32 = v38.size.width;
  *(&v32 + 1) = CGRectGetMaxY(v38);
  v30 = [[UIView alloc] initWithFrame:{v31, v32}];
  [v30 setSize:v32];
  [v30 setBackgroundColor:0];
  [v30 addSubview:selfCopy->_mainImageView];
  [(UIImageView *)selfCopy->_mainImageView setFrame:*&v35.origin, *&v35.size];
  if (selfCopy->_subImageView)
  {
    v29 = CGRectOffset(v33, -v35.origin.x, -v35.origin.y);
    [v30 addSubview:selfCopy->_subImageView];
    [(UIImageView *)selfCopy->_subImageView setFrame:*&v33.origin, *&v33.size];
    [(UIImageView *)selfCopy->_subIconShadowView setSize:v29.size.width, v29.size.height];
    [(UIImageView *)selfCopy->_mainImageView addSubview:selfCopy->_subIconShadowView];
    layer = [(UIImageView *)selfCopy->_mainImageView layer];
    [layer setMasksToBounds:1];

    [(UIImageView *)selfCopy->_subIconShadowView setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
    layer2 = [(UIImageView *)selfCopy->_subIconShadowView layer];
    [layer2 setCornerRadius:20.0];

    v23 = +[UIColor blackColor];
    v12 = v23;
    cGColor = [(UIColor *)v23 CGColor];
    layer3 = [(UIImageView *)selfCopy->_subIconShadowView layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(UIImageView *)selfCopy->_subIconShadowView layer];
    LODWORD(v13) = 1045220557;
    [layer4 setShadowOpacity:v13];

    CGSizeMake();
    v27 = v14;
    v28 = v15;
    layer5 = [(UIImageView *)selfCopy->_subIconShadowView layer];
    [layer5 setShadowOffset:{v27, v28}];

    layer6 = [(UIImageView *)selfCopy->_subIconShadowView layer];
    [layer6 setShadowRadius:8.0];
  }

  v18 = selfCopy;
  [v30 size];
  [(IconAndSubIconHeaderViewController *)v18 setPreferredContentSize:v16, v17];
  [(IconAndSubIconHeaderViewController *)selfCopy setView:v30];
  objc_storeStrong(&v30, 0);
}

@end