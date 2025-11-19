@interface SFAccountIconSharingBadgeImageCoordinator
- (SFAccountIconSharingBadgeImageCoordinator)initWithIconImageView:(id)a3 iconDiameter:(double)a4 parentView:(id)a5;
- (id)_badgeImage;
- (void)_createBadgeImageViewIfNecessary;
- (void)_layOutBadgeImageViewIfNecessary;
- (void)reset;
- (void)setShowsBadge:(BOOL)a3;
@end

@implementation SFAccountIconSharingBadgeImageCoordinator

- (SFAccountIconSharingBadgeImageCoordinator)initWithIconImageView:(id)a3 iconDiameter:(double)a4 parentView:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SFAccountIconSharingBadgeImageCoordinator;
  v11 = [(SFAccountIconSharingBadgeImageCoordinator *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_iconImageView, a3);
    objc_storeStrong(&v12->_parentView, a5);
    v13 = dbl_1D47DF880[a4 > 40.0] * a4;
    v12->_badgeDiameter = ceilf(v13) + -2.0;
    v14 = +[SFAccountIconSharingBadgeImageProvider sharedProvider];
    [v14 addCoordinatorAsSubscriber:v12];

    v15 = v12;
  }

  return v12;
}

- (void)setShowsBadge:(BOOL)a3
{
  v3 = a3;
  self->_showsBadge = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SFAccountIconSharingBadgeImageCoordinator_setShowsBadge___block_invoke;
  v5[3] = &unk_1E848F810;
  v5[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  [(UIImageView *)self->_badgeImageView setHidden:!v3];
  [(UIView *)self->_badgeMaskView setHidden:!v3];
}

uint64_t __59__SFAccountIconSharingBadgeImageCoordinator_setShowsBadge___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createBadgeImageViewIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _layOutBadgeImageViewIfNecessary];
}

- (void)_createBadgeImageViewIfNecessary
{
  if (!self->_badgeImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    badgeMaskView = self->_badgeMaskView;
    self->_badgeMaskView = v4;

    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_badgeMaskView setBackgroundColor:v6];

    [(SFAccountIconSharingBadgeImageCoordinator *)self _badgeMaskDiameter];
    [(UIView *)self->_badgeMaskView _setCornerRadius:v7 * 0.5];
    v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    v9 = [(UIView *)self->_badgeMaskView layer];
    [v9 setCompositingFilter:v8];

    [(UIView *)self->_parentView addSubview:self->_badgeMaskView];
    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v11 = [(SFAccountIconSharingBadgeImageCoordinator *)self _badgeImage];
    v12 = [v10 initWithImage:v11];
    badgeImageView = self->_badgeImageView;
    self->_badgeImageView = v12;

    parentView = self->_parentView;
    v15 = self->_badgeImageView;

    [(UIView *)parentView addSubview:v15];
  }
}

- (void)_layOutBadgeImageViewIfNecessary
{
  if (self->_badgeImageView)
  {
    [(SFAccountIconSharingBadgeImageCoordinator *)self _iconImageViewHeight];
    badgeDiameter = self->_badgeDiameter;
    *&v4 = badgeDiameter * -0.5 + v4 * 0.9;
    v5 = floorf(*&v4);
    [(UIView *)self->_parentView convertRect:self->_iconImageView fromView:v5, v5, badgeDiameter, badgeDiameter];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIImageView *)self->_badgeImageView setFrame:?];
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    v19 = CGRectInset(v18, -1.0, -1.0);
    [(UIView *)self->_badgeMaskView setFrame:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
    [(UIView *)self->_parentView bringSubviewToFront:self->_badgeImageView];
    badgeMaskView = self->_badgeMaskView;
    parentView = self->_parentView;
    badgeImageView = self->_badgeImageView;

    [(UIView *)parentView insertSubview:badgeMaskView belowSubview:badgeImageView];
  }
}

- (void)reset
{
  [(UIImageView *)self->_badgeImageView removeFromSuperview];
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = 0;

  [(UIView *)self->_badgeMaskView removeFromSuperview];
  badgeMaskView = self->_badgeMaskView;
  self->_badgeMaskView = 0;

  showsBadge = self->_showsBadge;

  [(SFAccountIconSharingBadgeImageCoordinator *)self setShowsBadge:showsBadge];
}

- (id)_badgeImage
{
  v3 = +[SFAccountIconSharingBadgeImageProvider sharedProvider];
  v4 = [v3 badgeImageForDiameter:self->_badgeDiameter];

  return v4;
}

@end