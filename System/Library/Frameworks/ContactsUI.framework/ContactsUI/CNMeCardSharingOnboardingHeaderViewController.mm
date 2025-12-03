@interface CNMeCardSharingOnboardingHeaderViewController
+ (double)heightForHeaderWithContainerSize:(CGSize)size withTitle:(id)title layoutAttributes:(id)attributes hasAvatar:(BOOL)avatar;
- (CNMeCardSharingOnboardingHeaderViewController)initWithAvatarCarouselViewController:(id)controller headerTitle:(id)title layoutAttributes:(id)attributes;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingOnboardingHeaderViewController

- (void)viewWillLayoutSubviews
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CNMeCardSharingOnboardingHeaderViewController;
  [(CNMeCardSharingOnboardingHeaderViewController *)&v22 viewWillLayoutSubviews];
  headerTitle = self->_headerTitle;
  view = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [view bounds];
  v6 = v5 + -40.0;
  v23 = *MEMORY[0x1E69DB648];
  headerFont = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  v24[0] = headerFont;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(NSString *)headerTitle boundingRectWithSize:1 options:v8 attributes:0 context:v6, 1.79769313e308];
  v10 = v9;

  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes topToAvatarPadding];
  v12 = v11;
  view2 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [view2 bounds];
  [(UILabel *)self->_headerLabel setFrame:20.0, v12, v14 + -40.0, v10];

  [(UILabel *)self->_headerLabel frame];
  MaxY = CGRectGetMaxY(v25);
  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes avatarViewToNamePadding];
  v17 = MaxY + v16;
  view3 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [view3 bounds];
  v20 = v19;
  view4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselController view];
  [view4 setFrame:{0.0, v17, v20, 220.0}];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNMeCardSharingOnboardingHeaderViewController;
  [(CNMeCardSharingOnboardingHeaderViewController *)&v10 viewDidLoad];
  if (self->_avatarCarouselController)
  {
    view = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
    view2 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselController view];
    [view addSubview:view2];
  }

  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  headerLabel = self->_headerLabel;
  self->_headerLabel = v6;

  [(UILabel *)self->_headerLabel setNumberOfLines:0];
  [(UILabel *)self->_headerLabel setTextAlignment:1];
  headerFont = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  [(UILabel *)self->_headerLabel setFont:headerFont];

  [(UILabel *)self->_headerLabel setAutoresizingMask:2];
  [(UILabel *)self->_headerLabel setText:self->_headerTitle];
  view3 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [view3 addSubview:self->_headerLabel];
}

- (CNMeCardSharingOnboardingHeaderViewController)initWithAvatarCarouselViewController:(id)controller headerTitle:(id)title layoutAttributes:(id)attributes
{
  controllerCopy = controller;
  titleCopy = title;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = CNMeCardSharingOnboardingHeaderViewController;
  v12 = [(CNMeCardSharingOnboardingHeaderViewController *)&v16 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarCarouselController, controller);
    objc_storeStrong(&v13->_headerTitle, title);
    objc_storeStrong(&v13->_layoutAttributes, attributes);
    v14 = v13;
  }

  return v13;
}

+ (double)heightForHeaderWithContainerSize:(CGSize)size withTitle:(id)title layoutAttributes:(id)attributes hasAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  width = size.width;
  v20[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v19 = *MEMORY[0x1E69DB648];
  titleCopy = title;
  headerFont = [attributesCopy headerFont];
  v20[0] = headerFont;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [titleCopy boundingRectWithSize:1 options:v12 attributes:0 context:{width + -40.0, 1.79769313e308}];
  v14 = v13;

  [attributesCopy topToAvatarPadding];
  v16 = v14 + v15 + 20.0;
  if (avatarCopy)
  {
    [attributesCopy avatarViewToNamePadding];
    v16 = v16 + v17 + 220.0;
  }

  return v16;
}

@end