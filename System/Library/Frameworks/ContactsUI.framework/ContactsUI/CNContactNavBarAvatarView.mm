@interface CNContactNavBarAvatarView
- (CNContactNavBarAvatarView)initWithFrame:(CGRect)a3;
- (void)setContact:(id)a3;
- (void)setShowing:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CNContactNavBarAvatarView

- (void)setShowing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showing != a3)
  {
    v16 = v7;
    v17 = v6;
    v18 = v4;
    v19 = v5;
    v8 = a4;
    self->_showing = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__CNContactNavBarAvatarView_setShowing_animated___block_invoke;
    aBlock[3] = &unk_1E74E4768;
    aBlock[4] = self;
    v15 = a3;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v8)
    {
      v11 = MEMORY[0x1E69DD250];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__CNContactNavBarAvatarView_setShowing_animated___block_invoke_2;
      v12[3] = &unk_1E74E6F88;
      v13 = v9;
      [v11 animateWithDuration:v12 animations:0.15];
    }

    else
    {
      v9[2](v9);
    }
  }
}

void __49__CNContactNavBarAvatarView_setShowing_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) avatarView];
  [v2 setAlpha:v1];
}

- (void)setContact:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_contact, a3);
  if (v5)
  {
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(CNContactNavBarAvatarView *)self avatarView];
  v8 = [v7 contacts];
  v9 = [v8 _cn_isIdenticalToArray:v6];

  v10 = [(CNContactNavBarAvatarView *)self avatarView];
  v11 = v10;
  if (v9)
  {
    [v10 contactDidChange];
  }

  else
  {
    [v10 setContacts:v6];
  }
}

- (CNContactNavBarAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = CNContactNavBarAvatarView;
  v7 = [(CNContactNavBarAvatarView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = objc_alloc_init(CNAvatarView);
    avatarView = v7->_avatarView;
    v7->_avatarView = v8;

    [(CNAvatarView *)v7->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarView *)v7->_avatarView setAlpha:0.0];
    [(CNAvatarView *)v7->_avatarView setFrame:x, y, width, height];
    v7->_showing = 0;
    [(CNContactNavBarAvatarView *)v7 addSubview:v7->_avatarView];
    v10 = v7;
  }

  return v7;
}

@end