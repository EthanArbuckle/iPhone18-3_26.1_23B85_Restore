@interface BCSheetTransitionCoverController
- (void)_observeImageChangeForArtworkSource:(id)a3;
- (void)configureCoverViewWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)setupWithArtworkSource:(id)a3;
- (void)setupWithArtworkSource:(id)a3 cardArtworkSource:(id)a4 isDismiss:(BOOL)a5;
@end

@implementation BCSheetTransitionCoverController

- (void)setupWithArtworkSource:(id)a3 cardArtworkSource:(id)a4 isDismiss:(BOOL)a5
{
  v5 = a5;
  v20 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = v20;
  }

  if (v5)
  {
    v10 = v20;
  }

  else
  {
    v10 = v8;
  }

  v11 = v9;
  v12 = v10;
  v13 = [BCCardStackTransitionCoverView alloc];
  [v11 frame];
  v14 = [(BCCardStackTransitionCoverView *)v13 initWithFrame:?];
  coverView = self->_coverView;
  self->_coverView = v14;

  v16 = [v12 image];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v11 image];
  }

  v19 = v18;

  [(BCCardStackTransitionCoverView *)self->_coverView setImage:v19];
  [(BCSheetTransitionCoverController *)self _observeImageChangeForArtworkSource:v12];
}

- (void)setupWithArtworkSource:(id)a3
{
  v8 = a3;
  v4 = [BCCardStackTransitionCoverView alloc];
  [v8 frame];
  v5 = [(BCCardStackTransitionCoverView *)v4 initWithFrame:?];
  coverView = self->_coverView;
  self->_coverView = v5;

  v7 = [v8 image];
  [(BCCardStackTransitionCoverView *)self->_coverView setImage:v7];

  [(BCSheetTransitionCoverController *)self _observeImageChangeForArtworkSource:v8];
}

- (void)configureCoverViewWithFrame:(CGRect)a3
{
  [(BCCardStackTransitionCoverView *)self->_coverView setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  coverView = self->_coverView;

  [(BCCardStackTransitionCoverView *)coverView updateContentFrame];
}

- (void)dealloc
{
  [(BCSheetTransitioningArtworkSource *)self->_observedArtworkSource setImageChangeObserverBlock:0];
  v3.receiver = self;
  v3.super_class = BCSheetTransitionCoverController;
  [(BCSheetTransitionCoverController *)&v3 dealloc];
}

- (void)_observeImageChangeForArtworkSource:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(BCSheetTransitionCoverController *)self setObservedArtworkSource:v4];
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_60F1C;
    v5[3] = &unk_2CA028;
    objc_copyWeak(&v6, &location);
    [v4 setImageChangeObserverBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end