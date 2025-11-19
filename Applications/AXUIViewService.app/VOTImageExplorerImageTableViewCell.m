@interface VOTImageExplorerImageTableViewCell
- (VOTImageExplorerImageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)initializeImageView;
@end

@implementation VOTImageExplorerImageTableViewCell

- (VOTImageExplorerImageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = VOTImageExplorerImageTableViewCell;
  v4 = [(VOTImageExplorerImageTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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

  v5 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [v5 setContentMode:1];

  v6 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [v7 setClipsToBounds:1];

  v8 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  [(VOTImageExplorerImageTableViewCell *)self addSubview:v8];

  v9 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  v10 = [v9 leftAnchor];
  v11 = [(VOTImageExplorerImageTableViewCell *)self leftAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  v14 = [v13 rightAnchor];
  v15 = [(VOTImageExplorerImageTableViewCell *)self rightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  v18 = [v17 topAnchor];
  v19 = [(VOTImageExplorerImageTableViewCell *)self topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v24 = [(VOTImageExplorerImageTableViewCell *)self explorerImageView];
  v21 = [v24 bottomAnchor];
  v22 = [(VOTImageExplorerImageTableViewCell *)self bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];
}

@end