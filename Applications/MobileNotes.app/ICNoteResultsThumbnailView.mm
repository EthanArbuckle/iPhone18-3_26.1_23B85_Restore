@interface ICNoteResultsThumbnailView
- (ICInvitation)invitation;
- (ICNoteResultsThumbnailView)initWithCoder:(id)coder;
- (ICNoteResultsThumbnailView)initWithFrame:(CGRect)frame;
- (ICSearchIndexableNote)note;
- (double)cornerRadius;
- (void)animateThumbnailImageView;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setInvitation:(id)invitation;
- (void)setNote:(id)note;
- (void)setPreviewing:(BOOL)previewing;
- (void)updateDropShadow;
- (void)updateImages;
- (void)updateThumbnailImageIfNeededWithNote:(id)note;
@end

@implementation ICNoteResultsThumbnailView

- (ICNoteResultsThumbnailView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsThumbnailView;
  v3 = [(ICNoteResultsThumbnailView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsThumbnailView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsThumbnailView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsThumbnailView;
  v3 = [(ICNoteResultsThumbnailView *)&v6 initWithCoder:coder];
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
  centerXAnchor = [(UIImageView *)self->_largeImageView centerXAnchor];
  centerXAnchor2 = [(ICNoteResultsThumbnailView *)self centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v52[0] = v45;
  centerYAnchor = [(UIImageView *)self->_largeImageView centerYAnchor];
  centerYAnchor2 = [(ICNoteResultsThumbnailView *)self centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v52[1] = v42;
  heightAnchor = [(UIImageView *)self->_largeImageView heightAnchor];
  heightAnchor2 = [(ICNoteResultsThumbnailView *)self heightAnchor];
  v39 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
  v52[2] = v39;
  widthAnchor = [(UIImageView *)self->_largeImageView widthAnchor];
  heightAnchor3 = [(UIImageView *)self->_largeImageView heightAnchor];
  v36 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v52[3] = v36;
  centerYAnchor3 = [(UILabel *)self->_unsupportedNoteLabel centerYAnchor];
  centerYAnchor4 = [(ICNoteResultsThumbnailView *)self centerYAnchor];
  v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v52[4] = v24;
  leadingAnchor = [(UILabel *)self->_unsupportedNoteLabel leadingAnchor];
  leadingAnchor2 = [(ICNoteResultsThumbnailView *)self leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v52[5] = v27;
  trailingAnchor = [(UILabel *)self->_unsupportedNoteLabel trailingAnchor];
  trailingAnchor2 = [(ICNoteResultsThumbnailView *)self trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v52[6] = v30;
  v31 = [NSArray arrayWithObjects:v52 count:7];
  [NSLayoutConstraint activateConstraints:v31];

  [(ICNoteResultsThumbnailView *)self setPreviewing:0];
  layer = [(ICNoteResultsThumbnailView *)self layer];
  [layer setMasksToBounds:0];

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

- (void)setNote:(id)note
{
  noteCopy = note;
  objc_storeWeak(&self->_note, noteCopy);
  if (!noteCopy || (objc_storeWeak(&self->_invitation, 0), -[ICNoteResultsThumbnailView noteIdentifier](self, "noteIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [noteCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, (v6 & 1) == 0))
  {
    thumbnailImageView = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [thumbnailImageView setImage:0];

    identifier = [noteCopy identifier];
    [(ICNoteResultsThumbnailView *)self setNoteIdentifier:identifier];
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
  if (noteCopy)
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

- (void)setInvitation:(id)invitation
{
  objc_storeWeak(&self->_invitation, invitation);
  if (invitation)
  {
    objc_storeWeak(&self->_note, 0);
    thumbnailImageView = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [thumbnailImageView setImage:0];

    [(ICNoteResultsThumbnailView *)self setNoteIdentifier:0];
    v6 = [UIColor ic_noteEditorPreviewColorForceLightContent:0];
    [(ICNoteResultsThumbnailView *)self setBackgroundColor:v6];
  }

  [(ICNoteResultsThumbnailView *)self updateDropShadow];

  [(ICNoteResultsThumbnailView *)self updateImages];
}

- (double)cornerRadius
{
  layer = [(ICNoteResultsThumbnailView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  [(ICNoteResultsThumbnailView *)self ic_applyRoundedCornersWithRadius:radius];
  layer = [(ICNoteResultsThumbnailView *)self layer];
  [layer setMasksToBounds:0];
}

- (void)setPreviewing:(BOOL)previewing
{
  previewingCopy = previewing;
  self->_previewing = previewing;
  v5 = 0.0;
  if (!previewing)
  {
    v6 = +[UIDevice ic_isVision];
    v5 = 16.0;
    if ((v6 & 1) == 0)
    {
      ic_hasCompactWidth = [(ICNoteResultsThumbnailView *)self ic_hasCompactWidth];
      v5 = 12.0;
      if (ic_hasCompactWidth)
      {
        v5 = 8.0;
      }
    }
  }

  [(ICNoteResultsThumbnailView *)self setCornerRadius:v5];

  [(ICNoteResultsThumbnailView *)self setHasDropShadow:!previewingCopy];
}

- (void)updateImages
{
  note = [(ICNoteResultsThumbnailView *)self note];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    note2 = [(ICNoteResultsThumbnailView *)self note];
    v28 = ICDynamicCast();

    isUnsupported = [v28 isUnsupported];
    unsupportedNoteLabel = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
    [unsupportedNoteLabel setHidden:isUnsupported ^ 1];

    if (![v28 isPasswordProtected] || -[ICNoteResultsThumbnailView isPreviewing](self, "isPreviewing") && (objc_msgSend(v28, "isAuthenticated") & 1) != 0)
    {
      largeImageView = [(ICNoteResultsThumbnailView *)self largeImageView];
      [largeImageView setImage:0];

      [(ICNoteResultsThumbnailView *)self updateThumbnailImageIfNeededWithNote:v28];
    }

    else
    {
      isAuthenticated = [v28 isAuthenticated];
      v15 = @"lock.fill";
      if (isAuthenticated)
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

      largeImageView2 = [(ICNoteResultsThumbnailView *)self largeImageView];
      [largeImageView2 setImage:v20];
    }

LABEL_24:

    return;
  }

  note3 = [(ICNoteResultsThumbnailView *)self note];

  if (!note3)
  {
    invitation = [(ICNoteResultsThumbnailView *)self invitation];

    if (!invitation)
    {
      return;
    }

    unsupportedNoteLabel2 = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
    [unsupportedNoteLabel2 setHidden:1];

    thumbnailImageView = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
    [thumbnailImageView setImage:0];

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
    largeImageView3 = [(ICNoteResultsThumbnailView *)self largeImageView];
    [largeImageView3 setImage:v28];

    goto LABEL_24;
  }

  unsupportedNoteLabel3 = [(ICNoteResultsThumbnailView *)self unsupportedNoteLabel];
  [unsupportedNoteLabel3 setHidden:1];

  largeImageView4 = [(ICNoteResultsThumbnailView *)self largeImageView];
  [largeImageView4 setImage:0];

  thumbnailImageView2 = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  [thumbnailImageView2 setImage:0];

  v13 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1004D9A28(self, v13);
  }
}

- (void)animateThumbnailImageView
{
  thumbnailImageView = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  layer = [thumbnailImageView layer];
  [layer setOpacity:0.0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100079A48;
  v5[3] = &unk_100645E30;
  v5[4] = self;
  [UIView animateWithDuration:0 delay:v5 options:0 animations:0.5 completion:0.0];
}

- (void)updateThumbnailImageIfNeededWithNote:(id)note
{
  noteCopy = note;
  thumbnailImageView = [(ICNoteResultsThumbnailView *)self thumbnailImageView];
  [thumbnailImageView bounds];
  v7 = v6;
  v9 = v8;

  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;

  ic_hasLightBackground = [noteCopy ic_hasLightBackground];
  if (ic_hasLightBackground)
  {
    [ICAppearanceInfo appearanceInfoWithType:0];
  }

  else
  {
    [(ICNoteResultsThumbnailView *)self ic_appearanceInfo];
  }
  v14 = ;
  traitCollection = [(ICNoteResultsThumbnailView *)self traitCollection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100079CFC;
  v24[3] = &unk_100646E70;
  v25 = ic_hasLightBackground;
  v16 = [traitCollection traitCollectionByModifyingTraits:v24];

  v17 = [[ICThumbnailConfiguration alloc] initForNoteGalleryWithNote:noteCopy preferredSize:v16 traitCollection:v14 scale:v7 appearanceInfo:{v9, v12}];
  objc_initWeak(&location, self);
  v18 = +[ICThumbnailService sharedThumbnailService];
  v19 = +[UIApplication sharedApplication];
  applicationState = [v19 applicationState];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100079D18;
  v21[3] = &unk_100646EC0;
  objc_copyWeak(v22, &location);
  v21[4] = self;
  v22[1] = applicationState;
  [v18 thumbnailWithConfiguration:v17 completion:v21];
  objc_destroyWeak(v22);

  objc_destroyWeak(&location);
}

- (void)updateDropShadow
{
  if ([(ICNoteResultsThumbnailView *)self hasDropShadow]&& ([(ICNoteResultsThumbnailView *)self note], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    traitCollection = [(ICNoteResultsThumbnailView *)self traitCollection];
    if ([traitCollection ic_hasCompactWidth])
    {
      v5 = 5.0;
    }

    else
    {
      v5 = 8.0;
    }

    v6 = +[UIColor blackColor];
    cGColor = [v6 CGColor];
    layer = [(ICNoteResultsThumbnailView *)self layer];
    [layer setShadowColor:cGColor];

    layer2 = [(ICNoteResultsThumbnailView *)self layer];
    [layer2 setShadowRadius:8.0];

    layer3 = [(ICNoteResultsThumbnailView *)self layer];
    LODWORD(v11) = 1042536202;
    [layer3 setShadowOpacity:v11];

    layer4 = [(ICNoteResultsThumbnailView *)self layer];
    [layer4 setShadowOffset:{0.0, 4.0}];

    layer5 = [(ICNoteResultsThumbnailView *)self layer];
    [layer5 bounds];
    v29 = CGRectInset(v28, v5, v5);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    layer6 = [(ICNoteResultsThumbnailView *)self layer];
    [layer6 cornerRadius];
    v19 = v18;
    layer7 = [(ICNoteResultsThumbnailView *)self layer];
    [layer7 cornerRadius];
    v22 = v21;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v23 = CGPathCreateWithRoundedRect(v30, v19, v22, 0);
    v24 = CFAutorelease(v23);
    layer8 = [(ICNoteResultsThumbnailView *)self layer];
    [layer8 setShadowPath:v24];
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