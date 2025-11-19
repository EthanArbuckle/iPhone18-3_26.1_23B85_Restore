@interface BKLibraryBookshelfGridBookCell
+ (NSDateComponentsFormatter)bkaxDownloadAndAudiobookProgressFormatter;
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BFMAsset)asset;
- (BKDimmedCoverDownloadProgressView)progressView;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfGridBookCell)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)_accessibilityDidTriggerShowMenuAction;
- (BOOL)accessibilityActivate;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)needsAsset;
- (BOOL)showSeriesSequenceLabel;
- (CGRect)_areaAboveInfoCell;
- (CGRect)coverArea;
- (CGRect)coverFrame;
- (CGRect)infoFrame;
- (CGRect)supplementalContentPDFTitleFrame;
- (double)_desiredAlphaFromRawAlpha:(double)a3;
- (double)_seriesSequenceLabelHeight;
- (double)_seriesSequenceLabelTopMargin;
- (double)infoCellExpectedDateHeight;
- (double)infoCellHeight;
- (double)infoCellPadding;
- (id)_checkmarkImageForSelectedState:(BOOL)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)cellMetrics;
- (id)coverImage;
- (id)coverLayer;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)libraryBookshelfInfoCell:(id)a3 analyticsAssetPropertyProviderForLibraryAsset:(id)a4 fromSourceView:(id)a5 inCollection:(id)a6;
- (id)libraryBookshelfInfoCell:(id)a3 menuWithLibraryAsset:(id)a4 sourceView:(id)a5 collection:(id)a6;
- (id)trackerForLibraryBookshelfInfoCell:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_animateDim;
- (void)_animateGrow;
- (void)_animateMakeVisible;
- (void)_animateShrink;
- (void)_layoutCoverView;
- (void)_updateSeriesSequenceLabel:(BOOL)a3;
- (void)_updateSeriesSequenceLabelText;
- (void)_updateSupplementalContentPDFTitleLabelText;
- (void)applyLayoutAttributes:(id)a3;
- (void)assetStateChanged;
- (void)cleanupCell;
- (void)dealloc;
- (void)didTapStopDownloadButtonWithAsset:(id)a3;
- (void)handleTapWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)libraryBookshelfInfoCellDidSelectCancelDownload:(id)a3 sourceView:(id)a4;
- (void)libraryBookshelfInfoCellDidSelectResumeDownload:(id)a3 sourceView:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)setAsset:(id)a3;
- (void)setAudiobookStatus:(id)a3;
- (void)setCoverEffectsEnvironment:(id)a3;
- (void)setCoverHidden:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setLibraryAsset:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4;
- (void)togglePlayPause:(id)a3;
- (void)updateLibraryAssetPrice;
@end

@implementation BKLibraryBookshelfGridBookCell

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(BKLibraryBookshelfInfoCell *)self->_infoCell convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  if (([(BKLibraryBookshelfGridBookCell *)self isHidden]& 1) != 0)
  {
    goto LABEL_5;
  }

  v12 = [(BKLibraryBookshelfInfoCell *)self->_infoCell superview];
  if (!v12 || ([(BKLibraryBookshelfInfoCell *)self->_infoCell alpha], v13 != 1.0))
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = BKLibraryBookshelfGridBookCell;
    v14 = [(BKLibraryBookshelfGridBookCell *)&v16 hitTest:v7 withEvent:x, y];
    goto LABEL_6;
  }

  v14 = [(BKLibraryBookshelfInfoCell *)self->_infoCell hitTest:v7 withEvent:v9, v11];

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v14;
}

- (BKLibraryBookshelfGridBookCell)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = BKLibraryBookshelfGridBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    seriesSequenceLabel = v3->_seriesSequenceLabel;
    v3->_seriesSequenceLabel = v4;

    [(UILabel *)v3->_seriesSequenceLabel setNumberOfLines:1];
    [(UILabel *)v3->_seriesSequenceLabel setHidden:1];
    v6 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [v6 addSubview:v3->_seriesSequenceLabel];

    v7 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    supplementalContentPdfTitleLabel = v3->_supplementalContentPdfTitleLabel;
    v3->_supplementalContentPdfTitleLabel = v7;

    [(UILabel *)v3->_supplementalContentPdfTitleLabel setNumberOfLines:1];
    [(UILabel *)v3->_supplementalContentPdfTitleLabel setHidden:1];
    v9 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [v9 addSubview:v3->_supplementalContentPdfTitleLabel];

    v10 = objc_alloc_init(BKLibraryBookshelfInfoCell);
    infoCell = v3->_infoCell;
    v3->_infoCell = v10;

    [(BKLibraryBookshelfInfoCell *)v3->_infoCell setDelegate:v3];
    v12 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [v12 addSubview:v3->_infoCell];

    v13 = objc_alloc_init(BKLibraryBookshelfCoverView);
    coverView = v3->_coverView;
    v3->_coverView = v13;

    v15 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [v15 addSubview:v3->_coverView];

    v16 = objc_alloc_init(UIImageView);
    selectIndicatorView = v3->_selectIndicatorView;
    v3->_selectIndicatorView = v16;

    v18 = [(BKLibraryBookshelfGridBookCell *)v3 _checkmarkImageForSelectedState:0];
    [(UIImageView *)v3->_selectIndicatorView setImage:v18];

    v19 = [(BKLibraryBookshelfGridBookCell *)v3 contentView];
    [v19 addSubview:v3->_selectIndicatorView];

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
    v6 = [(BKLibraryBookshelfGridBookCell *)self contentView];
    [v6 addSubview:self->_progressView];

    progressView = self->_progressView;
  }

  return progressView;
}

- (id)coverLayer
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self coverView];
  v3 = [v2 coverLayer];

  return v3;
}

- (void)cleanupCell
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v4 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v4;
  v8[2] = *&CGAffineTransformIdentity.tx;
  [v3 setAffineTransform:v8];

  v5 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];

  [(BKLibraryBookshelfGridBookCell *)self setLibraryAsset:0];
  v7 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [v7 setAudiobookStatus:0];

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
  v3 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v4 = [v3 isHidden];

  if (v4)
  {
    [(BKLibraryBookshelfGridBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (id)cellMetrics
{
  objc_opt_class();
  v3 = [(BKLibraryBookshelfGridBookCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (id)_checkmarkImageForSelectedState:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    v4 = +[UIColor whiteColor];
    v12[0] = v4;
    v5 = +[UIColor blackColor];
    v12[1] = v5;
    v6 = [NSArray arrayWithObjects:v12 count:2];
    v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];

    if (v3)
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
    if (v3)
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(BKLibraryBookshelfGridBookCell *)self isSelected]!= a3)
  {
    v12.receiver = self;
    v12.super_class = BKLibraryBookshelfGridBookCell;
    [(BKLibraryBookshelfGridBookCell *)&v12 setSelected:v3];
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
      v7 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
      v8 = v7;
      if (v5)
      {
        v9 = +[NSSymbolReplaceContentTransition transition];
        [v8 setSymbolImage:v6 withContentTransition:v9];

        if (![(BKLibraryBookshelfGridBookCell *)self isSelected])
        {
LABEL_12:

          return;
        }

        v8 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
        v10 = +[NSSymbolDrawOnEffect effect];
        v11 = +[NSSymbolEffectOptions options];
        [v8 addSymbolEffect:v10 options:v11 animated:1];
      }

      else
      {
        [v7 setImage:v6];
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
  v4 = [(BKLibraryBookshelfGridBookCell *)self coverView];
  v5 = [v3 initWithView:v4];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(UIDragPreviewParameters);
  v6 = [(BKLibraryBookshelfGridBookCell *)self traitCollection];
  v7 = [v6 traitCollectionByModifyingTraits:&stru_100A072A0];

  v8 = +[UIColor bc_booksBackground];
  v9 = [v8 resolvedColorWithTraitCollection:v7];
  [v5 setBackgroundColor:v9];

  v10 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v11 = [v10 boundingPath];

  if (v11)
  {
    v12 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    v13 = [v12 boundingPath];
    v14 = [v13 copy];
    [v5 setVisiblePath:v14];
  }

  else
  {
    [(BKLibraryBookshelfGridBookCell *)self coverFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if (v3)
    {
      v23 = +[BCCacheManager defaultCacheManager];
      v24 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      v25 = [v24 assetID];
      v26 = [v23 metadataForIdentifier:v25];

      v27 = [v26 intrinsicAspectRatio];
      v28 = v27;
      if (v27)
      {
        [v27 floatValue];
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

    v12 = [UIBezierPath bezierPathWithRect:v16, v18, v20, v22];
    [v5 setVisiblePath:v12];
  }

  return v5;
}

- (double)_desiredAlphaFromRawAlpha:(double)a3
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    a3 = 1.0;
    if (([(BKLibraryBookshelfGridBookCell *)self isSelected]& 1) == 0)
    {
      v5 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
      [v5 dimmedAlpha];
      a3 = v6;
    }
  }

  return a3;
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v3 = [v2 coverEffectsEnvironment];

  return v3;
}

- (void)setCoverEffectsEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [v5 setCoverEffectsEnvironment:v4];
}

- (void)handleTapWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v5 = [(BKLibraryBookshelfGridBookCell *)self indexPath];
  [v6 bookTapped:v5 completion:v4];
}

- (void)setCoverHidden:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [v5 setHidden:v3];

  v6 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  [v6 setHidden:v3];

  +[CATransaction commit];
}

- (id)coverImage
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v3 = [v2 image];

  return v3;
}

- (CGRect)coverFrame
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self layer];
  v4 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [v4 coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  [v3 convertRect:v13 fromLayer:{v6, v8, v10, v12}];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
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
    [v5 locationInView:self];
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

  v3 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [v3 seriesSequenceLabelHeight];
  v5 = v4;

  return v5;
}

- (double)_seriesSequenceLabelTopMargin
{
  if (![(BKLibraryBookshelfGridBookCell *)self hasSeriesSequenceLabel])
  {
    return 0.0;
  }

  v3 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [v3 seriesSequenceLabelTopMargin];
  v5 = v4;

  return v5;
}

- (CGRect)infoFrame
{
  v3 = 0.0;
  if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v4 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v4 infoBarHeight];
    v6 = v5;
    v7 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v7 infoBarDateSpacing];
    v9 = v6 + v8;
    v10 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v10 infoBarExpectedDateHeight];
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
    v4 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v4 infoBarDateSpacing];
    v6 = v5;
    v7 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v7 infoBarExpectedDateHeight];
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

  v4 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [v4 infoBarHeight];
  v6 = v5;

  return v6;
}

- (double)infoCellPadding
{
  v3 = 0.0;
  if (![(BKLibraryBookshelfGridBookCell *)self hideInfoBar])
  {
    v4 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    v5 = [v4 isHidden];

    v6 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    v7 = v6;
    if (v5)
    {
      [v6 infoBarSpacing];
    }

    else
    {
      [v6 seriesSequenceLabelBottomMargin];
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
  v11 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v12 = v11;
  if (v11)
  {
    [v11 affineTransform];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  v13 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v14 = *&CGAffineTransformIdentity.c;
  v20 = *&CGAffineTransformIdentity.a;
  v21 = v14;
  v22 = *&CGAffineTransformIdentity.tx;
  [v13 setAffineTransform:&v20];

  v15 = [(BKLibraryBookshelfGridBookCell *)self coverView];
  [v15 setFrame:{v4, v6, v8, v10}];

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v16 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
  v20 = v17;
  v21 = v18;
  v22 = v19;
  [v16 setAffineTransform:&v20];
}

- (CGRect)supplementalContentPDFTitleFrame
{
  [(BKLibraryBookshelfGridBookCell *)self coverArea];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  [v11 sizeThatFits:{CGRectGetWidth(v23), 3.40282347e38}];
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
  v16 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  [v16 smallTitleTopMargin];
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
  v3 = [(BKLibraryBookshelfGridBookCell *)self wantsAnimatedLayoutChange];
  +[CATransaction begin];
  if (v3)
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
      v9 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      [v9 setFrame:{x, y, width, height}];
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
  v18 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  v19 = [v18 isHidden];

  if ((v19 & 1) == 0)
  {
    v20 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    v21 = [v20 seriesSequenceLabelFontAttributes];
    v22 = [v21 font];

    v71.origin.x = v11;
    v71.origin.y = v13;
    v71.size.width = v15;
    v71.size.height = v17;
    MaxY = CGRectGetMaxY(v71);
    v24 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v24 seriesSequenceLabelTopMargin];
    v26 = MaxY + v25;
    v27 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v27 seriesSequenceLabelHeight];
    v29 = v26 + v28;
    [v22 descender];
    v31 = v29 - v30;

    v32 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    v72.origin.x = v11;
    v72.origin.y = v13;
    v72.size.width = v15;
    v72.size.height = v17;
    [v32 sizeThatFits:{CGRectGetWidth(v72), 3.40282347e38}];
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
    v37 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [v37 setFrame:{v11, v36, v35, v34}];
  }

  v38 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
  v39 = [v38 isHidden];

  if ((v39 & 1) == 0)
  {
    v40 = [(BKLibraryBookshelfGridBookCell *)self progressView];
    [v40 setFrame:{v11, v13, v15, v17}];

    [(BKLibraryBookshelfGridBookCell *)self supplementalContentPDFTitleFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [v49 setFrame:{v42, v44, v46, v48}];
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
  v57 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [v57 setFrame:{v55, v56, v54, v50}];

  v58 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (v58)
  {
    v59 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v59 audiobookControlMargin];
    v61 = v60;

    [v58 frame];
    v63 = v62;
    v65 = v64;
    v66 = v11 + v61;
    v67 = v13 + v17 - v64 - v61;
    [v58 frame];
    v78.origin.x = v66;
    v78.origin.y = v67;
    v78.size.width = v63;
    v78.size.height = v65;
    if (!CGRectEqualToRect(v77, v78))
    {
      [(BKLibraryBookshelfGridBookCell *)self effectiveUserInterfaceLayoutDirection];
      IMRectFlippedForRTL();
      [v58 setFrame:?];
    }
  }

  [(BKLibraryBookshelfGridBookCell *)self setWantsAnimatedLayoutChange:0];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  v7 = v6 ^ [v5 editMode];
  v53.receiver = self;
  v53.super_class = BKLibraryBookshelfGridBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v53 applyLayoutAttributes:v4];
  v8 = [v4 indexPath];
  [(BKLibraryBookshelfGridBookCell *)self setIndexPath:v8];

  v9 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfGridBookCell setIsRTL:](self, "setIsRTL:", [v9 userInterfaceLayoutDirection] == 1);

  v10 = [v5 layoutDebugMode];
  if ([(BKLibraryBookshelfGridBookCell *)self layoutDebugMode]!= v10)
  {
    [(BKLibraryBookshelfGridBookCell *)self setLayoutDebugMode:v10];
    if ([v5 layoutDebugMode])
    {
      v11 = +[UIColor redColor];
      v12 = [v11 colorWithAlphaComponent:0.2];
      v13 = [v12 CGColor];
      v14 = [(BKLibraryBookshelfGridBookCell *)self layer];
      [v14 setBorderColor:v13];

      v15 = [(BKLibraryBookshelfGridBookCell *)self layer];
      v16 = 0.5;
      [v15 setBorderWidth:0.5];

      v17 = +[UIColor redColor];
      v18 = [v17 colorWithAlphaComponent:0.2];
      v19 = [v18 CGColor];
      v20 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      v21 = [v20 layer];
      [v21 setBorderColor:v19];

      v22 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      v23 = [v22 layer];
      [v23 setBorderWidth:0.5];

      v24 = +[UIColor redColor];
      v25 = [v24 colorWithAlphaComponent:0.2];
      v26 = [v25 CGColor];
      v27 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      v28 = [v27 layer];
      [v28 setBorderColor:v26];
    }

    else
    {
      v29 = [(BKLibraryBookshelfGridBookCell *)self layer];
      v16 = 0.0;
      [v29 setBorderWidth:0.0];

      v24 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      v25 = [v24 layer];
      [v25 setBorderWidth:0.0];
    }

    v30 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    v31 = [v30 layer];
    [v31 setBorderWidth:v16];
  }

  if (v7)
  {
    v32 = 1;
  }

  else
  {
    v33 = [(BKLibraryBookshelfGridBookCell *)self metrics];
    v34 = [v5 cellMetrics];
    if (v33 == v34)
    {
      v35 = [(BKLibraryBookshelfGridBookCell *)self columnMetrics];
      v36 = [v5 columnMetrics];
      v32 = v35 != v36;
    }

    else
    {
      v32 = 1;
    }
  }

  [(BKLibraryBookshelfGridBookCell *)self setWantsAnimatedLayoutChange:v7];
  -[BKLibraryBookshelfGridBookCell setHideInfoBar:](self, "setHideInfoBar:", [v5 editMode]);
  v37 = [v5 cellMetrics];
  [(BKLibraryBookshelfGridBookCell *)self setMetrics:v37];

  v38 = [v5 columnMetrics];
  [(BKLibraryBookshelfGridBookCell *)self setColumnMetrics:v38];

  v39 = [v5 cellMetrics];
  v40 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [v40 setMetrics:v39];

  -[BKLibraryBookshelfGridBookCell setHideSelectIndicator:](self, "setHideSelectIndicator:", [v5 editMode] ^ 1);
  [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
  [v4 alpha];
  [(BKLibraryBookshelfCollectionViewCell *)self setAlpha:?];
  v41 = [(BKLibraryBookshelfGridBookCell *)self hideInfoBar];
  v42 = 1.0;
  if (v41)
  {
    v42 = 0.0;
  }

  [(BKLibraryBookshelfInfoCell *)self->_infoCell setAlpha:v42];
  v43 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  v44 = [v43 isHidden];

  if ((v44 & 1) == 0)
  {
    [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabelText];
  }

  [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
  v45 = [(BKLibraryBookshelfGridBookCell *)self _checkmarkImageForSelectedState:[(BKLibraryBookshelfGridBookCell *)self isSelected]];
  v46 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [v46 setImage:v45];

  if (v32)
  {
    v47 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

    if (v47)
    {
      [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
      v48 = [(BKLibraryBookshelfGridBookCell *)self coverView];
      v49 = [v48 coverLayer];
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfGridBookCell *)self coverArea];
      [v49 setLibraryAsset:libraryAsset size:{v51, v52}];
    }
  }
}

- (BOOL)needsAsset
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  if ([v3 isStoreItem])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    v4 = [v5 isSeriesItem];
  }

  return v4;
}

- (void)setAsset:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [v5 setAsset:v4];
}

- (BFMAsset)asset
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  v3 = [v2 asset];

  return v3;
}

- (void)assetStateChanged
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];

  if (v3)
  {
    v4 = [(BKLibraryBookshelfGridBookCell *)self hideSelectIndicator];
    if (v4)
    {
      v5 = 0.0;
    }

    else
    {
      v7 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
      v5 = [v7 state] == 2 ? 0.0 : 1.0;
    }

    v6 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
    [v6 setAlpha:v5];

    if ((v4 & 1) == 0)
    {
    }
  }
}

- (BOOL)showSeriesSequenceLabel
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  v4 = [v3 seriesID];
  if (v4)
  {
    v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    v6 = [v5 sequenceDisplayName];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateSeriesSequenceLabelText
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
  v4 = [v3 seriesSequenceLabelFontAttributes];
  v9 = [v4 attributesWithTruncated:1];

  v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v6 = [v5 sequenceDisplayName];
  v7 = [TUIFontSpec attributedStringWith:v6 attributes:v9];
  v8 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  [v8 setAttributedText:v7];

  [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
}

- (void)_updateSupplementalContentPDFTitleLabelText
{
  v15 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
  if ([v15 supplementalContentPDFPicker])
  {
    v3 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    v4 = [v3 viewMode];

    if (v4 != 1)
    {
      return;
    }

    v5 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [v5 setHidden:0];

    v6 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    v7 = [v6 smallTitleFontAttributes];
    v15 = [v7 attributesWithCentered:1 truncated:1];

    v8 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    v9 = [v8 title];
    v10 = [TUIFontSpec attributedStringWith:v9 attributes:v15];
    v11 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [v11 setAttributedText:v10];

    v12 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    v13 = [v12 numOfLinesSmallTitle];
    v14 = [(BKLibraryBookshelfGridBookCell *)self supplementalContentPdfTitleLabel];
    [v14 setNumberOfLines:v13];

    [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
  }
}

- (void)_updateSeriesSequenceLabel:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
  v6 = [v5 isHidden];

  v7 = [(BKLibraryBookshelfGridBookCell *)self showSeriesSequenceLabel];
  if (v6 == v7)
  {
    v8 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
    [v8 setHidden:v7 ^ 1];

    if (v7)
    {
      v3 = 1;
    }

    else
    {
      v9 = [(BKLibraryBookshelfGridBookCell *)self seriesSequenceLabel];
      [v9 setAttributedText:0];
    }

    [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
  }

  if ((v7 & v3) == 1)
  {

    [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabelText];
  }
}

- (void)setLibraryAsset:(id)a3
{
  v5 = a3;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != v5)
  {
    v16 = v5;
    if (([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"state" context:off_100ACE1F8];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE200];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE200];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"genre" context:off_100ACE200];
    }

    objc_storeStrong(&self->_libraryAsset, a3);
    v7 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
    v8 = [(BKLibraryBookshelfGridBookCell *)self dataSource];
    v9 = [v8 supplementalContentPDFPicker];

    if (v9)
    {
      [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
      v10 = [(BKLibraryBookshelfGridBookCell *)self progressView];
      [v10 setHidden:0];

      v11 = [(BKLibraryBookshelfGridBookCell *)self progressView];
      [v11 setAsset:v7];
    }

    v12 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [v12 setLibraryAsset:v7];

    v13 = [(BKLibraryBookshelfGridBookCell *)self coverLayer];
    [(BKLibraryBookshelfGridBookCell *)self coverArea];
    [v13 setLibraryAsset:v7 size:{v14, v15}];

    if (v7)
    {
      if (([v7 isOwned] & 1) == 0)
      {
        [(BKLibraryBookshelfGridBookCell *)self updateLibraryAssetPrice];
      }

      [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:1];
      if (([v7 isContainer] & 1) == 0)
      {
        [v7 addObserver:self forKeyPath:@"state" options:0 context:off_100ACE1F8];
        [v7 addObserver:self forKeyPath:@"title" options:0 context:off_100ACE200];
        [v7 addObserver:self forKeyPath:@"author" options:0 context:off_100ACE200];
        [v7 addObserver:self forKeyPath:@"genre" options:0 context:off_100ACE200];
      }

      [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
      [(BKLibraryBookshelfGridBookCell *)self setNeedsLayout];
    }

    else
    {
      [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:1];
      [(BKLibraryBookshelfGridBookCell *)self assetStateChanged];
    }

    v5 = v16;
  }
}

- (void)updateLibraryAssetPrice
{
  v3 = +[BKLibraryManager defaultManager];
  v4 = [v3 priceManager];

  v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v6 = [v5 storeID];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FA748;
  v8[3] = &unk_100A072C8;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [v4 fetchPriceForAssetID:v7 completion:v8];
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_dataSource, v4);
  v5 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  [v5 setDataSource:v4];

  v6 = [(BKLibraryBookshelfGridBookCell *)self _checkmarkImageForSelectedState:[(BKLibraryBookshelfGridBookCell *)self isSelected]];
  v7 = [(BKLibraryBookshelfGridBookCell *)self selectIndicatorView];
  [v7 setImage:v6];

  [(BKLibraryBookshelfGridBookCell *)self _updateSeriesSequenceLabel:0];
  LODWORD(v6) = [v4 supplementalContentPDFPicker];

  if (v6)
  {
    v8 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [v8 setHidden:1];

    [(BKLibraryBookshelfGridBookCell *)self _updateSupplementalContentPDFTitleLabelText];
  }

  [(BKLibraryBookshelfGridBookCell *)self layoutIfNeeded];
}

- (void)setAudiobookStatus:(id)a3
{
  v5 = a3;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != v5)
  {
    v10 = v5;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE1E8];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE1F0];
    }

    objc_storeStrong(&self->_audiobookStatus, a3);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACE1E8];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACE1F0];
    }

    v8 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    [v8 setAudiobookStatus:v10];

    v9 = [(BKLibraryBookshelfGridBookCell *)self cellMetrics];
    [v9 audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v10 diameter:?];

    v5 = v10;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  if (off_100ACE1F8 == a6)
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

  if (off_100ACE1E8 == a6)
  {
    v14 = &v22;
    v13 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v15 = sub_1000FAD20;
    goto LABEL_10;
  }

  if (off_100ACE1F0 == a6)
  {
    v14 = &v20;
    v13 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v15 = sub_1000FADB0;
    goto LABEL_10;
  }

  if (off_100ACE200 == a6)
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
  [(BKLibraryBookshelfGridBookCell *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_11:
  objc_destroyWeak(&location);
}

- (void)didTapStopDownloadButtonWithAsset:(id)a3
{
  v5 = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v4 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v5 bookCancelDownload:v4];
}

- (id)trackerForLibraryBookshelfInfoCell:(id)a3
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v4 = [v3 tracker];

  return v4;
}

- (id)libraryBookshelfInfoCell:(id)a3 analyticsAssetPropertyProviderForLibraryAsset:(id)a4 fromSourceView:(id)a5 inCollection:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v13 = [v12 analyticsAssetPropertyProviderForLibraryAsset:v11 fromSourceView:v10 inCollection:v9];

  return v13;
}

- (id)libraryBookshelfInfoCell:(id)a3 menuWithLibraryAsset:(id)a4 sourceView:(id)a5 collection:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(BKLibraryBookshelfGridBookCell *)self actionHandler];
  v13 = [v12 menuWithLibraryAsset:v11 sourceView:v10 collection:v9];

  return v13;
}

- (void)libraryBookshelfInfoCellDidSelectCancelDownload:(id)a3 sourceView:(id)a4
{
  v6 = [(BKLibraryBookshelfGridBookCell *)self actionHandler:a3];
  v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v6 bookCancelDownload:v5];
}

- (void)libraryBookshelfInfoCellDidSelectResumeDownload:(id)a3 sourceView:(id)a4
{
  v6 = [(BKLibraryBookshelfGridBookCell *)self actionHandler:a3];
  v5 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  [v6 bookResumeDownload:v5];
}

- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4
{
  v4 = [(BKLibraryBookshelfGridBookCell *)self infoCell:a3];
  [v4 setupMenu];
}

- (void)togglePlayPause:(id)a3
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
  [v3 assetAudiobookStatusTogglePlayPause];
}

- (id)accessibilityLabel
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v7 = [(BKLibraryBookshelfGridBookCell *)self formattedPrice];
  if ([v6 isDownloading])
  {
    v8 = v7;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Downloading" value:&stru_100A30A68 table:0];
    [v3 addObject:v10];

    v11 = +[BKLibraryAssetStatusController sharedController];
    v12 = [v6 permanentOrTemporaryAssetID];
    v13 = [v11 statusForAssetID:v12];

    if ([v13 state] == 4 && objc_msgSend(v13, "timeRemaining") >= 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"%@ remaining" value:&stru_100A30A68 table:0];

      v16 = +[BKLibraryBookshelfGridBookCell bkaxDownloadAndAudiobookProgressFormatter];
      v17 = [v16 stringFromTimeInterval:{objc_msgSend(v13, "timeRemaining")}];
      v18 = [NSString localizedStringWithFormat:v15, v17];
      [v3 addObject:v18];
    }

    v90 = 0;
    v7 = v8;
    goto LABEL_64;
  }

  if ([v6 isAudiobook])
  {
    v19 = [v6 assetID];
    if (v19 && [v6 isOwned])
    {
      v90 = [v6 isNew];
    }

    else
    {
      v90 = 0;
    }

    goto LABEL_15;
  }

  if ([v6 isOwned] && objc_msgSend(v6, "isNew"))
  {
    v19 = [v6 readingProgress];
    v90 = v19 == 0;
LABEL_15:

    goto LABEL_16;
  }

  v90 = 0;
LABEL_16:
  if (([v6 isSample] & 1) != 0 || (objc_msgSend(v6, "isOwned") & 1) == 0 && objc_msgSend(v6, "isInSamples"))
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

  v23 = [(BKLibraryBookshelfGridBookCell *)self asset];
  v24 = [v23 isPreorder];

  if (v24)
  {
    if ([v6 isPreorderBook])
    {
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"Preordered" value:&stru_100A30A68 table:0];
    }

    else
    {
      if (!v7)
      {
LABEL_30:
        v29 = [(BKLibraryBookshelfGridBookCell *)self asset];
        v30 = [v29 expectedReleaseDate];

        if (!v30)
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

        v34 = [(BKLibraryBookshelfGridBookCell *)self asset];
        [v34 expectedReleaseDate];
        v87 = v5;
        v36 = v35 = v7;
        v37 = [v32 stringFromDate:v36];
        v38 = [NSString stringWithFormat:v86, v37];
        [v3 addObject:v38];

        v39 = v86;
        v7 = v35;
        v5 = v87;
        goto LABEL_39;
      }

      v27 = +[NSBundle mainBundle];
      v25 = [v27 localizedStringForKey:@"Preorder for %@" value:&stru_100A30A68 table:0];

      v26 = [NSString stringWithFormat:v25, v7];
    }

    v28 = v26;
    [v3 addObject:v26];

    goto LABEL_30;
  }

  if (([v6 isStoreItem] & 1) == 0)
  {
    if ((v22 & [v6 isSeriesItem] & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (v22)
  {
LABEL_33:
    v40 = [(BKLibraryBookshelfGridBookCell *)self asset];
    v39 = [v40 price];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), BUDynamicCast(), v41 = objc_claimAutoreleasedReturnValue(), [v41 floatValue], v43 = v42, v41, v43 == 0.0))
    {
      v88 = v4;
      v32 = +[NSBundle mainBundle];
      v44 = [v32 localizedStringForKey:@"Free download" value:&stru_100A30A68 table:0];
    }

    else
    {
      if (!v7)
      {
LABEL_40:

        goto LABEL_41;
      }

      v88 = v4;
      v45 = +[NSBundle mainBundle];
      v32 = [v45 localizedStringForKey:@"Buy for %@" value:&stru_100A30A68 table:0];

      v44 = [NSString stringWithFormat:v32, v7];
    }

    v34 = v44;
    [v3 addObject:v44];
LABEL_39:

    v4 = v88;
    goto LABEL_40;
  }

LABEL_41:
  if ([v6 isFinished])
  {
    v46 = [v6 isAudiobook];
    v47 = +[NSBundle mainBundle];
    v48 = v47;
    if (v46)
    {
      v49 = @"Finished";
    }

    else
    {
      v49 = @"Finished book";
    }

    v52 = [v47 localizedStringForKey:v49 value:&stru_100A30A68 table:0];
    [v4 addObject:v52];
    goto LABEL_52;
  }

  if ([v6 isOwned])
  {
    v50 = +[NSBundle mainBundle];
    v48 = [v50 localizedStringForKey:@"%@ finished" value:&stru_100A30A68 table:0];

    if ([v6 isAudiobook])
    {
      v51 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
      v52 = [v51 bkaxAudiobookReadPercentage];

      if (!v52)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v52 = [v6 readingProgress];
      if (!v52)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    v53 = +[NSString bc_formattedReadingProgress:isFinished:](NSString, "bc_formattedReadingProgress:isFinished:", v52, [v6 isFinished]);
    v54 = [NSString stringWithFormat:v48, v53];
    [v4 addObject:v54];

    goto LABEL_52;
  }

LABEL_53:
  if ([v6 isOwned] && objc_msgSend(v6, "isCloud"))
  {
    v55 = +[NSBundle mainBundle];
    v56 = [v55 localizedStringForKey:@"In iCloud" value:&stru_100A30A68 table:0];
    [v4 addObject:v56];
  }

  if ([v6 isAudiobook])
  {
    v57 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    v58 = [v57 showsPlaybackProgress];

    if (v58)
    {
      v59 = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
      v60 = [v59 assetAudiobookStatusIsPlaying];

      v61 = +[NSBundle mainBundle];
      v62 = v61;
      if (v60)
      {
        v63 = @"Playing";
      }

      else
      {
        v63 = @"Paused";
      }

      [v61 localizedStringForKey:v63 value:&stru_100A30A68 table:0];
      v64 = v89 = v7;
      [v4 addObject:v64];

      v65 = +[NSBundle mainBundle];
      v66 = [v65 localizedStringForKey:@"%@ remaining in chapter" value:&stru_100A30A68 table:0];

      v67 = +[BKLibraryBookshelfGridBookCell bkaxDownloadAndAudiobookProgressFormatter];
      v68 = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
      [v68 assetAudiobookStatusTrackTimeRemaining];
      v69 = [v67 stringFromTimeInterval:?];
      v70 = [NSString localizedStringWithFormat:v66, v69];
      [v4 addObject:v70];

      v7 = v89;
    }
  }

  if ([(BKLibraryBookshelfGridBookCell *)self showSeriesSequenceLabel])
  {
    v13 = [v6 sequenceDisplayName];
    [v5 addObject:v13];
LABEL_64:
  }

  v71 = [v6 title];
  v72 = [v71 length];

  if (v72)
  {
    v73 = [v6 title];
    [v5 addObject:v73];
  }

  v74 = [v6 displayAuthor];
  v75 = [v74 length];

  if (v75)
  {
    v76 = [v6 displayAuthor];
    [v5 addObject:v76];
  }

  if (([v6 isContainer] & 1) == 0 && objc_msgSend(v6, "isAudiobook"))
  {
    v77 = +[NSBundle mainBundle];
    v78 = [v77 localizedStringForKey:@"Audiobook" value:&stru_100A30A68 table:0];
    [v4 addObject:v78];
  }

  if ([v6 isContainer])
  {
    v79 = +[NSBundle mainBundle];
    v80 = [v79 localizedStringForKey:@"Series" value:&stru_100A30A68 table:0];
    [v4 addObject:v80];
  }

  if (v90)
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
  v4 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v5 = [v4 title];

  if ([v5 length])
  {
    [v3 addObject:v5];
  }

  v6 = [(BKLibraryBookshelfGridBookCell *)self accessibilityLabel];
  if ([v6 length])
  {
    [v3 addObject:v6];
  }

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v4 = [v3 isDownloading];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKLibraryBookshelfGridBookCell;
    v5 = [(BKLibraryBookshelfGridBookCell *)&v7 accessibilityHint];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfGridBookCell;
  v3 = [(BKLibraryBookshelfGridBookCell *)&v8 accessibilityTraits];
  v4 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  v5 = [v4 isDownloading];

  v6 = UIAccessibilityTraitButton;
  if (v5)
  {
    v6 = 0;
  }

  return v6 | v3 | UIAccessibilityTraitUpdatesFrequently;
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    v6 = [v5 moreButton];
    v7 = [v6 _accessibilityViewIsVisible];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [UIAccessibilityCustomAction alloc];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Show Actions Popover" value:&stru_100A30A68 table:0];
    v4 = [v8 initWithName:v10 target:self selector:"_accessibilityDidTriggerShowMenuAction"];

    [v3 addObject:v4];
  }

LABEL_5:
  v11 = [(BKLibraryBookshelfGridBookCell *)self libraryAsset];
  if ([v11 isAudiobook])
  {
    v12 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
    v13 = [v12 showsPlaybackProgress];

    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = [(BKLibraryBookshelfGridBookCell *)self audiobookStatus];
    v15 = [v14 assetAudiobookStatusIsPlaying];

    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (v15)
    {
      v18 = @"Pause";
    }

    else
    {
      v18 = @"Play";
    }

    if (v15)
    {
      v19 = @"pause.fill";
    }

    else
    {
      v19 = @"play.fill";
    }

    v11 = [v16 localizedStringForKey:v18 value:&stru_100A30A68 table:0];

    v20 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v21 = [UIImage systemImageNamed:v19 withConfiguration:v20];

    v22 = [[UIAccessibilityCustomAction alloc] initWithName:v11 image:v21 target:self selector:"_accessibilityDidTriggerPlayPauseAction"];
    [v3 addObject:v22];
  }

LABEL_15:
  v23 = [v3 copy];

  return v23;
}

- (BOOL)_accessibilityDidTriggerShowMenuAction
{
  v2 = [(BKLibraryBookshelfGridBookCell *)self infoCell];
  v3 = [v2 moreButton];
  [v3 sendActionsForControlEvents:64];

  return 1;
}

- (BOOL)accessibilityActivate
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v3 = [(BKLibraryBookshelfCollectionViewCell *)self delegate];
    v4 = [v3 indexPathForCell:self];

    if (v4)
    {
      v5 = [(BKLibraryBookshelfGridBookCell *)self isSelected];
      v6 = [(BKLibraryBookshelfCollectionViewCell *)self delegate];
      v7 = v6;
      if (v5)
      {
        [v6 selectItemAtIndexPath:v4 animated:1 scrollPosition:0];
      }

      else
      {
        [v6 deselectItemAtIndexPath:v4 animated:1];
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