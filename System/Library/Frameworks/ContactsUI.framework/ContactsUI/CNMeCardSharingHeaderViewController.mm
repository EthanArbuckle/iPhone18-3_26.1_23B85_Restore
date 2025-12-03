@interface CNMeCardSharingHeaderViewController
- (CNMeCardSharingHeaderViewController)initWithAvatarViewController:(id)controller name:(id)name layoutAttributes:(id)attributes;
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
  view = [(CNMeCardSharingHeaderViewController *)self view];
  [view bounds];
  v7 = v6;
  view2 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [view2 setFrame:{0.0, v4, v7, 100.0}];

  view3 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [view3 frame];
  MaxY = CGRectGetMaxY(v15);
  [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes avatarViewToNamePadding];
  v12 = MaxY + v11;
  view4 = [(CNMeCardSharingHeaderViewController *)self view];
  [view4 bounds];
  [(UILabel *)self->_nameLabel setFrame:0.0, v12];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = CNMeCardSharingHeaderViewController;
  [(CNMeCardSharingHeaderViewController *)&v10 viewDidLoad];
  view = [(CNMeCardSharingHeaderViewController *)self view];
  view2 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [view addSubview:view2];

  [(CNMeCardSharingHeaderViewController *)self addChildViewController:self->_avatarViewController];
  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController didMoveToParentViewController:self];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v6;

  [(UILabel *)self->_nameLabel setTextAlignment:1];
  headerFont = [(CNMeCardSharingPickerLayoutAttributes *)self->_layoutAttributes headerFont];
  [(UILabel *)self->_nameLabel setFont:headerFont];

  [(UILabel *)self->_nameLabel setAutoresizingMask:2];
  [(UILabel *)self->_nameLabel setText:self->_name];
  view3 = [(CNMeCardSharingHeaderViewController *)self view];
  [view3 addSubview:self->_nameLabel];
}

- (CNMeCardSharingHeaderViewController)initWithAvatarViewController:(id)controller name:(id)name layoutAttributes:(id)attributes
{
  controllerCopy = controller;
  nameCopy = name;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = CNMeCardSharingHeaderViewController;
  v12 = [(CNMeCardSharingHeaderViewController *)&v16 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarViewController, controller);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_layoutAttributes, attributes);
    v14 = v13;
  }

  return v13;
}

@end