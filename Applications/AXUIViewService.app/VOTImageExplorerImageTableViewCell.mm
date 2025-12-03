@interface VOTImageExplorerImageTableViewCell
- (VOTImageExplorerImageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)initializeImageView;
@end

@implementation VOTImageExplorerImageTableViewCell

- (VOTImageExplorerImageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VOTImageExplorerImageTableViewCell;
  v4 = [(VOTImageExplorerImageTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VOTImageExplorerImageTableViewCell *)v4 initializeImageView];
  }

  return v5;
}

- (void)initializeImageView
{
  v3 = [VOTImageExplorerImageView alloc];
  [(VOTImageExplorerImageTableViewCell *)self frame];
  v4 = [(VOTImageExplorerImageView *)v3 initWithFrame:?];
  [(VOTImageExplorerImageTableViewCell *)self setExplorerImageView:v4];

  explorerImageView = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [explorerImageView setContentMode:1];

  explorerImageView2 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [explorerImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  explorerImageView3 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [explorerImageView3 setClipsToBounds:1];

  explorerImageView4 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [(VOTImageExplorerImageTableViewCell *)self addSubview:explorerImageView4];

  explorerImageView5 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  leftAnchor = [explorerImageView5 leftAnchor];
  leftAnchor2 = [(VOTImageExplorerImageTableViewCell *)self leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v12 setActive:1];

  explorerImageView6 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  rightAnchor = [explorerImageView6 rightAnchor];
  rightAnchor2 = [(VOTImageExplorerImageTableViewCell *)self rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v16 setActive:1];

  explorerImageView7 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  topAnchor = [explorerImageView7 topAnchor];
  topAnchor2 = [(VOTImageExplorerImageTableViewCell *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v20 setActive:1];

  explorerImageView8 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  bottomAnchor = [explorerImageView8 bottomAnchor];
  bottomAnchor2 = [(VOTImageExplorerImageTableViewCell *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 setActive:1];
}

@end