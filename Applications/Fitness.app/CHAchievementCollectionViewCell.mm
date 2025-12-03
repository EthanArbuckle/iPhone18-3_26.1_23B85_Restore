@interface CHAchievementCollectionViewCell
- (CGRect)badgeFrame;
- (CHAchievementCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_createAndAddSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAchievement:(id)achievement;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageHidden:(BOOL)hidden;
@end

@implementation CHAchievementCollectionViewCell

- (CHAchievementCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CHAchievementCollectionViewCell;
  v3 = [(CHAchievementCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CHAchievementCollectionViewCell *)v3 setBackgroundColor:v4];

    [(CHAchievementCollectionViewCell *)v3 _createAndAddSubviews];
    [(CHAchievementCollectionViewCell *)v3 setIsAccessibilityElement:1];
  }

  return v3;
}

- (void)setImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_imageHidden = hidden;
  imageView = [(CHAchievementCollectionViewCell *)self imageView];
  [imageView setHidden:hiddenCopy];
}

- (void)_createAndAddSubviews
{
  v3 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setContentMode:4];
  contentView = [(CHAchievementCollectionViewCell *)self contentView];
  [contentView addSubview:self->_imageView];
}

- (void)setAchievement:(id)achievement
{
  achievementCopy = achievement;
  objc_storeStrong(&self->_achievement, achievement);
  locProvider = [(CHAchievementCollectionViewCell *)self locProvider];
  v7 = [locProvider titleForAchievement:achievementCopy];
  [(CHAchievementCollectionViewCell *)self setAccessibilityLabel:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ACHIEVEMENT_TITLE_ACCESSIBILITY_HINT" value:&stru_1008680E8 table:@"Localizable"];
  [(CHAchievementCollectionViewCell *)self setAccessibilityHint:v9];

  template = [achievementCopy template];
  uniqueName = [template uniqueName];
  [(CHAchievementCollectionViewCell *)self setAccessibilityIdentifier:uniqueName];

  v12 = dispatch_get_global_queue(25, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010BBC4;
  v14[3] = &unk_10083A970;
  v14[4] = self;
  v15 = achievementCopy;
  v13 = achievementCopy;
  dispatch_async(v12, v14);
}

- (void)setHighlighted:(BOOL)highlighted
{
  v3.receiver = self;
  v3.super_class = CHAchievementCollectionViewCell;
  [(CHAchievementCollectionViewCell *)&v3 setHighlighted:highlighted];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CHAchievementCollectionViewCell;
  [(CHAchievementCollectionViewCell *)&v12 layoutSubviews];
  [(CHAchievementCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(CHAchievementCollectionViewCell *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CHAchievementCollectionViewCell;
  [(CHAchievementCollectionViewCell *)&v4 prepareForReuse];
  imageView = [(CHAchievementCollectionViewCell *)self imageView];
  [imageView setImage:0];
}

- (CGRect)badgeFrame
{
  imageView = [(CHAchievementCollectionViewCell *)self imageView];
  [imageView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end