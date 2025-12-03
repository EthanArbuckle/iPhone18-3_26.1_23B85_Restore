@interface JSAFeedMetadata
+ (id)metadataDictionary:(id)dictionary variationWithNavigationBarStyle:(unint64_t)style;
- (JSAFeedMetadata)init;
- (JSAFeedMetadata)initWithDictionary:(id)dictionary;
- (UIEdgeInsets)navigationBarLayoutInsets;
@end

@implementation JSAFeedMetadata

- (JSAFeedMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = JSAFeedMetadata;
  v5 = [(JSAFeedMetadata *)&v64 init];
  v6 = v5;
  if (v5)
  {
    v5->_navigationBarVisible = 1;
    v5->_navigationBarStyle = 0;
    v5->_navigationBarInitialBackgroundOpacity = 1.0;
    if (dictionaryCopy)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarVisibility"];
      if (v7)
      {
        v8 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarVisibility"];
        v6->_navigationBarVisible = [v8 BOOLValue];
      }

      else
      {
        v6->_navigationBarVisible = 1;
      }

      v9 = [dictionaryCopy objectForKeyedSubscript:@"showsVerticalScrollIndicator"];
      if (v9)
      {
        objc_opt_class();
        v10 = [dictionaryCopy objectForKeyedSubscript:@"showsVerticalScrollIndicator"];
        v11 = BUDynamicCast();
        v6->_showsVerticalScrollIndicator = [v11 BOOLValue];
      }

      else
      {
        v6->_showsVerticalScrollIndicator = 1;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarStyle"];
      if ([v12 isEqualToString:@"transparent"])
      {
        v13 = 2;
      }

      else if ([v12 isEqualToString:@"small"])
      {
        v13 = 1;
      }

      else if ([v12 isEqualToString:@"transparent-with-insets"])
      {
        v13 = 3;
      }

      else if ([v12 isEqualToString:@"transparent-always"])
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v6->_navigationBarStyle = v13;
      v14 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarInitialBackgroundOpacity"];
      if (v14)
      {
        v15 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarInitialBackgroundOpacity"];
        [v15 doubleValue];
        v6->_navigationBarInitialBackgroundOpacity = v16;
      }

      else
      {
        v6->_navigationBarInitialBackgroundOpacity = 1.0;
      }

      v17 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarTintOpacity"];
      v18 = 1.0;
      v19 = 1.0;
      if (v17)
      {
        v20 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarTintOpacity"];
        [v20 doubleValue];
        v19 = v21;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarTintColor"];
      v23 = [UIColor jsa_colorWithHexString:v22 alpha:v19];
      navigationBarTintColor = v6->_navigationBarTintColor;
      v6->_navigationBarTintColor = v23;

      v25 = [dictionaryCopy objectForKeyedSubscript:@"dayBackgroundOpacity"];
      if (v25)
      {
        v26 = [dictionaryCopy objectForKeyedSubscript:@"dayBackgroundOpacity"];
        [v26 doubleValue];
        v18 = v27;
      }

      v28 = [dictionaryCopy objectForKeyedSubscript:@"dayBackgroundColor"];
      v29 = [UIColor jsa_colorWithHexString:v28 alpha:v18];
      dayBackgroundColor = v6->_dayBackgroundColor;
      v6->_dayBackgroundColor = v29;

      v31 = [dictionaryCopy objectForKeyedSubscript:@"nightBackgroundOpacity"];
      if (v31)
      {
        v32 = [dictionaryCopy objectForKeyedSubscript:@"nightBackgroundOpacity"];
        [v32 doubleValue];
        v34 = v33;
      }

      else
      {
        v34 = 1.0;
      }

      v35 = [dictionaryCopy objectForKeyedSubscript:@"nightBackgroundColor"];
      v36 = [UIColor jsa_colorWithHexString:v35 alpha:v34];
      nightBackgroundColor = v6->_nightBackgroundColor;
      v6->_nightBackgroundColor = v36;

      objc_opt_class();
      v38 = [dictionaryCopy objectForKeyedSubscript:@"backTitle"];
      v39 = BUDynamicCast();
      v40 = [v39 copy];
      backTitle = v6->_backTitle;
      v6->_backTitle = v40;

      objc_opt_class();
      v42 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      v43 = BUDynamicCast();
      v44 = [v43 copy];
      title = v6->_title;
      v6->_title = v44;

      objc_opt_class();
      v46 = [dictionaryCopy objectForKeyedSubscript:@"trackerName"];
      v47 = BUDynamicCast();
      v48 = [v47 copy];
      trackerName = v6->_trackerName;
      v6->_trackerName = v48;

      objc_opt_class();
      v50 = [dictionaryCopy objectForKeyedSubscript:@"accessibilitySummary"];
      v51 = BUDynamicCast();
      v52 = [v51 copy];
      accessibilitySummary = v6->_accessibilitySummary;
      v6->_accessibilitySummary = v52;

      objc_opt_class();
      v54 = [dictionaryCopy objectForKeyedSubscript:@"messagePlacements"];
      v55 = BUDynamicCast();
      v56 = [v55 copy];
      messagePlacements = v6->_messagePlacements;
      v6->_messagePlacements = v56;

      objc_opt_class();
      v58 = [dictionaryCopy objectForKeyedSubscript:@"ignoreActiveAppearanceEnvironmentUpdate"];
      v59 = BUDynamicCast();
      v6->_ignoreActiveAppearanceEnvironmentUpdate = [v59 BOOLValue];

      objc_opt_class();
      v60 = [dictionaryCopy objectForKeyedSubscript:@"navigationBarHorizontalLayoutInset"];
      v61 = BUDynamicCast();

      if (v61)
      {
        [v61 doubleValue];
        v6->_navigationBarLayoutInsets.top = 0.0;
        v6->_navigationBarLayoutInsets.left = v62;
        v6->_navigationBarLayoutInsets.bottom = 0.0;
        v6->_navigationBarLayoutInsets.right = v62;
      }
    }
  }

  return v6;
}

- (JSAFeedMetadata)init
{
  v3.receiver = self;
  v3.super_class = JSAFeedMetadata;
  result = [(JSAFeedMetadata *)&v3 init];
  if (result)
  {
    result->_navigationBarVisible = 1;
    result->_navigationBarStyle = 0;
    result->_navigationBarInitialBackgroundOpacity = 1.0;
  }

  return result;
}

+ (id)metadataDictionary:(id)dictionary variationWithNavigationBarStyle:(unint64_t)style
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v7 = [dictionaryCopy mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (style <= 4)
  {
    [v7 setObject:off_B2608[style] forKeyedSubscript:@"navigationBarStyle"];
  }

  v9 = [v8 copy];

  return v9;
}

- (UIEdgeInsets)navigationBarLayoutInsets
{
  top = self->_navigationBarLayoutInsets.top;
  left = self->_navigationBarLayoutInsets.left;
  bottom = self->_navigationBarLayoutInsets.bottom;
  right = self->_navigationBarLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end