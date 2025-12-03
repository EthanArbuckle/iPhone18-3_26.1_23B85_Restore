@interface FMDMovieProxCardMovieView
- (FMDMovieProxCardMovieView)initWithMovieURL:(id)l adjustmentsURL:(id)rL;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAdjustments;
@end

@implementation FMDMovieProxCardMovieView

- (FMDMovieProxCardMovieView)initWithMovieURL:(id)l adjustmentsURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = FMDMovieProxCardMovieView;
  v8 = [(FMDMovieProxCardMovieView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adjustmentsURL, rL);
    v10 = [AVPlayer playerWithURL:lCopy];
    player = v9->_player;
    v9->_player = v10;

    [(AVPlayer *)v9->_player setActionAtItemEnd:2];
    v12 = v9->_player;
    layer = [(FMDMovieProxCardMovieView *)v9 layer];
    [layer setPlayer:v12];

    [(FMDMovieProxCardMovieView *)v9 updateAdjustments];
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  v5 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle2 = [v5 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(FMDMovieProxCardMovieView *)self updateAdjustments];
  }
}

- (void)updateAdjustments
{
  v3 = +[UITraitCollection currentTraitCollection];
  userInterfaceStyle = [v3 userInterfaceStyle];

  if (userInterfaceStyle <= 2)
  {
    v5 = dword_100025F40[userInterfaceStyle];
  }

  adjustmentsURL = [(FMDMovieProxCardMovieView *)self adjustmentsURL];
  v6 = SFAdjustmentFiltersForAssetTypeAndURL();
  layer = [(FMDMovieProxCardMovieView *)self layer];
  [layer setFilters:v6];
}

@end