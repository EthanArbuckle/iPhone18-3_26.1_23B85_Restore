@interface SiriGKSummaryView
- (CGSize)_sizeThatFits:(CGSize)a3 setFrames:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriGKSummaryView)initWithText:(id)a3 caption:(id)a4 imageResource:(id)a5 usingPersistentStore:(id)a6;
- (id)_linkTextAttributes;
- (id)_textAttributes;
- (void)_configureWithImage:(id)a3;
- (void)layoutSubviews;
@end

@implementation SiriGKSummaryView

- (SiriGKSummaryView)initWithText:(id)a3 caption:(id)a4 imageResource:(id)a5 usingPersistentStore:(id)a6
{
  v10 = a3;
  v65 = a4;
  v11 = a5;
  v64 = a6;
  v71.receiver = self;
  v71.super_class = SiriGKSummaryView;
  v12 = [(SiriGKSummaryView *)&v71 init];
  p_isa = &v12->super.super.super.super.isa;
  if (!v12)
  {
LABEL_17:
    v15 = p_isa;
    goto LABEL_18;
  }

  [(SiriGKView *)v12 setEdgeInsets:0.0, SiriUIPlatterStyle[32], 0.0, SiriUIPlatterStyle[34]];
  v14 = [v10 length];
  if (v11 || v14)
  {
    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = p_isa[6];
    p_isa[6] = v16;

    [p_isa addSubview:p_isa[6]];
    if (v10)
    {
      v18 = objc_alloc_init(UITextView);
      v19 = p_isa[7];
      p_isa[7] = v18;

      v20 = p_isa[7];
      v21 = +[UIColor clearColor];
      [v20 setBackgroundColor:v21];

      [p_isa[7] setScrollEnabled:0];
      [p_isa[7] setUserInteractionEnabled:0];
      v22 = [p_isa[7] textLayoutManager];
      [v22 setUsesFontLeading:0];

      [p_isa[7] setContentInset:{0.0, -5.0, 0.0, 0.0}];
      v23 = p_isa[7];
      v24 = [NSAttributedString alloc];
      v25 = [p_isa _textAttributes];
      v26 = [v24 initWithString:v10 attributes:v25];
      [v23 setAttributedText:v26];

      v27 = p_isa[7];
      v28 = [p_isa _linkTextAttributes];
      [v27 setLinkTextAttributes:v28];

      [p_isa[6] addSubview:p_isa[7]];
    }

    v29 = objc_alloc_init(NSMutableParagraphStyle);
    [v29 setMinimumLineHeight:15.0];
    [v29 setMaximumLineHeight:15.0];
    [v29 setAlignment:1];
    LODWORD(v30) = 1.0;
    [v29 setHyphenationFactor:v30];
    if (v11)
    {
      v31 = [[UIView alloc] initWithFrame:{0.0, 0.0, 90.0, 90.0}];
      v32 = p_isa[10];
      p_isa[10] = v31;

      v33 = p_isa[10];
      v34 = [UIColor colorWithWhite:1.0 alpha:0.3];
      [v33 setBackgroundColor:v34];

      [p_isa[6] addSubview:p_isa[10]];
      v35 = [UIImageView alloc];
      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = [UIImage imageNamed:@"missingPhoto" inBundle:v36];
      v38 = +[UIColor siriui_maskingColor];
      v39 = [v37 _flatImageWithColor:v38];
      v63 = [v35 initWithImage:v39];

      [v63 frame];
      [p_isa[10] frame];
      UIRectCenteredIntegralRect();
      [v63 setFrame:?];
      [p_isa[10] addSubview:v63];
      v40 = objc_alloc_init(UIImageView);
      v41 = p_isa[9];
      p_isa[9] = v40;

      [p_isa[9] setContentMode:1];
      if (v65)
      {
        v42 = +[SiriSharedUIContentLabel label];
        v43 = p_isa[8];
        p_isa[8] = v42;

        v44 = p_isa[8];
        v45 = [UIFont siriui_lightWeightFontWithSize:12.0];
        [v44 setFont:v45];

        v46 = p_isa[8];
        v47 = [NSAttributedString alloc];
        v72 = NSParagraphStyleAttributeName;
        v73 = v29;
        v48 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v49 = [v47 initWithString:v65 attributes:v48];
        [v46 setAttributedText:v49];

        [p_isa[8] setNumberOfLines:0];
        [p_isa[6] addSubview:p_isa[8]];
      }

      v50 = [v11 resourceUrl];
      v51 = [v50 absoluteString];

      v52 = [v64 imageForKey:v51];
      if (v52)
      {
        [p_isa _configureWithImage:v52];
      }

      else
      {
        objc_initWeak(&location, p_isa);
        v53 = +[SiriUIURLSession sharedURLSession];
        v54 = [v11 resourceUrl];
        v55 = +[UIColor siriui_maskingColor];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_809C;
        v67[3] = &unk_18590;
        objc_copyWeak(&v70, &location);
        v68 = v64;
        v69 = v51;
        v56 = [v53 imageTaskWithHTTPGetRequest:v54 client:p_isa fitToSize:v55 fillColor:v67 completionHandler:{90.0, 90.0}];

        objc_destroyWeak(&v70);
        objc_destroyWeak(&location);
      }
    }

    if (SiriLanguageIsRTL())
    {
      v57 = p_isa[6];
      CGAffineTransformMakeScale(&location, -1.0, 1.0);
      [v57 setTransform:&location];
      v58 = p_isa[7];
      CGAffineTransformMakeScale(&location, -1.0, 1.0);
      [v58 setTransform:&location];
      v59 = p_isa[10];
      CGAffineTransformMakeScale(&location, -1.0, 1.0);
      [v59 setTransform:&location];
      v60 = p_isa[8];
      CGAffineTransformMakeScale(&location, -1.0, 1.0);
      [v60 setTransform:&location];
      v61 = p_isa[9];
      CGAffineTransformMakeScale(&location, -1.0, 1.0);
      [v61 setTransform:&location];
    }

    goto LABEL_17;
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (void)_configureWithImage:(id)a3
{
  [(UIImageView *)self->_insetImageView setImage:a3];
  insetImageView = self->_insetImageView;
  v5 = +[UIColor clearColor];
  [(UIImageView *)insetImageView setBackgroundColor:v5];

  [(UIImageView *)self->_insetImageView setAlpha:0.0];
  [(UIView *)self->_contentView addSubview:self->_insetImageView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8260;
  v7[3] = &unk_185B8;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_82BC;
  v6[3] = &unk_185E0;
  v6[4] = self;
  [UIView animateWithDuration:v7 animations:v6 completion:0.2];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SiriGKView *)self edgeInsets];
  v10 = width - v8 - v9;

  [(SiriGKSummaryView *)self _sizeThatFits:0 setFrames:v10, height - v6 - v7];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SiriGKSummaryView;
  [(SiriGKSummaryView *)&v11 layoutSubviews];
  [(SiriGKSummaryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SiriGKSummaryView *)self _sizeThatFits:1 setFrames:v7, 1.79769313e308];
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
}

- (id)_linkTextAttributes
{
  v5 = NSForegroundColorAttributeName;
  v2 = +[UIColor siriui_linkTextColor];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_textAttributes
{
  v2 = objc_alloc_init(NSMutableParagraphStyle);
  if (SiriUIIsCompactWidth())
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 25.0;
  }

  [v2 setMinimumLineHeight:v3];
  [v2 setMaximumLineHeight:v3];
  [v2 setLineBreakMode:0];
  v11[0] = v2;
  v10[0] = NSParagraphStyleAttributeName;
  v10[1] = NSFontAttributeName;
  v4 = SiriUIIsCompactWidth();
  v5 = 18.0;
  if (v4)
  {
    v5 = 14.0;
  }

  v6 = [UIFont siriui_lightWeightFontWithSize:v5];
  v11[1] = v6;
  v10[2] = NSForegroundColorAttributeName;
  v7 = +[UIColor siriui_textColor];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (CGSize)_sizeThatFits:(CGSize)a3 setFrames:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  insetImageView = self->_insetImageView;
  dx = a3.width;
  if (insetImageView || self->_placeholderView)
  {
    x = a3.width + -90.0;
    if (a4)
    {
      v8 = 90.0;
      y = 15.0;
      [(UIImageView *)insetImageView setFrame:a3.width + -90.0, 15.0, 90.0, 90.0];
      [(UIView *)self->_placeholderView setFrame:x, 15.0, 90.0, 90.0];
    }

    else
    {
      y = 15.0;
      v8 = 90.0;
    }

    width = 90.0;
  }

  else
  {
    width = CGRectZero.size.width;
    v8 = CGRectZero.size.height;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
  }

  v11 = CGRectZero.origin.y;
  v12 = CGRectZero.size.width;
  v13 = CGRectZero.size.height;
  captionLabel = self->_captionLabel;
  v59 = y;
  v61 = width;
  if (!captionLabel)
  {
    v18 = self->_insetImageView;
    v53 = CGRectZero.origin.x;
    v15 = CGRectZero.origin.y;
    rect = CGRectZero.size.width;
    v17 = CGRectZero.size.height;
LABEL_15:
    v54 = v17;
    v55 = v15;
    if (!v18 && !self->_placeholderView)
    {
      goto LABEL_24;
    }

LABEL_19:
    v22 = v8;
    v20 = v59;
    v21 = v61;
    v19 = x;
    goto LABEL_20;
  }

  v51 = CGRectZero.size.width;
  v52 = CGRectZero.origin.y;
  [(UILabel *)captionLabel frame];
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = v8;
  v15 = CGRectGetMaxY(v65) + 3.0;
  rect = 90.0;
  [(UILabel *)self->_captionLabel sizeThatFits:?];
  v17 = v16;
  if (v4)
  {
    [(UILabel *)self->_captionLabel setFrame:x, v15, 90.0, v16];
  }

  v18 = self->_insetImageView;
  if (!self->_captionLabel)
  {
    v53 = x;
    v12 = v51;
    v11 = v52;
    goto LABEL_15;
  }

  v54 = v17;
  v55 = v15;
  if (v18)
  {
    v77.size.width = 90.0;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = v8;
    v77.origin.x = x;
    v77.origin.y = v15;
    rect = 90.0;
    v77.size.height = v17;
    v67 = CGRectUnion(v66, v77);
    v19 = v67.origin.x;
    v20 = v67.origin.y;
    v21 = v67.size.width;
    v22 = v67.size.height;
    v53 = x;
    v12 = v51;
    v11 = v52;
    goto LABEL_20;
  }

  v53 = x;
  rect = 90.0;
  v22 = v13;
  v12 = v51;
  v11 = v52;
  v21 = v51;
  v20 = v52;
  v19 = CGRectZero.origin.x;
  if (self->_placeholderView)
  {
    goto LABEL_19;
  }

LABEL_20:
  v68.origin.x = v19;
  v68.origin.y = v20;
  v68.size.width = v21;
  v68.size.height = v22;
  v23 = CGRectZero.origin.x;
  v24 = v13;
  if (!CGRectEqualToRect(v68, *(&v11 - 1)))
  {
    if (SiriLanguageIsRTL())
    {
      CGAffineTransformMakeScale(&v62, -1.0, 1.0);
      v69.origin.x = v19;
      v69.origin.y = v20;
      v69.size.width = v21;
      v69.size.height = v22;
      v70 = CGRectApplyAffineTransform(v69, &v62);
      v71 = CGRectOffset(v70, dx, 0.0);
      v19 = v71.origin.x;
      v20 = v71.origin.y;
      v21 = v71.size.width;
      v22 = v71.size.height;
    }

    v72.origin.x = v19;
    v72.origin.y = v20;
    v72.size.width = v21;
    v72.size.height = v22;
    v73 = CGRectInset(v72, -3.0, -3.0);
    v25 = v73.origin.x;
    v26 = v73.origin.y;
    v27 = v73.size.width;
    v28 = v73.size.height;
    v29 = [(UITextView *)self->_summaryTextView textContainer];
    v30 = [UIBezierPath bezierPathWithRect:v25, v26, v27, v28];
    v63 = v30;
    v31 = [NSArray arrayWithObjects:&v63 count:1];
    [v29 setExclusionPaths:v31];
  }

LABEL_24:
  [(UITextView *)self->_summaryTextView frame];
  v33 = v32;
  v35 = v34;
  [(UITextView *)self->_summaryTextView sizeThatFits:dx, height];
  v38 = v36;
  v39 = v37;
  if (v4)
  {
    [(UITextView *)self->_summaryTextView setFrame:v33, v35, v36, v37];
  }

  v40 = v59;
  if (!self->_summaryTextView)
  {
    [(SiriGKSummaryView *)self bounds];
    UIRectCenteredXInRect();
    v40 = v43;
    v8 = v44;
    v61 = v42;
    if (v4)
    {
      v45 = v42;
      v60 = v41;
      [(UIImageView *)self->_insetImageView setFrame:?];
      [(UIView *)self->_placeholderView setFrame:v60, v40, v45, v8];
      x = v60;
    }

    else
    {
      x = v41;
    }
  }

  v74.origin.x = v33;
  v74.origin.y = v35;
  v74.size.width = v38;
  v74.size.height = v39;
  MaxY = CGRectGetMaxY(v74);
  v75.origin.x = v53;
  v75.size.height = v54;
  v75.origin.y = v55;
  v75.size.width = rect;
  v47 = CGRectGetMaxY(v75);
  if (MaxY < v47)
  {
    MaxY = v47;
  }

  v76.origin.x = x;
  v76.origin.y = v40;
  v76.size.width = v61;
  v76.size.height = v8;
  v48 = CGRectGetMaxY(v76) + 5.0;
  if (MaxY >= v48)
  {
    v48 = MaxY;
  }

  v49 = v48 + 10.0;
  v50 = dx;
  result.height = v49;
  result.width = v50;
  return result;
}

@end