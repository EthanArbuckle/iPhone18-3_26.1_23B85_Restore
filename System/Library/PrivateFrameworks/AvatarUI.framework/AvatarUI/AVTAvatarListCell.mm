@interface AVTAvatarListCell
- (AVTAvatarListCell)initWithFrame:(CGRect)a3;
- (CGSize)aspectRatio;
- (UIImage)image;
- (UIView)avtViewContainer;
- (void)applyFullAlpha;
- (void)beginUsingAVTViewFromSession:(id)a3;
- (void)downcastWithCellHandler:(id)a3 listCellHandler:(id)a4;
- (void)endUsingAVTView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAspectRatio:(CGSize)a3;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)setImageViewVisible:(BOOL)a3;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
@end

@implementation AVTAvatarListCell

- (AVTAvatarListCell)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = AVTAvatarListCell;
  v3 = [(AVTAvatarListCell *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(AVTAvatarListCell *)v3 contentView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[AVTImageTransitioningContainerView alloc] initWithFrame:v7, v9, v11, v13];
    containerView = v4->_containerView;
    v4->_containerView = v14;

    v16 = [(AVTAvatarListCell *)v4 contentView];
    [v16 addSubview:v4->_containerView];
  }

  return v4;
}

- (UIImage)image
{
  v2 = [(AVTAvatarListCell *)self containerView];
  v3 = [v2 staticImage];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarListCell *)self containerView];
  [v5 setStaticImage:v4];
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTAvatarListCell *)self containerView];
  [v7 setStaticImage:v6 animated:v4];
}

- (UIView)avtViewContainer
{
  v2 = [(AVTAvatarListCell *)self containerView];
  v3 = [v2 liveView];

  return v3;
}

- (void)setAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AVTAvatarListCell *)self aspectRatio];
  if (v7 != width || v6 != height)
  {
    v9 = [(AVTAvatarListCell *)self containerView];
    [v9 setAspectRatio:{width, height}];

    [(AVTAvatarListCell *)self setNeedsLayout];
  }
}

- (CGSize)aspectRatio
{
  v2 = [(AVTAvatarListCell *)self containerView];
  [v2 aspectRatio];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)beginUsingAVTViewFromSession:(id)a3
{
  v4 = a3;
  v5 = [v4 avtView];
  [(AVTAvatarListCell *)self setAvtView:v5];

  v7 = [(AVTAvatarListCell *)self containerView];
  v6 = [v4 avtViewContainer];

  [v7 setLiveView:v6];
}

- (void)endUsingAVTView
{
  v3 = [(AVTAvatarListCell *)self containerView];
  [v3 setLiveView:0];

  [(AVTAvatarListCell *)self setAvtView:0];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = AVTAvatarListCell;
  [(AVTAvatarListCell *)&v19 layoutSubviews];
  v3 = [(AVTAvatarListCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(AVTAvatarListCell *)self containerView];
  [v12 frame];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v17 = CGRectEqualToRect(v20, v21);

  if (!v17)
  {
    v18 = [(AVTAvatarListCell *)self containerView];
    [v18 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)prepareForReuse
{
  [(AVTAvatarListCell *)self transitionStaticViewToFront];
  [(AVTAvatarListCell *)self setImage:0];
  [(AVTAvatarListCell *)self setImageViewVisible:1];
  v3.receiver = self;
  v3.super_class = AVTAvatarListCell;
  [(AVTAvatarListCell *)&v3 prepareForReuse];
}

- (void)setImageViewVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVTAvatarListCell *)self containerView];
  [v4 setStaticViewVisible:v3];
}

- (void)transitionStaticViewToFront
{
  v2 = [(AVTAvatarListCell *)self containerView];
  [v2 transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  v2 = [(AVTAvatarListCell *)self containerView];
  [v2 transitionLiveViewToFront];
}

- (void)applyFullAlpha
{
  v2 = [(AVTAvatarListCell *)self containerView];
  [v2 setAlpha:1.0];
}

- (void)downcastWithCellHandler:(id)a3 listCellHandler:(id)a4
{
  if (a4)
  {
    v6 = *(a4 + 2);

    v6(a4, self);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = AVTAvatarListCell;
    [(UICollectionViewCell *)&v7 downcastWithCellHandler:a3 listCellHandler:?];
  }
}

@end