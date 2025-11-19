@interface AVTAvatarAttributeEditorSectionController
+ (BOOL)shouldHideLabelBackgroundInSection:(id)a3 fittingWidth:(double)a4;
+ (CGSize)cellSizeForSectionItem:(id)a3 inSection:(id)a4 fittingWidth:(double)a5 environment:(id)a6;
+ (UIEdgeInsets)edgeInsetsForSection:(id)a3 fittingWidth:(double)a4 environment:(id)a5;
+ (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4;
+ (double)maxLabelHeightInSection:(id)a3 fittingWidth:(double)a4;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionController)initWithThumbnailScheduler:(id)a3 renderingScheduler:(id)a4 environment:(id)a5;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3;
- (id)prefetchingSectionItemForIndex:(int64_t)a3;
- (id)viewForIndex:(int64_t)a3;
- (int64_t)numberOfItems;
- (unint64_t)indexForItem:(id)a3;
- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4;
- (void)didHighlightItemAtIndex:(int64_t)a3 cell:(id)a4 completionBlock:(id)a5;
- (void)didSelectItemAtIndex:(int64_t)a3 cell:(id)a4;
- (void)didUnhighlightItemAtIndex:(int64_t)a3 cell:(id)a4 completionBlock:(id)a5;
- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)updateWithSection:(id)a3;
@end

@implementation AVTAvatarAttributeEditorSectionController

+ (double)edgeLengthFittingWidth:(double)a3 environment:(id)a4
{
  v5 = a4;
  v6 = [v5 deviceIsPad];
  v7 = 400.0;
  if (a3 <= 400.0 || (v7 = 6.0, (v6 & 1) == 0))
  {
    v8 = [v5 deviceIsMac];
    v7 = 3.0;
    if (((a3 > 300.0) & v8) != 0)
    {
      v7 = 6.0;
    }
  }

  v9 = floor((a3 + -24.0 + (v7 + -1.0) * -0.0) / v7);

  return v9;
}

+ (CGSize)cellSizeForSectionItem:(id)a3 inSection:(id)a4 fittingWidth:(double)a5 environment:(id)a6
{
  v10 = a3;
  v11 = a4;
  [a1 edgeLengthFittingWidth:a6 environment:a5];
  v13 = v12;
  [v10 heightRatio];
  v15 = v13 * v14;
  v16 = [v11 options];
  v17 = [v16 showsLabel];

  if (v17)
  {
    [a1 maxLabelHeightInSection:v11 fittingWidth:v13];
    v19 = v18;
    [v10 heightRatio];
    [a1 requiredLabelSpaceForMaxLabelHeight:v19 cellEdgeLength:v13 sectionItemHeightRatio:v20];
    v15 = v15 + v21;
  }

  v22 = v13;
  v23 = v15;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (double)maxLabelHeightInSection:(id)a3 fittingWidth:(double)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 options];
  v7 = [v6 showsLabel];

  v8 = 0.0;
  if (v7)
  {
    v9 = +[AVTUIFontRepository attributeViewLabelFont];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v5 sectionItems];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      v14 = *MEMORY[0x1E69DB648];
      v15 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = [*(*(&v25 + 1) + 8 * i) localizedName];
          v29 = v14;
          v30 = v9;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [v17 boundingRectWithSize:1 options:v18 attributes:0 context:{a4, 1.79769313e308}];
          v20 = v19;

          v21 = ceil(v20);
          if (v15 < v21)
          {
            v15 = v21;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v15 = 0.0;
    }

    [v9 lineHeight];
    v23 = ceil(v22 + v22) + 3.0;
    if (v15 >= v23)
    {
      v8 = v23;
    }

    else
    {
      v8 = v15;
    }
  }

  return v8;
}

+ (BOOL)shouldHideLabelBackgroundInSection:(id)a3 fittingWidth:(double)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 options];
  v7 = [v6 showsLabel];

  if (v7)
  {
    v8 = +[AVTUIFontRepository attributeViewLabelFont];
    [v8 lineHeight];
    v10 = v9;
    [v8 lineHeight];
    v12 = v11;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [v5 sectionItems];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v14)
    {
      v15 = ceil(v10) + 3.0;
      v16 = ceil(v12 + v12) + 3.0;
      v17 = *v31;
      v18 = *MEMORY[0x1E69DB648];
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = [*(*(&v30 + 1) + 8 * i) localizedName];
          v36 = v18;
          v37 = v8;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          [v20 boundingRectWithSize:1 options:v21 attributes:0 context:{a4, 1.79769313e308}];
          v23 = v22;
          v25 = v24;

          if (ceil(v25) >= v15)
          {
            v34 = v18;
            v35 = v8;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            [v20 boundingRectWithSize:1 options:v26 attributes:0 context:{a4 + -4.0 + -1.0, 1.79769313e308}];
            v28 = v27;

            if (ceil(v28) > v16)
            {
LABEL_15:

              LOBYTE(v14) = 1;
              goto LABEL_16;
            }
          }

          else if (ceil(v23) >= a4 + -4.0)
          {
            goto LABEL_15;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

+ (UIEdgeInsets)edgeInsetsForSection:(id)a3 fittingWidth:(double)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 localizedName];
  if (v10)
  {
    v11 = [v8 localizedName];
    if ([v11 length])
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 12.0;
    }
  }

  else
  {
    v12 = 12.0;
  }

  v13 = [v8 sectionItems];
  v14 = [v13 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = [v8 sectionItems];
    v18 = [v17 firstObject];
    [v16 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v18}];
  }

  v19 = [v8 sectionItems];
  v20 = [v19 firstObject];

  if (v20)
  {
    [a1 edgeLengthFittingWidth:v9 environment:a4];
    v22 = v21;
    [v20 heightRatio];
    v24 = v23;
    v25 = [v8 options];
    v26 = [v25 showsLabel];

    if (v26)
    {
      [v20 heightRatio];
      v28 = (v22 * v27 - v22) * 0.5 + 12.0;
      v29 = 17.0;
      v12 = 17.0 - v28;
    }

    else
    {
      v30 = v22 * (v24 + -1.0) * 0.5;
      v12 = fmax(v12 - v30, 0.0);
      v29 = fmax(12.0 - v30, 0.0);
    }
  }

  else
  {
    v29 = 12.0;
  }

  v31 = 12.0;
  v32 = 12.0;
  v33 = v12;
  v34 = v29;
  result.right = v32;
  result.bottom = v34;
  result.left = v31;
  result.top = v33;
  return result;
}

- (AVTAvatarAttributeEditorSectionController)initWithThumbnailScheduler:(id)a3 renderingScheduler:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AVTAvatarAttributeEditorSectionController;
  v12 = [(AVTAvatarAttributeEditorSectionController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, a5);
    v13->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [AVTTransitionCoordinator concurrentTransitionCoordinatorWithDelay:0.015];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v14;

    objc_storeStrong(&v13->_thumbnailScheduler, a3);
    objc_storeStrong(&v13->_renderingScheduler, a4);
  }

  return v13;
}

- (void)updateWithSection:(id)a3
{
  v5 = a3;
  p_section = &self->_section;
  if (self->_section != v5)
  {
    v9 = v5;
    objc_storeStrong(p_section, a3);
    v7 = [(AVTAvatarAttributeEditorSection *)self->_section sectionItems];
    self->_selectedIndex = [v7 indexOfObjectPassingTest:&__block_literal_global_10];

    v8 = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
    [v8 cancelAllTransitions];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_section, v5);
}

- (void)updateCell:(id)a3 forItemAtIndex:(int64_t)a4
{
  v35 = a3;
  v6 = [v35 valueView];
  v7 = [v6 superview];

  if (v7)
  {
    v8 = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
    v9 = [v35 valueView];
    [v8 cancelTransitionsMatchingModel:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v11 = [v10 sectionItems];
    v12 = [v11 objectAtIndexedSubscript:a4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = [(AVTAvatarAttributeEditorSectionController *)self section];
      v16 = [v15 sectionItems];
      v17 = [v16 objectAtIndexedSubscript:a4];
      [v14 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v17}];
    }

    v18 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v19 = [v18 sectionItems];
    v20 = [v19 objectAtIndexedSubscript:a4];

    v21 = [v20 localizedName];
    [v35 setLabelString:v21];

    v22 = objc_opt_class();
    v23 = [(AVTAvatarAttributeEditorSectionController *)self section];
    [v35 bounds];
    [v22 maxLabelHeightInSection:v23 fittingWidth:v24];
    v26 = v25;

    v27 = objc_opt_class();
    [v35 bounds];
    v29 = v28;
    [v20 heightRatio];
    [v27 requiredLabelSpaceForMaxLabelHeight:v26 cellEdgeLength:v29 sectionItemHeightRatio:v30];
    [v35 setLabelVerticalSpace:?];
    v31 = objc_opt_class();
    v32 = [(AVTAvatarAttributeEditorSectionController *)self section];
    [v35 bounds];
    [v35 setShouldHideLabelBackground:{objc_msgSend(v31, "shouldHideLabelBackgroundInSection:fittingWidth:", v32, v33)}];
  }

  v34 = [(AVTAvatarAttributeEditorSectionController *)self viewForIndex:a4];
  [v35 setAttributeView:v34];
}

- (id)viewForIndex:(int64_t)a3
{
  v5 = [AVTAttributeValueView alloc];
  v6 = [(AVTAttributeValueView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTAttributeValueView *)v6 setSelectionStyle:0];
  v7 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v8 = [v7 sectionItems];
  v9 = [v8 objectAtIndexedSubscript:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v13 = [v12 sectionItems];
    v14 = [v13 objectAtIndexedSubscript:a3];
    [v11 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
  }

  v15 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v16 = [v15 sectionItems];
  v17 = [v16 objectAtIndexedSubscript:a3];

  [v17 heightRatio];
  [(AVTAttributeValueView *)v6 setImageSizeRatio:1.0, v18];
  [(AVTAttributeValueView *)v6 updateSelectedState:[(AVTAvatarAttributeEditorSectionController *)self selectedIndex]== a3 animated:0];

  return v6;
}

- (id)prefetchingSectionItemForIndex:(int64_t)a3
{
  v5 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v6 = [v5 sectionItems];
  v7 = [v6 objectAtIndexedSubscript:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v11 = [v10 sectionItems];
    v12 = [v11 objectAtIndexedSubscript:a3];
    [v9 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v12}];
  }

  v13 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v14 = [v13 sectionItems];
  v15 = [v14 objectAtIndexedSubscript:a3];

  return v15;
}

- (int64_t)numberOfItems
{
  v2 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v3 = [v2 sectionItems];
  v4 = [v3 count];

  return v4;
}

- (CGSize)sizeForItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v7 = [(AVTAvatarAttributeEditorSectionController *)self section:a4.width];
  v8 = [v7 sectionItems];
  v9 = [v8 objectAtIndexedSubscript:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v13 = [v12 sectionItems];
    v14 = [v13 objectAtIndexedSubscript:a3];
    [v11 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
  }

  v15 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v16 = [v15 sectionItems];
  v17 = [v16 objectAtIndexedSubscript:a3];

  v18 = objc_opt_class();
  v19 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v20 = [(AVTAvatarAttributeEditorSectionController *)self environment];
  [v18 cellSizeForSectionItem:v17 inSection:v19 fittingWidth:v20 environment:width];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (unint64_t)indexForItem:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v6 = [v5 sectionItems];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  v6 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v7 = [(AVTAvatarAttributeEditorSectionController *)self environment];
  [v5 edgeInsetsForSection:v6 fittingWidth:v7 environment:width];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)cell:(id)a3 willDisplayAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 valueView];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  val = v7;
  [v7 setDisplaySessionUUID:v8];
  v9 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v10 = [v9 sectionItems];
  v11 = [v10 objectAtIndexedSubscript:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v15 = [v14 sectionItems];
    v16 = [v15 objectAtIndexedSubscript:a4];
    [v13 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v16}];
  }

  v17 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v18 = [v17 sectionItems];
  v19 = [v18 objectAtIndexedSubscript:a4];

  v20 = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__5;
  v71[4] = __Block_byref_object_dispose__5;
  v72 = 0;
  objc_initWeak(&location, val);
  objc_initWeak(&v69, v19);
  v43 = [(AVTAvatarAttributeEditorSectionController *)self section];
  objc_initWeak(&v68, v43);
  objc_initWeak(&from, self);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke;
  v62[3] = &unk_1E7F3B490;
  objc_copyWeak(&v65, &location);
  objc_copyWeak(&v66, &from);
  v64 = v71;
  v45 = v20;
  v63 = v45;
  v21 = [v62 copy];
  v22 = [(AVTAvatarAttributeEditorSectionController *)self thumbnailScheduler];
  v44 = [(AVTAvatarAttributeEditorSectionController *)self renderingScheduler];
  v23 = [(AVTAvatarAttributeEditorSectionController *)self environment];
  v24 = [v23 logger];

  [v22 scheduleTask:v21 forIndex:a4];
  v25 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v26 = [v25 identifier];
  v27 = [v26 description];
  [v24 logRequestingThumbnailForIndex:a4 section:v27];

  v28 = [v19 stickerResourceProvider];

  v41 = v8;
  v42 = v24;
  if (v28)
  {
    v29 = [v19 stickerResourceProvider];
    v30 = v59;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_4;
    v59[3] = &unk_1E7F3B4B8;
    v31 = &v60;
    objc_copyWeak(&v60, &location);
    v32 = v61;
    objc_copyWeak(v61, &v69);
    v59[4] = v8;
    v59[7] = v71;
    v59[5] = v22;
    v59[6] = v21;
    v61[1] = a4;
    v33 = (v29)[2](v29, v59, 0);
  }

  else
  {
    v29 = [v19 thumbnailProvider];
    v30 = v56;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_5;
    v56[3] = &unk_1E7F3B4E0;
    v31 = &v57;
    objc_copyWeak(&v57, &location);
    v32 = v58;
    objc_copyWeak(v58, &v69);
    v56[4] = v8;
    v56[7] = v71;
    v56[5] = v22;
    v56[6] = v21;
    v58[1] = a4;
    v33 = (v29)[2](v29, v56, 0);
  }

  v34 = v33;

  objc_destroyWeak(v32);
  objc_destroyWeak(v31);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_6;
  v47[3] = &unk_1E7F3B508;
  objc_copyWeak(&v53, &location);
  objc_copyWeak(&v54, &v69);
  objc_copyWeak(&v55, &v68);
  v35 = v45;
  v48 = v35;
  v36 = v22;
  v49 = v36;
  v37 = v21;
  v51 = v37;
  v38 = v44;
  v50 = v38;
  v39 = v34;
  v52 = v39;
  [val setDiscardableContentHandler:v47];
  v40 = [v19 cachedThumbnail];
  if (v40)
  {
    [val updateWithImage:v40];
  }

  else
  {
    [val setShowPlaceholder:1];
  }

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v66);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v68);

  objc_destroyWeak(&v69);
  objc_destroyWeak(&location);
  _Block_object_dispose(v71, 8);
}

void __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = [AVTSectionItemTransition alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_2;
  v15[3] = &unk_1E7F3B468;
  v7 = WeakRetained;
  v8 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_3;
  v13[3] = &unk_1E7F3AA80;
  v14 = v7;
  v9 = v7;
  v10 = [v5 environment];
  v11 = [v10 logger];
  v12 = [(AVTSectionItemTransition *)v6 initWithModel:v9 animated:1 setupHandler:v15 completionHandler:v13 logger:v11];

  [*(a1 + 32) addTransition:v12];
  v3[2](v3);
}

void __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  [v2 prepareForTransitionToImage:v3];
  v4[2](v4, 1);
}

uint64_t __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) cleanupAfterTransition];
  }

  return result;
}

void __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained displaySessionUUID];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = [v11 image];
    [v4 setCachedThumbnail:v7];

    v8 = [v11 image];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1 + 40) taskReady:*(a1 + 48) forIndex:*(a1 + 80)];
  }
}

void __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_loadWeakRetained((a1 + 72));
  v6 = [WeakRetained displaySessionUUID];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    [v5 setCachedThumbnail:v8];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    [*(a1 + 40) taskReady:*(a1 + 48) forIndex:*(a1 + 80)];
  }
}

void __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = objc_loadWeakRetained((a1 + 80));
  v3 = objc_loadWeakRetained((a1 + 88));
  [WeakRetained setDisplaySessionUUID:0];
  [v2 discardContent];
  [*(a1 + 32) cancelTransitionsMatchingModel:WeakRetained];
  [*(a1 + 40) cancelTask:*(a1 + 56)];
  if (v3 && ([v3 sectionItems], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v2), v4, v5))
  {
    [*(a1 + 48) lowerTaskPriority:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 48) cancelTask:*(a1 + 64)];
  }
}

- (void)didHighlightItemAtIndex:(int64_t)a3 cell:(id)a4 completionBlock:(id)a5
{
  v6 = a5;
  v7 = [a4 valueView];
  [v7 updateHighlightedState:1 animated:1 completionBlock:v6];
}

- (void)didUnhighlightItemAtIndex:(int64_t)a3 cell:(id)a4 completionBlock:(id)a5
{
  v6 = a5;
  v7 = [a4 valueView];
  [v7 updateHighlightedState:0 animated:1 completionBlock:v6];
}

- (void)didSelectItemAtIndex:(int64_t)a3 cell:(id)a4
{
  v9 = [(AVTAvatarAttributeEditorSectionController *)self delegate:a3];
  v6 = [(AVTAvatarAttributeEditorSectionController *)self section];
  v7 = [v6 sectionItems];
  v8 = [v7 objectAtIndexedSubscript:a3];
  [v9 attributeEditorSectionController:self didSelectSectionItem:v8];
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)a3 fittingSize:(CGSize)a4
{
  width = a4.width;
  v7 = [(AVTAvatarAttributeEditorSectionController *)self section:a4.width];
  v8 = [v7 sectionItems];
  v9 = [v8 count];

  if (v9 <= a3)
  {
    v17 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v12 = [v11 sectionItems];
    v13 = [v12 objectAtIndexedSubscript:a3];
    v14 = [(AVTAvatarAttributeEditorSectionController *)self section];
    v15 = [(AVTAvatarAttributeEditorSectionController *)self environment];
    [v10 cellSizeForSectionItem:v13 inSection:v14 fittingWidth:v15 environment:width];
    v17 = v16;
    v19 = v18;
  }

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end