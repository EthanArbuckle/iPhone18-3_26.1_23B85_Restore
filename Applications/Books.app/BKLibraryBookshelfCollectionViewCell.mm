@interface BKLibraryBookshelfCollectionViewCell
- (BKLibraryBookshelfCellSelectionAccessibilityDelegate)delegate;
- (BKLibraryBookshelfCollectionViewCell)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfCoverLayer)coverLayer;
- (BKLibraryBookshelfCoverView)coverView;
- (BOOL)shouldHandleTapIfPossible;
- (CGRect)coverFrame;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)addBooksLinkEntityInteraction:(id)interaction;
- (void)animateCoverPressed:(BOOL)pressed completion:(id)completion;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)dragStateDidChange:(int64_t)change;
- (void)handleTapIfPossible;
- (void)handleTapWithCompletion:(id)completion;
- (void)i_minifiedAssetPresentersChangedNotification:(id)notification;
- (void)nightModeChanged;
- (void)prepareForDragPreview;
- (void)prepareForReuse;
- (void)removeBooksLinkEntityInteraction;
- (void)setAlpha:(double)alpha;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted completion:(id)completion;
- (void)updateAudiobookControlWithStatus:(id)status diameter:(double)diameter;
@end

@implementation BKLibraryBookshelfCollectionViewCell

- (BKLibraryBookshelfCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfCollectionViewCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"i_minifiedAssetPresentersChangedNotification:" name:@"BKMnifiedPresentersUpdatedNotification" object:0];

    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKLibraryBookshelfCollectionViewCell *)v3 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BKMnifiedPresentersUpdatedNotification" object:0];

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfCollectionViewCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v3 prepareForReuse];
  [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:0 diameter:0.0];
}

- (void)i_minifiedAssetPresentersChangedNotification:(id)notification
{
  objc_opt_class();
  v4 = BUClassAndProtocolCast();
  if (v4)
  {
    v17 = v4;
    libraryAsset = [v4 libraryAsset];
    isAudiobook = [libraryAsset isAudiobook];

    if (isAudiobook)
    {
      objc_opt_class();
      superview = [(BKLibraryBookshelfCollectionViewCell *)self superview];
      v8 = BUDynamicCast();

      objc_opt_class();
      delegate = [v8 delegate];
      v10 = BUDynamicCast();

      v11 = [v10 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
      libraryAsset2 = [v17 libraryAsset];
      assetID = [libraryAsset2 assetID];
      v14 = [v11 minifiedPresenterAssetCurrentPresenterForAssetID:assetID];

      minifiedAssetStatus = [v14 minifiedAssetStatus];
      objc_opt_class();
      v16 = BUClassAndProtocolCast();
      [v17 setAudiobookStatus:{v16, &OBJC_PROTOCOL___AEAssetAudiobookStatus}];
    }

    else
    {
      [v17 setAudiobookStatus:0];
    }

    v4 = v17;
  }
}

- (void)updateAudiobookControlWithStatus:(id)status diameter:(double)diameter
{
  statusCopy = status;
  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (statusCopy)
  {

    if (!audiobookControl)
    {
      v7 = [[BSUIAudiobookControl alloc] initWithFrame:{0.0, 0.0, diameter, diameter}];
      audiobookControl = self->_audiobookControl;
      self->_audiobookControl = v7;

      v9 = BUProtocolCast();
      [(BSUIAudiobookControl *)self->_audiobookControl setDelegate:v9];

      -[BSUIAudiobookControl setPlaying:](self->_audiobookControl, "setPlaying:", [statusCopy assetAudiobookStatusIsPlaying]);
      [statusCopy assetAudiobookStatusTrackProgress];
      [(BSUIAudiobookControl *)self->_audiobookControl setProgress:?];
      contentView = [(BKLibraryBookshelfCollectionViewCell *)self contentView];
      [contentView addSubview:self->_audiobookControl];

      [(BKLibraryBookshelfCollectionViewCell *)self setNeedsLayout];
    }
  }

  else
  {

    if (audiobookControl)
    {
      audiobookControl2 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
      [audiobookControl2 removeFromSuperview];

      v12 = self->_audiobookControl;
      self->_audiobookControl = 0;
    }
  }
}

- (void)dragStateDidChange:(int64_t)change
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v6 dragStateDidChange:?];
  if (change == 1)
  {
    window = [(BKLibraryBookshelfCollectionViewCell *)self window];
    [window setUserInteractionEnabled:1];
  }
}

- (BKLibraryBookshelfCoverLayer)coverLayer
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  return 0;
}

- (BKLibraryBookshelfCoverView)coverView
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  return 0;
}

- (CGRect)coverFrame
{
  v2 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v8 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)shouldHandleTapIfPossible
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self pendingTouchUp])
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryBookshelfCollectionViewCell *)self pendingAnimationCompletion];
  }
}

- (void)handleTapWithCompletion:(id)completion
{
  v5 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isHighlighted]!= highlighted)
  {
    v6.receiver = self;
    v6.super_class = BKLibraryBookshelfCollectionViewCell;
    [(BKLibraryBookshelfCollectionViewCell *)&v6 setHighlighted:highlightedCopy];
    if (highlightedCopy)
    {
      [(BKLibraryBookshelfCollectionViewCell *)self highlightBackgroundColor];
    }

    else
    {
      +[UIColor clearColor];
    }
    v5 = ;
    [(BKLibraryBookshelfCollectionViewCell *)self setBackgroundColor:v5];
  }
}

- (void)setHighlighted:(BOOL)highlighted completion:(id)completion
{
  highlightedCopy = highlighted;
  completionCopy = completion;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isHighlighted]== highlightedCopy)
  {
    v7 = objc_retainBlock(completionCopy);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10018BA70;
    v11[3] = &unk_100A044C8;
    v11[4] = self;
    v12 = highlightedCopy;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018BA7C;
    v9[3] = &unk_100A03CA0;
    v10 = completionCopy;
    [UIView animateWithDuration:v11 animations:v9 completion:0.1];
  }
}

- (void)animateCoverPressed:(BOOL)pressed completion:(id)completion
{
  pressedCopy = pressed;
  completionCopy = completion;
  if (pressedCopy)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.95;
  }

  if (pressedCopy)
  {
    v8 = 0.95;
  }

  else
  {
    v8 = 1.0;
  }

  coverLayer = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
  v10 = coverLayer;
  if (coverLayer)
  {
    [coverLayer transform];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  CATransform3DMakeScale(&b, v8, v8, 1.0);
  v11 = CATransform3DEqualToTransform(&a, &b);

  if (v11)
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    v13 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    v14 = [NSNumber numberWithDouble:v7];
    [v13 setFromValue:v14];

    v15 = [NSNumber numberWithDouble:v8];
    [v13 setToValue:v15];

    [v13 setDuration:0.15];
    v16 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v13 setTimingFunction:v16];

    v17 = objc_alloc_init(_BKLibraryBookshelfBookCellAnimationDelegate);
    [(_BKLibraryBookshelfBookCellAnimationDelegate *)v17 setCompletionBlock:completionCopy];
    [v13 setDelegate:v17];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    coverLayer2 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    [coverLayer2 addAnimation:v13 forKey:@"press"];

    CATransform3DMakeScale(&v20, v8, v8, 1.0);
    coverLayer3 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    a = v20;
    [coverLayer3 setTransform:&a];

    +[CATransaction commit];
  }
}

- (void)handleTapIfPossible
{
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018BEA0;
  v10[3] = &unk_100A09998;
  objc_copyWeak(&v11, &location);
  v3 = objc_retainBlock(v10);
  window = [(BKLibraryBookshelfCollectionViewCell *)self window];
  [window setUserInteractionEnabled:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018BFB4;
  v7[3] = &unk_100A099C0;
  v7[4] = self;
  v5 = v3;
  v9 = v5;
  v6 = window;
  v8 = v6;
  [(BKLibraryBookshelfCollectionViewCell *)self animateCoverPressed:1 completion:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(BKLibraryBookshelfCollectionViewCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(BKLibraryBookshelfCollectionViewCell *)self nightModeChanged];
  }
}

- (void)nightModeChanged
{
  coverLayer = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
  [coverLayer nightModeChanged];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfCollectionViewCell;
  attributesCopy = attributes;
  [(BKLibraryBookshelfCollectionViewCell *)&v12 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  v5 = BUDynamicCast();

  self->_isInEditMode = [v5 editMode];
  [(BKLibraryBookshelfCollectionViewCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  cellMetrics = [v5 cellMetrics];
  configurationState = [(BKLibraryBookshelfCollectionViewCell *)self configurationState];
  v8 = [cellMetrics backgroundConfigurationForState:configurationState isInEditMode:{-[BKLibraryBookshelfCollectionViewCell isInEditMode](self, "isInEditMode")}];
  [(BKLibraryBookshelfCollectionViewCell *)self setBackgroundConfiguration:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C2D4;
  v10[3] = &unk_100A099E8;
  v11 = cellMetrics;
  v9 = cellMetrics;
  [(BKLibraryBookshelfCollectionViewCell *)self setConfigurationUpdateHandler:v10];
}

- (void)addBooksLinkEntityInteraction:(id)interaction
{
  interactionCopy = interaction;
  booksLinkEntityInteraction = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];

  if (booksLinkEntityInteraction != interactionCopy)
  {
    [(BKLibraryBookshelfCollectionViewCell *)self removeBooksLinkEntityInteraction];
    if (interactionCopy)
    {
      [(BKLibraryBookshelfCollectionViewCell *)self addInteraction:interactionCopy];
      [(BKLibraryBookshelfCollectionViewCell *)self setBooksLinkEntityInteraction:interactionCopy];
    }
  }
}

- (void)removeBooksLinkEntityInteraction
{
  booksLinkEntityInteraction = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];

  if (booksLinkEntityInteraction)
  {
    booksLinkEntityInteraction2 = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];
    [(BKLibraryBookshelfCollectionViewCell *)self removeInteraction:booksLinkEntityInteraction2];

    [(BKLibraryBookshelfCollectionViewCell *)self setBooksLinkEntityInteraction:0];
  }
}

- (void)prepareForDragPreview
{
  if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    coverLayer = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    [coverLayer removeAllAnimations];

    coverLayer2 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    v5 = *&CATransform3DIdentity.m33;
    v9[4] = *&CATransform3DIdentity.m31;
    v9[5] = v5;
    v6 = *&CATransform3DIdentity.m43;
    v9[6] = *&CATransform3DIdentity.m41;
    v9[7] = v6;
    v7 = *&CATransform3DIdentity.m13;
    v9[0] = *&CATransform3DIdentity.m11;
    v9[1] = v7;
    v8 = *&CATransform3DIdentity.m23;
    v9[2] = *&CATransform3DIdentity.m21;
    v9[3] = v8;
    [coverLayer2 setTransform:v9];

    +[CATransaction commit];
  }
}

- (void)setAlpha:(double)alpha
{
  [(BKLibraryBookshelfCollectionViewCell *)self _desiredAlphaFromRawAlpha:alpha];
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v4 setAlpha:?];
}

- (BKLibraryBookshelfCellSelectionAccessibilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end