@interface AVTAvatarAttributeEditorSectionController
+ (BOOL)shouldHideLabelBackgroundInSection:(id)section fittingWidth:(double)width;
+ (CGSize)cellSizeForSectionItem:(id)item inSection:(id)section fittingWidth:(double)width environment:(id)environment;
+ (UIEdgeInsets)edgeInsetsForSection:(id)section fittingWidth:(double)width environment:(id)environment;
+ (double)edgeLengthFittingWidth:(double)width environment:(id)environment;
+ (double)maxLabelHeightInSection:(id)section fittingWidth:(double)width;
- (AVTAvatarAttributeEditorControllerSubSelectionDelegate)delegate;
- (AVTAvatarAttributeEditorSectionController)initWithThumbnailScheduler:(id)scheduler renderingScheduler:(id)renderingScheduler environment:(id)environment;
- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size;
- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size;
- (id)prefetchingSectionItemForIndex:(int64_t)index;
- (id)viewForIndex:(int64_t)index;
- (int64_t)numberOfItems;
- (unint64_t)indexForItem:(id)item;
- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index;
- (void)didHighlightItemAtIndex:(int64_t)index cell:(id)cell completionBlock:(id)block;
- (void)didSelectItemAtIndex:(int64_t)index cell:(id)cell;
- (void)didUnhighlightItemAtIndex:(int64_t)index cell:(id)cell completionBlock:(id)block;
- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index;
- (void)updateWithSection:(id)section;
@end

@implementation AVTAvatarAttributeEditorSectionController

+ (double)edgeLengthFittingWidth:(double)width environment:(id)environment
{
  environmentCopy = environment;
  deviceIsPad = [environmentCopy deviceIsPad];
  v7 = 400.0;
  if (width <= 400.0 || (v7 = 6.0, (deviceIsPad & 1) == 0))
  {
    deviceIsMac = [environmentCopy deviceIsMac];
    v7 = 3.0;
    if (((width > 300.0) & deviceIsMac) != 0)
    {
      v7 = 6.0;
    }
  }

  v9 = floor((width + -24.0 + (v7 + -1.0) * -0.0) / v7);

  return v9;
}

+ (CGSize)cellSizeForSectionItem:(id)item inSection:(id)section fittingWidth:(double)width environment:(id)environment
{
  itemCopy = item;
  sectionCopy = section;
  [self edgeLengthFittingWidth:environment environment:width];
  v13 = v12;
  [itemCopy heightRatio];
  v15 = v13 * v14;
  options = [sectionCopy options];
  showsLabel = [options showsLabel];

  if (showsLabel)
  {
    [self maxLabelHeightInSection:sectionCopy fittingWidth:v13];
    v19 = v18;
    [itemCopy heightRatio];
    [self requiredLabelSpaceForMaxLabelHeight:v19 cellEdgeLength:v13 sectionItemHeightRatio:v20];
    v15 = v15 + v21;
  }

  v22 = v13;
  v23 = v15;
  result.height = v23;
  result.width = v22;
  return result;
}

+ (double)maxLabelHeightInSection:(id)section fittingWidth:(double)width
{
  v32 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  options = [sectionCopy options];
  showsLabel = [options showsLabel];

  v8 = 0.0;
  if (showsLabel)
  {
    v9 = +[AVTUIFontRepository attributeViewLabelFont];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    sectionItems = [sectionCopy sectionItems];
    v11 = [sectionItems countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(sectionItems);
          }

          localizedName = [*(*(&v25 + 1) + 8 * i) localizedName];
          v29 = v14;
          v30 = v9;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          [localizedName boundingRectWithSize:1 options:v18 attributes:0 context:{width, 1.79769313e308}];
          v20 = v19;

          v21 = ceil(v20);
          if (v15 < v21)
          {
            v15 = v21;
          }
        }

        v12 = [sectionItems countByEnumeratingWithState:&v25 objects:v31 count:16];
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

+ (BOOL)shouldHideLabelBackgroundInSection:(id)section fittingWidth:(double)width
{
  v39 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  options = [sectionCopy options];
  showsLabel = [options showsLabel];

  if (showsLabel)
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
    sectionItems = [sectionCopy sectionItems];
    v14 = [sectionItems countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(sectionItems);
          }

          localizedName = [*(*(&v30 + 1) + 8 * i) localizedName];
          v36 = v18;
          v37 = v8;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          [localizedName boundingRectWithSize:1 options:v21 attributes:0 context:{width, 1.79769313e308}];
          v23 = v22;
          v25 = v24;

          if (ceil(v25) >= v15)
          {
            v34 = v18;
            v35 = v8;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            [localizedName boundingRectWithSize:1 options:v26 attributes:0 context:{width + -4.0 + -1.0, 1.79769313e308}];
            v28 = v27;

            if (ceil(v28) > v16)
            {
LABEL_15:

              LOBYTE(v14) = 1;
              goto LABEL_16;
            }
          }

          else if (ceil(v23) >= width + -4.0)
          {
            goto LABEL_15;
          }
        }

        v14 = [sectionItems countByEnumeratingWithState:&v30 objects:v38 count:16];
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

+ (UIEdgeInsets)edgeInsetsForSection:(id)section fittingWidth:(double)width environment:(id)environment
{
  sectionCopy = section;
  environmentCopy = environment;
  localizedName = [sectionCopy localizedName];
  if (localizedName)
  {
    localizedName2 = [sectionCopy localizedName];
    if ([localizedName2 length])
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

  sectionItems = [sectionCopy sectionItems];
  firstObject = [sectionItems firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = MEMORY[0x1E695DF30];
    sectionItems2 = [sectionCopy sectionItems];
    firstObject2 = [sectionItems2 firstObject];
    [v16 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", firstObject2}];
  }

  sectionItems3 = [sectionCopy sectionItems];
  firstObject3 = [sectionItems3 firstObject];

  if (firstObject3)
  {
    [self edgeLengthFittingWidth:environmentCopy environment:width];
    v22 = v21;
    [firstObject3 heightRatio];
    v24 = v23;
    options = [sectionCopy options];
    showsLabel = [options showsLabel];

    if (showsLabel)
    {
      [firstObject3 heightRatio];
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

- (AVTAvatarAttributeEditorSectionController)initWithThumbnailScheduler:(id)scheduler renderingScheduler:(id)renderingScheduler environment:(id)environment
{
  schedulerCopy = scheduler;
  renderingSchedulerCopy = renderingScheduler;
  environmentCopy = environment;
  v17.receiver = self;
  v17.super_class = AVTAvatarAttributeEditorSectionController;
  v12 = [(AVTAvatarAttributeEditorSectionController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, environment);
    v13->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v14 = [AVTTransitionCoordinator concurrentTransitionCoordinatorWithDelay:0.015];
    transitionCoordinator = v13->_transitionCoordinator;
    v13->_transitionCoordinator = v14;

    objc_storeStrong(&v13->_thumbnailScheduler, scheduler);
    objc_storeStrong(&v13->_renderingScheduler, renderingScheduler);
  }

  return v13;
}

- (void)updateWithSection:(id)section
{
  sectionCopy = section;
  p_section = &self->_section;
  if (self->_section != sectionCopy)
  {
    v9 = sectionCopy;
    objc_storeStrong(p_section, section);
    sectionItems = [(AVTAvatarAttributeEditorSection *)self->_section sectionItems];
    self->_selectedIndex = [sectionItems indexOfObjectPassingTest:&__block_literal_global_10];

    transitionCoordinator = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
    [transitionCoordinator cancelAllTransitions];

    sectionCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_section, sectionCopy);
}

- (void)updateCell:(id)cell forItemAtIndex:(int64_t)index
{
  cellCopy = cell;
  valueView = [cellCopy valueView];
  superview = [valueView superview];

  if (superview)
  {
    transitionCoordinator = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
    valueView2 = [cellCopy valueView];
    [transitionCoordinator cancelTransitionsMatchingModel:valueView2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    section = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems = [section sectionItems];
    v12 = [sectionItems objectAtIndexedSubscript:index];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v14 = MEMORY[0x1E695DF30];
      section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
      sectionItems2 = [section2 sectionItems];
      v17 = [sectionItems2 objectAtIndexedSubscript:index];
      [v14 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v17}];
    }

    section3 = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems3 = [section3 sectionItems];
    v20 = [sectionItems3 objectAtIndexedSubscript:index];

    localizedName = [v20 localizedName];
    [cellCopy setLabelString:localizedName];

    v22 = objc_opt_class();
    section4 = [(AVTAvatarAttributeEditorSectionController *)self section];
    [cellCopy bounds];
    [v22 maxLabelHeightInSection:section4 fittingWidth:v24];
    v26 = v25;

    v27 = objc_opt_class();
    [cellCopy bounds];
    v29 = v28;
    [v20 heightRatio];
    [v27 requiredLabelSpaceForMaxLabelHeight:v26 cellEdgeLength:v29 sectionItemHeightRatio:v30];
    [cellCopy setLabelVerticalSpace:?];
    v31 = objc_opt_class();
    section5 = [(AVTAvatarAttributeEditorSectionController *)self section];
    [cellCopy bounds];
    [cellCopy setShouldHideLabelBackground:{objc_msgSend(v31, "shouldHideLabelBackgroundInSection:fittingWidth:", section5, v33)}];
  }

  v34 = [(AVTAvatarAttributeEditorSectionController *)self viewForIndex:index];
  [cellCopy setAttributeView:v34];
}

- (id)viewForIndex:(int64_t)index
{
  v5 = [AVTAttributeValueView alloc];
  v6 = [(AVTAttributeValueView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AVTAttributeValueView *)v6 setSelectionStyle:0];
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v9 = [sectionItems objectAtIndexedSubscript:index];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems2 = [section2 sectionItems];
    v14 = [sectionItems2 objectAtIndexedSubscript:index];
    [v11 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
  }

  section3 = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems3 = [section3 sectionItems];
  v17 = [sectionItems3 objectAtIndexedSubscript:index];

  [v17 heightRatio];
  [(AVTAttributeValueView *)v6 setImageSizeRatio:1.0, v18];
  [(AVTAttributeValueView *)v6 updateSelectedState:[(AVTAvatarAttributeEditorSectionController *)self selectedIndex]== index animated:0];

  return v6;
}

- (id)prefetchingSectionItemForIndex:(int64_t)index
{
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v7 = [sectionItems objectAtIndexedSubscript:index];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems2 = [section2 sectionItems];
    v12 = [sectionItems2 objectAtIndexedSubscript:index];
    [v9 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v12}];
  }

  section3 = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems3 = [section3 sectionItems];
  v15 = [sectionItems3 objectAtIndexedSubscript:index];

  return v15;
}

- (int64_t)numberOfItems
{
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v4 = [sectionItems count];

  return v4;
}

- (CGSize)sizeForItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  v7 = [(AVTAvatarAttributeEditorSectionController *)self section:size.width];
  sectionItems = [v7 sectionItems];
  v9 = [sectionItems objectAtIndexedSubscript:index];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    section = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems2 = [section sectionItems];
    v14 = [sectionItems2 objectAtIndexedSubscript:index];
    [v11 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
  }

  section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems3 = [section2 sectionItems];
  v17 = [sectionItems3 objectAtIndexedSubscript:index];

  v18 = objc_opt_class();
  section3 = [(AVTAvatarAttributeEditorSectionController *)self section];
  environment = [(AVTAvatarAttributeEditorSectionController *)self environment];
  [v18 cellSizeForSectionItem:v17 inSection:section3 fittingWidth:environment environment:width];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (unint64_t)indexForItem:(id)item
{
  itemCopy = item;
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v7 = [sectionItems indexOfObject:itemCopy];

  return v7;
}

- (UIEdgeInsets)edgeInsetsFittingSize:(CGSize)size
{
  width = size.width;
  v5 = objc_opt_class();
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  environment = [(AVTAvatarAttributeEditorSectionController *)self environment];
  [v5 edgeInsetsForSection:section fittingWidth:environment environment:width];
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

- (void)cell:(id)cell willDisplayAtIndex:(int64_t)index
{
  cellCopy = cell;
  valueView = [cellCopy valueView];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  val = valueView;
  [valueView setDisplaySessionUUID:uUID];
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v11 = [sectionItems objectAtIndexedSubscript:index];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = MEMORY[0x1E695DF30];
    section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems2 = [section2 sectionItems];
    v16 = [sectionItems2 objectAtIndexedSubscript:index];
    [v13 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v16}];
  }

  section3 = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems3 = [section3 sectionItems];
  v19 = [sectionItems3 objectAtIndexedSubscript:index];

  transitionCoordinator = [(AVTAvatarAttributeEditorSectionController *)self transitionCoordinator];
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__5;
  v71[4] = __Block_byref_object_dispose__5;
  v72 = 0;
  objc_initWeak(&location, val);
  objc_initWeak(&v69, v19);
  section4 = [(AVTAvatarAttributeEditorSectionController *)self section];
  objc_initWeak(&v68, section4);
  objc_initWeak(&from, self);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke;
  v62[3] = &unk_1E7F3B490;
  objc_copyWeak(&v65, &location);
  objc_copyWeak(&v66, &from);
  v64 = v71;
  v45 = transitionCoordinator;
  v63 = v45;
  v21 = [v62 copy];
  thumbnailScheduler = [(AVTAvatarAttributeEditorSectionController *)self thumbnailScheduler];
  renderingScheduler = [(AVTAvatarAttributeEditorSectionController *)self renderingScheduler];
  environment = [(AVTAvatarAttributeEditorSectionController *)self environment];
  logger = [environment logger];

  [thumbnailScheduler scheduleTask:v21 forIndex:index];
  section5 = [(AVTAvatarAttributeEditorSectionController *)self section];
  identifier = [section5 identifier];
  v27 = [identifier description];
  [logger logRequestingThumbnailForIndex:index section:v27];

  stickerResourceProvider = [v19 stickerResourceProvider];

  v41 = uUID;
  v42 = logger;
  if (stickerResourceProvider)
  {
    stickerResourceProvider2 = [v19 stickerResourceProvider];
    v30 = v59;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_4;
    v59[3] = &unk_1E7F3B4B8;
    v31 = &v60;
    objc_copyWeak(&v60, &location);
    v32 = v61;
    objc_copyWeak(v61, &v69);
    v59[4] = uUID;
    v59[7] = v71;
    v59[5] = thumbnailScheduler;
    v59[6] = v21;
    v61[1] = index;
    v33 = (stickerResourceProvider2)[2](stickerResourceProvider2, v59, 0);
  }

  else
  {
    stickerResourceProvider2 = [v19 thumbnailProvider];
    v30 = v56;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __69__AVTAvatarAttributeEditorSectionController_cell_willDisplayAtIndex___block_invoke_5;
    v56[3] = &unk_1E7F3B4E0;
    v31 = &v57;
    objc_copyWeak(&v57, &location);
    v32 = v58;
    objc_copyWeak(v58, &v69);
    v56[4] = uUID;
    v56[7] = v71;
    v56[5] = thumbnailScheduler;
    v56[6] = v21;
    v58[1] = index;
    v33 = (stickerResourceProvider2)[2](stickerResourceProvider2, v56, 0);
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
  v36 = thumbnailScheduler;
  v49 = v36;
  v37 = v21;
  v51 = v37;
  v38 = renderingScheduler;
  v50 = v38;
  v39 = v34;
  v52 = v39;
  [val setDiscardableContentHandler:v47];
  cachedThumbnail = [v19 cachedThumbnail];
  if (cachedThumbnail)
  {
    [val updateWithImage:cachedThumbnail];
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

- (void)didHighlightItemAtIndex:(int64_t)index cell:(id)cell completionBlock:(id)block
{
  blockCopy = block;
  valueView = [cell valueView];
  [valueView updateHighlightedState:1 animated:1 completionBlock:blockCopy];
}

- (void)didUnhighlightItemAtIndex:(int64_t)index cell:(id)cell completionBlock:(id)block
{
  blockCopy = block;
  valueView = [cell valueView];
  [valueView updateHighlightedState:0 animated:1 completionBlock:blockCopy];
}

- (void)didSelectItemAtIndex:(int64_t)index cell:(id)cell
{
  v9 = [(AVTAvatarAttributeEditorSectionController *)self delegate:index];
  section = [(AVTAvatarAttributeEditorSectionController *)self section];
  sectionItems = [section sectionItems];
  v8 = [sectionItems objectAtIndexedSubscript:index];
  [v9 attributeEditorSectionController:self didSelectSectionItem:v8];
}

- (CGSize)sizeForFocusingItemAtIndex:(int64_t)index fittingSize:(CGSize)size
{
  width = size.width;
  v7 = [(AVTAvatarAttributeEditorSectionController *)self section:size.width];
  sectionItems = [v7 sectionItems];
  v9 = [sectionItems count];

  if (v9 <= index)
  {
    v17 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v10 = objc_opt_class();
    section = [(AVTAvatarAttributeEditorSectionController *)self section];
    sectionItems2 = [section sectionItems];
    v13 = [sectionItems2 objectAtIndexedSubscript:index];
    section2 = [(AVTAvatarAttributeEditorSectionController *)self section];
    environment = [(AVTAvatarAttributeEditorSectionController *)self environment];
    [v10 cellSizeForSectionItem:v13 inSection:section2 fittingWidth:environment environment:width];
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