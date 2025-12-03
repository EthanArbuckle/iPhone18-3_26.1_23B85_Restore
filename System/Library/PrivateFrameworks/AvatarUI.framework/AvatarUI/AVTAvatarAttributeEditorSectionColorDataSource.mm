@interface AVTAvatarAttributeEditorSectionColorDataSource
+ (id)selectedItemFromItems:(id)items;
+ (int64_t)indexOfItem:(id)item inItems:(id)items;
- (AVTAvatarAttributeEditorSectionColorDataSource)init;
- (id)indexPathOfExtendedIcon;
- (id)sectionItemAtIndex:(int64_t)index;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)selectedItemIndex;
- (void)resetToDefaultDisplayMode;
- (void)selectSectionItemAtIndexPath:(id)path;
- (void)setColorSection:(id)section;
- (void)setDisplayMode:(int64_t)mode;
- (void)toggleExtendedMode;
- (void)toggleSliderMode;
- (void)updateSelectedIndexesSelectingItem:(id)item fromUserInteraction:(BOOL)interaction;
@end

@implementation AVTAvatarAttributeEditorSectionColorDataSource

+ (id)selectedItemFromItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isSelected])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (int64_t)indexOfItem:(id)item inItems:(id)items
{
  itemCopy = item;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AVTAvatarAttributeEditorSectionColorDataSource_indexOfItem_inItems___block_invoke;
  v9[3] = &unk_1E7F3CCC8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [items indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __70__AVTAvatarAttributeEditorSectionColorDataSource_indexOfItem_inItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 color];
  v4 = [*(a1 + 32) color];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (AVTAvatarAttributeEditorSectionColorDataSource)init
{
  v4.receiver = self;
  v4.super_class = AVTAvatarAttributeEditorSectionColorDataSource;
  result = [(AVTAvatarAttributeEditorSectionColorDataSource *)&v4 init];
  if (result)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    *&result->_selectedPrimaryColorIndex = vnegq_f64(v3);
  }

  return result;
}

- (void)setColorSection:(id)section
{
  sectionCopy = section;
  if (self->_colorSection != sectionCopy)
  {
    v15 = sectionCopy;
    identifier = [(AVTAvatarAttributeEditorColorSection *)sectionCopy identifier];
    identifier2 = [(AVTAvatarAttributeEditorColorSection *)self->_colorSection identifier];
    v8 = [identifier isEqualToString:identifier2];

    objc_storeStrong(&self->_colorSection, section);
    if ((v8 & 1) == 0)
    {
      [(AVTAvatarAttributeEditorSectionColorDataSource *)self resetToDefaultDisplayMode];
    }

    v9 = objc_opt_class();
    primaryItems = [(AVTAvatarAttributeEditorColorSection *)v15 primaryItems];
    v11 = [v9 selectedItemFromItems:primaryItems];

    if (!v11 || [(AVTAvatarAttributeEditorColorSection *)v15 alwaysShowExtended])
    {
      v12 = objc_opt_class();
      extendedItems = [(AVTAvatarAttributeEditorColorSection *)v15 extendedItems];
      v14 = [v12 selectedItemFromItems:extendedItems];

      v11 = v14;
    }

    [(AVTAvatarAttributeEditorSectionColorDataSource *)self updateSelectedIndexesSelectingItem:v11 fromUserInteraction:0];

    sectionCopy = v15;
  }
}

- (int64_t)selectedItemIndex
{
  if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended])
  {

    return [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedExtendedColorIndex];
  }

  else if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedPrimaryColorIndex]== 0x7FFFFFFFFFFFFFFFLL && [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedExtendedColorIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    indexPathOfExtendedIcon = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
    item = [indexPathOfExtendedIcon item];

    return item;
  }

  else
  {

    return [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedPrimaryColorIndex];
  }
}

- (void)updateSelectedIndexesSelectingItem:(id)item fromUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  itemCopy = item;
  selectedItemIndex = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
  if (itemCopy)
  {
    v7 = objc_opt_class();
    colorSection = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    primaryItems = [colorSection primaryItems];
    -[AVTAvatarAttributeEditorSectionColorDataSource setSelectedPrimaryColorIndex:](self, "setSelectedPrimaryColorIndex:", [v7 indexOfItem:itemCopy inItems:primaryItems]);

    v10 = objc_opt_class();
    colorSection2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    extendedItems = [colorSection2 extendedItems];
    -[AVTAvatarAttributeEditorSectionColorDataSource setSelectedExtendedColorIndex:](self, "setSelectedExtendedColorIndex:", [v10 indexOfItem:itemCopy inItems:extendedItems]);
  }

  else
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self setSelectedPrimaryColorIndex:0x7FFFFFFFFFFFFFFFLL];
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self setSelectedExtendedColorIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  selectedItemIndex2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
  if (selectedItemIndex2 != selectedItemIndex || interactionCopy)
  {
    if (selectedItemIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      delegate = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
      [delegate colorDataSource:self didDeselectItemAtIndex:selectedItemIndex shouldReloadModel:interactionCopy];
    }

    if (selectedItemIndex2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      delegate2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
      [delegate2 colorDataSource:self didSelectItemAtIndex:-[AVTAvatarAttributeEditorSectionColorDataSource selectedItemIndex](self shouldReloadModel:{"selectedItemIndex"), interactionCopy}];
    }
  }

  v16 = ![(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended]&& [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedPrimaryColorIndex]== 0x7FFFFFFFFFFFFFFFLL;
  if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& (selectedItemIndex2 == 0x7FFFFFFFFFFFFFFFLL || v16))
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self toggleSliderMode];
  }
}

- (void)setDisplayMode:(int64_t)mode
{
  if (self->_displayMode != mode)
  {
    displayMode = [(AVTAvatarAttributeEditorSectionColorDataSource *)self displayMode];
    self->_displayMode = mode;
    delegate = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
    [delegate colorDataSource:self didChangeDisplayMode:mode previousDisplayMode:displayMode];
  }
}

- (void)toggleSliderMode
{
  isShowingSlider = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider];
  isShowingExtended = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  v5 = 2;
  if (!isShowingSlider)
  {
    v5 = 3;
  }

  if (isShowingExtended)
  {
    v6 = v5;
  }

  else
  {
    v6 = !isShowingSlider;
  }

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self setDisplayMode:v6];
}

- (void)toggleExtendedMode
{
  isShowingSlider = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider];
  isShowingExtended = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  v5 = 2;
  if (isShowingSlider)
  {
    v5 = 3;
  }

  if (isShowingExtended)
  {
    v6 = isShowingSlider;
  }

  else
  {
    v6 = v5;
  }

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self setDisplayMode:v6];
}

- (void)resetToDefaultDisplayMode
{
  colorSection = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  if ([colorSection alwaysShowExtended])
  {

LABEL_3:
    v6 = 2;
    goto LABEL_15;
  }

  colorSection2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  primaryItems = [colorSection2 primaryItems];
  if (primaryItems)
  {
    colorSection3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    primaryItems2 = [colorSection3 primaryItems];
    if ([primaryItems2 count])
    {
      goto LABEL_12;
    }
  }

  colorSection4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  extendedItems = [colorSection4 extendedItems];
  if (!extendedItems)
  {

    if (!primaryItems)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_13;
  }

  v11 = extendedItems;
  colorSection5 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  extendedItems2 = [colorSection5 extendedItems];
  v14 = [extendedItems2 count];

  if (primaryItems)
  {
  }

  if (v14)
  {
    goto LABEL_3;
  }

LABEL_14:
  v6 = 0;
LABEL_15:

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self setDisplayMode:v6];
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  colorSection = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  primaryItems = [colorSection primaryItems];
  v6 = [primaryItems count];

  isShowingExtended = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  colorSection2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  extendedItems = [colorSection2 extendedItems];
  v10 = extendedItems;
  if (isShowingExtended)
  {
    v6 = [extendedItems count];

LABEL_7:
    return v6;
  }

  if (!extendedItems)
  {
    goto LABEL_7;
  }

  colorSection3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  extendedItems2 = [colorSection3 extendedItems];
  v13 = [extendedItems2 count];

  if (v13)
  {
    ++v6;
  }

  return v6;
}

- (id)sectionItemAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
    indexPathOfExtendedIcon = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
    v8 = [v6 isEqual:indexPathOfExtendedIcon];

    v3 = 0;
    if ((v8 & 1) == 0)
    {
      isShowingExtended = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
      colorSection = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
      v11 = colorSection;
      if (isShowingExtended)
      {
        [colorSection extendedItems];
      }

      else
      {
        [colorSection primaryItems];
      }
      v12 = ;

      if ([v12 count] <= index)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Index of out of currently showing colors bounds"];
      }

      v3 = [v12 objectAtIndexedSubscript:index];
    }
  }

  return v3;
}

- (void)selectSectionItemAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathOfExtendedIcon = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
  v5 = [pathCopy isEqual:indexPathOfExtendedIcon];

  if (v5)
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self toggleExtendedMode];
    v6 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self sectionItemAtIndex:[(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex]];
  }

  else
  {
    selectedItemIndex = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
    v8 = [pathCopy row];
    v6 = -[AVTAvatarAttributeEditorSectionColorDataSource sectionItemAtIndex:](self, "sectionItemAtIndex:", [pathCopy item]);
    color = [v6 color];
    canShowSlider = [color canShowSlider];

    if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& ((selectedItemIndex != v8) & canShowSlider) == 0 || ![(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& ((canShowSlider ^ 1) & 1) == 0)
    {
      [(AVTAvatarAttributeEditorSectionColorDataSource *)self toggleSliderMode];
    }
  }

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self updateSelectedIndexesSelectingItem:v6 fromUserInteraction:1];
}

- (id)indexPathOfExtendedIcon
{
  if (![(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended])
  {
    colorSection = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    extendedItems = [colorSection extendedItems];
    if (extendedItems)
    {
      v5 = extendedItems;
      colorSection2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
      extendedItems2 = [colorSection2 extendedItems];
      v8 = [extendedItems2 count];

      if (v8)
      {
        colorSection3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
        primaryItems = [colorSection3 primaryItems];
        v11 = [primaryItems count];

        v12 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

@end