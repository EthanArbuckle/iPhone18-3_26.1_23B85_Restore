@interface CNGroupIdentityActionItem
+ (id)imageForSystemImageNamed:(id)a3;
+ (id)imageForSystemImageNamed:(id)a3 withPointSize:(double)a4;
- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 image:(id)a5 actionBlock:(id)a6;
- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 systemImageName:(id)a5 actionBlock:(id)a6;
- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 systemImageName:(id)a5 overrideEnabledState:(BOOL)a6 actionBlock:(id)a7;
- (CNGroupIdentityActionItemDelegate)delegate;
- (void)setActionBlock:(id)a3;
- (void)setOverrideEnabledState:(BOOL)a3;
@end

@implementation CNGroupIdentityActionItem

- (CNGroupIdentityActionItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setActionBlock:(id)a3
{
  v4 = a3;
  if (self->_actionBlock != v4)
  {
    v10 = v4;
    v5 = _Block_copy(v4);
    actionBlock = self->_actionBlock;
    self->_actionBlock = v5;

    v7 = [(CNGroupIdentityActionItem *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v4 = v10;
    if (v8)
    {
      v9 = [(CNGroupIdentityActionItem *)self delegate];
      [v9 groupIdentityActionItem:self didUpdateActionBlock:v10];

      v4 = v10;
    }
  }
}

- (void)setOverrideEnabledState:(BOOL)a3
{
  if (self->_overrideEnabledState != a3)
  {
    v3 = a3;
    self->_overrideEnabledState = a3;
    v5 = [(CNGroupIdentityActionItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CNGroupIdentityActionItem *)self delegate];
      [v7 groupIdentityActionItem:self didUpdateOverrideEnabledState:v3];
    }
  }
}

- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 image:(id)a5 actionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = CNGroupIdentityActionItem;
  v15 = [(CNGroupIdentityActionItem *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    v16->_actionType = v12;
    v16->_image = v13;
    v17 = [v14 copy];
    actionBlock = v16->_actionBlock;
    v16->_actionBlock = v17;

    v16->_shouldPresentDisambiguationUI = 1;
    v19 = v16;
  }

  return v16;
}

- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 systemImageName:(id)a5 actionBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() imageForSystemImageNamed:v11];

  v15 = [(CNGroupIdentityActionItem *)self initWithTitle:v13 actionType:v12 image:v14 actionBlock:v10];
  return v15;
}

- (CNGroupIdentityActionItem)initWithTitle:(id)a3 actionType:(id)a4 systemImageName:(id)a5 overrideEnabledState:(BOOL)a6 actionBlock:(id)a7
{
  v8 = [(CNGroupIdentityActionItem *)self initWithTitle:a3 actionType:a4 systemImageName:a5 actionBlock:a7];
  v9 = v8;
  if (v8)
  {
    v8->_shouldOverrideEnabledState = 1;
    v8->_overrideEnabledState = a6;
    v10 = v8;
  }

  return v9;
}

+ (id)imageForSystemImageNamed:(id)a3 withPointSize:(double)a4
{
  v5 = MEMORY[0x1E69DCAD8];
  v6 = a3;
  v7 = [v5 configurationWithPointSize:0 weight:2 scale:a4];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6 withConfiguration:v7];

  return v8;
}

+ (id)imageForSystemImageNamed:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() imageForSystemImageNamed:v3 withTextStyle:*MEMORY[0x1E69DDDC8]];

  return v4;
}

@end