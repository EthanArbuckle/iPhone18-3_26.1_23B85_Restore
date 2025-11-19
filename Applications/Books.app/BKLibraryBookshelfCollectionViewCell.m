@interface BKLibraryBookshelfCollectionViewCell
- (BKLibraryBookshelfCellSelectionAccessibilityDelegate)delegate;
- (BKLibraryBookshelfCollectionViewCell)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfCoverLayer)coverLayer;
- (BKLibraryBookshelfCoverView)coverView;
- (BOOL)shouldHandleTapIfPossible;
- (CGRect)coverFrame;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)addBooksLinkEntityInteraction:(id)a3;
- (void)animateCoverPressed:(BOOL)a3 completion:(id)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dragStateDidChange:(int64_t)a3;
- (void)handleTapIfPossible;
- (void)handleTapWithCompletion:(id)a3;
- (void)i_minifiedAssetPresentersChangedNotification:(id)a3;
- (void)nightModeChanged;
- (void)prepareForDragPreview;
- (void)prepareForReuse;
- (void)removeBooksLinkEntityInteraction;
- (void)setAlpha:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 completion:(id)a4;
- (void)updateAudiobookControlWithStatus:(id)a3 diameter:(double)a4;
@end

@implementation BKLibraryBookshelfCollectionViewCell

- (BKLibraryBookshelfCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfCollectionViewCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)i_minifiedAssetPresentersChangedNotification:(id)a3
{
  objc_opt_class();
  v4 = BUClassAndProtocolCast();
  if (v4)
  {
    v17 = v4;
    v5 = [v4 libraryAsset];
    v6 = [v5 isAudiobook];

    if (v6)
    {
      objc_opt_class();
      v7 = [(BKLibraryBookshelfCollectionViewCell *)self superview];
      v8 = BUDynamicCast();

      objc_opt_class();
      v9 = [v8 delegate];
      v10 = BUDynamicCast();

      v11 = [v10 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
      v12 = [v17 libraryAsset];
      v13 = [v12 assetID];
      v14 = [v11 minifiedPresenterAssetCurrentPresenterForAssetID:v13];

      v15 = [v14 minifiedAssetStatus];
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

- (void)updateAudiobookControlWithStatus:(id)a3 diameter:(double)a4
{
  v13 = a3;
  v6 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (v13)
  {

    if (!v6)
    {
      v7 = [[BSUIAudiobookControl alloc] initWithFrame:{0.0, 0.0, a4, a4}];
      audiobookControl = self->_audiobookControl;
      self->_audiobookControl = v7;

      v9 = BUProtocolCast();
      [(BSUIAudiobookControl *)self->_audiobookControl setDelegate:v9];

      -[BSUIAudiobookControl setPlaying:](self->_audiobookControl, "setPlaying:", [v13 assetAudiobookStatusIsPlaying]);
      [v13 assetAudiobookStatusTrackProgress];
      [(BSUIAudiobookControl *)self->_audiobookControl setProgress:?];
      v10 = [(BKLibraryBookshelfCollectionViewCell *)self contentView];
      [v10 addSubview:self->_audiobookControl];

      [(BKLibraryBookshelfCollectionViewCell *)self setNeedsLayout];
    }
  }

  else
  {

    if (v6)
    {
      v11 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
      [v11 removeFromSuperview];

      v12 = self->_audiobookControl;
      self->_audiobookControl = 0;
    }
  }
}

- (void)dragStateDidChange:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v6 dragStateDidChange:?];
  if (a3 == 1)
  {
    v5 = [(BKLibraryBookshelfCollectionViewCell *)self window];
    [v5 setUserInteractionEnabled:1];
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

- (void)handleTapWithCompletion:(id)a3
{
  v5 = NSStringFromSelector(a2);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage();
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isHighlighted]!= a3)
  {
    v6.receiver = self;
    v6.super_class = BKLibraryBookshelfCollectionViewCell;
    [(BKLibraryBookshelfCollectionViewCell *)&v6 setHighlighted:v3];
    if (v3)
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

- (void)setHighlighted:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isHighlighted]== v4)
  {
    v7 = objc_retainBlock(v6);
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
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10018BA7C;
    v9[3] = &unk_100A03CA0;
    v10 = v6;
    [UIView animateWithDuration:v11 animations:v9 completion:0.1];
  }
}

- (void)animateCoverPressed:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.95;
  }

  if (v4)
  {
    v8 = 0.95;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
  v10 = v9;
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  CATransform3DMakeScale(&b, v8, v8, 1.0);
  v11 = CATransform3DEqualToTransform(&a, &b);

  if (v11)
  {
    v12 = objc_retainBlock(v6);
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
    [(_BKLibraryBookshelfBookCellAnimationDelegate *)v17 setCompletionBlock:v6];
    [v13 setDelegate:v17];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v18 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    [v18 addAnimation:v13 forKey:@"press"];

    CATransform3DMakeScale(&v20, v8, v8, 1.0);
    v19 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    a = v20;
    [v19 setTransform:&a];

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
  v4 = [(BKLibraryBookshelfCollectionViewCell *)self window];
  [v4 setUserInteractionEnabled:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018BFB4;
  v7[3] = &unk_100A099C0;
  v7[4] = self;
  v5 = v3;
  v9 = v5;
  v6 = v4;
  v8 = v6;
  [(BKLibraryBookshelfCollectionViewCell *)self animateCoverPressed:1 completion:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(BKLibraryBookshelfCollectionViewCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {

    [(BKLibraryBookshelfCollectionViewCell *)self nightModeChanged];
  }
}

- (void)nightModeChanged
{
  v2 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
  [v2 nightModeChanged];
}

- (void)applyLayoutAttributes:(id)a3
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfCollectionViewCell;
  v4 = a3;
  [(BKLibraryBookshelfCollectionViewCell *)&v12 applyLayoutAttributes:v4];
  objc_opt_class();
  v5 = BUDynamicCast();

  self->_isInEditMode = [v5 editMode];
  [(BKLibraryBookshelfCollectionViewCell *)self setAutomaticallyUpdatesBackgroundConfiguration:0];
  v6 = [v5 cellMetrics];
  v7 = [(BKLibraryBookshelfCollectionViewCell *)self configurationState];
  v8 = [v6 backgroundConfigurationForState:v7 isInEditMode:{-[BKLibraryBookshelfCollectionViewCell isInEditMode](self, "isInEditMode")}];
  [(BKLibraryBookshelfCollectionViewCell *)self setBackgroundConfiguration:v8];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018C2D4;
  v10[3] = &unk_100A099E8;
  v11 = v6;
  v9 = v6;
  [(BKLibraryBookshelfCollectionViewCell *)self setConfigurationUpdateHandler:v10];
}

- (void)addBooksLinkEntityInteraction:(id)a3
{
  v5 = a3;
  v4 = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];

  if (v4 != v5)
  {
    [(BKLibraryBookshelfCollectionViewCell *)self removeBooksLinkEntityInteraction];
    if (v5)
    {
      [(BKLibraryBookshelfCollectionViewCell *)self addInteraction:v5];
      [(BKLibraryBookshelfCollectionViewCell *)self setBooksLinkEntityInteraction:v5];
    }
  }
}

- (void)removeBooksLinkEntityInteraction
{
  v3 = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];

  if (v3)
  {
    v4 = [(BKLibraryBookshelfCollectionViewCell *)self booksLinkEntityInteraction];
    [(BKLibraryBookshelfCollectionViewCell *)self removeInteraction:v4];

    [(BKLibraryBookshelfCollectionViewCell *)self setBooksLinkEntityInteraction:0];
  }
}

- (void)prepareForDragPreview
{
  if (![(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v3 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
    [v3 removeAllAnimations];

    v4 = [(BKLibraryBookshelfCollectionViewCell *)self coverLayer];
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
    [v4 setTransform:v9];

    +[CATransaction commit];
  }
}

- (void)setAlpha:(double)a3
{
  [(BKLibraryBookshelfCollectionViewCell *)self _desiredAlphaFromRawAlpha:a3];
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