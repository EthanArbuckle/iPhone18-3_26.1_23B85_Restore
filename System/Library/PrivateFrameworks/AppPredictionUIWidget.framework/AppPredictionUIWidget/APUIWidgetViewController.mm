@interface APUIWidgetViewController
+ (id)imageForIconSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 tintColor:(id)a6;
+ (id)smartStackImageForIconSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 tintColor:(id)a6;
+ (id)widgetIcon;
- (APUIWidgetViewController)initWithIdentifier:(id)a3;
- (BOOL)isCurrentlyVisible;
- (BOOL)matchesWidgetUniqueID:(id)a3 stackID:(id)a4;
- (void)_topWidgetDidAppear:(id)a3;
- (void)_topWidgetDidDisappear:(id)a3;
- (void)_updateViewVisibility;
- (void)dealloc;
- (void)logChangeWithNewSuggestionIds:(id)a3 previousSuggestionIds:(id)a4 suggestionClient:(id)a5;
- (void)setStackVisible:(BOOL)a3;
- (void)setViewVisible:(BOOL)a3;
@end

@implementation APUIWidgetViewController

- (APUIWidgetViewController)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = APUIWidgetViewController;
  v5 = [(APUIWidgetViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel__topWidgetDidAppear_ name:*MEMORY[0x277CEBAC0] object:0];
    [v8 addObserver:v5 selector:sel__topWidgetDidDisappear_ name:*MEMORY[0x277CEBAC8] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = APUIWidgetViewController;
  [(APUIWidgetViewController *)&v4 dealloc];
}

- (BOOL)matchesWidgetUniqueID:(id)a3 stackID:(id)a4
{
  v5 = a3;
  v6 = [(APUIWidgetViewController *)self identifier];
  v7 = [v6 isEqualToString:v5];

  return v7;
}

- (void)_topWidgetDidAppear:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEBAD8]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEBAD0]];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__APUIWidgetViewController__topWidgetDidAppear___block_invoke;
  block[3] = &unk_278C90CF8;
  block[4] = self;
  v12 = v6;
  v13 = v8;
  v9 = v8;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__APUIWidgetViewController__topWidgetDidAppear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) matchesWidgetUniqueID:*(a1 + 40) stackID:*(a1 + 48)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setStackVisible:1];
  }

  return result;
}

- (void)_topWidgetDidDisappear:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEBAD8]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEBAD0]];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__APUIWidgetViewController__topWidgetDidDisappear___block_invoke;
  block[3] = &unk_278C90CF8;
  block[4] = self;
  v12 = v6;
  v13 = v8;
  v9 = v8;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__APUIWidgetViewController__topWidgetDidDisappear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) matchesWidgetUniqueID:*(a1 + 40) stackID:*(a1 + 48)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setStackVisible:0];
  }

  return result;
}

- (void)logChangeWithNewSuggestionIds:(id)a3 previousSuggestionIds:(id)a4 suggestionClient:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if ([(APUIWidgetViewController *)self effectiveViewVisibility])
  {
    if ([v18 count])
    {
      widgetIdentifiable = self->_widgetIdentifiable;
      v11 = [(APUIWidgetViewController *)self layout];
      v12 = [v11 uuid];
      v13 = [v12 UUIDString];
      [v9 logSuggestionsDidAppear:v18 widget:widgetIdentifiable blendingCacheId:v13];
    }

    if ([v8 count])
    {
      v14 = self->_widgetIdentifiable;
      v15 = [(APUIWidgetViewController *)self layout];
      v16 = [v15 uuid];
      v17 = [v16 UUIDString];
      [v9 logSuggestionsDidDisappear:v8 widget:v14 blendingCacheId:v17];
    }
  }
}

- (BOOL)isCurrentlyVisible
{
  v3 = [(APUIWidgetViewController *)self isViewVisible];
  if (v3)
  {

    LOBYTE(v3) = [(APUIWidgetViewController *)self stackVisible];
  }

  return v3;
}

- (void)setStackVisible:(BOOL)a3
{
  if (self->_stackVisible != a3)
  {
    self->_stackVisible = a3;
    [(APUIWidgetViewController *)self _updateViewVisibility];
  }
}

- (void)setViewVisible:(BOOL)a3
{
  if (self->_viewVisible != a3)
  {
    self->_viewVisible = a3;
    [(APUIWidgetViewController *)self _updateViewVisibility];
  }
}

- (void)_updateViewVisibility
{
  v3 = [(APUIWidgetViewController *)self effectiveViewVisibility];
  v4 = [(APUIWidgetViewController *)self isCurrentlyVisible];
  if (v3 != v4)
  {
    v5 = [(APUIWidgetViewController *)self suggestionClient];
    if (v4)
    {
      v6 = [(APUIWidgetViewController *)self widgetIdentifiable];
      v7 = [(APUIWidgetViewController *)self layout];
      v8 = [v7 uuid];
      v9 = [v8 UUIDString];
      [v5 logWidgetDidAppear:v6 blendingCacheId:v9];

      v10 = [(APUIWidgetViewController *)self suggestionClient];
      v11 = [(APUIWidgetViewController *)self suggestionIds];
      v12 = [(APUIWidgetViewController *)self widgetIdentifiable];
      v13 = [(APUIWidgetViewController *)self layout];
      v14 = [v13 uuid];
      v15 = [v14 UUIDString];
      [v10 logSuggestionsDidAppear:v11 widget:v12 blendingCacheId:v15];
    }

    else
    {
      v16 = [(APUIWidgetViewController *)self suggestionIds];
      v17 = [(APUIWidgetViewController *)self widgetIdentifiable];
      v18 = [(APUIWidgetViewController *)self layout];
      v19 = [v18 uuid];
      v20 = [v19 UUIDString];
      [v5 logSuggestionsDidDisappear:v16 widget:v17 blendingCacheId:v20];

      v10 = [(APUIWidgetViewController *)self suggestionClient];
      v11 = [(APUIWidgetViewController *)self widgetIdentifiable];
      v12 = [(APUIWidgetViewController *)self layout];
      v13 = [v12 uuid];
      v14 = [v13 UUIDString];
      [v10 logWidgetDidDisappear:v11 blendingCacheId:v14];
    }
  }

  [(APUIWidgetViewController *)self setEffectiveViewVisibility:v4];
}

+ (id)imageForIconSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 tintColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];
  v12 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, a4}];
  v13 = v12;
  if (a5 == 2)
  {
    [v12 setAppearance:2];
    if (v10)
    {
      v15 = [objc_alloc(MEMORY[0x277D1B150]) initWithCGColor:{objc_msgSend(v10, "CGColor")}];
      [v13 setTintColor:v15];
    }
  }

  else
  {
    if (a5 == 1)
    {
      v14 = 1;
    }

    else
    {
      if (a5)
      {
        goto LABEL_9;
      }

      v14 = 0;
    }

    [v12 setAppearance:v14];
  }

LABEL_9:
  v16 = [v11 imageForDescriptor:v13];
  if ([v16 placeholder])
  {
    v17 = [v11 prepareImageForDescriptor:v13];

    v16 = v17;
  }

  v18 = MEMORY[0x277D755B8];
  v19 = [v16 CGImage];
  [v16 scale];
  v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];

  return v20;
}

+ (id)smartStackImageForIconSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 tintColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = @"smart-stack";
  if (a5 == 1)
  {
    v11 = @"smart-stack-dark";
  }

  if (a5 == 2)
  {
    v12 = @"smart-stack-tintable";
  }

  else
  {
    v12 = v11;
  }

  v13 = MEMORY[0x277D755B8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v13 imageNamed:v12 inBundle:v14];

  v16 = objc_alloc(MEMORY[0x277D1B160]);
  v17 = [v15 CGImage];
  [v15 scale];
  v18 = [v16 initWithCGImage:v17 scale:?];
  v19 = objc_alloc(MEMORY[0x277D1B1A8]);
  v33[0] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v21 = [v19 initWithImages:v20];

  v22 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, a4}];
  v23 = v22;
  if (a5 == 2)
  {
    [v22 setAppearance:2];
    if (v10)
    {
      v25 = [objc_alloc(MEMORY[0x277D1B150]) initWithCGColor:{objc_msgSend(v10, "CGColor")}];
      [v23 setTintColor:v25];
    }
  }

  else
  {
    if (a5 == 1)
    {
      v24 = 1;
    }

    else
    {
      if (a5)
      {
        goto LABEL_14;
      }

      v24 = 0;
    }

    [v22 setAppearance:v24];
  }

LABEL_14:
  v26 = [v21 imageForDescriptor:v23];
  if ([v26 placeholder])
  {
    v27 = [v21 prepareImageForDescriptor:v23];

    v26 = v27;
  }

  v28 = MEMORY[0x277D755B8];
  v29 = [v26 CGImage];
  [v26 scale];
  v30 = [v28 imageWithCGImage:v29 scale:0 orientation:?];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)widgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];

  return v2;
}

@end