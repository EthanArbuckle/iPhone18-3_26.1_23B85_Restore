@interface CNMeCardSharingOnboardingAvatarCarouselItem
- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithImageInsetPercentage:(double)percentage imageProvider:(id)provider;
- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithTitle:(id)title;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselItem

- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = CNMeCardSharingOnboardingAvatarCarouselItem;
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (CNMeCardSharingOnboardingAvatarCarouselItem)initWithImageInsetPercentage:(double)percentage imageProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNMeCardSharingOnboardingAvatarCarouselItem;
  v7 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_imageInsetPercentage = percentage;
    v9 = [providerCopy copy];
    imageProvider = v8->_imageProvider;
    v8->_imageProvider = v9;

    v11 = v8;
  }

  return v8;
}

@end