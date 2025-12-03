@interface APUIWidgetViewController
+ (id)imageForIconSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance tintColor:(id)color;
+ (id)smartStackImageForIconSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance tintColor:(id)color;
+ (id)widgetIcon;
- (APUIWidgetViewController)initWithIdentifier:(id)identifier;
- (BOOL)isCurrentlyVisible;
- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD;
- (void)_topWidgetDidAppear:(id)appear;
- (void)_topWidgetDidDisappear:(id)disappear;
- (void)_updateViewVisibility;
- (void)dealloc;
- (void)logChangeWithNewSuggestionIds:(id)ids previousSuggestionIds:(id)suggestionIds suggestionClient:(id)client;
- (void)setStackVisible:(BOOL)visible;
- (void)setViewVisible:(BOOL)visible;
@end

@implementation APUIWidgetViewController

- (APUIWidgetViewController)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = APUIWidgetViewController;
  v5 = [(APUIWidgetViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__topWidgetDidAppear_ name:*MEMORY[0x277CEBAC0] object:0];
    [defaultCenter addObserver:v5 selector:sel__topWidgetDidDisappear_ name:*MEMORY[0x277CEBAC8] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = APUIWidgetViewController;
  [(APUIWidgetViewController *)&v4 dealloc];
}

- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD
{
  dCopy = d;
  identifier = [(APUIWidgetViewController *)self identifier];
  v7 = [identifier isEqualToString:dCopy];

  return v7;
}

- (void)_topWidgetDidAppear:(id)appear
{
  appearCopy = appear;
  userInfo = [appearCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEBAD8]];

  userInfo2 = [appearCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CEBAD0]];

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

- (void)_topWidgetDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  userInfo = [disappearCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEBAD8]];

  userInfo2 = [disappearCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CEBAD0]];

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

- (void)logChangeWithNewSuggestionIds:(id)ids previousSuggestionIds:(id)suggestionIds suggestionClient:(id)client
{
  idsCopy = ids;
  suggestionIdsCopy = suggestionIds;
  clientCopy = client;
  if ([(APUIWidgetViewController *)self effectiveViewVisibility])
  {
    if ([idsCopy count])
    {
      widgetIdentifiable = self->_widgetIdentifiable;
      layout = [(APUIWidgetViewController *)self layout];
      uuid = [layout uuid];
      uUIDString = [uuid UUIDString];
      [clientCopy logSuggestionsDidAppear:idsCopy widget:widgetIdentifiable blendingCacheId:uUIDString];
    }

    if ([suggestionIdsCopy count])
    {
      v14 = self->_widgetIdentifiable;
      layout2 = [(APUIWidgetViewController *)self layout];
      uuid2 = [layout2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      [clientCopy logSuggestionsDidDisappear:suggestionIdsCopy widget:v14 blendingCacheId:uUIDString2];
    }
  }
}

- (BOOL)isCurrentlyVisible
{
  isViewVisible = [(APUIWidgetViewController *)self isViewVisible];
  if (isViewVisible)
  {

    LOBYTE(isViewVisible) = [(APUIWidgetViewController *)self stackVisible];
  }

  return isViewVisible;
}

- (void)setStackVisible:(BOOL)visible
{
  if (self->_stackVisible != visible)
  {
    self->_stackVisible = visible;
    [(APUIWidgetViewController *)self _updateViewVisibility];
  }
}

- (void)setViewVisible:(BOOL)visible
{
  if (self->_viewVisible != visible)
  {
    self->_viewVisible = visible;
    [(APUIWidgetViewController *)self _updateViewVisibility];
  }
}

- (void)_updateViewVisibility
{
  effectiveViewVisibility = [(APUIWidgetViewController *)self effectiveViewVisibility];
  isCurrentlyVisible = [(APUIWidgetViewController *)self isCurrentlyVisible];
  if (effectiveViewVisibility != isCurrentlyVisible)
  {
    suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
    if (isCurrentlyVisible)
    {
      widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
      layout = [(APUIWidgetViewController *)self layout];
      uuid = [layout uuid];
      uUIDString = [uuid UUIDString];
      [suggestionClient logWidgetDidAppear:widgetIdentifiable blendingCacheId:uUIDString];

      suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
      suggestionIds = [(APUIWidgetViewController *)self suggestionIds];
      widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
      layout2 = [(APUIWidgetViewController *)self layout];
      uuid2 = [layout2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      [suggestionClient2 logSuggestionsDidAppear:suggestionIds widget:widgetIdentifiable2 blendingCacheId:uUIDString2];
    }

    else
    {
      suggestionIds2 = [(APUIWidgetViewController *)self suggestionIds];
      widgetIdentifiable3 = [(APUIWidgetViewController *)self widgetIdentifiable];
      layout3 = [(APUIWidgetViewController *)self layout];
      uuid3 = [layout3 uuid];
      uUIDString3 = [uuid3 UUIDString];
      [suggestionClient logSuggestionsDidDisappear:suggestionIds2 widget:widgetIdentifiable3 blendingCacheId:uUIDString3];

      suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
      suggestionIds = [(APUIWidgetViewController *)self widgetIdentifiable];
      widgetIdentifiable2 = [(APUIWidgetViewController *)self layout];
      layout2 = [widgetIdentifiable2 uuid];
      uuid2 = [layout2 UUIDString];
      [suggestionClient2 logWidgetDidDisappear:suggestionIds blendingCacheId:uuid2];
    }
  }

  [(APUIWidgetViewController *)self setEffectiveViewVisibility:isCurrentlyVisible];
}

+ (id)imageForIconSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance tintColor:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v11 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];
  v12 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, scale}];
  v13 = v12;
  if (appearance == 2)
  {
    [v12 setAppearance:2];
    if (colorCopy)
    {
      v15 = [objc_alloc(MEMORY[0x277D1B150]) initWithCGColor:{objc_msgSend(colorCopy, "CGColor")}];
      [v13 setTintColor:v15];
    }
  }

  else
  {
    if (appearance == 1)
    {
      v14 = 1;
    }

    else
    {
      if (appearance)
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
  cGImage = [v16 CGImage];
  [v16 scale];
  v20 = [v18 imageWithCGImage:cGImage scale:0 orientation:?];

  return v20;
}

+ (id)smartStackImageForIconSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance tintColor:(id)color
{
  height = size.height;
  width = size.width;
  v33[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v11 = @"smart-stack";
  if (appearance == 1)
  {
    v11 = @"smart-stack-dark";
  }

  if (appearance == 2)
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
  cGImage = [v15 CGImage];
  [v15 scale];
  v18 = [v16 initWithCGImage:cGImage scale:?];
  v19 = objc_alloc(MEMORY[0x277D1B1A8]);
  v33[0] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v21 = [v19 initWithImages:v20];

  v22 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, scale}];
  v23 = v22;
  if (appearance == 2)
  {
    [v22 setAppearance:2];
    if (colorCopy)
    {
      v25 = [objc_alloc(MEMORY[0x277D1B150]) initWithCGColor:{objc_msgSend(colorCopy, "CGColor")}];
      [v23 setTintColor:v25];
    }
  }

  else
  {
    if (appearance == 1)
    {
      v24 = 1;
    }

    else
    {
      if (appearance)
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
  cGImage2 = [v26 CGImage];
  [v26 scale];
  v30 = [v28 imageWithCGImage:cGImage2 scale:0 orientation:?];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)widgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];

  return v2;
}

@end