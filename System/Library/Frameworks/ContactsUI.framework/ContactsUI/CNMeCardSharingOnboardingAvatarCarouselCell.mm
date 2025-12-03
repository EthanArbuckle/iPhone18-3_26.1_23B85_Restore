@interface CNMeCardSharingOnboardingAvatarCarouselCell
- (CNMeCardSharingOnboardingAvatarCarouselCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImageInsetPercentage:(double)percentage;
- (void)setTitle:(id)title;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselCell

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNMeCardSharingOnboardingAvatarCarouselCell;
  [(CNMeCardSharingOnboardingAvatarCarouselCell *)&v11 layoutSubviews];
  [(CNMeCardSharingOnboardingAvatarCarouselCell *)self bounds];
  v4 = floor(v3 * 0.5);
  contentView = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  layer = [contentView layer];
  [layer setCornerRadius:v4];

  contentView2 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  [contentView2 bounds];
  v9 = v8 * self->_imageInsetPercentage;

  contentView3 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  [contentView3 bounds];
  v13 = CGRectInset(v12, v9, v9);
  [(UIImageView *)self->_imageView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];

  [(UIImageView *)self->_imageView frame];
  [(UILabel *)self->_label setFrame:?];
}

- (void)setImageInsetPercentage:(double)percentage
{
  if (self->_imageInsetPercentage != percentage)
  {
    self->_imageInsetPercentage = percentage;
    [(CNMeCardSharingOnboardingAvatarCarouselCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_label text];

  if (text != titleCopy)
  {
    v5 = [titleCopy copy];
    [(UILabel *)self->_label setText:v5];

    [(UILabel *)self->_label setHidden:(*(*MEMORY[0x1E6996568] + 16))()];
  }
}

- (CNMeCardSharingOnboardingAvatarCarouselCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = CNMeCardSharingOnboardingAvatarCarouselCell;
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    contentView = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    _secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] _secondarySystemBackgroundColor];
    contentView2 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [contentView2 setBackgroundColor:_secondarySystemBackgroundColor];

    contentView3 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [contentView3 addSubview:v3->_imageView];

    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    contentView4 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [contentView4 bounds];
    v13 = [v11 initWithFrame:?];
    label = v3->_label;
    v3->_label = v13;

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setTextAlignment:1];
    v15 = +[CNUIColorRepository contactsApplicationTintColor];
    [(UILabel *)v3->_label setTextColor:v15];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    [(UILabel *)v3->_label setFont:v16];

    contentView5 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [contentView5 addSubview:v3->_label];

    v18 = v3;
  }

  return v3;
}

@end