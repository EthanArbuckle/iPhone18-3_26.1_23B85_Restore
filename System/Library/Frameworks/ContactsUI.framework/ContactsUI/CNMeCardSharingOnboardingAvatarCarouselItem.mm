@interface CNMeCardSharingOnboardingAvatarCarouselItem
- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithImageInsetPercentage:(double)a3 imageProvider:(id)a4;
- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithTitle:(id)a3;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselItem

- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNMeCardSharingOnboardingAvatarCarouselItem;
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithImageInsetPercentage:(double)a3 imageProvider:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CNMeCardSharingOnboardingAvatarCarouselItem;
  v7 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_imageInsetPercentage = a3;
    v9 = [v6 copy];
    imageProvider = v8->_imageProvider;
    v8->_imageProvider = v9;

    v11 = v8;
  }

  return v8;
}

@end