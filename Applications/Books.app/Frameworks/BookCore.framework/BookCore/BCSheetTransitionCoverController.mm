@interface BCSheetTransitionCoverController
- (void)_observeImageChangeForArtworkSource:(id)source;
- (void)configureCoverViewWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setupWithArtworkSource:(id)source;
- (void)setupWithArtworkSource:(id)source cardArtworkSource:(id)artworkSource isDismiss:(BOOL)dismiss;
@end

@implementation BCSheetTransitionCoverController

- (void)setupWithArtworkSource:(id)source cardArtworkSource:(id)artworkSource isDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  sourceCopy = source;
  artworkSourceCopy = artworkSource;
  if (dismissCopy)
  {
    v9 = artworkSourceCopy;
  }

  else
  {
    v9 = sourceCopy;
  }

  if (dismissCopy)
  {
    v10 = sourceCopy;
  }

  else
  {
    v10 = artworkSourceCopy;
  }

  v11 = v9;
  v12 = v10;
  v13 = [BCCardStackTransitionCoverView alloc];
  [v11 frame];
  v14 = [(BCCardStackTransitionCoverView *)v13 initWithFrame:?];
  coverView = self->_coverView;
  self->_coverView = v14;

  image = [v12 image];
  v17 = image;
  if (image)
  {
    image2 = image;
  }

  else
  {
    image2 = [v11 image];
  }

  v19 = image2;

  [(BCCardStackTransitionCoverView *)self->_coverView setImage:v19];
  [(BCSheetTransitionCoverController *)self _observeImageChangeForArtworkSource:v12];
}

- (void)setupWithArtworkSource:(id)source
{
  sourceCopy = source;
  v4 = [BCCardStackTransitionCoverView alloc];
  [sourceCopy frame];
  v5 = [(BCCardStackTransitionCoverView *)v4 initWithFrame:?];
  coverView = self->_coverView;
  self->_coverView = v5;

  image = [sourceCopy image];
  [(BCCardStackTransitionCoverView *)self->_coverView setImage:image];

  [(BCSheetTransitionCoverController *)self _observeImageChangeForArtworkSource:sourceCopy];
}

- (void)configureCoverViewWithFrame:(CGRect)frame
{
  [(BCCardStackTransitionCoverView *)self->_coverView setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_observeImageChangeForArtworkSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    [(BCSheetTransitionCoverController *)self setObservedArtworkSource:sourceCopy];
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_60F1C;
    v5[3] = &unk_2CA028;
    objc_copyWeak(&v6, &location);
    [sourceCopy setImageChangeObserverBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end