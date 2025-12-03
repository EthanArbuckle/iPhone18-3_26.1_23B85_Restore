@interface BKLibraryBookshelfGridBookCell
+ (NSDateComponentsFormatter)bkaxDownloadAndAudiobookProgressFormatter;
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BFMAsset)asset;
- (BKDimmedCoverDownloadProgressView)progressView;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfGridBookCell)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)_accessibilityDidTriggerShowMenuAction;
- (BOOL)accessibilityActivate;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)needsAsset;
- (BOOL)showSeriesSequenceLabel;
- (CGRect)_areaAboveInfoCell;
- (CGRect)coverArea;
- (CGRect)coverFrame;
- (CGRect)infoFrame;
- (CGRect)supplementalContentPDFTitleFrame;
- (double)_desiredAlphaFromRawAlpha:(double)alpha;
- (double)_seriesSequenceLabelHeight;
- (double)_seriesSequenceLabelTopMargin;
- (double)infoCellExpectedDateHeight;
- (double)infoCellHeight;
- (double)infoCellPadding;
- (id)_checkmarkImageForSelectedState:(BOOL)state;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)cellMetrics;
- (id)coverImage;
- (id)coverLayer;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)drop;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)libraryBookshelfInfoCell:(id)cell analyticsAssetPropertyProviderForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection;
- (id)libraryBookshelfInfoCell:(id)cell menuWithLibraryAsset:(id)asset sourceView:(id)view collection:(id)collection;
- (id)trackerForLibraryBookshelfInfoCell:(id)cell;
- (unint64_t)accessibilityTraits;
- (void)_animateDim;
- (void)_animateGrow;
- (void)_animateMakeVisible;
- (void)_animateShrink;
- (void)_layoutCoverView;
- (void)_updateSeriesSequenceLabel:(BOOL)label;
- (void)_updateSeriesSequenceLabelText;
- (void)_updateSupplementalContentPDFTitleLabelText;
- (void)applyLayoutAttributes:(id)attributes;
- (void)assetStateChanged;
- (void)cleanupCell;
- (void)dealloc;
- (void)didTapStopDownloadButtonWithAsset:(id)asset;
- (void)handleTapWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)libraryBookshelfInfoCellDidSelectCancelDownload:(id)download sourceView:(id)view;
- (void)libraryBookshelfInfoCellDidSelectResumeDownload:(id)download sourceView:(id)view;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)setAsset:(id)asset;
- (void)setAudiobookStatus:(id)status;
- (void)setCoverEffectsEnvironment:(id)environment;
- (void)setCoverHidden:(BOOL)hidden;
- (void)setDataSource:(id)source;
- (void)setLibraryAsset:(id)asset;
- (void)setSelected:(BOOL)selected;
- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler;
- (void)togglePlayPause:(id)pause;
- (void)updateLibraryAssetPrice;
@end

@implementation BKLibraryBookshelfGridBookCell

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(BKLibraryBookshelfInfoCell *)self->_infoCell convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  if (([(BKLibraryBookshelfGridBookCell *)self isHidden]& 1) != 0)
  {
    goto LABEL_5;
  }

  superview = [(BKLibraryBookshelfInfoCell *)self->_infoCell superview];
  if (!superview || ([(BKLibraryBookshelfInfoCell *)self->_infoCell alpha], v13 != 1.0))
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = BKLibraryBookshelfGridBookCell;
    v14 = [(BKLibraryBookshelfGridBookCell *)&v16 hitTest:eventCopy withEvent:x, y];
    goto LABEL_6;
  }

  v14 = [(BKLibraryBookshelfInfoCell *)self->_infoCell hitTest:eventCopy withEvent:v9, v11];

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v14;
}

- (BKLibraryBookshelfGridBookCell)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = BKLibraryBookshelfGridBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    seriesSequenceLabel = v3->_seriesSequenceLabel;
    v3->_seriesSequenceLabel = v4;

    [(UILabel *)v3->_seriesSequenceLabel setNumberOfLines:1];
    [(UILabel *)v3->_seriesSequenceLabel setHidden:1];
    contentView = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [contentView addSubview:v3->_seriesSequenceLabel];

    v7 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    supplementalContentPdfTitleLabel = v3->_supplementalContentPdfTitleLabel;
    v3->_supplementalContentPdfTitleLabel = v7;

    [(UILabel *)v3->_supplementalContentPdfTitleLabel setNumberOfLines:1];
    [(UILabel *)v3->_supplementalContentPdfTitleLabel setHidden:1];
    contentView2 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [contentView2 addSubview:v3->_supplementalContentPdfTitleLabel];

    v10 = objc_alloc_init(BKLibraryBookshelfInfoCell);
    infoCell = v3->_infoCell;
    v3->_infoCell = v10;

    [(BKLibraryBookshelfInfoCell *)v3->_infoCell setDelegate:v3];
    contentView3 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [contentView3 addSubview:v3->_infoCell];

    v13 = objc_alloc_init(BKLibraryBookshelfCoverView);
    coverView = v3->_coverView;
    v3->_coverView = v13;

    contentView4 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [contentView4 addSubview:v3->_coverView];

    v16 = objc_alloc_init(UIImageView);
    selectIndicatorView = v3->_selectIndicatorView;
    v3->_selectIndicatorView = v16;

    v18 = [(BKLibraryBookshelfGridBookCell *)v3 _checkmarkImageForSelectedState:0];
    [(UIImageView *)v3->_selectIndicatorView setImage:v18];

    contentView5 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [contentView5 addSubview:v3->_selectIndicatorView];

    [(BKLibraryBookshelfCollectionViewCell *)v3 setHighlightBackgroundColor:0];
  }

  return v3;
}

- (void)dealloc
{
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE1E8];
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE1F0];
  libraryAsset = self->_libraryAsset;
  if (libraryAsset && ([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
  {
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"state" context:off_100ACE1F8];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE200];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE200];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"genre" context:off_100ACE200];
  }

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v4 dealloc];
}

- (BKDimmedCoverDownloadProgressView)progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = objc_alloc_init(BKDimmedCoverDownloadProgressView);
    v5 = self->_progressView;
    self->_progressView = v4;

    [(BKDimmedCoverDownloadProgressView *)self->_progressView setHidden:1];
    [(BKDimmedCoverDownloadProgressView *)self->_progressView setDelegate:self];
    contentView = [(BKLibraryBookshelfGridBookCell *)self contentView];
    [contentView addSubview:self->_progressView];

    progressView = self->_progressView;
  }

  return progressView;
}

- (id)coverLayer
{
  coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
  coverLayer = [coverView coverLayer];

  return coverLayer;
}

- (void)cleanupCell
{
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v4 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v4;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [coverLayer setAffineTransform:v8];

  coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  LODWORD(v6) = 1.0;
  [coverLayer2 setOpacity:v6];

  [(BKLibraryBookshelfGridBookCell *)self setLibraryAsset:0];
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [infoCell setAudiobookStatus:0];

  [(BKLibraryBookshelfGridBookCell *)self setAudiobookStatus:0];
}

- (void)prepareForReuse
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v5 prepareForReuse];
  [(BKLibraryBookshelfGridBookCell *)self cleanupCell];
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  isHidden = [coverLayer isHidden];

  if (isHidden)
  {
    [(BKLibraryBookshelfGridBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (id)cellMetrics
{
  objc_opt_class();
  metrics = [(BKLibraryBookshelfGridBookCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (id)_checkmarkImageForSelectedState:(BOOL)state
{
  stateCopy = state;
  if (_UISolariumEnabled())
  {
    v4 = +[UIColor whiteColor];
    v12[0] = v4;
    v5 = +[UIColor blackColor];
    v12[1] = v5;
    v6 = [NSArray arrayWithObjects:v12 count:2];
    v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];

    if (stateCopy)
    {
      v8 = @"checkmark.circle.platter";
    }

    else
    {
      v8 = @"circle";
    }

    v9 = [UIImage _systemImageNamed:v8 withConfiguration:v7];
  }

  else
  {
    if (stateCopy)
    {
      v10 = @"ios_library_edit_selected_checkmark";
    }

    else
    {
      v10 = @"ios_library_edit_unselected_checkmark";
    }

    v9 = [UIImage imageNamed:v10];
  }

  return v9;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(BKLibraryBookshelfGridBookCell *)self isSelected]!= selected)
  {
    v12.receiver = self;
    v12.super_class = BKLibraryBookshelfGridBookCell;
    [(BKLibraryBookshelfGridBookCell *)&v12 setSelected:selectedCopy];
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      if ([(BKLibraryBookshelfGridBookCell *)self shrinkInEditMode])
      {
        if ([(BKLibraryBookshelfGridBookCell *)self isSelected])
        {
          [(BKLibraryBookshelfGridBookCell *)self _animateGrow];
          [(BKLibraryBookshelfGridBookCell *)self _animateMakeVisible];
        }

        else
        {
          [(BKLibraryBookshelfGridBookCell *)self _animateShrink];
          [(BKLibraryBookshelfGridBookCell *)self _animateDim];
        }
      }

      v5 = _UISolariumEnabled();
      v6 = [(BKLibraryBookshelfGridBookCell *)self _checkmarkImageForSelectedState:[(BKLibraryBookshelfGridBookCell *)self isSelected]];
      selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
      selectIndicatorView2 = selectIndicatorView;
      if (v5)
      {
        v9 = +[NSSymbolReplaceContentTransition transition];
        [selectIndicatorView2 setSymbolImage:v6 withContentTransition:v9];

        if (![(BKLibraryBookshelfGridBookCell *)self isSelected])
        {
LABEL_12:

          return;
        }

        selectIndicatorView2 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
        v10 = +[NSSymbolDrawOnEffect effect];
        v11 = +[NSSymbolEffectOptions options];
        [selectIndicatorView2 addSymbolEffect:v10 options:v11 animated:1];
      }

      else
      {
        [selectIndicatorView setImage:v6];
      }

      goto LABEL_12;
    }
  }
}

- (void)_animateShrink
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F83F8;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.2];
}

- (void)_animateGrow
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F8510;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.2];
}

- (void)_animateDim
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F85D0;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.2];
}

- (void)_animateMakeVisible
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F86A8;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.2];
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
  v5 = [v3 initWithView:coverView];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)drop
{
  dropCopy = drop;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  traitCollection = [(BKLibraryBookshelfGridBookCell *)self traitCollection];
  v7 = [traitCollection traitCollectionByModifyingTraits:&stru_100A072A0];

  v8 = +[UIColor bc_booksBackground];
  v9 = [v8 resolvedColorWithTraitCollection:v7];
  [v5 setBackgroundColor:v9];

  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  boundingPath = [coverLayer boundingPath];

  if (boundingPath)
  {
    coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    boundingPath2 = [coverLayer2 boundingPath];
    v14 = [boundingPath2 copy];
    [v5 setVisiblePath:v14];
  }

  else
  {
    [(BKLibraryBookshelfGridBookCell *)self coverFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if (dropCopy)
    {
      v23 = +[BCCacheManager defaultCacheManager];
      libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      assetID = [libraryAsset assetID];
      v26 = [v23 metadataForIdentifier:assetID];

      intrinsicAspectRatio = [v26 intrinsicAspectRatio];
      v28 = intrinsicAspectRatio;
      if (intrinsicAspectRatio)
      {
        [intrinsicAspectRatio floatValue];
        if (v29 > 0.0)
        {
          [(BKLibraryBookshelfGridBookCell *)self coverContainerFrame];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          [v28 floatValue];
          CGRectFitRectInRect();
          v16 = v38;
          v40 = v39;
          v20 = v41;
          v22 = v42;
          v46.origin.x = v31;
          v46.origin.y = v33;
          v46.size.width = v35;
          v46.size.height = v37;
          Height = CGRectGetHeight(v46);
          v47.origin.x = v16;
          v47.origin.y = v40;
          v47.size.width = v20;
          v47.size.height = v22;
          v18 = Height - CGRectGetHeight(v47);
        }
      }
    }

    coverLayer2 = [UIBezierPath bezierPathWithRect:v16, v18, v20, v22];
    [v5 setVisiblePath:coverLayer2];
  }

  return v5;
}

- (double)_desiredAlphaFromRawAlpha:(double)alpha
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    alpha = 1.0;
    if (([(BKLibraryBookshelfGridBookCell *)self isSelected]& 1) == 0)
    {
      cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
      [cellMetrics dimmedAlpha];
      alpha = v6;
    }
  }

  return alpha;
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  coverEffectsEnvironment = [coverLayer coverEffectsEnvironment];

  return coverEffectsEnvironment;
}

- (void)setCoverEffectsEnvironment:(id)environment
{
  environmentCopy = environment;
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [coverLayer setCoverEffectsEnvironment:environmentCopy];
}

- (void)handleTapWithCompletion:(id)completion
{
  completionCopy = completion;
  actionHandler = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  indexPath = [(BKLibraryBookshelfGridBookCell *)self indexPath];
  [actionHandler bookTapped:indexPath completion:completionCopy];
}

- (void)setCoverHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [coverLayer setHidden:hiddenCopy];

  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  [audiobookControl setHidden:hiddenCopy];

  +[CATransaction commit];
}

- (id)coverImage
{
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  image = [coverLayer image];

  return image;
}

- (CGRect)coverFrame
{
  layer = [(BKLibraryBookshelfGridBookCell *)self layer];
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [coverLayer coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [layer convertRect:coverLayer2 fromLayer:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)coverArea
{
  [(BKLibraryBookshelfGridBookCell *)self _areaAboveInfoCell];
  v4 = v3;
  v6 = v5;
  [(BKLibraryBookshelfGridBookCell *)self _seriesSequenceLabelHeight];
  v8 = v7;
  [(BKLibraryBookshelfGridBookCell *)self _seriesSequenceLabelTopMargin];
  v10 = v6 - (v8 + v9);
  v11 = 0.0;
  v12 = 0.0;
  v13 = v4;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_areaAboveInfoCell
{
  [(BKLibraryBookshelfGridBookCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BKLibraryBookshelfGridBookCell *)self infoCellHeight];
  v12 = v11;
  [(BKLibraryBookshelfGridBookCell *)self infoCellPadding];
  v14 = v12 + v13;
  [(BKLibraryBookshelfGridBookCell *)self infoCellExpectedDateHeight];
  v16 = v10 - (v14 + v15);
  v17 = v4;
  v18 = v6;
  v19 = v8;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if (([(BKLibraryBookshelfGridBookCell *)self isHidden]& 1) != 0)
  {
    v6 = 0;
  }

  else if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v6 = 1;
  }

  else
  {
    [(BKLibraryBookshelfGridBookCell *)self coverFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [touchCopy locationInView:self];
    v18.x = v15;
    v18.y = v16;
    v19.origin.x = v8;
    v19.origin.y = v10;
    v19.size.width = v12;
    v19.size.height = v14;
    v6 = CGRectContainsPoint(v19, v18);
  }

  return v6;
}

- (double)_seriesSequenceLabelHeight
{
  if (![(BKLibraryBookshelfGridBookCell *)self hasSeriesSequenceLabel])
  {
    return 0.0;
  }

  cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [cellMetrics seriesSequenceLabelHeight];
  v5 = v4;

  return v5;
}

- (double)_seriesSequenceLabelTopMargin
{
  if (![(BKLibraryBookshelfGridBookCell *)self hasSeriesSequenceLabel])
  {
    return 0.0;
  }

  cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [cellMetrics seriesSequenceLabelTopMargin];
  v5 = v4;

  return v5;
}

- (CGRect)infoFrame
{
  v3 = 0.0;
  if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics infoBarHeight];
    v6 = v5;
    cellMetrics2 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics2 infoBarDateSpacing];
    v9 = v6 + v8;
    cellMetrics3 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics3 infoBarExpectedDateHeight];
    v3 = v9 + v11;
  }

  [(BKLibraryBookshelfGridBookCell *)self _areaAboveInfoCell];
  width = v19.size.width;
  MaxY = CGRectGetMaxY(v19);
  [(BKLibraryBookshelfGridBookCell *)self infoCellPadding];
  v15 = MaxY + v14;
  v16 = 0.0;
  v17 = width;
  v18 = v3;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (double)infoCellExpectedDateHeight
{
  v3 = 0.0;
  if (![(BKLibraryBookshelfGridBookCell *)self hideInfoBar])
  {
    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics infoBarDateSpacing];
    v6 = v5;
    cellMetrics2 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics2 infoBarExpectedDateHeight];
    v3 = v6 + v8;
  }

  return v3;
}

- (double)infoCellHeight
{
  if ([(BKLibraryBookshelfGridBookCell *)self hideInfoBar])
  {
    return 0.0;
  }

  cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [cellMetrics infoBarHeight];
  v6 = v5;

  return v6;
}

- (double)infoCellPadding
{
  v3 = 0.0;
  if (![(BKLibraryBookshelfGridBookCell *)self hideInfoBar])
  {
    seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    isHidden = [seriesSequenceLabel isHidden];

    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    v7 = cellMetrics;
    if (isHidden)
    {
      [cellMetrics infoBarSpacing];
    }

    else
    {
      [cellMetrics seriesSequenceLabelBottomMargin];
    }

    v3 = v8;
  }

  return v3;
}

- (void)_layoutCoverView
{
  [(BKLibraryBookshelfGridBookCell *)self coverArea];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v12 = coverLayer;
  if (coverLayer)
  {
    [coverLayer affineTransform];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  coverLayer2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v14 = *&CGAffineTransformIdentity.c;
  v20 = *&CGAffineTransformIdentity.a;
  v21 = v14;
  v22 = *&CGAffineTransformIdentity.tx;
  [coverLayer2 setAffineTransform:&v20];

  coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
  [coverView setFrame:{v4, v6, v8, v10}];

  v17 = v23;
  v18 = v24;
  v19 = v25;
  coverLayer3 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v20 = v17;
  v21 = v18;
  v22 = v19;
  [coverLayer3 setAffineTransform:&v20];
}

- (CGRect)supplementalContentPDFTitleFrame
{
  [(BKLibraryBookshelfGridBookCell *)self coverArea];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  supplementalContentPdfTitleLabel = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  [supplementalContentPdfTitleLabel sizeThatFits:{CGRectGetWidth(v23), 3.40282347e38}];
  v13 = v12;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Width = CGRectGetWidth(v24);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  Height = CGRectGetHeight(v25);
  cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [cellMetrics smallTitleTopMargin];
  v18 = Height + v17;

  v19 = v4;
  v20 = v18;
  v21 = Width;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)layoutSubviews
{
  v69.receiver = self;
  v69.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v69 layoutSubviews];
  wantsAnimatedLayoutChange = [(BKLibraryBookshelfGridBookCell *)self wantsAnimatedLayoutChange];
  +[CATransaction begin];
  if (wantsAnimatedLayoutChange)
  {
    +[UIView inheritedAnimationDuration];
    [CATransaction setAnimationDuration:?];
    v4 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setAnimationTimingFunction:v4];

    [(BKLibraryBookshelfGridBookCell *)self _layoutCoverView];
    +[CATransaction commit];
    [(BKLibraryBookshelfGridBookCell *)self infoFrame];
    x = v70.origin.x;
    y = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
    if (!CGRectIsEmpty(v70))
    {
      infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      [infoCell setFrame:{x, y, width, height}];
    }
  }

  else
  {
    [CATransaction setDisableActions:1];
    [(BKLibraryBookshelfGridBookCell *)self _layoutCoverView];
    +[CATransaction commit];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000F9854;
    v68[3] = &unk_100A033C8;
    v68[4] = self;
    [UIView performWithoutAnimation:v68];
  }

  [(BKLibraryBookshelfGridBookCell *)self coverArea];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  isHidden = [seriesSequenceLabel isHidden];

  if ((isHidden & 1) == 0)
  {
    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    seriesSequenceLabelFontAttributes = [cellMetrics seriesSequenceLabelFontAttributes];
    font = [seriesSequenceLabelFontAttributes font];

    v71.origin.x = v11;
    v71.origin.y = v13;
    v71.size.width = v15;
    v71.size.height = v17;
    MaxY = CGRectGetMaxY(v71);
    cellMetrics2 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics2 seriesSequenceLabelTopMargin];
    v26 = MaxY + v25;
    cellMetrics3 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics3 seriesSequenceLabelHeight];
    v29 = v26 + v28;
    [font descender];
    v31 = v29 - v30;

    seriesSequenceLabel2 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    v72.origin.x = v11;
    v72.origin.y = v13;
    v72.size.width = v15;
    v72.size.height = v17;
    [seriesSequenceLabel2 sizeThatFits:{CGRectGetWidth(v72), 3.40282347e38}];
    v34 = v33;

    v73.origin.x = v11;
    v73.origin.y = v13;
    v73.size.width = v15;
    v73.size.height = v17;
    v35 = CGRectGetWidth(v73);
    v74.origin.x = v11;
    v74.origin.y = v13;
    v74.size.width = v35;
    v74.size.height = v34;
    v36 = v31 - CGRectGetHeight(v74);
    seriesSequenceLabel3 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [seriesSequenceLabel3 setFrame:{v11, v36, v35, v34}];
  }

  supplementalContentPdfTitleLabel = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
  isHidden2 = [supplementalContentPdfTitleLabel isHidden];

  if ((isHidden2 & 1) == 0)
  {
    progressView = [(BKLibraryBookshelfGridBookCell *)self progressView];
    [progressView setFrame:{v11, v13, v15, v17}];

    [(BKLibraryBookshelfGridBookCell *)self supplementalContentPDFTitleFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    supplementalContentPdfTitleLabel2 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [supplementalContentPdfTitleLabel2 setFrame:{v42, v44, v46, v48}];
  }

  v50 = *&qword_100AF7600;
  if (*&qword_100AF7600 == 0.0)
  {
    v51 = [UIImage imageNamed:@"ios_library_edit_selected_checkmark"];
    [v51 size];
    qword_100AF75F8 = v52;
    qword_100AF7600 = v53;

    v50 = *&qword_100AF7600;
  }

  v54 = *&qword_100AF75F8;
  v75.origin.x = v11;
  v75.origin.y = v13;
  v75.size.width = v15;
  v75.size.height = v17;
  v55 = CGRectGetMaxX(v75) - v54 + -8.0;
  v76.origin.x = v11;
  v76.origin.y = v13;
  v76.size.width = v15;
  v76.size.height = v17;
  v56 = CGRectGetMaxY(v76) - v50 + -8.0;
  selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [selectIndicatorView setFrame:{v55, v56, v54, v50}];

  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (audiobookControl)
  {
    cellMetrics4 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics4 audiobookControlMargin];
    v61 = v60;

    [audiobookControl frame];
    v63 = v62;
    v65 = v64;
    v66 = v11 + v61;
    v67 = v13 + v17 - v64 - v61;
    [audiobookControl frame];
    v78.origin.x = v66;
    v78.origin.y = v67;
    v78.size.width = v63;
    v78.size.height = v65;
    if (!CGRectEqualToRect(v77, v78))
    {
      [(BKLibraryBookshelfGridBookCell *)self effectiveUserInterfaceLayoutDirection];
      IMRectFlippedForRTL();
      [audiobookControl setFrame:?];
    }
  }

  [(BKLibraryBookshelfGridBookCell *)self setWantsAnimatedLayoutChange:0];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  v5 = BUDynamicCast();
  isInEditMode = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  v7 = isInEditMode ^ [v5 editMode];
  v53.receiver = self;
  v53.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v53 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];
  [(BKLibraryBookshelfGridBookCell *)self setIndexPath:indexPath];

  v9 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfGridBookCell setIsRTL:](self, "setIsRTL:", [v9 userInterfaceLayoutDirection] == 1);

  layoutDebugMode = [v5 layoutDebugMode];
  if ([(BKLibraryBookshelfGridBookCell *)self layoutDebugMode]!= layoutDebugMode)
  {
    [(BKLibraryBookshelfGridBookCell *)self setLayoutDebugMode:layoutDebugMode];
    if ([v5 layoutDebugMode])
    {
      v11 = +[UIColor redColor];
      v12 = [v11 colorWithAlphaComponent:0.2];
      cGColor = [v12 CGColor];
      layer = [(BKLibraryBookshelfGridBookCell *)self layer];
      [layer setBorderColor:cGColor];

      layer2 = [(BKLibraryBookshelfGridBookCell *)self layer];
      v16 = 0.5;
      [layer2 setBorderWidth:0.5];

      v17 = +[UIColor redColor];
      v18 = [v17 colorWithAlphaComponent:0.2];
      cGColor2 = [v18 CGColor];
      seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      layer3 = [seriesSequenceLabel layer];
      [layer3 setBorderColor:cGColor2];

      seriesSequenceLabel2 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      layer4 = [seriesSequenceLabel2 layer];
      [layer4 setBorderWidth:0.5];

      seriesSequenceLabel3 = +[UIColor redColor];
      layer7 = [seriesSequenceLabel3 colorWithAlphaComponent:0.2];
      cGColor3 = [layer7 CGColor];
      infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      layer5 = [infoCell layer];
      [layer5 setBorderColor:cGColor3];
    }

    else
    {
      layer6 = [(BKLibraryBookshelfGridBookCell *)self layer];
      v16 = 0.0;
      [layer6 setBorderWidth:0.0];

      seriesSequenceLabel3 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      layer7 = [seriesSequenceLabel3 layer];
      [layer7 setBorderWidth:0.0];
    }

    infoCell2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    layer8 = [infoCell2 layer];
    [layer8 setBorderWidth:v16];
  }

  if (v7)
  {
    v32 = 1;
  }

  else
  {
    metrics = [(BKLibraryBookshelfGridBookCell *)self metrics];
    cellMetrics = [v5 cellMetrics];
    if (metrics == cellMetrics)
    {
      columnMetrics = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
      columnMetrics2 = [v5 columnMetrics];
      v32 = columnMetrics != columnMetrics2;
    }

    else
    {
      v32 = 1;
    }
  }

  [(BKLibraryBookshelfGridBookCell *)self setWantsAnimatedLayoutChange:v7];
  -[BKLibraryBookshelfGridBookCell setHideInfoBar:](self, "setHideInfoBar:", [v5 editMode]);
  cellMetrics2 = [v5 cellMetrics];
  [(BKLibraryBookshelfGridBookCell *)self setMetrics:cellMetrics2];

  columnMetrics3 = [v5 columnMetrics];
  [(BKLibraryBookshelfGridBookCell *)self setColumnMetrics:columnMetrics3];

  cellMetrics3 = [v5 cellMetrics];
  infoCell3 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [infoCell3 setMetrics:cellMetrics3];

  -[BKLibraryBookshelfGridBookCell setHideSelectIndicator:](self, "setHideSelectIndicator:", [v5 editMode] ^ 1);
  [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
  [attributesCopy alpha];
  [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:?];
  hideInfoBar = [(BKLibraryBookshelfGridBookCell *)self hideInfoBar];
  v42 = 1.0;
  if (hideInfoBar)
  {
    v42 = 0.0;
  }

  [(BKLibraryBookshelfInfoCell *)self->_infoCell setAlpha:v42];
  seriesSequenceLabel4 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  isHidden = [seriesSequenceLabel4 isHidden];

  if ((isHidden & 1) == 0)
  {
    [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabelText];
  }

  [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
  v45 = [(BKLibraryBookshelfGridBookCell *)self _checkmarkImageForSelectedState:[(BKLibraryBookshelfGridBookCell *)self isSelected]];
  selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [selectIndicatorView setImage:v45];

  if (v32)
  {
    libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

    if (libraryAsset)
    {
      [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
      coverView = [(BKLibraryBookshelfGridBookCell *)self coverView];
      coverLayer = [coverView coverLayer];
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfGridBookCell *)self coverArea];
      [coverLayer setLibraryAsset:libraryAsset size:{v51, v52}];
    }
  }
}

- (BOOL)needsAsset
{
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  if ([libraryAsset isStoreItem])
  {
    isSeriesItem = 1;
  }

  else
  {
    libraryAsset2 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    isSeriesItem = [libraryAsset2 isSeriesItem];
  }

  return isSeriesItem;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [infoCell setAsset:assetCopy];
}

- (BFMAsset)asset
{
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  asset = [infoCell asset];

  return asset;
}

- (void)assetStateChanged
{
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    hideSelectIndicator = [(BKLibraryBookshelfGridBookCell *)self hideSelectIndicator];
    if (hideSelectIndicator)
    {
      v5 = 0.0;
    }

    else
    {
      libraryAsset2 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      v5 = [libraryAsset2 state] == 2 ? 0.0 : 1.0;
    }

    selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
    [selectIndicatorView setAlpha:v5];

    if ((hideSelectIndicator & 1) == 0)
    {
    }
  }
}

- (BOOL)showSeriesSequenceLabel
{
  dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  seriesID = [dataSource seriesID];
  if (seriesID)
  {
    libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    sequenceDisplayName = [libraryAsset sequenceDisplayName];
    v7 = sequenceDisplayName != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateSeriesSequenceLabelText
{
  cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  seriesSequenceLabelFontAttributes = [cellMetrics seriesSequenceLabelFontAttributes];
  v9 = [seriesSequenceLabelFontAttributes attributesWithTruncated:1];

  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  sequenceDisplayName = [libraryAsset sequenceDisplayName];
  v7 = [TUIFontSpec attributedStringWith:sequenceDisplayName attributes:v9];
  seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  [seriesSequenceLabel setAttributedText:v7];

  [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
}

- (void)_updateSupplementalContentPDFTitleLabelText
{
  dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  if ([dataSource supplementalContentPDFPicker])
  {
    dataSource2 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    viewMode = [dataSource2 viewMode];

    if (viewMode != 1)
    {
      return;
    }

    supplementalContentPdfTitleLabel = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [supplementalContentPdfTitleLabel setHidden:0];

    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    smallTitleFontAttributes = [cellMetrics smallTitleFontAttributes];
    dataSource = [smallTitleFontAttributes attributesWithCentered:1 truncated:1];

    libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    title = [libraryAsset title];
    v10 = [TUIFontSpec attributedStringWith:title attributes:dataSource];
    supplementalContentPdfTitleLabel2 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [supplementalContentPdfTitleLabel2 setAttributedText:v10];

    cellMetrics2 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    numOfLinesSmallTitle = [cellMetrics2 numOfLinesSmallTitle];
    supplementalContentPdfTitleLabel3 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [supplementalContentPdfTitleLabel3 setNumberOfLines:numOfLinesSmallTitle];

    [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
  }
}

- (void)_updateSeriesSequenceLabel:(BOOL)label
{
  labelCopy = label;
  seriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  isHidden = [seriesSequenceLabel isHidden];

  showSeriesSequenceLabel = [(BKLibraryBookshelfGridBookCell *)self showSeriesSequenceLabel];
  if (isHidden == showSeriesSequenceLabel)
  {
    seriesSequenceLabel2 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [seriesSequenceLabel2 setHidden:showSeriesSequenceLabel ^ 1];

    if (showSeriesSequenceLabel)
    {
      labelCopy = 1;
    }

    else
    {
      seriesSequenceLabel3 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      [seriesSequenceLabel3 setAttributedText:0];
    }

    [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
  }

  if ((showSeriesSequenceLabel & labelCopy) == 1)
  {

    [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabelText];
  }
}

- (void)setLibraryAsset:(id)asset
{
  assetCopy = asset;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != assetCopy)
  {
    v16 = assetCopy;
    if (([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"state" context:off_100ACE1F8];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE200];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE200];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"genre" context:off_100ACE200];
    }

    objc_storeStrong(&self->_libraryAsset, asset);
    libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    dataSource = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    supplementalContentPDFPicker = [dataSource supplementalContentPDFPicker];

    if (supplementalContentPDFPicker)
    {
      [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
      progressView = [(BKLibraryBookshelfGridBookCell *)self progressView];
      [progressView setHidden:0];

      progressView2 = [(BKLibraryBookshelfGridBookCell *)self progressView];
      [progressView2 setAsset:libraryAsset];
    }

    infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [infoCell setLibraryAsset:libraryAsset];

    coverLayer = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    [(BKLibraryBookshelfGridBookCell *)self coverArea];
    [coverLayer setLibraryAsset:libraryAsset size:{v14, v15}];

    if (libraryAsset)
    {
      if (([libraryAsset isOwned] & 1) == 0)
      {
        [(BKLibraryBookshelfGridBookCell *)self updateLibraryAssetPrice];
      }

      [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:1];
      if (([libraryAsset isContainer] & 1) == 0)
      {
        [libraryAsset addObserver:self forKeyPath:@"state" options:0 context:off_100ACE1F8];
        [libraryAsset addObserver:self forKeyPath:@"title" options:0 context:off_100ACE200];
        [libraryAsset addObserver:self forKeyPath:@"author" options:0 context:off_100ACE200];
        [libraryAsset addObserver:self forKeyPath:@"genre" options:0 context:off_100ACE200];
      }

      [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
      [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
    }

    else
    {
      [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:1];
      [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
    }

    assetCopy = v16;
  }
}

- (void)updateLibraryAssetPrice
{
  v3 = +[BKLibraryManager defaultManager];
  priceManager = [v3 priceManager];

  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  storeID = [libraryAsset storeID];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FA748;
  v8[3] = &unk_100A072C8;
  v9 = storeID;
  selfCopy = self;
  v7 = storeID;
  [priceManager fetchPriceForAssetID:v7 completion:v8];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  objc_storeWeak(&self->_dataSource, sourceCopy);
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [infoCell setDataSource:sourceCopy];

  v6 = [(BKLibraryBookshelfGridBookCell *)self _checkmarkImageForSelectedState:[(BKLibraryBookshelfGridBookCell *)self isSelected]];
  selectIndicatorView = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [selectIndicatorView setImage:v6];

  [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:0];
  LODWORD(v6) = [sourceCopy supplementalContentPDFPicker];

  if (v6)
  {
    infoCell2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [infoCell2 setHidden:1];

    [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
  }

  [(BKLibraryBookshelfGridBookCell *)self layoutIfNeeded];
}

- (void)setAudiobookStatus:(id)status
{
  statusCopy = status;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != statusCopy)
  {
    v10 = statusCopy;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE1E8];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE1F0];
    }

    objc_storeStrong(&self->_audiobookStatus, status);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACE1E8];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACE1F0];
    }

    infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [infoCell setAudiobookStatus:v10];

    cellMetrics = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [cellMetrics audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v10 diameter:?];

    statusCopy = v10;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if (off_100ACE1F8 == context)
  {
    v13 = v23;
    v14 = &v24;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v15 = sub_1000FACE0;
LABEL_10:
    v13[2] = v15;
    v13[3] = &unk_100A035D0;
    objc_copyWeak(v14, &location);
    dispatch_async(&_dispatch_main_q, v13);
    objc_destroyWeak(v14);
    goto LABEL_11;
  }

  if (off_100ACE1E8 == context)
  {
    v14 = &v22;
    v13 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v15 = sub_1000FAD20;
    goto LABEL_10;
  }

  if (off_100ACE1F0 == context)
  {
    v14 = &v20;
    v13 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v15 = sub_1000FADB0;
    goto LABEL_10;
  }

  if (off_100ACE200 == context)
  {
    v14 = &v18;
    v13 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v15 = sub_1000FAE48;
    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfGridBookCell *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_11:
  objc_destroyWeak(&location);
}

- (void)didTapStopDownloadButtonWithAsset:(id)asset
{
  actionHandler = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [actionHandler bookCancelDownload:libraryAsset];
}

- (id)trackerForLibraryBookshelfInfoCell:(id)cell
{
  actionHandler = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  tracker = [actionHandler tracker];

  return tracker;
}

- (id)libraryBookshelfInfoCell:(id)cell analyticsAssetPropertyProviderForLibraryAsset:(id)asset fromSourceView:(id)view inCollection:(id)collection
{
  collectionCopy = collection;
  viewCopy = view;
  assetCopy = asset;
  actionHandler = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v13 = [actionHandler analyticsAssetPropertyProviderForLibraryAsset:assetCopy fromSourceView:viewCopy inCollection:collectionCopy];

  return v13;
}

- (id)libraryBookshelfInfoCell:(id)cell menuWithLibraryAsset:(id)asset sourceView:(id)view collection:(id)collection
{
  collectionCopy = collection;
  viewCopy = view;
  assetCopy = asset;
  actionHandler = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v13 = [actionHandler menuWithLibraryAsset:assetCopy sourceView:viewCopy collection:collectionCopy];

  return v13;
}

- (void)libraryBookshelfInfoCellDidSelectCancelDownload:(id)download sourceView:(id)view
{
  v6 = [(BKLibraryBookshelfGridBookCell *)self actionHandler:download];
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v6 bookCancelDownload:libraryAsset];
}

- (void)libraryBookshelfInfoCellDidSelectResumeDownload:(id)download sourceView:(id)view
{
  v6 = [(BKLibraryBookshelfGridBookCell *)self actionHandler:download];
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v6 bookResumeDownload:libraryAsset];
}

- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler
{
  v4 = [(BKLibraryBookshelfGridBookCell *)self infoCell:asset];
  [v4 setupMenu];
}

- (void)togglePlayPause:(id)pause
{
  audiobookStatus = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
  [audiobookStatus assetAudiobookStatusTogglePlayPause];
}

- (id)accessibilityLabel
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  formattedPrice = [(BKLibraryBookshelfGridBookCell *)self formattedPrice];
  if ([libraryAsset isDownloading])
  {
    v8 = formattedPrice;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Downloading" value:&stru_100A30A68 table:0];
    [v3 addObject:v10];

    v11 = +[BKLibraryAssetStatusController sharedController];
    permanentOrTemporaryAssetID = [libraryAsset permanentOrTemporaryAssetID];
    sequenceDisplayName = [v11 statusForAssetID:permanentOrTemporaryAssetID];

    if ([sequenceDisplayName state] == 4 && objc_msgSend(sequenceDisplayName, "timeRemaining") >= 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"%@ remaining" value:&stru_100A30A68 table:0];

      v16 = +[BKLibraryBookshelfGridBookCell bkaxDownloadAndAudiobookProgressFormatter];
      v17 = [v16 stringFromTimeInterval:{objc_msgSend(sequenceDisplayName, "timeRemaining")}];
      v18 = [NSString localizedStringWithFormat:v15, v17];
      [v3 addObject:v18];
    }

    isNew = 0;
    formattedPrice = v8;
    goto LABEL_64;
  }

  if ([libraryAsset isAudiobook])
  {
    assetID = [libraryAsset assetID];
    if (assetID && [libraryAsset isOwned])
    {
      isNew = [libraryAsset isNew];
    }

    else
    {
      isNew = 0;
    }

    goto LABEL_15;
  }

  if ([libraryAsset isOwned] && objc_msgSend(libraryAsset, "isNew"))
  {
    assetID = [libraryAsset readingProgress];
    isNew = assetID == 0;
LABEL_15:

    goto LABEL_16;
  }

  isNew = 0;
LABEL_16:
  if (([libraryAsset isSample] & 1) != 0 || (objc_msgSend(libraryAsset, "isOwned") & 1) == 0 && objc_msgSend(libraryAsset, "isInSamples"))
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Sample" value:&stru_100A30A68 table:0];
    [v3 addObject:v21];

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  asset = [(BKLibraryBookshelfGridBookCell *)self asset];
  isPreorder = [asset isPreorder];

  if (isPreorder)
  {
    if ([libraryAsset isPreorderBook])
    {
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Preordered" value:&stru_100A30A68 table:0];
    }

    else
    {
      if (!formattedPrice)
      {
LABEL_30:
        asset2 = [(BKLibraryBookshelfGridBookCell *)self asset];
        expectedReleaseDate = [asset2 expectedReleaseDate];

        if (!expectedReleaseDate)
        {
          goto LABEL_41;
        }

        v88 = v4;
        v31 = +[NSBundle mainBundle];
        v86 = [v31 localizedStringForKey:@"Expected %@" value:&stru_100A30A68 table:0];

        v32 = objc_alloc_init(NSDateFormatter);
        [v32 setDateStyle:3];
        v33 = [NSTimeZone timeZoneForSecondsFromGMT:0];
        [v32 setTimeZone:v33];

        asset3 = [(BKLibraryBookshelfGridBookCell *)self asset];
        [asset3 expectedReleaseDate];
        v87 = v5;
        v36 = v35 = formattedPrice;
        v37 = [v32 stringFromDate:v36];
        v38 = [NSString stringWithFormat:v86, v37];
        [v3 addObject:v38];

        price = v86;
        formattedPrice = v35;
        v5 = v87;
        goto LABEL_39;
      }

      v27 = +[NSBundle mainBundle];
      v25 = [v27 localizedStringForKey:@"Preorder for %@" value:&stru_100A30A68 table:0];

      v26 = [NSString stringWithFormat:v25, formattedPrice];
    }

    v28 = v26;
    [v3 addObject:v26];

    goto LABEL_30;
  }

  if (([libraryAsset isStoreItem] & 1) == 0)
  {
    if ((v22 & [libraryAsset isSeriesItem] & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (v22)
  {
LABEL_33:
    asset4 = [(BKLibraryBookshelfGridBookCell *)self asset];
    price = [asset4 price];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), BUDynamicCast(), v41 = objc_claimAutoreleasedReturnValue(), [v41 floatValue], v43 = v42, v41, v43 == 0.0))
    {
      v88 = v4;
      v32 = +[NSBundle mainBundle];
      v44 = [v32 localizedStringForKey:@"Free download" value:&stru_100A30A68 table:0];
    }

    else
    {
      if (!formattedPrice)
      {
LABEL_40:

        goto LABEL_41;
      }

      v88 = v4;
      v45 = +[NSBundle mainBundle];
      v32 = [v45 localizedStringForKey:@"Buy for %@" value:&stru_100A30A68 table:0];

      v44 = [NSString stringWithFormat:v32, formattedPrice];
    }

    asset3 = v44;
    [v3 addObject:v44];
LABEL_39:

    v4 = v88;
    goto LABEL_40;
  }

LABEL_41:
  if ([libraryAsset isFinished])
  {
    isAudiobook = [libraryAsset isAudiobook];
    v47 = +[NSBundle mainBundle];
    v48 = v47;
    if (isAudiobook)
    {
      v49 = @"Finished";
    }

    else
    {
      v49 = @"Finished book";
    }

    bkaxAudiobookReadPercentage = [v47 localizedStringForKey:v49 value:&stru_100A30A68 table:0];
    [v4 addObject:bkaxAudiobookReadPercentage];
    goto LABEL_52;
  }

  if ([libraryAsset isOwned])
  {
    v50 = +[NSBundle mainBundle];
    v48 = [v50 localizedStringForKey:@"%@ finished" value:&stru_100A30A68 table:0];

    if ([libraryAsset isAudiobook])
    {
      infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      bkaxAudiobookReadPercentage = [infoCell bkaxAudiobookReadPercentage];

      if (!bkaxAudiobookReadPercentage)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bkaxAudiobookReadPercentage = [libraryAsset readingProgress];
      if (!bkaxAudiobookReadPercentage)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    v53 = +[NSString bc_formattedReadingProgress:isFinished:](NSString, "bc_formattedReadingProgress:isFinished:", bkaxAudiobookReadPercentage, [libraryAsset isFinished]);
    v54 = [NSString stringWithFormat:v48, v53];
    [v4 addObject:v54];

    goto LABEL_52;
  }

LABEL_53:
  if ([libraryAsset isOwned] && objc_msgSend(libraryAsset, "isCloud"))
  {
    v55 = +[NSBundle mainBundle];
    v56 = [v55 localizedStringForKey:@"In iCloud" value:&stru_100A30A68 table:0];
    [v4 addObject:v56];
  }

  if ([libraryAsset isAudiobook])
  {
    infoCell2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    showsPlaybackProgress = [infoCell2 showsPlaybackProgress];

    if (showsPlaybackProgress)
    {
      audiobookStatus = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
      assetAudiobookStatusIsPlaying = [audiobookStatus assetAudiobookStatusIsPlaying];

      v61 = +[NSBundle mainBundle];
      v62 = v61;
      if (assetAudiobookStatusIsPlaying)
      {
        v63 = @"Playing";
      }

      else
      {
        v63 = @"Paused";
      }

      [v61 localizedStringForKey:v63 value:&stru_100A30A68 table:0];
      v64 = v89 = formattedPrice;
      [v4 addObject:v64];

      v65 = +[NSBundle mainBundle];
      v66 = [v65 localizedStringForKey:@"%@ remaining in chapter" value:&stru_100A30A68 table:0];

      v67 = +[BKLibraryBookshelfGridBookCell bkaxDownloadAndAudiobookProgressFormatter];
      audiobookStatus2 = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
      [audiobookStatus2 assetAudiobookStatusTrackTimeRemaining];
      v69 = [v67 stringFromTimeInterval:?];
      v70 = [NSString localizedStringWithFormat:v66, v69];
      [v4 addObject:v70];

      formattedPrice = v89;
    }
  }

  if ([(BKLibraryBookshelfGridBookCell *)self showSeriesSequenceLabel])
  {
    sequenceDisplayName = [libraryAsset sequenceDisplayName];
    [v5 addObject:sequenceDisplayName];
LABEL_64:
  }

  title = [libraryAsset title];
  v72 = [title length];

  if (v72)
  {
    title2 = [libraryAsset title];
    [v5 addObject:title2];
  }

  displayAuthor = [libraryAsset displayAuthor];
  v75 = [displayAuthor length];

  if (v75)
  {
    displayAuthor2 = [libraryAsset displayAuthor];
    [v5 addObject:displayAuthor2];
  }

  if (([libraryAsset isContainer] & 1) == 0 && objc_msgSend(libraryAsset, "isAudiobook"))
  {
    v77 = +[NSBundle mainBundle];
    v78 = [v77 localizedStringForKey:@"Audiobook" value:&stru_100A30A68 table:0];
    [v4 addObject:v78];
  }

  if ([libraryAsset isContainer])
  {
    v79 = +[NSBundle mainBundle];
    v80 = [v79 localizedStringForKey:@"Series" value:&stru_100A30A68 table:0];
    [v4 addObject:v80];
  }

  if (isNew)
  {
    v81 = +[NSBundle mainBundle];
    v82 = [v81 localizedStringForKey:@"New" value:&stru_100A30A68 table:0];
    [v3 insertObject:v82 atIndex:0];
  }

  v83 = objc_opt_new();
  [v83 addObjectsFromArray:v3];
  [v83 addObjectsFromArray:v5];
  [v83 addObjectsFromArray:v4];
  v84 = [v83 componentsJoinedByString:{@", "}];

  return v84;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  title = [libraryAsset title];

  if ([title length])
  {
    [v3 addObject:title];
  }

  accessibilityLabel = [(BKLibraryBookshelfGridBookCell *)self accessibilityLabel];
  if ([accessibilityLabel length])
  {
    [v3 addObject:accessibilityLabel];
  }

  return v3;
}

- (id)accessibilityHint
{
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  isDownloading = [libraryAsset isDownloading];

  if (isDownloading)
  {
    accessibilityHint = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKLibraryBookshelfGridBookCell;
    accessibilityHint = [(BKLibraryBookshelfGridBookCell *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfGridBookCell;
  accessibilityTraits = [(BKLibraryBookshelfGridBookCell *)&v8 accessibilityTraits];
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  isDownloading = [libraryAsset isDownloading];

  v6 = UIAccessibilityTraitButton;
  if (isDownloading)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits | UIAccessibilityTraitUpdatesFrequently;
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  if ([infoCell _accessibilityViewIsVisible])
  {
    infoCell2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    moreButton = [infoCell2 moreButton];
    _accessibilityViewIsVisible = [moreButton _accessibilityViewIsVisible];

    if (!_accessibilityViewIsVisible)
    {
      goto LABEL_5;
    }

    v8 = [UIAccessibilityCustomAction alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Show Actions Popover" value:&stru_100A30A68 table:0];
    infoCell = [v8 initWithName:v10 target:self selector:"_accessibilityDidTriggerShowMenuAction"];

    [v3 addObject:infoCell];
  }

LABEL_5:
  libraryAsset = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  if ([libraryAsset isAudiobook])
  {
    infoCell3 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    showsPlaybackProgress = [infoCell3 showsPlaybackProgress];

    if (!showsPlaybackProgress)
    {
      goto LABEL_15;
    }

    audiobookStatus = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
    assetAudiobookStatusIsPlaying = [audiobookStatus assetAudiobookStatusIsPlaying];

    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (assetAudiobookStatusIsPlaying)
    {
      v18 = @"Pause";
    }

    else
    {
      v18 = @"Play";
    }

    if (assetAudiobookStatusIsPlaying)
    {
      v19 = @"pause.fill";
    }

    else
    {
      v19 = @"play.fill";
    }

    libraryAsset = [v16 localizedStringForKey:v18 value:&stru_100A30A68 table:0];

    v20 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v21 = [UIImage systemImageNamed:v19 withConfiguration:v20];

    v22 = [[UIAccessibilityCustomAction alloc] initWithName:libraryAsset image:v21 target:self selector:"_accessibilityDidTriggerPlayPauseAction"];
    [v3 addObject:v22];
  }

LABEL_15:
  v23 = [v3 copy];

  return v23;
}

- (BOOL)_accessibilityDidTriggerShowMenuAction
{
  infoCell = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  moreButton = [infoCell moreButton];
  [moreButton sendActionsForControlEvents:64];

  return 1;
}

- (BOOL)accessibilityActivate
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    delegate = [(BKLibraryBookshelfCollectionViewCell *)self delegate];
    v4 = [delegate indexPathForCell:self];

    if (v4)
    {
      isSelected = [(BKLibraryBookshelfGridBookCell *)self isSelected];
      delegate2 = [(BKLibraryBookshelfCollectionViewCell *)self delegate];
      v7 = delegate2;
      if (isSelected)
      {
        [delegate2 selectItemAtIndexPath:v4 animated:1 scrollPosition:0];
      }

      else
      {
        [delegate2 deselectItemAtIndexPath:v4 animated:1];
      }
    }

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BKLibraryBookshelfGridBookCell;
    return [(BKLibraryBookshelfGridBookCell *)&v9 accessibilityActivate];
  }
}

+ (NSDateComponentsFormatter)bkaxDownloadAndAudiobookProgressFormatter
{
  v2 = qword_100AF7608;
  if (!qword_100AF7608)
  {
    v3 = objc_alloc_init(NSDateComponentsFormatter);
    [v3 setZeroFormattingBehavior:14];
    [v3 setAllowedUnits:224];
    [v3 setUnitsStyle:4];
    v4 = qword_100AF7608;
    qword_100AF7608 = v3;

    v2 = qword_100AF7608;
  }

  return v2;
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryBookshelfStorageProvider)storageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storageProvider);

  return WeakRetained;
}

- (BKLibraryBookshelfLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

- (BKLibraryActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end