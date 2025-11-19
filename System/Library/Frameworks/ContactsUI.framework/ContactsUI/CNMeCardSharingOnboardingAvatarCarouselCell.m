@interface CNMeCardSharingOnboardingAvatarCarouselCell
- (CNMeCardSharingOnboardingAvatarCarouselCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setImageInsetPercentage:(double)a3;
- (void)setTitle:(id)a3;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselCell

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNMeCardSharingOnboardingAvatarCarouselCell;
  [(CNMeCardSharingOnboardingAvatarCarouselCell *)&v11 layoutSubviews];
  [(CNMeCardSharingOnboardingAvatarCarouselCell *)self bounds];
  v4 = floor(v3 * 0.5);
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  v7 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  [v7 bounds];
  v9 = v8 * self->_imageInsetPercentage;

  v10 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)self contentView];
  [v10 bounds];
  v13 = CGRectInset(v12, v9, v9);
  [(UIImageView *)self->_imageView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];

  [(UIImageView *)self->_imageView frame];
  [(UILabel *)self->_label setFrame:?];
}

- (void)setImageInsetPercentage:(double)a3
{
  if (self->_imageInsetPercentage != a3)
  {
    self->_imageInsetPercentage = a3;
    [(CNMeCardSharingOnboardingAvatarCarouselCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_label text];

  if (v4 != v6)
  {
    v5 = [v6 copy];
    [(UILabel *)self->_label setText:v5];

    [(UILabel *)self->_label setHidden:(*(*MEMORY[0x1E6996568] + 16))()];
  }
}

- (CNMeCardSharingOnboardingAvatarCarouselCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CNMeCardSharingOnboardingAvatarCarouselCell;
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    v8 = [MEMORY[0x1E69DC888] _secondarySystemBackgroundColor];
    v9 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [v9 setBackgroundColor:v8];

    v10 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [v10 addSubview:v3->_imageView];

    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    v12 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [v12 bounds];
    v13 = [v11 initWithFrame:?];
    label = v3->_label;
    v3->_label = v13;

    [(UILabel *)v3->_label setNumberOfLines:0];
    [(UILabel *)v3->_label setTextAlignment:1];
    v15 = +[CNUIColorRepository contactsApplicationTintColor];
    [(UILabel *)v3->_label setTextColor:v15];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    [(UILabel *)v3->_label setFont:v16];

    v17 = [(CNMeCardSharingOnboardingAvatarCarouselCell *)v3 contentView];
    [v17 addSubview:v3->_label];

    v18 = v3;
  }

  return v3;
}

@end