@interface EpisodeAvailableCell
+ (double)defaultHeight;
- (CGSize)intrinsicContentSize;
- (EpisodeAvailableCell)initWithFrame:(CGRect)frame;
- (EpisodeAvailableCellDelegate)delegate;
- (void)_fetchImageWithSize:(CGSize)size imageKeyWithFallbackKeys:(id)keys completion:(id)completion;
- (void)applyImage:(id)image fromSource:(id)source;
- (void)ensureInstalledSubviews:(id)subviews;
- (void)layoutSubviews;
- (void)loadArtworkImage;
- (void)playButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)reloadValues;
- (void)setEpisodePropertySource:(id)source;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EpisodeAvailableCell

- (EpisodeAvailableCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = EpisodeAvailableCell;
  v3 = [(EpisodeAvailableCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[EpisodeListAvailableStyle defaultStyle];
    style = v3->_style;
    v3->_style = v4;

    cell_newArtworkView = [(EpisodeListAvailableStyle *)v3->_style cell_newArtworkView];
    artworkView = v3->_artworkView;
    v3->_artworkView = cell_newArtworkView;

    cell_newPlayButton = [(EpisodeListAvailableStyle *)v3->_style cell_newPlayButton];
    playButton = v3->_playButton;
    v3->_playButton = cell_newPlayButton;

    cell_newTitleLabel = [(EpisodeListAvailableStyle *)v3->_style cell_newTitleLabel];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = cell_newTitleLabel;

    cell_newSubtitleLabel = [(EpisodeListAvailableStyle *)v3->_style cell_newSubtitleLabel];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = cell_newSubtitleLabel;

    cell_newHorizontalSeparatorView = [(EpisodeListAvailableStyle *)v3->_style cell_newHorizontalSeparatorView];
    separatorView = v3->_separatorView;
    v3->_separatorView = cell_newHorizontalSeparatorView;

    [(UIView *)v3->_separatorView setHidden:1];
    [(MTButtonWithTouchInsets *)v3->_playButton addTarget:v3 action:"playButtonTapped:" forControlEvents:64];
    v19[0] = v3->_artworkView;
    v19[1] = v3->_playButton;
    v19[2] = v3->_titleLabel;
    v19[3] = v3->_subtitleLabel;
    v19[4] = v3->_separatorView;
    v16 = [NSArray arrayWithObjects:v19 count:5];
    [(EpisodeAvailableCell *)v3 ensureInstalledSubviews:v16];
  }

  return v3;
}

- (void)setEpisodePropertySource:(id)source
{
  sourceCopy = source;
  if (self->_episodePropertySource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_episodePropertySource, source);
    [(EpisodeAvailableCell *)self reloadValues];
    sourceCopy = v6;
  }
}

- (void)playButtonTapped:(id)tapped
{
  delegate = [(EpisodeAvailableCell *)self delegate];
  [delegate handlePlayActionForEpisodeAvailableCell:self];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(EpisodeAvailableCell *)self isHighlighted]!= highlighted)
  {
    v6.receiver = self;
    v6.super_class = EpisodeAvailableCell;
    [(EpisodeAvailableCell *)&v6 setHighlighted:highlightedCopy];
    if (([(EpisodeAvailableCell *)self isHighlighted]& 1) != 0)
    {
      +[UIColor cellSelectedBackgroundColor];
    }

    else
    {
      +[UIColor backgroundColor];
    }
    v5 = ;
    [(EpisodeAvailableCell *)self setBackgroundColor:v5];
  }
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = EpisodeAvailableCell;
  [(EpisodeAvailableCell *)&v7 prepareForReuse];
  episodePropertySource = self->_episodePropertySource;
  self->_episodePropertySource = 0;

  artworkView = [(EpisodeAvailableCell *)self artworkView];
  [artworkView setImage:0];

  titleLabel = [(EpisodeAvailableCell *)self titleLabel];
  [titleLabel setText:&stru_10002D1C8];

  subtitleLabel = [(EpisodeAvailableCell *)self subtitleLabel];
  [subtitleLabel setText:&stru_10002D1C8];

  [(EpisodeAvailableCell *)self setSeparatorHidden:0];
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  if (self->_separatorHidden != hidden)
  {
    self->_separatorHidden = hidden;
    [(EpisodeAvailableCell *)self invalidateIntrinsicContentSize];

    [(EpisodeAvailableCell *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = EpisodeAvailableCell;
  [(EpisodeAvailableCell *)&v4 traitCollectionDidChange:change];
  [(EpisodeAvailableCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = EpisodeAvailableCell;
  [(CGSize *)&rect.size layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(EpisodeAvailableCell *)self effectiveUserInterfaceLayoutDirection];
  separatorView = [(EpisodeAvailableCell *)self separatorView];
  artworkView = [(EpisodeAvailableCell *)self artworkView];
  playButton = [(EpisodeAvailableCell *)self playButton];
  titleLabel = [(EpisodeAvailableCell *)self titleLabel];
  subtitleLabel = [(EpisodeAvailableCell *)self subtitleLabel];
  style = [(EpisodeAvailableCell *)self style];
  [(EpisodeAvailableCell *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  cell_topAndBottomPadding = [style cell_topAndBottomPadding];
  [cell_topAndBottomPadding currentConstant];
  rect.origin.y = v19;

  [style defaultMarginH];
  v102 = v20;
  v108.origin.x = v11;
  v108.origin.y = v13;
  v108.size.width = v15;
  v108.size.height = v17;
  MaxY = CGRectGetMaxY(v108);
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v95 = v22;

  v109.origin.x = v11;
  v109.origin.y = v13;
  v109.size.width = v15;
  v109.size.height = v17;
  Width = CGRectGetWidth(v109);
  v23 = +[UIScreen mainScreen];
  [v23 scale];
  v93 = v24;

  [artworkView frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [style defaultMarginH];
  v32 = v31;
  v106 = v28;
  v103 = v17;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v110.origin.x = v11;
    v110.origin.y = v13;
    v110.size.width = v15;
    v110.size.height = v17;
    MaxX = CGRectGetMaxX(v110);
    v111.origin.x = v26;
    v111.origin.y = rect.origin.y;
    v111.size.width = v28;
    v111.size.height = v30;
    v34 = MaxX - CGRectGetWidth(v111) - v32;
  }

  else
  {
    v34 = v11 + v31;
  }

  v35 = v30;
  [playButton frame];
  v37 = v36;
  [playButton frame];
  v39 = v38;
  [style defaultMarginH];
  v41 = v40;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v42 = v11 + v40;
  }

  else
  {
    v112.origin.x = v11;
    v112.origin.y = v13;
    v112.size.width = v15;
    v112.size.height = v103;
    v43 = CGRectGetMaxX(v112);
    v113.origin.x = 0.0;
    v113.origin.y = 0.0;
    v113.size.width = v37;
    v113.size.height = v39;
    v42 = v43 - CGRectGetWidth(v113) - v41;
  }

  rect.origin.x = v42;
  v44 = v39;
  v45 = v34;
  v114.origin.x = v34;
  v114.origin.y = rect.origin.y;
  v114.size.width = v106;
  v114.size.height = v35;
  Height = CGRectGetHeight(v114);
  v115.origin.y = 0.0;
  v115.origin.x = rect.origin.x;
  v115.size.width = v37;
  v115.size.height = v39;
  v47 = rect.origin.y + (Height - CGRectGetHeight(v115)) * 0.5;
  v100 = v47;
  v97 = v37;
  v105 = v34;
  v92 = v35;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v116.origin.x = rect.origin.x;
    v116.origin.y = v47;
    v116.size.width = v37;
    v116.size.height = v44;
    v48 = CGRectGetMaxX(v116);
    [style cell_playButtonToContentSpacing];
    v50 = v48 + v49;
    v117.origin.x = v45;
    v117.origin.y = rect.origin.y;
    v117.size.width = v106;
    v117.size.height = v35;
    MinX = CGRectGetMinX(v117);
    [style cell_artworkToContentSpacing];
  }

  else
  {
    v118.origin.x = v34;
    v118.origin.y = rect.origin.y;
    v118.size.width = v106;
    v118.size.height = v35;
    v53 = CGRectGetMaxX(v118);
    [style cell_artworkToContentSpacing];
    v50 = v53 + v54;
    v119.origin.x = rect.origin.x;
    v119.origin.y = v47;
    v119.size.width = v37;
    v119.size.height = v44;
    MinX = CGRectGetMinX(v119);
    [style cell_playButtonToContentSpacing];
  }

  v55 = MinX - v52 - v50;
  v96 = MaxY - 1.0 / v95;
  v99 = 1.0 / v93;
  [titleLabel sizeThatFits:{v55, v103}];
  v57 = v56;
  v59 = v58;
  [subtitleLabel sizeThatFits:{v55, v103}];
  v61 = v60;
  v120.origin.x = v50;
  v120.origin.y = rect.origin.y;
  v120.size.width = v57;
  v94 = v57;
  v120.size.height = v59;
  v91 = v59;
  v62 = v50;
  v63 = CGRectGetMaxY(v120);
  font = [titleLabel font];
  [font descender];
  v66 = v63 - v65;
  cell_titleBL_To_subtitleBL = [style cell_titleBL_To_subtitleBL];
  [cell_titleBL_To_subtitleBL currentConstant];
  v69 = v66 + v68;
  font2 = [subtitleLabel font];
  [font2 descender];
  v104 = v61;
  v90 = v69 + v71 - v61;

  v121.origin.x = v62;
  v121.origin.y = rect.origin.y;
  v121.size.width = v57;
  v121.size.height = v59;
  v129.origin.x = v62;
  v129.origin.y = v90;
  v129.size.width = v55;
  v129.size.height = v61;
  v122 = CGRectUnion(v121, v129);
  x = v122.origin.x;
  v88 = v122.size.height;
  y = v122.origin.y;
  v73 = v122.size.width;
  font3 = [titleLabel font];
  [font3 ascender];
  v76 = -v75;

  v123.origin.x = v105;
  v123.origin.y = rect.origin.y;
  v123.size.width = v106;
  v123.size.height = v92;
  v77 = CGRectGetHeight(v123);
  v124.origin.x = x;
  v124.size.height = v88;
  v124.origin.y = y;
  v124.size.width = v73;
  v78 = (v77 - CGRectGetHeight(v124)) * 0.5;
  if (v78 <= v76)
  {
    v78 = v76;
  }

  v79 = rect.origin.y + v78;
  v80 = v90 + v78;
  [artworkView setFrame:{v105, rect.origin.y, v106, v92}];
  [titleLabel setFrame:{v62, v79, v94, v91}];
  [subtitleLabel setFrame:{v62, v80, v55, v104}];
  [separatorView setFrame:{v102, v96, Width, v99}];
  [separatorView setHidden:{-[EpisodeAvailableCell separatorHidden](self, "separatorHidden")}];
  v125.origin.x = rect.origin.x;
  v125.origin.y = v100;
  v125.size.width = v97;
  v125.size.height = v44;
  MinY = CGRectGetMinY(v125);
  v126.origin.x = v105;
  v126.origin.y = rect.origin.y;
  v126.size.width = v106;
  v126.size.height = v92;
  v82 = MinY - CGRectGetMinY(v126);
  if (v82 <= 0.0)
  {
    v83 = -0.0;
  }

  else
  {
    v83 = -v82;
  }

  v127.origin.x = v105;
  v127.origin.y = rect.origin.y;
  v127.size.width = v106;
  v127.size.height = v92;
  v84 = CGRectGetMaxY(v127);
  v128.origin.x = rect.origin.x;
  v128.origin.y = v100;
  v128.size.width = v97;
  v128.size.height = v44;
  v85 = v84 - CGRectGetMaxY(v128);
  if (v85 <= 0.0)
  {
    v86 = -0.0;
  }

  else
  {
    v86 = -v85;
  }

  [style cell_playButtonToContentSpacing];
  [playButton setTouchInsets:{v83, -v87, v86, -v87}];
  [playButton setFrame:{rect.origin.x, v100, v97, v44}];
}

- (void)ensureInstalledSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [subviewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subviewsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        superview = [v9 superview];

        if (superview != self)
        {
          [(EpisodeAvailableCell *)self addSubview:v9];
        }
      }

      v6 = [subviewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

+ (double)defaultHeight
{
  v2 = +[EpisodeListAvailableStyle defaultStyle];
  cell_topAndBottomPadding = [v2 cell_topAndBottomPadding];
  [cell_topAndBottomPadding currentConstant];
  v5 = v4;

  [v2 cell_artworkDimension];
  v7 = v6 + v5 * 2.0;

  return v7;
}

- (CGSize)intrinsicContentSize
{
  artworkView = [(EpisodeAvailableCell *)self artworkView];
  [artworkView frame];
  v4 = v3;

  v5 = 0.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadValues
{
  episodePropertySource = [(EpisodeAvailableCell *)self episodePropertySource];
  title = [episodePropertySource title];
  titleLabel = [(EpisodeAvailableCell *)self titleLabel];
  [titleLabel setText:title];

  localizedDurationAndPodcastTitleString = [episodePropertySource localizedDurationAndPodcastTitleString];
  subtitleLabel = [(EpisodeAvailableCell *)self subtitleLabel];
  [subtitleLabel setText:localizedDurationAndPodcastTitleString];

  [(EpisodeAvailableCell *)self loadArtworkImage];
  [(EpisodeAvailableCell *)self setNeedsLayout];
  [(EpisodeAvailableCell *)self invalidateIntrinsicContentSize];
}

- (void)applyImage:(id)image fromSource:(id)source
{
  imageCopy = image;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006268;
  block[3] = &unk_10002CA28;
  block[4] = self;
  sourceCopy = source;
  v11 = imageCopy;
  v7 = imageCopy;
  v8 = sourceCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadArtworkImage
{
  episodePropertySource = [(EpisodeAvailableCell *)self episodePropertySource];
  podcastUuid = [episodePropertySource podcastUuid];
  v5 = [episodePropertySource preloadedImageWithSize:{0x50uLL, 0x50uLL}];
  if (v5)
  {
    [(EpisodeAvailableCell *)self applyImage:v5 fromSource:episodePropertySource];
  }

  else
  {
    v6 = +[NSMutableArray array];
    if ([podcastUuid length])
    {
      [v6 addObject:podcastUuid];
    }

    artworkView = [(EpisodeAvailableCell *)self artworkView];
    image = [artworkView image];

    if (!image)
    {
      [v6 addObject:kMTLibraryDefaultImageKey];
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006480;
    v9[3] = &unk_10002CA50;
    v9[4] = self;
    v10 = episodePropertySource;
    [(EpisodeAvailableCell *)self _fetchImageWithSize:v6 imageKeyWithFallbackKeys:v9 completion:0x50uLL, 0x50uLL];
  }
}

- (void)_fetchImageWithSize:(CGSize)size imageKeyWithFallbackKeys:(id)keys completion:(id)completion
{
  height = size.height;
  width = size.width;
  keysCopy = keys;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([keysCopy count])
    {
      firstObject = [keysCopy firstObject];
      if ([firstObject length])
      {
        objc_initWeak(&location, self);
        v12 = +[PUIObjCArtworkProvider shared];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000663C;
        v14[3] = &unk_10002CAA0;
        objc_copyWeak(v17, &location);
        v16 = completionCopy;
        v13 = v12;
        v15 = v13;
        v17[1] = *&width;
        v17[2] = *&height;
        [v13 artworkPathForShow:firstObject size:v14 completionHandler:{width, height}];

        objc_destroyWeak(v17);
        objc_destroyWeak(&location);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (EpisodeAvailableCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end