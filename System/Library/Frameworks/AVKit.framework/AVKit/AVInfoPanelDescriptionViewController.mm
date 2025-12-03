@interface AVInfoPanelDescriptionViewController
- (AVInfoPanelDescriptionViewController)initWithCoder:(id)coder;
- (AVInfoPanelDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AVPlayerController)playerController;
- (BOOL)hasContent;
- (CGSize)preferredContentSize;
- (id)_durationString;
- (id)_metadataItemForIdentifiers:(id)identifiers;
- (id)_releaseDateStringStyle:(int64_t)style;
- (void)_loadPosterFromMetadataItem:(id)item;
- (void)_updateActionButtons;
- (void)_updateViewsWithNewMetadata;
- (void)loadView;
- (void)setActions:(id)actions;
- (void)setClosedCaptioned:(BOOL)captioned;
- (void)setDuration:(double)duration;
- (void)setMetadata:(id)metadata;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AVInfoPanelDescriptionViewController

- (AVPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

- (id)_durationString
{
  if (self->_duration <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
    v4 = v3;
    if (self->_duration >= 600.0)
    {
      v5 = 96;
    }

    else
    {
      v5 = 192;
    }

    [v3 setAllowedUnits:v5];
    [v4 setUnitsStyle:2];
    v6 = [v4 stringFromTimeInterval:self->_duration];
    v7 = [v6 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1EFED57D8}];
  }

  return v7;
}

- (id)_releaseDateStringStyle:(int64_t)style
{
  v22[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987688] keySpace:*MEMORY[0x1E6987838]];
  v22[0] = v5;
  v6 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987898] keySpace:*MEMORY[0x1E6987850]];
  v22[1] = v6;
  v7 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987930] keySpace:*MEMORY[0x1E6987860]];
  v22[2] = v7;
  v8 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987730] keySpace:*MEMORY[0x1E6987840]];
  v22[3] = v8;
  v9 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987618] keySpace:*MEMORY[0x1E6987848]];
  v22[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];

  v11 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v10];
  dateValue = [v11 dateValue];
  stringValue = [v11 stringValue];
  creationDate = [(AVInfoPanelDescriptionViewController *)self creationDate];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__AVInfoPanelDescriptionViewController__releaseDateStringStyle___block_invoke;
  v21[3] = &unk_1E7207B90;
  v21[4] = self;
  v21[5] = style;
  v15 = _Block_copy(v21);
  v16 = v15;
  if (dateValue)
  {
    v17 = v15[2];
LABEL_3:
    v18 = v17();
    goto LABEL_6;
  }

  if (!stringValue)
  {
    v17 = v15[2];
    goto LABEL_3;
  }

  v18 = stringValue;
LABEL_6:
  v19 = v18;

  return v19;
}

id __64__AVInfoPanelDescriptionViewController__releaseDateStringStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = 1000;
    v6 = *(v4 + 1000);
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v8 = *(a1 + 32);
    v9 = *(v8 + 1000);
    *(v8 + 1000) = v7;

    [*(*(a1 + 32) + 1000) setDateStyle:3];
    [*(*(a1 + 32) + 1000) setTimeStyle:0];
  }

  else
  {
    v5 = 992;
    v6 = *(v4 + 992);
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v11 = *(a1 + 32);
    v12 = *(v11 + 992);
    *(v11 + 992) = v10;

    [*(*(a1 + 32) + 992) setDateFormat:@"yyyy"];
  }

  v6 = *(*(a1 + 32) + v5);
LABEL_7:
  v13 = [v6 stringFromDate:v3];

  return v13;
}

- (void)_loadPosterFromMetadataItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__AVInfoPanelDescriptionViewController__loadPosterFromMetadataItem___block_invoke;
  v6[3] = &unk_1E7209FB0;
  v7 = itemCopy;
  selfCopy = self;
  v5 = itemCopy;
  [v5 loadValuesAsynchronouslyForKeys:&unk_1EFF12E30 completionHandler:v6];
}

void __68__AVInfoPanelDescriptionViewController__loadPosterFromMetadataItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataValue];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E69DCAB8] imageWithData:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_initWeak(&location, *(a1 + 40));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AVInfoPanelDescriptionViewController__loadPosterFromMetadataItem___block_invoke_2;
  aBlock[3] = &unk_1E7209A10;
  objc_copyWeak(&v8, &location);
  v4 = v3;
  v7 = v4;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __68__AVInfoPanelDescriptionViewController__loadPosterFromMetadataItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePosterViewWithImage:*(a1 + 32)];
}

- (void)_updateActionButtons
{
  if ([(AVInfoPanelDescriptionViewController *)self isViewLoaded])
  {
    v5 = self->_actions;
    if ([(NSArray *)v5 count])
    {
      v3 = [(NSArray *)v5 bs_filter:&__block_literal_global_7101];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }

    v6 = v4;
    [(AVInfoPanelDescriptionView *)self->_descriptionView setActions:v4];
  }
}

- (void)_updateViewsWithNewMetadata
{
  v86[1] = *MEMORY[0x1E69E9840];
  metadata = [(AVInfoPanelDescriptionViewController *)self metadata];

  if (metadata)
  {
    v86[0] = *MEMORY[0x1E6987640];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
    v76 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v4];

    v85 = *MEMORY[0x1E6987668];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
    v6 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v5];

    v7 = *MEMORY[0x1E6987808];
    v84[0] = @"avkt/com.apple.avkit.alternateSubTitle";
    v84[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v9 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v8];

    v10 = *MEMORY[0x1E6987860];
    v11 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987928] keySpace:*MEMORY[0x1E6987860]];
    v83[0] = v11;
    v12 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E69878B8] keySpace:*MEMORY[0x1E6987850]];
    v83[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v14 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v13];

    v15 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987918] keySpace:v10];
    v82[0] = v15;
    v16 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987610] keySpace:*MEMORY[0x1E6987848]];
    v82[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v72 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v17];

    v81 = @"avkt/com.apple.avkit.seasonNumber";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    v19 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v18];

    v80 = @"avkt/com.apple.avkit.episodeNumber";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v75 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v20];

    v79 = @"avkt/com.apple.avkit.rottenTomatoesRating";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
    v74 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v21];

    v78 = @"avkt/com.apple.avkit.rottenTomatoesFreshness";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    v73 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v22];

    v23 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987680] keySpace:*MEMORY[0x1E6987838]];
    v77[0] = v23;
    v24 = [MEMORY[0x1E6987FE0] identifierForKey:*MEMORY[0x1E6987920] keySpace:v10];
    v77[1] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v66 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v25];

    stringValue = [v76 stringValue];
    v69 = v6;
    stringValue2 = [v6 stringValue];
    v67 = v14;
    stringValue3 = [v14 stringValue];
    v68 = v9;
    stringValue4 = [v9 stringValue];
    if ([stringValue4 length])
    {

      v30 = 0;
    }

    else
    {
      v30 = stringValue4;
      stringValue4 = stringValue2;
    }

    v31 = 0;
    v70 = v30;
    v71 = stringValue4;
    if (v19 && v75)
    {
      v32 = stringValue3;
      v33 = stringValue;
      value = [v19 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        stringValue5 = [v19 stringValue];
      }

      else
      {
        value2 = [v19 value];
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          value3 = [v19 value];
          stringValue5 = [value3 stringValue];
        }

        else
        {
          stringValue5 = 0;
        }
      }

      value4 = [v75 value];
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        stringValue6 = [v75 stringValue];
      }

      else
      {
        value5 = [v75 value];
        v44 = objc_opt_respondsToSelector();

        if (v44)
        {
          value6 = [v75 value];
          stringValue6 = [value6 stringValue];
        }

        else
        {
          stringValue6 = 0;
        }
      }

      v46 = MEMORY[0x1E696AEC0];
      v47 = AVLocalizedString(@"Season %@, Episode %@");
      v31 = [v46 stringWithFormat:v47, stringValue5, stringValue6];

      stringValue = v33;
      stringValue3 = v32;
      v30 = v70;
      stringValue4 = v71;
    }

    v48 = self->_descriptionView;
    v63 = v31;
    [(AVInfoPanelDescriptionView *)v48 setSeasonEpisodeText:v31];
    [(AVInfoPanelDescriptionView *)v48 setTitleText:stringValue4];
    [(AVInfoPanelDescriptionView *)v48 setSecondaryTitleText:v30];
    v65 = stringValue;
    [(AVInfoPanelDescriptionView *)v48 setSummaryText:stringValue];
    v64 = stringValue3;
    [(AVInfoPanelDescriptionView *)v48 setGenreText:stringValue3];
    v49 = [(AVInfoPanelDescriptionViewController *)self _releaseDateStringStyle:0];
    [(AVInfoPanelDescriptionView *)v48 setDateText:v49];
    numberValue = [v73 numberValue];
    integerValue = [numberValue integerValue];
    numberValue2 = [v74 numberValue];
    [numberValue2 floatValue];
    [(AVInfoPanelDescriptionView *)v48 setTomatoFreshness:integerValue rating:v74 == 0 hidden:?];

    v53 = v72;
    v54 = [AVMediaContentRatings displayStringForMetadataItem:v72];
    v55 = [AVMediaContentRatings imageForMetadataItem:v72];
    v56 = +[AVRatingProviders shared];
    v57 = [v56 findRatingString:v54];

    if (v57)
    {
      image = [v57 image];
      v59 = [image imageWithBaselineOffsetFromBottom:1.0];

      if (![v57 isImageMask])
      {
        v53 = v72;
        v62 = v70;
        goto LABEL_27;
      }

      v60 = [v59 imageWithRenderingMode:2];
      v53 = v72;
    }

    else
    {
      v59 = [v55 imageWithBaselineOffsetFromBottom:1.0];
      if ([AVMediaContentRatings isImageMaskForMetadataItem:v72])
      {
        v61 = 2;
      }

      else
      {
        v61 = 1;
      }

      v60 = [v59 imageWithRenderingMode:v61];
    }

    v62 = v70;

    v59 = v60;
LABEL_27:
    [(AVInfoPanelDescriptionView *)v48 setContentMediaRatingText:v54 image:v59];
    [(AVInfoPanelDescriptionView *)v48 setViewingModeBadge:[(AVInfoPanelDescriptionViewController *)self viewingModeBadge]];
    [(AVInfoPanelDescriptionViewController *)self _loadPosterFromMetadataItem:v66];
    [(AVInfoPanelDescriptionView *)v48 setPosterViewHidden:v66 == 0];
  }

  [(AVInfoPanelDescriptionViewController *)self _updateActionButtons];
}

- (id)_metadataItemForIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(identifiersCopy);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = MEMORY[0x1E6987FE0];
      metadata = [(AVInfoPanelDescriptionViewController *)self metadata];
      v12 = [v10 metadataItemsFromArray:metadata filteredByIdentifier:v9];
      firstObject = [v12 firstObject];

      if (firstObject)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    firstObject = 0;
  }

  return firstObject;
}

- (CGSize)preferredContentSize
{
  +[AVInfoPanelDescriptionView layoutSize];
  v3 = v2 + 48.0;
  v5 = v4 + 0.0 + 4.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  actions = self->_actions;
  if (actions != actionsCopy)
  {
    v7 = actionsCopy;
    actions = [actions isEqual:actionsCopy];
    actionsCopy = v7;
    if ((actions & 1) == 0)
    {
      objc_storeStrong(&self->_actions, actions);
      actions = [(AVInfoPanelDescriptionViewController *)self _updateActionButtons];
      actionsCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](actions, actionsCopy);
}

- (BOOL)hasContent
{
  v11[1] = *MEMORY[0x1E69E9840];
  posterImage = [(AVInfoPanelDescriptionView *)self->_descriptionView posterImage];
  if (posterImage)
  {
    v4 = 1;
  }

  else
  {
    v11[0] = *MEMORY[0x1E6987668];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v5];
    if (v6)
    {
      v10 = *MEMORY[0x1E6987640];
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      v8 = [(AVInfoPanelDescriptionViewController *)self _metadataItemForIdentifiers:v7];
      v4 = v8 != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setClosedCaptioned:(BOOL)captioned
{
  if (self->_closedCaptioned != captioned)
  {
    self->_closedCaptioned = captioned;
    [(AVInfoPanelDescriptionView *)self->_descriptionView setClosedCaptionBadgeHidden:!captioned];
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    v5 = self->_descriptionView;
    _durationString = [(AVInfoPanelDescriptionViewController *)self _durationString];
    [(AVInfoPanelDescriptionView *)v5 setDurationText:_durationString];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_metadata != metadataCopy)
  {
    v6 = metadataCopy;
    objc_storeStrong(&self->_metadata, metadata);
    [(AVInfoPanelDescriptionViewController *)self _updateViewsWithNewMetadata];
    metadataCopy = v6;
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = AVInfoPanelDescriptionViewController;
  [(AVInfoPanelDescriptionViewController *)&v4 willMoveToParentViewController:controller];
  [(AVInfoPanelDescriptionViewController *)self _updateViewsWithNewMetadata];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AVInfoPanelDescriptionViewController;
  [(AVInfoPanelDescriptionViewController *)&v5 viewDidLoad];
  v3 = self->_descriptionView;
  _durationString = [(AVInfoPanelDescriptionViewController *)self _durationString];
  [(AVInfoPanelDescriptionView *)v3 setDurationText:_durationString];

  [(AVInfoPanelDescriptionView *)v3 setClosedCaptionBadgeHidden:[(AVInfoPanelDescriptionViewController *)self isClosedCaptioned]^ 1];
  [(AVInfoPanelDescriptionViewController *)self _updateActionButtons];
}

- (void)loadView
{
  v25[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AVInfoPanelDescriptionViewController *)self setView:v3];
  v4 = objc_alloc_init(AVInfoPanelDescriptionView);
  descriptionView = self->_descriptionView;
  self->_descriptionView = v4;

  [(AVInfoPanelDescriptionView *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = self->_descriptionView;
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.921568627 alpha:1.0];
  [(AVInfoPanelDescriptionView *)v6 setTitleTextColor:v7];

  v8 = self->_descriptionView;
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(AVInfoPanelDescriptionView *)v8 setTextFont:v9];

  v10 = self->_descriptionView;
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.921568627 alpha:0.6];
  [(AVInfoPanelDescriptionView *)v10 setTextColor:v11];

  [v3 addSubview:self->_descriptionView];
  topAnchor = [(AVInfoPanelDescriptionView *)self->_descriptionView topAnchor];
  topAnchor2 = [v3 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v25[0] = v22;
  bottomAnchor = [(AVInfoPanelDescriptionView *)self->_descriptionView bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v25[1] = v12;
  leftAnchor = [(AVInfoPanelDescriptionView *)self->_descriptionView leftAnchor];
  leftAnchor2 = [v3 leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:24.0];
  v25[2] = v15;
  rightAnchor = [(AVInfoPanelDescriptionView *)self->_descriptionView rightAnchor];
  rightAnchor2 = [v3 rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-24.0];
  v25[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v19];
  [(AVInfoPanelDescriptionViewController *)self _updateActionButtons];
}

- (AVInfoPanelDescriptionViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AVInfoPanelDescriptionViewController;
  v3 = [(AVInfoPanelDescriptionViewController *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = AVLocalizedString(@"INFO");
    v6.receiver = v3;
    v6.super_class = AVInfoPanelDescriptionViewController;
    [(AVInfoPanelDescriptionViewController *)&v6 setTitle:v4];
  }

  return v3;
}

- (AVInfoPanelDescriptionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = AVInfoPanelDescriptionViewController;
  v4 = [(AVInfoPanelDescriptionViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = AVLocalizedString(@"INFO");
    v7.receiver = v4;
    v7.super_class = AVInfoPanelDescriptionViewController;
    [(AVInfoPanelDescriptionViewController *)&v7 setTitle:v5];
  }

  return v4;
}

@end