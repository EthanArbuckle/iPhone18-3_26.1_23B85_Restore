@interface ATXDefaultHomeScreenItemComparator
- (BOOL)isStackDefaultStack:(id)stack;
- (unint64_t)rankOfWidgetSuggestedInGallery:(id)gallery;
- (void)loadDefaultItemsWithCompletionHandler:(id)handler;
@end

@implementation ATXDefaultHomeScreenItemComparator

- (void)loadDefaultItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ATXDefaultHomeScreenItemManager sharedInstance];
  isiPad = [MEMORY[0x1E69C5CF8] isiPad];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__ATXDefaultHomeScreenItemComparator_loadDefaultItemsWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E80C1058;
  if (isiPad)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v5 fetchSuggestedGalleryItemsOfGridSize:v7 widgetFamilyMask:7294 withCompletionHandler:v9];
}

void __76__ATXDefaultHomeScreenItemComparator_loadDefaultItemsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    [*(a1 + 32) setGalleryItems:a2];
    v5 = +[ATXDefaultHomeScreenItemManager sharedInstance];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__ATXDefaultHomeScreenItemComparator_loadDefaultItemsWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E80C1058;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 fetchSmartStackOfVariant:0 completionHandler:v7];
  }
}

uint64_t __76__ATXDefaultHomeScreenItemComparator_loadDefaultItemsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = [a2 firstObject];
    [*(a1 + 32) setDefaultStack:v6];

    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (unint64_t)rankOfWidgetSuggestedInGallery:(id)gallery
{
  galleryCopy = gallery;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  galleryItems = [(ATXDefaultHomeScreenItemComparator *)self galleryItems];

  if (galleryItems)
  {
    galleryItems2 = [(ATXDefaultHomeScreenItemComparator *)self galleryItems];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__ATXDefaultHomeScreenItemComparator_rankOfWidgetSuggestedInGallery___block_invoke;
    v9[3] = &unk_1E80C13F8;
    v10 = galleryCopy;
    v11 = &v12;
    [galleryItems2 enumerateObjectsUsingBlock:v9];

    v7 = v13[3];
  }

  else
  {
    v7 = v13[3];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __69__ATXDefaultHomeScreenItemComparator_rankOfWidgetSuggestedInGallery___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v16;
  if (isKindOfClass)
  {
    v9 = v16;
    v10 = *(a1 + 32);
    v11 = [v9 avocadoDescriptor];
    v12 = [v11 extensionBundleIdentifier];
    v13 = [v9 avocadoDescriptor];
    v14 = [v13 kind];
    LODWORD(v10) = [v10 isSameWidgetAsWidgetBundleId:v12 widgetKind:v14];

    if (v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
      *a4 = 1;
    }

    v8 = v16;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v8);
}

- (BOOL)isStackDefaultStack:(id)stack
{
  stackCopy = stack;
  defaultStack = [(ATXDefaultHomeScreenItemComparator *)self defaultStack];

  if (defaultStack)
  {
    stackLayoutSize = [stackCopy stackLayoutSize];
    v7 = 0;
    if (stackLayoutSize <= 1)
    {
      if (stackLayoutSize)
      {
        if (stackLayoutSize != 1)
        {
          goto LABEL_17;
        }

        defaultStack2 = [(ATXDefaultHomeScreenItemComparator *)self defaultStack];
        mediumDefaultStack = [defaultStack2 mediumDefaultStack];
      }

      else
      {
        defaultStack2 = [(ATXDefaultHomeScreenItemComparator *)self defaultStack];
        mediumDefaultStack = [defaultStack2 smallDefaultStack];
      }
    }

    else
    {
      switch(stackLayoutSize)
      {
        case 2:
          defaultStack2 = [(ATXDefaultHomeScreenItemComparator *)self defaultStack];
          mediumDefaultStack = [defaultStack2 largeDefaultStack];
          break;
        case 3:
          v11 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            [ATXDefaultHomeScreenItemComparator isStackDefaultStack:v11];
          }

          v7 = 0;
          goto LABEL_19;
        case 4:
          defaultStack2 = [(ATXDefaultHomeScreenItemComparator *)self defaultStack];
          mediumDefaultStack = [defaultStack2 extraLargeDefaultStack];
          break;
        default:
LABEL_17:
          widgets = [stackCopy widgets];
          v13 = [widgets count];
          v14 = [v7 count];

          if (v13 == v14)
          {
            v20 = 0;
            v21 = &v20;
            v22 = 0x2020000000;
            v23 = 1;
            widgets2 = [stackCopy widgets];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __58__ATXDefaultHomeScreenItemComparator_isStackDefaultStack___block_invoke;
            v17[3] = &unk_1E80C1420;
            v7 = v7;
            v18 = v7;
            v19 = &v20;
            [widgets2 enumerateObjectsUsingBlock:v17];

            v10 = *(v21 + 24);
            _Block_object_dispose(&v20, 8);
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          v10 = 0;
          goto LABEL_20;
      }
    }

    v7 = mediumDefaultStack;

    goto LABEL_17;
  }

  v10 = 0;
LABEL_21:

  return v10 & 1;
}

void __58__ATXDefaultHomeScreenItemComparator_isStackDefaultStack___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  v13 = [v9 avocadoDescriptor];

  v10 = [v13 extensionBundleIdentifier];
  v11 = [v13 kind];
  v12 = [v8 isSameWidgetAsWidgetBundleId:v10 widgetKind:v11];

  if ((v12 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end