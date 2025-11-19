@interface CHAchievementCollectionViewCell
- (CGRect)badgeFrame;
- (CHAchievementCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_createAndAddSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAchievement:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageHidden:(BOOL)a3;
@end

@implementation CHAchievementCollectionViewCell

- (CHAchievementCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHAchievementCollectionViewCell;
  v3 = [(CHAchievementCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(CHAchievementCollectionViewCell *)v3 setBackgroundColor:v4];

    [(CHAchievementCollectionViewCell *)v3 _createAndAddSubviews];
    [(CHAchievementCollectionViewCell *)v3 setIsAccessibilityElement:1];
  }

  return v3;
}

- (void)setImageHidden:(BOOL)a3
{
  v3 = a3;
  self->_imageHidden = a3;
  v4 = [(CHAchievementCollectionViewCell *)self imageView];
  [v4 setHidden:v3];
}

- (void)_createAndAddSubviews
{
  v3 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setContentMode:4];
  v5 = [(CHAchievementCollectionViewCell *)self contentView];
  [v5 addSubview:self->_imageView];
}

- (void)setAchievement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_achievement, a3);
  v6 = [(CHAchievementCollectionViewCell *)self locProvider];
  v7 = [v6 titleForAchievement:v5];
  [(CHAchievementCollectionViewCell *)self setAccessibilityLabel:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ACHIEVEMENT_TITLE_ACCESSIBILITY_HINT" value:&stru_1008680E8 table:@"Localizable"];
  [(CHAchievementCollectionViewCell *)self setAccessibilityHint:v9];

  v10 = [v5 template];
  v11 = [v10 uniqueName];
  [(CHAchievementCollectionViewCell *)self setAccessibilityIdentifier:v11];

  v12 = dispatch_get_global_queue(25, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010BBC4;
  v14[3] = &unk_10083A970;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  dispatch_async(v12, v14);
}

- (void)setHighlighted:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CHAchievementCollectionViewCell;
  [(CHAchievementCollectionViewCell *)&v3 setHighlighted:a3];
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
  v11 = [(CHAchievementCollectionViewCell *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CHAchievementCollectionViewCell;
  [(CHAchievementCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(CHAchievementCollectionViewCell *)self imageView];
  [v3 setImage:0];
}

- (CGRect)badgeFrame
{
  v2 = [(CHAchievementCollectionViewCell *)self imageView];
  [v2 frame];
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