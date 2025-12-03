@interface TUIStatefulElementBox
- (TUIStatefulElementBox)init;
- (UIEdgeInsets)touchInsets;
- (double)pressedScale;
- (void)appendContainedChildrenToArray:(id)array;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)onContainedModelsChanged;
- (void)setEnabled:(BOOL)enabled;
- (void)setMenuContainer:(id)container;
- (void)setPressedScale:(double)scale;
- (void)setStateMap:(id)map;
- (void)setTouchInsets:(UIEdgeInsets)insets;
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

- (void)setMenuContainer:(id)container
{
  containerCopy = container;
  menuContainer = self->_menuContainer;
  v7 = containerCopy;
  if (menuContainer != containerCopy)
  {
    [(TUIMenuContainer *)menuContainer setParentModel:0];
    objc_storeStrong(&self->_menuContainer, container);
    [(TUIMenuContainer *)self->_menuContainer setParentModel:self];
  }
}

- (void)onContainedModelsChanged
{
  v2.receiver = self;
  v2.super_class = TUIStatefulElementBox;
  [(TUIContainerBox *)&v2 onContainedModelsChanged];
}

- (void)setStateMap:(id)map
{
  mapCopy = map;
  stateMap = self->_stateMap;
  if (stateMap != mapCopy)
  {
    [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:&stru_2635E0];
    objc_storeStrong(&self->_stateMap, map);
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

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  stateMap = self->_stateMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1743B4;
  v7[3] = &unk_261900;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)appendContainedChildrenToArray:(id)array
{
  arrayCopy = array;
  stateMap = self->_stateMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_17447C;
  v7[3] = &unk_263608;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSDictionary *)stateMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->super.super._flags + 2) = *(&self->super.super._flags + 2) & 0xFFFD | v3;
}

- (void)setPressedScale:(double)scale
{
  scaleCopy = scale;
  if (scaleCopy == 0.0)
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

  *DataForKey = scaleCopy;
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

- (void)setTouchInsets:(UIEdgeInsets)insets
{
  top = insets.top;
  left = insets.left;
  bottom = insets.bottom;
  right = insets.right;
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