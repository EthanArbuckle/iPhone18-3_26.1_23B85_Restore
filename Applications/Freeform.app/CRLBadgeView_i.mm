@interface CRLBadgeView_i
- (CRLBadgeView_i)initWithFrame:(CGRect)a3;
- (id)tintColorForSystemImageNamed:(id)a3;
- (void)setFinalImageWithName:(id)a3 legacyName:(id)a4 accessibilityName:(id)a5 scalesImageToFit:(BOOL)a6;
@end

@implementation CRLBadgeView_i

- (CRLBadgeView_i)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = CRLBadgeView_i;
  v7 = [(CRLBadgeView_i *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIColor clearColor];
    [(CRLBadgeView_i *)v7 setBackgroundColor:v8];

    v9 = [[UIImageView alloc] initWithFrame:{x, y, width, height}];
    imageView = v7->_imageView;
    v7->_imageView = v9;

    v11 = [(CRLBadgeView_i *)v7 imageView];
    [(CRLBadgeView_i *)v7 addSubview:v11];
  }

  return v7;
}

- (void)setFinalImageWithName:(id)a3 legacyName:(id)a4 accessibilityName:(id)a5 scalesImageToFit:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!a6)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101392A10();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101392A24(v13, v14);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392AD0();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v15, v13);
    }

    v16 = [NSString stringWithUTF8String:"[CRLBadgeView_i setFinalImageWithName:legacyName:accessibilityName:scalesImageToFit:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/StatusHUDs/CRLBadgeView_i.m"];
  }

  v18 = [v11 copy];
  [(CRLBadgeView_i *)self setLegacyImageName:v18];

  v19 = [v10 copy];
  [(CRLBadgeView_i *)self setFinalImageName:v19];

  v20 = [(CRLBadgeView_i *)self finalImageName];

  if (v20)
  {
    v21 = [(CRLBadgeView_i *)self finalImageName];
    v22 = [UIImage imageNamed:v21];

    if (v22)
    {
      goto LABEL_16;
    }

    v23 = [(CRLBadgeView_i *)self finalImageName];
    v22 = [UIImage systemImageNamed:v23];
  }

  else
  {
    v23 = +[NSBundle mainBundle];
    v24 = [v23 infoDictionary];
    v25 = [v24 objectForKeyedSubscript:@"CFBundleIcons"];
    [v25 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
    v41 = v12;
    v26 = v11;
    v28 = v27 = v10;
    v29 = [v28 objectForKeyedSubscript:@"CFBundleIconFiles"];
    v30 = [v29 lastObject];
    v22 = [UIImage imageNamed:v30];

    v10 = v27;
    v11 = v26;
    v12 = v41;
  }

LABEL_16:
  v31 = [(CRLBadgeView_i *)self imageView];
  [v31 setImage:v22];

  v32 = [(CRLBadgeView_i *)self imageView];
  [v32 setContentMode:4];

  v33 = [(CRLBadgeView_i *)self finalImageName];

  if (v33)
  {
    v34 = [(CRLBadgeView_i *)self finalImageName];
    v35 = [(CRLBadgeView_i *)self tintColorForSystemImageNamed:v34];
    v36 = [(CRLBadgeView_i *)self imageView];
    [v36 setTintColor:v35];
  }

  else
  {
    v37 = [(CRLBadgeView_i *)self imageView];
    [v37 setContentMode:1];

    v38 = [(CRLBadgeView_i *)self imageView];
    v39 = [v38 layer];
    [v39 setCornerRadius:4.86];

    v34 = [(CRLBadgeView_i *)self imageView];
    v35 = [v34 layer];
    [v35 setMasksToBounds:1];
  }

  v40 = [(CRLBadgeView_i *)self imageView];
  [v40 setAccessibilityLabel:v12];

  [(CRLBadgeView_i *)self setNeedsDisplay];
}

- (id)tintColorForSystemImageNamed:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"exclamationmark.circle"])
  {
    v4 = +[UIColor systemRedColor];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"checkmark.circle"])
  {
    v4 = +[UIColor systemGreenColor];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end