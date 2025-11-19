@interface AVTAvatarAttributeEditorSectionColorDataSource
+ (id)selectedItemFromItems:(id)a3;
+ (int64_t)indexOfItem:(id)a3 inItems:(id)a4;
- (AVTAvatarAttributeEditorSectionColorDataSource)init;
- (id)indexPathOfExtendedIcon;
- (id)sectionItemAtIndex:(int64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)selectedItemIndex;
- (void)resetToDefaultDisplayMode;
- (void)selectSectionItemAtIndexPath:(id)a3;
- (void)setColorSection:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)toggleExtendedMode;
- (void)toggleSliderMode;
- (void)updateSelectedIndexesSelectingItem:(id)a3 fromUserInteraction:(BOOL)a4;
@end

@implementation AVTAvatarAttributeEditorSectionColorDataSource

+ (id)selectedItemFromItems:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isSelected])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (int64_t)indexOfItem:(id)a3 inItems:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__AVTAvatarAttributeEditorSectionColorDataSource_indexOfItem_inItems___block_invoke;
  v9[3] = &unk_1E7F3CCC8;
  v10 = v5;
  v6 = v5;
  v7 = [a4 indexOfObjectPassingTest:v9];

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

- (void)setColorSection:(id)a3
{
  v5 = a3;
  if (self->_colorSection != v5)
  {
    v15 = v5;
    v6 = [(AVTAvatarAttributeEditorColorSection *)v5 identifier];
    v7 = [(AVTAvatarAttributeEditorColorSection *)self->_colorSection identifier];
    v8 = [v6 isEqualToString:v7];

    objc_storeStrong(&self->_colorSection, a3);
    if ((v8 & 1) == 0)
    {
      [(AVTAvatarAttributeEditorSectionColorDataSource *)self resetToDefaultDisplayMode];
    }

    v9 = objc_opt_class();
    v10 = [(AVTAvatarAttributeEditorColorSection *)v15 primaryItems];
    v11 = [v9 selectedItemFromItems:v10];

    if (!v11 || [(AVTAvatarAttributeEditorColorSection *)v15 alwaysShowExtended])
    {
      v12 = objc_opt_class();
      v13 = [(AVTAvatarAttributeEditorColorSection *)v15 extendedItems];
      v14 = [v12 selectedItemFromItems:v13];

      v11 = v14;
    }

    [(AVTAvatarAttributeEditorSectionColorDataSource *)self updateSelectedIndexesSelectingItem:v11 fromUserInteraction:0];

    v5 = v15;
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
    v4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
    v5 = [v4 item];

    return v5;
  }

  else
  {

    return [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedPrimaryColorIndex];
  }
}

- (void)updateSelectedIndexesSelectingItem:(id)a3 fromUserInteraction:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
  if (v17)
  {
    v7 = objc_opt_class();
    v8 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    v9 = [v8 primaryItems];
    -[AVTAvatarAttributeEditorSectionColorDataSource setSelectedPrimaryColorIndex:](self, "setSelectedPrimaryColorIndex:", [v7 indexOfItem:v17 inItems:v9]);

    v10 = objc_opt_class();
    v11 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    v12 = [v11 extendedItems];
    -[AVTAvatarAttributeEditorSectionColorDataSource setSelectedExtendedColorIndex:](self, "setSelectedExtendedColorIndex:", [v10 indexOfItem:v17 inItems:v12]);
  }

  else
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self setSelectedPrimaryColorIndex:0x7FFFFFFFFFFFFFFFLL];
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self setSelectedExtendedColorIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  v13 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
  if (v13 != v6 || v4)
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
      [v14 colorDataSource:self didDeselectItemAtIndex:v6 shouldReloadModel:v4];
    }

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
      [v15 colorDataSource:self didSelectItemAtIndex:-[AVTAvatarAttributeEditorSectionColorDataSource selectedItemIndex](self shouldReloadModel:{"selectedItemIndex"), v4}];
    }
  }

  v16 = ![(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended]&& [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedPrimaryColorIndex]== 0x7FFFFFFFFFFFFFFFLL;
  if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& (v13 == 0x7FFFFFFFFFFFFFFFLL || v16))
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self toggleSliderMode];
  }
}

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode != a3)
  {
    v6 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self displayMode];
    self->_displayMode = a3;
    v7 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self delegate];
    [v7 colorDataSource:self didChangeDisplayMode:a3 previousDisplayMode:v6];
  }
}

- (void)toggleSliderMode
{
  v3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider];
  v4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  v5 = 2;
  if (!v3)
  {
    v5 = 3;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = !v3;
  }

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self setDisplayMode:v6];
}

- (void)toggleExtendedMode
{
  v3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider];
  v4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  v5 = 2;
  if (v3)
  {
    v5 = 3;
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  [(AVTAvatarAttributeEditorSectionColorDataSource *)self setDisplayMode:v6];
}

- (void)resetToDefaultDisplayMode
{
  v5 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  if ([v5 alwaysShowExtended])
  {

LABEL_3:
    v6 = 2;
    goto LABEL_15;
  }

  v7 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v8 = [v7 primaryItems];
  if (v8)
  {
    v2 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    v3 = [v2 primaryItems];
    if ([v3 count])
    {
      goto LABEL_12;
    }
  }

  v9 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v10 = [v9 extendedItems];
  if (!v10)
  {

    if (!v8)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_13;
  }

  v11 = v10;
  v12 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v13 = [v12 extendedItems];
  v14 = [v13 count];

  if (v8)
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

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v5 = [v4 primaryItems];
  v6 = [v5 count];

  v7 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
  v8 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v9 = [v8 extendedItems];
  v10 = v9;
  if (v7)
  {
    v6 = [v9 count];

LABEL_7:
    return v6;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
  v12 = [v11 extendedItems];
  v13 = [v12 count];

  if (v13)
  {
    ++v6;
  }

  return v6;
}

- (id)sectionItemAtIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    v7 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
    v8 = [v6 isEqual:v7];

    v3 = 0;
    if ((v8 & 1) == 0)
    {
      v9 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingExtended];
      v10 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
      v11 = v10;
      if (v9)
      {
        [v10 extendedItems];
      }

      else
      {
        [v10 primaryItems];
      }
      v12 = ;

      if ([v12 count] <= a3)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Index of out of currently showing colors bounds"];
      }

      v3 = [v12 objectAtIndexedSubscript:a3];
    }
  }

  return v3;
}

- (void)selectSectionItemAtIndexPath:(id)a3
{
  v11 = a3;
  v4 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self indexPathOfExtendedIcon];
  v5 = [v11 isEqual:v4];

  if (v5)
  {
    [(AVTAvatarAttributeEditorSectionColorDataSource *)self toggleExtendedMode];
    v6 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self sectionItemAtIndex:[(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex]];
  }

  else
  {
    v7 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self selectedItemIndex];
    v8 = [v11 row];
    v6 = -[AVTAvatarAttributeEditorSectionColorDataSource sectionItemAtIndex:](self, "sectionItemAtIndex:", [v11 item]);
    v9 = [v6 color];
    v10 = [v9 canShowSlider];

    if ([(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& ((v7 != v8) & v10) == 0 || ![(AVTAvatarAttributeEditorSectionColorDataSource *)self isShowingSlider]&& ((v10 ^ 1) & 1) == 0)
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
    v3 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
    v4 = [v3 extendedItems];
    if (v4)
    {
      v5 = v4;
      v6 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
      v7 = [v6 extendedItems];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(AVTAvatarAttributeEditorSectionColorDataSource *)self colorSection];
        v10 = [v9 primaryItems];
        v11 = [v10 count];

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