@interface ICNoteResultsThumbnailView
- (ICInvitation)invitation;
- (ICNoteResultsThumbnailView)initWithCoder:(id)a3;
- (ICNoteResultsThumbnailView)initWithFrame:(CGRect)a3;
- (ICSearchIndexableNote)note;
- (double)cornerRadius;
- (void)animateThumbnailImageView;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setInvitation:(id)a3;
- (void)setNote:(id)a3;
- (void)setPreviewing:(BOOL)a3;
- (void)updateDropShadow;
- (void)updateImages;
- (void)updateThumbnailImageIfNeededWithNote:(id)a3;
@end

@implementation ICNoteResultsThumbnailView

- (ICNoteResultsThumbnailView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsThumbnailView;
  v3 = [(ICNoteResultsThumbnailView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsThumbnailView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsThumbnailView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsThumbnailView;
  v3 = [(ICNoteResultsThumbnailView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsThumbnailView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [UIImageView alloc];
  [(ICNoteResultsThumbnailView *)self bounds];
  v4 = [v3 initWithFrame:?];
  thumbnailImageView = self->_thumbnailImageView;
  self->_thumbnailImageView = v4;

  v6 = +[UIColor clearColor];
  [(UIImageView *)self->_thumbnailImageView setBackgroundColor:v6];

  [(ICNoteResultsThumbnailView *)self addSubview:self->_thumbnailImageView];
  [(UIImageView *)self->_thumbnailImageView ic_addAnchorsToFillSuperview];
  v7 = [UIImageView alloc];
  [(ICNoteResultsThumbnailView *)self bounds];
  v8 = [v7 initWithFrame:?];
  largeImageView = self->_largeImageView;
  self->_largeImageView = v8;

  [(UIImageView *)self->_largeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_largeImageView setContentMode:1];
  v10 = +[UIColor systemGrayColor];
  [(UIImageView *)self->_largeImageView setTintColor:v10];

  v11 = +[UIColor clearColor];
  [(UIImageView *)self->_largeImageView setBackgroundColor:v11];

  [(ICNoteResultsThumbnailView *)self addSubview:self->_largeImageView];
  v12 = [UILabel alloc];
  [(ICNoteResultsThumbnailView *)self bounds];
  v13 = [v12 initWithFrame:?];
  unsupportedNoteLabel = self->_unsupportedNoteLabel;
  self->_unsupportedNoteLabel = v13;

  [(UILabel *)self->_unsupportedNoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_unsupportedNoteLabel setAdjustsFontForContentSizeCategory:1];
  if (([(ICNoteResultsThumbnailView *)self ic_hasCompactWidth]& 1) != 0)
  {
    [UIFont ic_preferredFontForStyle:UIFontTextStyleCaption1 symbolicTraits:2 maxContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    [UIFont ic_preferredFontForTextStyle:UIFontTextStyleTitle3 maxContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }
  v15 = ;
  [(UILabel *)self->_unsupportedNoteLabel setFont:v15];

  v16 = +[UIColor systemGrayColor];
  [(UILabel *)self->_unsupportedNoteLabel setTextColor:v16];

  [(UILabel *)self->_unsupportedNoteLabel setNumberOfLines:0];
  v17 = objc_alloc_init(NSMutableParagraphStyle);
  [v17 setAlignment:1];
  LODWORD(v18) = 1.0;
  v19 = v17;
  v50 = v17;
  [v17 setHyphenationFactor:v18];
  v20 = +[NSBundle mainBundle];
  v49 = [v20 localizedStringForKey:@"Unsupported Note" value:&stru_100661CF0 table:0];

  v21 = [NSMutableAttributedString alloc];
  v53 = NSParagraphStyleAttributeName;
  v54 = v19;
  v22 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v48 = [v21 initWithString:v49 attributes:v22];

  [(UILabel *)self->_unsupportedNoteLabel setAttributedText:v48];
  [(UILabel *)self->_unsupportedNoteLabel setHidden:1];
  [(ICNoteResultsThumbnailView *)self addSubview:self->_unsupportedNoteLabel];
  v47 = [(UIImageView *)self->_largeImageView centerXAnchor];
  v46 = [(ICNoteResultsThumbnailView *)self centerXAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v52[0] = v45;
  v44 = [(UIImageView *)self->_largeImageView centerYAnchor];
  v43 = [(ICNoteResultsThumbnailView *)self centerYAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v52[1] = v42;
  v41 = [(UIImageView *)self->_largeImageView heightAnchor];
  v40 = [(ICNoteResultsThumbnailView *)self heightAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 multiplier:0.5];
  v52[2] = v39;
  v38 = [(UIImageView *)self->_largeImageView widthAnchor];
  v37 = [(UIImageView *)self->_largeImageView heightAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v52[3] = v36;
  v35 = [(UILabel *)self->_unsupportedNoteLabel centerYAnchor];
  v23 = [(ICNoteResultsThumbnailView *)self centerYAnchor];
  v24 = [v35 constraintEqualToAnchor:v23];
  v52[4] = v24;
  v25 = [(UILabel *)self->_unsupportedNoteLabel leadingAnchor];
  v26 = [(ICNoteResultsThumbnailView *)self leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:8.0];
  v52[5] = v27;
  v28 = [(UILabel *)self->_unsupportedNoteLabel trailingAnchor];
  v29 = [(ICNoteResultsThumbnailView *)self trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-8.0];
  v52[6] = v30;
  v31 = [NSArray arrayWithObjects:v52 count:7];
  [NSLayoutConstraint activateConstraints:v31];

  [(ICNoteResultsThumbnailView *)self setPreviewing:0];
  v32 = [(ICNoteResultsThumbnailView *)self layer];
  [v32 setMasksToBounds:0];

  v51 = objc_opt_class();
  v33 = [NSArray arrayWithObjects:&v51 count:1];
  v34 = [(ICNoteResultsThumbnailView *)self registerForTraitChanges:v33 withAction:"updateImages"];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICNoteResultsThumbnailView;
  [(ICNoteResultsThumbnailView *)&v3 layoutSubviews];
  [(ICNoteResultsThumbnailView *)self updateDropShadow];
}

- (void)setNote:(id)a3
{
  v13 = a3;
  objc_storeWeak(&self->_note, v13);
  if (!v13 || (objc_storeWeak(&self->_invitation, 0), -[ICNoteResultsThumbnailView noteIdentifier](self, "noteIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v13 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, (v6 & 1) == 0))
  {
    v7 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [v7 setImage:0];

    v8 = [v13 identifier];
    [(ICNoteResultsThumbnailView *)self setNoteIdentifier:v8];
  }

  objc_opt_class();
  v9 = ICDynamicCast();
  if ([v9 prefersLightBackground])
  {
    v10 = 1;
  }

  else
  {
    v10 = +[UITraitCollection ic_alwaysShowLightContent];
  }

  v11 = [UIColor ic_noteEditorPreviewColorForceLightContent:v10];
  if (v13)
  {
    [(ICNoteResultsThumbnailView *)self setBackgroundColor:v11];
  }

  else
  {
    v12 = +[UIColor clearColor];
    [(ICNoteResultsThumbnailView *)self setBackgroundColor:v12];
  }

  [(ICNoteResultsThumbnailView *)self updateDropShadow];
  [(ICNoteResultsThumbnailView *)self updateImages];
}

- (void)setInvitation:(id)a3
{
  objc_storeWeak(&self->_invitation, a3);
  if (a3)
  {
    objc_storeWeak(&self->_note, 0);
    v5 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [v5 setImage:0];

    [(ICNoteResultsThumbnailView *)self setNoteIdentifier:0];
    v6 = [UIColor ic_noteEditorPreviewColorForceLightContent:0];
    [(ICNoteResultsThumbnailView *)self setBackgroundColor:v6];
  }

  [(ICNoteResultsThumbnailView *)self updateDropShadow];

  [(ICNoteResultsThumbnailView *)self updateImages];
}

- (double)cornerRadius
{
  v2 = [(ICNoteResultsThumbnailView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  [(ICNoteResultsThumbnailView *)self ic_applyRoundedCornersWithRadius:a3];
  v4 = [(ICNoteResultsThumbnailView *)self layer];
  [v4 setMasksToBounds:0];
}

- (void)setPreviewing:(BOOL)a3
{
  v3 = a3;
  self->_previewing = a3;
  v5 = 0.0;
  if (!a3)
  {
    v6 = +[UIDevice ic_isVision];
    v5 = 16.0;
    if ((v6 & 1) == 0)
    {
      v7 = [(ICNoteResultsThumbnailView *)self ic_hasCompactWidth];
      v5 = 12.0;
      if (v7)
      {
        v5 = 8.0;
      }
    }
  }

  [(ICNoteResultsThumbnailView *)self setCornerRadius:v5];

  [(ICNoteResultsThumbnailView *)self setHasDropShadow:!v3];
}

- (void)updateImages
{
  v3 = [(ICNoteResultsThumbnailView *)self note];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v5 = [(ICNoteResultsThumbnailView *)self note];
    v28 = ICDynamicCast();

    v6 = [v28 isUnsupported];
    v7 = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
    [v7 setHidden:v6 ^ 1];

    if (![v28 isPasswordProtected] || -[ICNoteResultsThumbnailView isPreviewing](self, "isPreviewing") && (objc_msgSend(v28, "isAuthenticated") & 1) != 0)
    {
      v8 = [(ICNoteResultsThumbnailView *)self largeImageView];
      [v8 setImage:0];

      [(ICNoteResultsThumbnailView *)self updateThumbnailImageIfNeededWithNote:v28];
    }

    else
    {
      v14 = [v28 isAuthenticated];
      v15 = @"lock.fill";
      if (v14)
      {
        v15 = @"lock.open.fill";
      }

      v16 = v15;
      v17 = +[UIDevice ic_isVision];
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      v19 = &UIFontTextStyleTitle1;
      if (!v17)
      {
        v19 = &UIFontTextStyleBody;
      }

      v20 = [UIImage ic_systemImageNamed:v16 textStyle:*v19 scale:v18];

      v21 = [(ICNoteResultsThumbnailView *)self largeImageView];
      [v21 setImage:v20];
    }

LABEL_24:

    return;
  }

  v9 = [(ICNoteResultsThumbnailView *)self note];

  if (!v9)
  {
    v22 = [(ICNoteResultsThumbnailView *)self invitation];

    if (!v22)
    {
      return;
    }

    v23 = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
    [v23 setHidden:1];

    v24 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [v24 setImage:0];

    if (+[UIDevice ic_isVision])
    {
      v25 = UIFontTextStyleTitle1;
      v26 = 3;
    }

    else
    {
      v25 = UIFontTextStyleBody;
      v26 = 1;
    }

    v28 = [UIImage ic_systemImageNamed:@"arrow.down.message" textStyle:v25 scale:v26];
    v27 = [(ICNoteResultsThumbnailView *)self largeImageView];
    [v27 setImage:v28];

    goto LABEL_24;
  }

  v10 = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
  [v10 setHidden:1];

  v11 = [(ICNoteResultsThumbnailView *)self largeImageView];
  [v11 setImage:0];

  v12 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  [v12 setImage:0];

  v13 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1004D9A28(self, v13);
  }
}

- (void)animateThumbnailImageView
{
  v3 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  v4 = [v3 layer];
  [v4 setOpacity:0.0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100079A48;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [UIView animateWithDuration:0 delay:v5 options:0 animations:0.5 completion:0.0];
}

- (void)updateThumbnailImageIfNeededWithNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [v4 ic_hasLightBackground];
  if (v13)
  {
    [ICAppearanceInfo appearanceInfoWithType:0];
  }

  else
  {
    [(ICNoteResultsThumbnailView *)self ic_appearanceInfo];
  }
  v14 = ;
  v15 = [(ICNoteResultsThumbnailView *)self traitCollection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100079CFC;
  v24[3] = &unk_100646E70;
  v25 = v13;
  v16 = [v15 traitCollectionByModifyingTraits:v24];

  v17 = [[ICThumbnailConfiguration alloc] initForNoteGalleryWithNote:v4 preferredSize:v16 traitCollection:v14 scale:v7 appearanceInfo:{v9, v12}];
  objc_initWeak(&location, self);
  v18 = +[ICThumbnailService sharedThumbnailService];
  v19 = +[UIApplication sharedApplication];
  v20 = [v19 applicationState];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100079D18;
  v21[3] = &unk_100646EC0;
  objc_copyWeak(v22, &location);
  v21[4] = self;
  v22[1] = v20;
  [v18 thumbnailWithConfiguration:v17 completion:v21];
  objc_destroyWeak(v22);

  objc_destroyWeak(&location);
}

- (void)updateDropShadow
{
  if ([(ICNoteResultsThumbnailView *)self hasDropShadow]&& ([(ICNoteResultsThumbnailView *)self note], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(ICNoteResultsThumbnailView *)self traitCollection];
    if ([v4 ic_hasCompactWidth])
    {
      v5 = 5.0;
    }

    else
    {
      v5 = 8.0;
    }

    v6 = +[UIColor blackColor];
    v7 = [v6 CGColor];
    v8 = [(ICNoteResultsThumbnailView *)self layer];
    [v8 setShadowColor:v7];

    v9 = [(ICNoteResultsThumbnailView *)self layer];
    [v9 setShadowRadius:8.0];

    v10 = [(ICNoteResultsThumbnailView *)self layer];
    LODWORD(v11) = 1042536202;
    [v10 setShadowOpacity:v11];

    v12 = [(ICNoteResultsThumbnailView *)self layer];
    [v12 setShadowOffset:{0.0, 4.0}];

    v26 = [(ICNoteResultsThumbnailView *)self layer];
    [v26 bounds];
    v29 = CGRectInset(v28, v5, v5);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v17 = [(ICNoteResultsThumbnailView *)self layer];
    [v17 cornerRadius];
    v19 = v18;
    v20 = [(ICNoteResultsThumbnailView *)self layer];
    [v20 cornerRadius];
    v22 = v21;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v23 = CGPathCreateWithRoundedRect(v30, v19, v22, 0);
    v24 = CFAutorelease(v23);
    v25 = [(ICNoteResultsThumbnailView *)self layer];
    [v25 setShadowPath:v24];
  }

  else
  {

    [(ICNoteResultsThumbnailView *)self ic_removeShadow];
  }
}

- (ICSearchIndexableNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (ICInvitation)invitation
{
  WeakRetained = objc_loadWeakRetained(&self->_invitation);

  return WeakRetained;
}

@end