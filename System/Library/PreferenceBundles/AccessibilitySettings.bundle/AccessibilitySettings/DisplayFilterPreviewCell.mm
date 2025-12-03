@interface DisplayFilterPreviewCell
+ (double)previewCellHeight;
- (DisplayFilterPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation DisplayFilterPreviewCell

+ (double)previewCellHeight
{
  v2 = +[UIDevice currentDevice];
  [v2 userInterfaceIdiom];

  return 200.0;
}

- (DisplayFilterPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = DisplayFilterPreviewCell;
  v5 = [(DisplayFilterPreviewCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [UIImage imageNamed:@"DisplayFilterPreview" inBundle:v6];
    v8 = +[UIDevice currentDevice];
    [v8 userInterfaceIdiom];

    [v7 size];
    v11 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v10 * (200.0 / v9), v9 * (200.0 / v9)}];
    [v11 setImage:v7];
    [(DisplayFilterPreviewCell *)v5 addSubview:v11];
    [(DisplayFilterPreviewCell *)v5 setPreviewImageView:v11];
    v12 = v5;
  }

  return v5;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DisplayFilterPreviewCell;
  [(DisplayFilterPreviewCell *)&v10 layoutSubviews];
  [(DisplayFilterPreviewCell *)self bounds];
  if (v3 <= v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 + -40.0;
  v7 = (v3 - (v5 + -40.0)) * 0.5;
  v8 = (v4 - (v5 + -40.0)) * 0.5;
  previewImageView = [(DisplayFilterPreviewCell *)self previewImageView];
  [previewImageView setFrame:{v7, v8, v6, v6}];
}

@end