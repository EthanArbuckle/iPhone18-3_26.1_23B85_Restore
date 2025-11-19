@interface CNMeCardSharingHeaderViewController
- (CNMeCardSharingHeaderViewController)initWithAvatarViewController:(id)a3 name:(id)a4 layoutAttributes:(id)a5;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingHeaderViewController

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CNMeCardSharingHeaderViewController;
  [(CNMeCardSharingHeaderViewController *)&v14 viewWillLayoutSubviews];
  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes topToAvatarPadding];
  v4 = v3;
  v5 = [(CNMeCardSharingHeaderViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v8 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [v8 setFrame:{0.0, v4, v7, 100.0}];

  v9 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [v9 frame];
  MaxY = CGRectGetMaxY(v15);
  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes avatarViewToNamePadding];
  v12 = MaxY + v11;
  v13 = [(CNMeCardSharingHeaderViewController *)self view];
  [v13 bounds];
  [(UILabel *)self->_nameLabel setFrame:0.0, v12];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNMeCardSharingHeaderViewController;
  [(CNMeCardSharingHeaderViewController *)&v10 viewDidLoad];
  v3 = [(CNMeCardSharingHeaderViewController *)self view];
  v4 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [v3 addSubview:v4];

  [(CNMeCardSharingHeaderViewController *)self addChildViewController:self->_avatarViewController];
  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController didMoveToParentViewController:self];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v6;

  [(UILabel *)self->_nameLabel setTextAlignment:1];
  v8 = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  [(UILabel *)self->_nameLabel setFont:v8];

  [(UILabel *)self->_nameLabel setAutoresizingMask:2];
  [(UILabel *)self->_nameLabel setText:self->_name];
  v9 = [(CNMeCardSharingHeaderViewController *)self view];
  [v9 addSubview:self->_nameLabel];
}

- (CNMeCardSharingHeaderViewController)initWithAvatarViewController:(id)a3 name:(id)a4 layoutAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNMeCardSharingHeaderViewController;
  v12 = [(CNMeCardSharingHeaderViewController *)&v16 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarViewController, a3);
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v13->_layoutAttributes, a5);
    v14 = v13;
  }

  return v13;
}

@end