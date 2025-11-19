@interface FMDMovieProxCardMovieView
- (FMDMovieProxCardMovieView)initWithMovieURL:(id)a3 adjustmentsURL:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAdjustments;
@end

@implementation FMDMovieProxCardMovieView

- (FMDMovieProxCardMovieView)initWithMovieURL:(id)a3 adjustmentsURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FMDMovieProxCardMovieView;
  v8 = [(FMDMovieProxCardMovieView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adjustmentsURL, a4);
    v10 = [AVPlayer playerWithURL:v6];
    player = v9->_player;
    v9->_player = v10;

    [(AVPlayer *)v9->_player setActionAtItemEnd:2];
    v12 = v9->_player;
    v13 = [(FMDMovieProxCardMovieView *)v9 layer];
    [v13 setPlayer:v12];

    [(FMDMovieProxCardMovieView *)v9 updateAdjustments];
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = +[UITraitCollection currentTraitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v4 != v6)
  {

    [(FMDMovieProxCardMovieView *)self updateAdjustments];
  }
}

- (void)updateAdjustments
{
  v3 = +[UITraitCollection currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 <= 2)
  {
    v5 = dword_100025F40[v4];
  }

  v8 = [(FMDMovieProxCardMovieView *)self adjustmentsURL];
  v6 = SFAdjustmentFiltersForAssetTypeAndURL();
  v7 = [(FMDMovieProxCardMovieView *)self layer];
  [v7 setFilters:v6];
}

@end