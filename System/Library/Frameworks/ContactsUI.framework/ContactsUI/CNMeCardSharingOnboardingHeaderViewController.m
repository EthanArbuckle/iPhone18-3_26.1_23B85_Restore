@interface CNMeCardSharingOnboardingHeaderViewController
+ (double)heightForHeaderWithContainerSize:(CGSize)a3 withTitle:(id)a4 layoutAttributes:(id)a5 hasAvatar:(BOOL)a6;
- (CNMeCardSharingOnboardingHeaderViewController)initWithAvatarCarouselViewController:(id)a3 headerTitle:(id)a4 layoutAttributes:(id)a5;
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
  v4 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [v4 bounds];
  v6 = v5 + -40.0;
  v23 = *MEMORY[0x1E69DB648];
  v7 = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  v24[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(NSString *)headerTitle boundingRectWithSize:1 options:v8 attributes:0 context:v6, 1.79769313e308];
  v10 = v9;

  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes topToAvatarPadding];
  v12 = v11;
  v13 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [v13 bounds];
  [(UILabel *)self->_headerLabel setFrame:20.0, v12, v14 + -40.0, v10];

  [(UILabel *)self->_headerLabel frame];
  MaxY = CGRectGetMaxY(v25);
  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes avatarViewToNamePadding];
  v17 = MaxY + v16;
  v18 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [v18 bounds];
  v20 = v19;
  v21 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselController view];
  [v21 setFrame:{0.0, v17, v20, 220.0}];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNMeCardSharingOnboardingHeaderViewController;
  [(CNMeCardSharingOnboardingHeaderViewController *)&v10 viewDidLoad];
  if (self->_avatarCarouselController)
  {
    v3 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
    v4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselController view];
    [v3 addSubview:v4];
  }

  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  headerLabel = self->_headerLabel;
  self->_headerLabel = v6;

  [(UILabel *)self->_headerLabel setNumberOfLines:0];
  [(UILabel *)self->_headerLabel setTextAlignment:1];
  v8 = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  [(UILabel *)self->_headerLabel setFont:v8];

  [(UILabel *)self->_headerLabel setAutoresizingMask:2];
  [(UILabel *)self->_headerLabel setText:self->_headerTitle];
  v9 = [(CNMeCardSharingOnboardingHeaderViewController *)self view];
  [v9 addSubview:self->_headerLabel];
}

- (CNMeCardSharingOnboardingHeaderViewController)initWithAvatarCarouselViewController:(id)a3 headerTitle:(id)a4 layoutAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNMeCardSharingOnboardingHeaderViewController;
  v12 = [(CNMeCardSharingOnboardingHeaderViewController *)&v16 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarCarouselController, a3);
    objc_storeStrong(&v13->_headerTitle, a4);
    objc_storeStrong(&v13->_layoutAttributes, a5);
    v14 = v13;
  }

  return v13;
}

+ (double)heightForHeaderWithContainerSize:(CGSize)a3 withTitle:(id)a4 layoutAttributes:(id)a5 hasAvatar:(BOOL)a6
{
  v6 = a6;
  width = a3.width;
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v19 = *MEMORY[0x1E69DB648];
  v10 = a4;
  v11 = [v9 headerFont];
  v20[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v10 boundingRectWithSize:1 options:v12 attributes:0 context:{width + -40.0, 1.79769313e308}];
  v14 = v13;

  [v9 topToAvatarPadding];
  v16 = v14 + v15 + 20.0;
  if (v6)
  {
    [v9 avatarViewToNamePadding];
    v16 = v16 + v17 + 220.0;
  }

  return v16;
}

@end