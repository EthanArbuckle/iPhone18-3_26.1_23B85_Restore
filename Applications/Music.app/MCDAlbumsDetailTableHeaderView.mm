@interface MCDAlbumsDetailTableHeaderView
+ (id)reuseIdentifier;
- (MCDAlbumsDetailTableHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_shuffleButtonAction:(id)action;
- (void)layoutSubviews;
- (void)setArtworkImage:(id)image;
- (void)setDuration:(double)duration count:(unint64_t)count;
- (void)setTemplateArtworkImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation MCDAlbumsDetailTableHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (MCDAlbumsDetailTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = MCDAlbumsDetailTableHeaderView;
  v3 = [(MCDAlbumsDetailTableHeaderView *)&v30 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    artworkImageView = v3->_artworkImageView;
    v3->_artworkImageView = v8;

    [(UIImageView *)v3->_artworkImageView setContentMode:1];
    contentView = [(MCDAlbumsDetailTableHeaderView *)v3 contentView];
    [contentView addSubview:v3->_artworkImageView];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v11;

    v13 = [UIFont boldSystemFontOfSize:16.0];
    [(UILabel *)v3->_titleLabel setFont:v13];

    v14 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v3->_titleLabel setTextColor:v14];

    v15 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v3->_titleLabel setHighlightedTextColor:v15];

    contentView2 = [(MCDAlbumsDetailTableHeaderView *)v3 contentView];
    [contentView2 addSubview:v3->_titleLabel];

    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v17;

    v19 = +[UIColor _carSystemSecondaryColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v19];

    v20 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v3->_subtitleLabel setHighlightedTextColor:v20];

    contentView3 = [(MCDAlbumsDetailTableHeaderView *)v3 contentView];
    [contentView3 addSubview:v3->_subtitleLabel];

    v22 = objc_opt_new();
    shuffleButton = v3->_shuffleButton;
    v3->_shuffleButton = v22;

    v24 = [UIImage _systemImageNamed:@"shuffle"];
    [(CPUIMediaButton *)v3->_shuffleButton setImage:v24 forState:0];
    [(CPUIMediaButton *)v3->_shuffleButton addTarget:v3 action:"_shuffleButtonAction:" forControlEvents:64];
    v25 = MCDCarDisplayBundle();
    v26 = [v25 localizedStringForKey:@"ACCESSIBILITY_SHUFFLE" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    v31 = v26;
    v27 = [NSArray arrayWithObjects:&v31 count:1];
    [(CPUIMediaButton *)v3->_shuffleButton setAccessibilityUserInputLabels:v27];

    contentView4 = [(MCDAlbumsDetailTableHeaderView *)v3 contentView];
    [contentView4 addSubview:v3->_shuffleButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v102.receiver = self;
  v102.super_class = MCDAlbumsDetailTableHeaderView;
  [(MCDAlbumsDetailTableHeaderView *)&v102 layoutSubviews];
  contentView = [(MCDAlbumsDetailTableHeaderView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  artworkImageView = self->_artworkImageView;
  contentView2 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
  [(UIImageView *)artworkImageView setFrame:sub_1000FCFE0(contentView2, 0.0, 4.0, 36.0, 36.0)];

  v14 = self->_artworkImageView;
  image = [(UIImageView *)v14 image];
  [(UIImageView *)v14 setHidden:image == 0];

  UIRectCenteredYInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v96 = v5;
  v103.origin.x = v5;
  v100 = v7;
  v103.origin.y = v7;
  v103.size.width = v9;
  v103.size.height = v11;
  Width = CGRectGetWidth(v103);
  v104.origin.x = v17;
  v104.origin.y = v19;
  v104.size.width = v21;
  v104.size.height = v23;
  v25 = Width - CGRectGetWidth(v104);
  contentView3 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
  [(CPUIMediaButton *)self->_shuffleButton setFrame:sub_1000FCFE0(contentView3, v25, v19, v21, v23)];

  image2 = [(UIImageView *)self->_artworkImageView image];

  if (image2)
  {
    v105.origin.x = 0.0;
    v105.origin.y = 4.0;
    v105.size.width = 36.0;
    v105.size.height = 36.0;
    v28 = CGRectGetMaxX(v105) + 9.0;
    v106.origin.x = v96;
    v106.size.height = v11;
    v106.size.width = v9;
    v106.origin.y = v100;
    MinY = CGRectGetMinY(v106);
    v107.origin.x = v25;
    v107.origin.y = v19;
    v107.size.width = v21;
    v107.size.height = v23;
    MinX = CGRectGetMinX(v107);
    v108.origin.x = 0.0;
    v108.origin.y = 4.0;
    v108.size.width = 36.0;
    v108.size.height = 36.0;
    v31 = MinX - CGRectGetMaxX(v108) + -18.0;
  }

  else
  {
    v109.origin.x = v5;
    v109.size.height = v11;
    v109.size.width = v9;
    v109.origin.y = v100;
    MinY = CGRectGetMinY(v109);
    v110.origin.x = v25;
    v110.origin.y = v19;
    v110.size.width = v21;
    v110.size.height = v23;
    v31 = CGRectGetMinX(v110) + -9.0;
    v28 = 0.0;
  }

  v111.origin.x = v96;
  v111.size.height = v11;
  v111.size.width = v9;
  v111.origin.y = v100;
  Height = CGRectGetHeight(v111);
  v112.origin.x = v28;
  v112.origin.y = MinY;
  v112.size.width = v31;
  v112.size.height = Height;
  v33 = CGRectGetMinX(v112);
  v89 = CGSizeZero.height;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  v35 = v34;
  v37 = v36;
  v113.origin.y = 0.0;
  v113.origin.x = v33;
  v91 = v33;
  v113.size.width = v35;
  v113.size.height = v37;
  rect = v37;
  v38 = CGRectGetWidth(v113);
  v114.origin.x = v28;
  v114.origin.y = MinY;
  v114.size.width = v31;
  v114.size.height = Height;
  v39 = CGRectGetWidth(v114);
  v40 = v38 < v39;
  if (v38 >= v39)
  {
    v41 = v28;
  }

  else
  {
    v41 = v33;
  }

  v42 = 0.0;
  if (v40)
  {
    v43 = v35;
  }

  else
  {
    v42 = MinY;
    v43 = v31;
  }

  if (v40)
  {
    v44 = v37;
  }

  else
  {
    v44 = Height;
  }

  v92 = CGRectGetWidth(*&v41);
  v115.origin.x = v28;
  v115.origin.y = MinY;
  v45 = v31;
  v115.size.width = v31;
  v115.size.height = Height;
  v46 = CGRectGetMinX(v115);
  [(UILabel *)self->_subtitleLabel sizeThatFits:CGSizeZero.width, v89];
  v48 = v47;
  v50 = v49;
  v116.origin.y = 0.0;
  v116.origin.x = v46;
  v116.size.width = v48;
  v116.size.height = v50;
  v51 = CGRectGetWidth(v116);
  v117.origin.x = v28;
  v117.origin.y = MinY;
  v117.size.width = v45;
  v117.size.height = Height;
  v52 = CGRectGetWidth(v117);
  v53 = v51 < v52;
  if (v51 >= v52)
  {
    v54 = v28;
  }

  else
  {
    v54 = v46;
  }

  v55 = 0.0;
  if (v53)
  {
    v56 = v48;
  }

  else
  {
    v55 = MinY;
    v56 = v45;
  }

  v94 = v50;
  if (v53)
  {
    v57 = v50;
  }

  else
  {
    v57 = Height;
  }

  v58 = CGRectGetWidth(*&v54);
  v118.origin.y = 0.0;
  v118.origin.x = v91;
  v118.size.width = v92;
  v118.size.height = rect;
  CGRectGetHeight(v118);
  v119.origin.y = 0.0;
  v119.origin.x = v46;
  v119.size.width = v58;
  v119.size.height = v50;
  CGRectGetHeight(v119);
  UIRectCenteredYInRect();
  x = v120.origin.x;
  y = v120.origin.y;
  v61 = v120.size.width;
  v62 = v120.size.height;
  v63 = CGRectGetMinY(v120);
  v121.origin.x = x;
  v121.origin.y = y;
  v121.size.width = v61;
  v121.size.height = v62;
  MaxY = CGRectGetMaxY(v121);
  v122.origin.y = 0.0;
  v99 = v58;
  v101 = v46;
  v122.origin.x = v46;
  v122.size.width = v58;
  v122.size.height = v94;
  v65 = CGRectGetHeight(v122);
  isFavorite = [(MCDAlbumsDetailTableHeaderView *)self isFavorite];
  favoriteIcon = self->_favoriteIcon;
  if (isFavorite)
  {
    v97 = v65;
    v98 = MaxY;
    if (favoriteIcon)
    {
      [(UIImageView *)favoriteIcon setHidden:0];
    }

    else
    {
      v71 = MCDFavoriteIcon();
      v72 = self->_favoriteIcon;
      self->_favoriteIcon = v71;

      contentView4 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
      [contentView4 addSubview:self->_favoriteIcon];
    }

    v69 = v91;
    v70 = v92;
    [(UIImageView *)self->_favoriteIcon bounds];
    v75 = v92 + 4.0 + v74;
    if (v75 >= v61)
    {
      [(UIImageView *)self->_favoriteIcon bounds];
      v70 = v92 - (v76 + 4.0);
    }

    [(UIImageView *)self->_favoriteIcon frame];
    v93 = v77;
    v79 = v78;
    v90 = v78;
    v81 = v80;
    v123.origin.x = v91;
    v123.origin.y = v63;
    v123.size.width = v70;
    v68 = rect;
    v123.size.height = rect;
    v82 = CGRectGetMaxX(v123) + 4.0;
    v124.origin.x = v91;
    v124.origin.y = v63;
    v124.size.width = v70;
    v124.size.height = rect;
    MidY = CGRectGetMidY(v124);
    v125.origin.x = v82;
    v125.origin.y = v93;
    v125.size.width = v79;
    v125.size.height = v81;
    v84 = v81;
    v85 = MidY + CGRectGetHeight(v125) * -0.5;
    contentView5 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
    [(UIImageView *)self->_favoriteIcon setFrame:sub_1000FCFE0(contentView5, v82, v85, v90, v84)];

    v65 = v97;
    MaxY = v98;
  }

  else
  {
    [(UIImageView *)favoriteIcon setHidden:1];
    v68 = rect;
    v69 = v91;
    v70 = v92;
  }

  contentView6 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
  [(UILabel *)self->_titleLabel setFrame:sub_1000FCFE0(contentView6, v69, v63, v70, v68)];

  contentView7 = [(MCDAlbumsDetailTableHeaderView *)self contentView];
  [(UILabel *)self->_subtitleLabel setFrame:sub_1000FCFE0(contentView7, v101, MaxY - v65, v99, v94)];
}

- (void)setArtworkImage:(id)image
{
  imageCopy = image;
  artworkImage = [(MCDAlbumsDetailTableHeaderView *)self artworkImage];

  if (artworkImage != imageCopy)
  {
    [(UIImageView *)self->_artworkImageView setImage:imageCopy];
    [(UIImageView *)self->_artworkImageView setTintColor:0];
    [(UIImageView *)self->_artworkImageView setClipsToBounds:1];
    renderingMode = [imageCopy renderingMode];
    v6 = 4.5;
    if (renderingMode == 2)
    {
      v6 = 0.0;
    }

    [(UIImageView *)self->_artworkImageView _setContinuousCornerRadius:v6];
    [(MCDAlbumsDetailTableHeaderView *)self setNeedsLayout];
  }
}

- (void)setTemplateArtworkImage:(id)image
{
  [(MCDAlbumsDetailTableHeaderView *)self setArtworkImage:image];
  v4 = +[UIColor _carSystemSecondaryColor];
  [(UIImageView *)self->_artworkImageView setTintColor:v4];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(MCDAlbumsDetailTableHeaderView *)self title];
  v5 = [title isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
  }
}

- (void)setDuration:(double)duration count:(unint64_t)count
{
  v5 = MCDAlbumDetailFormat();
  v19 = NSFontAttributeName;
  v6 = [UIFont systemFontOfSize:12.0];
  v20 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = NSFontAttributeName;
  v8 = [UIFont boldSystemFontOfSize:12.0];
  v18 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v10 = [MPUEmphasizedText attributedStringWithString:v5 emphasisDelimiter:@"#" regularTextAttributes:v7 emphasizedTextAttributes:v9];
  v11 = [v10 mutableCopy];

  v12 = +[NSParagraphStyle defaultParagraphStyle];
  v13 = [v12 mutableCopy];

  [v13 setLineBreakMode:4];
  v15 = NSParagraphStyleAttributeName;
  v16 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v11 addAttributes:v14 range:{0, objc_msgSend(v11, "length")}];

  [(UILabel *)self->_subtitleLabel setAttributedText:v11];
}

- (void)_shuffleButtonAction:(id)action
{
  actionCopy = action;
  shuffleActionBlock = [(MCDAlbumsDetailTableHeaderView *)self shuffleActionBlock];

  if (shuffleActionBlock)
  {
    shuffleActionBlock2 = [(MCDAlbumsDetailTableHeaderView *)self shuffleActionBlock];
    (shuffleActionBlock2)[2](shuffleActionBlock2, actionCopy);
  }
}

@end