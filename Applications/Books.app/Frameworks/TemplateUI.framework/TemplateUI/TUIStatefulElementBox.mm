@interface TUIStatefulElementBox
- (TUIStatefulElementBox)init;
- (UIEdgeInsets)touchInsets;
- (double)pressedScale;
- (void)appendContainedChildrenToArray:(id)a3;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)onContainedModelsChanged;
- (void)setEnabled:(BOOL)a3;
- (void)setMenuContainer:(id)a3;
- (void)setPressedScale:(double)a3;
- (void)setStateMap:(id)a3;
- (void)setTouchInsets:(UIEdgeInsets)a3;
@end

@implementation TUIStatefulElementBox

- (TUIStatefulElementBox)init
{
  v3.receiver = self;
  v3.super_class = TUIStatefulElementBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->super.super._storage._data = TUIStatefulElementBoxStorageDataset | 1;
  }

  return result;
}

- (void)setMenuContainer:(id)a3
{
  v5 = a3;
  menuContainer = self->_menuContainer;
  v7 = v5;
  if (menuContainer != v5)
  {
    [(TUIMenuContainer *)menuContainer setParentModel:0];
    objc_storeStrong(&self->_menuContainer, a3);
    [(TUIMenuContainer *)self->_menuContainer setParentModel:self];
  }
}

- (void)onContainedModelsChanged
{
  v2.receiver = self;
  v2.super_class = TUIStatefulElementBox;
  [(TUIContainerBox *)&v2 onContainedModelsChanged];
}

- (void)setStateMap:(id)a3
{
  v5 = a3;
  stateMap = self->_stateMap;
  if (stateMap != v5)
  {
    [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:&stru_2635E0];
    objc_storeStrong(&self->_stateMap, a3);
    v7 = self->_stateMap;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1742EC;
    v8[3] = &unk_261900;
    v8[4] = self;
    [(NSDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v8];
    [(TUIStatefulElementBox *)self onContainedModelsChanged];
  }
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  stateMap = self->_stateMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1743B4;
  v7[3] = &unk_261900;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)appendContainedChildrenToArray:(id)a3
{
  v4 = a3;
  stateMap = self->_stateMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17447C;
  v7[3] = &unk_263608;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFFD | v3;
}

- (void)setPressedScale:(double)a3
{
  v4 = a3;
  if (v4 == 0.0)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0xBu);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0xBu);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0xBu, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = v4;
}

- (double)pressedScale
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0xBu);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0.0;
  }
}

- (void)setTouchInsets:(UIEdgeInsets)a3
{
  top = a3.top;
  left = a3.left;
  bottom = a3.bottom;
  right = a3.right;
  if (TUIInsets32Equal(top, left, bottom, right, 0.0, 0.0, 0.0, 0.0))
  {
    v8 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x26u);
    if (!v8)
    {
      return;
    }

    DataForKey = v8;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->super.super._storage._data, 0x26u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->super.super._storage, 0x26u, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = top;
  DataForKey[1] = left;
  DataForKey[2] = bottom;
  DataForKey[3] = right;
}

- (UIEdgeInsets)touchInsets
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->super.super._storage, 0x26u);
  v3 = &TUIInsets32Zero;
  if (v2)
  {
    v3 = v2;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

@end