@interface CNGroupIdentityActionItem
+ (id)imageForSystemImageNamed:(id)named;
+ (id)imageForSystemImageNamed:(id)named withPointSize:(double)size;
- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type image:(id)image actionBlock:(id)block;
- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type systemImageName:(id)name actionBlock:(id)block;
- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type systemImageName:(id)name overrideEnabledState:(BOOL)state actionBlock:(id)block;
- (CNGroupIdentityActionItemDelegate)delegate;
- (void)setActionBlock:(id)block;
- (void)setOverrideEnabledState:(BOOL)state;
@end

@implementation CNGroupIdentityActionItem

- (CNGroupIdentityActionItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setActionBlock:(id)block
{
  blockCopy = block;
  if (self->_actionBlock != blockCopy)
  {
    v10 = blockCopy;
    v5 = _Block_copy(blockCopy);
    actionBlock = self->_actionBlock;
    self->_actionBlock = v5;

    delegate = [(CNGroupIdentityActionItem *)self delegate];
    v8 = objc_opt_respondsToSelector();

    blockCopy = v10;
    if (v8)
    {
      delegate2 = [(CNGroupIdentityActionItem *)self delegate];
      [delegate2 groupIdentityActionItem:self didUpdateActionBlock:v10];

      blockCopy = v10;
    }
  }
}

- (void)setOverrideEnabledState:(BOOL)state
{
  if (self->_overrideEnabledState != state)
  {
    stateCopy = state;
    self->_overrideEnabledState = state;
    delegate = [(CNGroupIdentityActionItem *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(CNGroupIdentityActionItem *)self delegate];
      [delegate2 groupIdentityActionItem:self didUpdateOverrideEnabledState:stateCopy];
    }
  }
}

- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type image:(id)image actionBlock:(id)block
{
  titleCopy = title;
  typeCopy = type;
  imageCopy = image;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = CNGroupIdentityActionItem;
  v15 = [(CNGroupIdentityActionItem *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    v16->_actionType = typeCopy;
    v16->_image = imageCopy;
    v17 = [blockCopy copy];
    actionBlock = v16->_actionBlock;
    v16->_actionBlock = v17;

    v16->_shouldPresentDisambiguationUI = 1;
    v19 = v16;
  }

  return v16;
}

- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type systemImageName:(id)name actionBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  typeCopy = type;
  titleCopy = title;
  v14 = [objc_opt_class() imageForSystemImageNamed:nameCopy];

  v15 = [(CNGroupIdentityActionItem *)self initWithTitle:titleCopy actionType:typeCopy image:v14 actionBlock:blockCopy];
  return v15;
}

- (CNGroupIdentityActionItem)initWithTitle:(id)title actionType:(id)type systemImageName:(id)name overrideEnabledState:(BOOL)state actionBlock:(id)block
{
  v8 = [(CNGroupIdentityActionItem *)self initWithTitle:title actionType:type systemImageName:name actionBlock:block];
  v9 = v8;
  if (v8)
  {
    v8->_shouldOverrideEnabledState = 1;
    v8->_overrideEnabledState = state;
    v10 = v8;
  }

  return v9;
}

+ (id)imageForSystemImageNamed:(id)named withPointSize:(double)size
{
  v5 = MEMORY[0x1E69DCAD8];
  namedCopy = named;
  v7 = [v5 configurationWithPointSize:0 weight:2 scale:size];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:v7];

  return v8;
}

+ (id)imageForSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [objc_opt_class() imageForSystemImageNamed:namedCopy withTextStyle:*MEMORY[0x1E69DDDC8]];

  return v4;
}

@end