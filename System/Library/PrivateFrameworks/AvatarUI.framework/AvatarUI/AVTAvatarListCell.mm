@interface AVTAvatarListCell
- (AVTAvatarListCell)initWithFrame:(CGRect)frame;
- (CGSize)aspectRatio;
- (UIImage)image;
- (UIView)avtViewContainer;
- (void)applyFullAlpha;
- (void)beginUsingAVTViewFromSession:(id)session;
- (void)downcastWithCellHandler:(id)handler listCellHandler:(id)cellHandler;
- (void)endUsingAVTView;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAspectRatio:(CGSize)ratio;
- (void)setImage:(id)image;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)setImageViewVisible:(BOOL)visible;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
@end

@implementation AVTAvatarListCell

- (AVTAvatarListCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = AVTAvatarListCell;
  v3 = [(AVTAvatarListCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(AVTAvatarListCell *)v3 contentView];
    [contentView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[AVTImageTransitioningContainerView alloc] initWithFrame:v7, v9, v11, v13];
    containerView = v4->_containerView;
    v4->_containerView = v14;

    contentView2 = [(AVTAvatarListCell *)v4 contentView];
    [contentView2 addSubview:v4->_containerView];
  }

  return v4;
}

- (UIImage)image
{
  containerView = [(AVTAvatarListCell *)self containerView];
  staticImage = [containerView staticImage];

  return staticImage;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView setStaticImage:imageCopy];
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView setStaticImage:imageCopy animated:animatedCopy];
}

- (UIView)avtViewContainer
{
  containerView = [(AVTAvatarListCell *)self containerView];
  liveView = [containerView liveView];

  return liveView;
}

- (void)setAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  [(AVTAvatarListCell *)self aspectRatio];
  if (v7 != width || v6 != height)
  {
    containerView = [(AVTAvatarListCell *)self containerView];
    [containerView setAspectRatio:{width, height}];

    [(AVTAvatarListCell *)self setNeedsLayout];
  }
}

- (CGSize)aspectRatio
{
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView aspectRatio];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)beginUsingAVTViewFromSession:(id)session
{
  sessionCopy = session;
  avtView = [sessionCopy avtView];
  [(AVTAvatarListCell *)self setAvtView:avtView];

  containerView = [(AVTAvatarListCell *)self containerView];
  avtViewContainer = [sessionCopy avtViewContainer];

  [containerView setLiveView:avtViewContainer];
}

- (void)endUsingAVTView
{
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView setLiveView:0];

  [(AVTAvatarListCell *)self setAvtView:0];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = AVTAvatarListCell;
  [(AVTAvatarListCell *)&v19 layoutSubviews];
  contentView = [(AVTAvatarListCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView frame];
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
    containerView2 = [(AVTAvatarListCell *)self containerView];
    [containerView2 setFrame:{v5, v7, v9, v11}];
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

- (void)setImageViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView setStaticViewVisible:visibleCopy];
}

- (void)transitionStaticViewToFront
{
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView transitionLiveViewToFront];
}

- (void)applyFullAlpha
{
  containerView = [(AVTAvatarListCell *)self containerView];
  [containerView setAlpha:1.0];
}

- (void)downcastWithCellHandler:(id)handler listCellHandler:(id)cellHandler
{
  if (cellHandler)
  {
    v6 = *(cellHandler + 2);

    v6(cellHandler, self);
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = AVTAvatarListCell;
    [(UICollectionViewCell *)&v7 downcastWithCellHandler:handler listCellHandler:?];
  }
}

@end