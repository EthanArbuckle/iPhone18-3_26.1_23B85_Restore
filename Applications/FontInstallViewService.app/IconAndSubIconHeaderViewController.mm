@interface IconAndSubIconHeaderViewController
- (IconAndSubIconHeaderViewController)initWithIconImage:(id)a3 andSubIconImage:(id)a4;
- (void)loadView;
@end

@implementation IconAndSubIconHeaderViewController

- (IconAndSubIconHeaderViewController)initWithIconImage:(id)a3 andSubIconImage:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v4 = v21;
  v21 = 0;
  v18.receiver = v4;
  v18.super_class = IconAndSubIconHeaderViewController;
  v17 = [(IconAndSubIconHeaderViewController *)&v18 init];
  v21 = v17;
  objc_storeStrong(&v21, v17);
  if (v17)
  {
    v5 = [UIImageView alloc];
    v6 = [v5 initWithImage:location[0]];
    mainImageView = v21->_mainImageView;
    v21->_mainImageView = v6;

    if (v19)
    {
      v8 = [UIImageView alloc];
      v9 = [v8 initWithImage:v19];
      subImageView = v21->_subImageView;
      v21->_subImageView = v9;

      v11 = [UIImageView alloc];
      v12 = [v11 initWithImage:v19];
      subIconShadowView = v21->_subIconShadowView;
      v21->_subIconShadowView = v12;
    }
  }

  v15 = v21;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v15;
}

- (void)loadView
{
  v37 = self;
  v36 = a2;
  CGRectMake();
  v35.origin.x = v2;
  v35.origin.y = v3;
  v35.size.width = v4;
  v35.size.height = v5;
  v34 = 0;
  if (v37->_subImageView)
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
  [v30 addSubview:v37->_mainImageView];
  [(UIImageView *)v37->_mainImageView setFrame:*&v35.origin, *&v35.size];
  if (v37->_subImageView)
  {
    v29 = CGRectOffset(v33, -v35.origin.x, -v35.origin.y);
    [v30 addSubview:v37->_subImageView];
    [(UIImageView *)v37->_subImageView setFrame:*&v33.origin, *&v33.size];
    [(UIImageView *)v37->_subIconShadowView setSize:v29.size.width, v29.size.height];
    [(UIImageView *)v37->_mainImageView addSubview:v37->_subIconShadowView];
    v19 = [(UIImageView *)v37->_mainImageView layer];
    [v19 setMasksToBounds:1];

    [(UIImageView *)v37->_subIconShadowView setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
    v20 = [(UIImageView *)v37->_subIconShadowView layer];
    [v20 setCornerRadius:20.0];

    v23 = +[UIColor blackColor];
    v12 = v23;
    v21 = [(UIColor *)v23 CGColor];
    v22 = [(UIImageView *)v37->_subIconShadowView layer];
    [v22 setShadowColor:v21];

    v24 = [(UIImageView *)v37->_subIconShadowView layer];
    LODWORD(v13) = 1045220557;
    [v24 setShadowOpacity:v13];

    CGSizeMake();
    v27 = v14;
    v28 = v15;
    v25 = [(UIImageView *)v37->_subIconShadowView layer];
    [v25 setShadowOffset:{v27, v28}];

    v26 = [(UIImageView *)v37->_subIconShadowView layer];
    [v26 setShadowRadius:8.0];
  }

  v18 = v37;
  [v30 size];
  [(IconAndSubIconHeaderViewController *)v18 setPreferredContentSize:v16, v17];
  [(IconAndSubIconHeaderViewController *)v37 setView:v30];
  objc_storeStrong(&v30, 0);
}

@end