@interface SiriGKImageLinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriGKImageLinkView)initWithImageLinkedAnswer:(id)a3 safariBackURL:(id)a4 isVideoResult:(BOOL)a5 usingPersistentStore:(id)a6;
- (id)_applyBlurredPlayIconToImage:(id)a3;
- (id)imageResource;
- (void)_configureWithImage:(id)a3 asVideoResult:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation SiriGKImageLinkView

- (SiriGKImageLinkView)initWithImageLinkedAnswer:(id)a3 safariBackURL:(id)a4 isVideoResult:(BOOL)a5 usingPersistentStore:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v75.receiver = self;
  v75.super_class = SiriGKImageLinkView;
  v14 = [(SiriGKImageLinkView *)&v75 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_imageLinkedAnswer, a3);
    v69 = v7;
    v15->_isVideoResult = v7;
    v16 = [v11 punchOut];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 punchOutUri];
      punchoutURL = v15->_punchoutURL;
      v15->_punchoutURL = v18;

      if (v12)
      {
        v20 = [v17 punchOutUri];
        v21 = SiriGK_safariPunchoutURL(v20, v12);
        [v17 setPunchOutUri:v21];
      }

      [(SiriGKView *)v15 setCommand:v17];
    }

    [(SiriGKView *)v15 setEdgeInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v22 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v26 = [v22 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    backgroundTintView = v15->_backgroundTintView;
    v15->_backgroundTintView = v26;

    v28 = v15->_backgroundTintView;
    v29 = +[UIColor siriui_lightMaskingColor];
    [(UIView *)v28 setBackgroundColor:v29];

    [(SiriGKImageLinkView *)v15 addSubview:v15->_backgroundTintView];
    v30 = objc_alloc_init(UIImageView);
    imageView = v15->_imageView;
    v15->_imageView = v30;

    [(UIImageView *)v15->_imageView setContentMode:2];
    [(UIImageView *)v15->_imageView setClipsToBounds:1];
    [(UIImageView *)v15->_imageView setAlpha:0.0];
    [(SiriGKImageLinkView *)v15 addSubview:v15->_imageView];
    if (v7)
    {
      v32 = [UIImageView alloc];
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = [UIImage imageNamed:@"siri_play_symbol" inBundle:v33];
      v35 = [v32 initWithImage:v34];
      playIconImageView = v15->_playIconImageView;
      v15->_playIconImageView = v35;

      [(UIImageView *)v15->_playIconImageView setAlpha:0.4];
      v37 = [(UIImageView *)v15->_playIconImageView layer];
      v38 = [CAFilter filterWithType:kCAFilterPlusD];
      [v37 setCompositingFilter:v38];

      [(SiriGKImageLinkView *)v15 addSubview:v15->_playIconImageView];
    }

    else
    {
      v39 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v67 = v17;
      placeholderView = v15->_placeholderView;
      v15->_placeholderView = v39;

      v41 = v15->_placeholderView;
      v42 = +[UIColor clearColor];
      [(UIView *)v41 setBackgroundColor:v42];

      [(SiriGKImageLinkView *)v15 addSubview:v15->_placeholderView];
      v43 = [UIImageView alloc];
      v44 = [NSBundle bundleForClass:objc_opt_class()];
      v45 = [UIImage imageNamed:@"missingPhoto" inBundle:v44];
      v46 = +[UIColor siriui_maskingColor];
      v47 = [v45 _flatImageWithColor:v46];
      v48 = [v43 initWithImage:v47];

      [(UIView *)v15->_placeholderView addSubview:v48];
    }

    v49 = [v11 thumbnails];
    v50 = [v49 count];

    if (v50)
    {
      v51 = [v11 thumbnails];
      v52 = [v51 firstObject];
      v53 = [v52 resourceUrl];
    }

    else
    {
      v51 = [v11 imageResource];
      v53 = [v51 resourceUrl];
    }

    v54 = [v53 absoluteString];
    v55 = [v13 imageForKey:v54];
    if (v55)
    {
      [(SiriGKImageLinkView *)v15 _configureWithImage:v55 asVideoResult:v69];
    }

    else
    {
      +[SiriUIURLSession sharedURLSession];
      v68 = v17;
      v56 = v13;
      v58 = v57 = v12;
      [(SiriGKImageLinkView *)v15 sizeThatFits:CGSizeZero.width, CGSizeZero.height];
      v60 = v59;
      v62 = v61;
      v63 = [v11 imageResource];
      v64 = [v63 userAgent];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_A510;
      v70[3] = &unk_18648;
      v71 = v56;
      v72 = v54;
      v73 = v15;
      v74 = v69;
      v65 = [v58 imageTaskWithHTTPGetRequest:v53 client:v73 fitToSize:0 fillColor:v64 userAgent:v70 completionHandler:{v60, v62}];

      v12 = v57;
      v13 = v56;
      v17 = v68;
    }
  }

  return v15;
}

- (void)_configureWithImage:(id)a3 asVideoResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(UIImageView *)self->_imageView setContentMode:1];
    v7 = [(SiriGKImageLinkView *)self _applyBlurredPlayIconToImage:v6];

    v6 = v7;
  }

  [(UIImageView *)self->_imageView setImage:v6];
  imageView = self->_imageView;
  v9 = +[UIColor clearColor];
  [(UIImageView *)imageView setBackgroundColor:v9];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_A6E0;
  v11[3] = &unk_18670;
  v11[4] = self;
  v12 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_A7A4;
  v10[3] = &unk_185E0;
  v10[4] = self;
  [UIView animateWithDuration:v11 animations:v10 completion:0.2];
}

- (id)_applyBlurredPlayIconToImage:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:@"siri_play_circle" inBundle:v4];

  [v3 size];
  UIGraphicsBeginImageContextWithOptions(v23, 0, 0.0);
  y = CGPointZero.y;
  [v5 size];
  v8 = v7;
  v10 = v9;
  [v3 size];
  v12 = v11;
  v14 = v13;
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = v16;

  [v5 drawAtPoint:{1.0 / v17 * (CGPointZero.x * v17 + floor((v12 * v17 - v8 * v17) * 0.5)), 1.0 / v17 * (y * v17 + floor((v14 * v17 - v10 * v17) * 0.5))}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  v19 = [_UIBackdropViewSettings settingsForPrivateStyle:2020 graphicsQuality:100];
  [v19 setGrayscaleTintMaskImage:v18];
  [v19 setColorTintMaskImage:v18];
  [v19 setFilterMaskImage:v18];
  v20 = [v3 _applyBackdropViewSettings:v19];

  return v20;
}

- (id)imageResource
{
  if (self->_isVideoResult)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(SAGKImageLinkedAnswer *)self->_imageLinkedAnswer imageResource];
    v2 = [v3 copy];
  }

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets();
  IsPad = SiriUIDeviceIsPad();
  v5 = SiriUIIsCompactWidth();
  v6 = v5;
  if (IsPad)
  {
    v7 = 90.0;
    if (v5)
    {
      v7 = 84.0;
    }
  }

  else
  {
    if (v3)
    {
      v8 = (344.0 - (SiriUIDefaultSnippetViewInsets[1] + SiriUIDefaultSnippetViewInsets[3])) / 3.0;
    }

    else
    {
      v8 = 114.666667;
    }

    v9 = SiriUIIsLargePhoneLayout();
    if (v6)
    {
      v7 = v8;
    }

    else
    {
      v7 = 90.0;
    }

    if (v6)
    {
      if ((v9 & 1) == 0)
      {
        IsSmallPhone = SiriUIDeviceIsSmallPhone();
        v7 = 84.0;
        if (!IsSmallPhone)
        {
          v7 = 90.0;
        }
      }
    }
  }

  v11 = v7;
  result.height = v11;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SiriGKImageLinkView;
  [(SiriGKImageLinkView *)&v13 layoutSubviews];
  y = CGPointZero.y;
  [(SiriGKImageLinkView *)self sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v5 = v4;
  v7 = v6;
  [(UIView *)self->_backgroundTintView setFrame:CGPointZero.x, y, v4, v6];
  [(UIView *)self->_placeholderView setFrame:CGPointZero.x, y, v5, v7];
  v8 = [(UIView *)self->_placeholderView subviews];
  v9 = [v8 firstObject];

  [v9 frame];
  [(UIView *)self->_placeholderView frame];
  UIRectCenteredIntegralRectScale();
  [v9 setFrame:0];
  [(UIImageView *)self->_imageView setFrame:CGPointZero.x, y, v5, v7];
  playIconImageView = self->_playIconImageView;
  if (playIconImageView)
  {
    [(UIImageView *)playIconImageView frame];
    [(UIImageView *)self->_playIconImageView setFrame:CGPointZero.x + floor((v5 - v11) * 0.5), y + floor((v7 - v12) * 0.5)];
  }
}

@end