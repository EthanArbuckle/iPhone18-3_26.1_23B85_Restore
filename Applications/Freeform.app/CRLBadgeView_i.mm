@interface CRLBadgeView_i
- (CRLBadgeView_i)initWithFrame:(CGRect)frame;
- (id)tintColorForSystemImageNamed:(id)named;
- (void)setFinalImageWithName:(id)name legacyName:(id)legacyName accessibilityName:(id)accessibilityName scalesImageToFit:(BOOL)fit;
@end

@implementation CRLBadgeView_i

- (CRLBadgeView_i)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

    imageView = [(CRLBadgeView_i *)v7 imageView];
    [(CRLBadgeView_i *)v7 addSubview:imageView];
  }

  return v7;
}

- (void)setFinalImageWithName:(id)name legacyName:(id)legacyName accessibilityName:(id)accessibilityName scalesImageToFit:(BOOL)fit
{
  nameCopy = name;
  legacyNameCopy = legacyName;
  accessibilityNameCopy = accessibilityName;
  if (!fit)
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

  v18 = [legacyNameCopy copy];
  [(CRLBadgeView_i *)self setLegacyImageName:v18];

  v19 = [nameCopy copy];
  [(CRLBadgeView_i *)self setFinalImageName:v19];

  finalImageName = [(CRLBadgeView_i *)self finalImageName];

  if (finalImageName)
  {
    finalImageName2 = [(CRLBadgeView_i *)self finalImageName];
    v22 = [UIImage imageNamed:finalImageName2];

    if (v22)
    {
      goto LABEL_16;
    }

    finalImageName3 = [(CRLBadgeView_i *)self finalImageName];
    v22 = [UIImage systemImageNamed:finalImageName3];
  }

  else
  {
    finalImageName3 = +[NSBundle mainBundle];
    infoDictionary = [finalImageName3 infoDictionary];
    v25 = [infoDictionary objectForKeyedSubscript:@"CFBundleIcons"];
    [v25 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
    v41 = accessibilityNameCopy;
    v26 = legacyNameCopy;
    v28 = v27 = nameCopy;
    v29 = [v28 objectForKeyedSubscript:@"CFBundleIconFiles"];
    lastObject = [v29 lastObject];
    v22 = [UIImage imageNamed:lastObject];

    nameCopy = v27;
    legacyNameCopy = v26;
    accessibilityNameCopy = v41;
  }

LABEL_16:
  imageView = [(CRLBadgeView_i *)self imageView];
  [imageView setImage:v22];

  imageView2 = [(CRLBadgeView_i *)self imageView];
  [imageView2 setContentMode:4];

  finalImageName4 = [(CRLBadgeView_i *)self finalImageName];

  if (finalImageName4)
  {
    finalImageName5 = [(CRLBadgeView_i *)self finalImageName];
    layer2 = [(CRLBadgeView_i *)self tintColorForSystemImageNamed:finalImageName5];
    imageView3 = [(CRLBadgeView_i *)self imageView];
    [imageView3 setTintColor:layer2];
  }

  else
  {
    imageView4 = [(CRLBadgeView_i *)self imageView];
    [imageView4 setContentMode:1];

    imageView5 = [(CRLBadgeView_i *)self imageView];
    layer = [imageView5 layer];
    [layer setCornerRadius:4.86];

    finalImageName5 = [(CRLBadgeView_i *)self imageView];
    layer2 = [finalImageName5 layer];
    [layer2 setMasksToBounds:1];
  }

  imageView6 = [(CRLBadgeView_i *)self imageView];
  [imageView6 setAccessibilityLabel:accessibilityNameCopy];

  [(CRLBadgeView_i *)self setNeedsDisplay];
}

- (id)tintColorForSystemImageNamed:(id)named
{
  namedCopy = named;
  if ([namedCopy isEqualToString:@"exclamationmark.circle"])
  {
    v4 = +[UIColor systemRedColor];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([namedCopy isEqualToString:@"checkmark.circle"])
  {
    v4 = +[UIColor systemGreenColor];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end