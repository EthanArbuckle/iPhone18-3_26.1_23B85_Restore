@interface BEContentSupportJS
+ (id)_javascriptForAttributes:(id)attributes;
+ (id)javascriptForDocumentTheme:(id)theme level:(int64_t)level;
+ (id)javascriptForUpdatedDisplaySetting:(BOOL)setting imageFilterMode:(unint64_t)mode lineGuideEnabled:(BOOL)enabled;
+ (id)javascriptForUpdatedImageFilterMode:(unint64_t)mode;
+ (id)javascriptForUpdatedLineGuideDisplayEnabled:(BOOL)enabled;
- (BEContentSupportJS)initWithMode:(unint64_t)mode forDisplay:(BOOL)display attributes:(id)attributes imageFilterMode:(unint64_t)filterMode lineGuideEnabled:(BOOL)enabled;
- (id)anyFrameJavascript:(int64_t)javascript;
- (id)anyFrameJavascriptURL:(int64_t)l;
- (id)mainFrameJavascriptURL:(int64_t)l;
- (int64_t)_interfaceLevel;
@end

@implementation BEContentSupportJS

- (BEContentSupportJS)initWithMode:(unint64_t)mode forDisplay:(BOOL)display attributes:(id)attributes imageFilterMode:(unint64_t)filterMode lineGuideEnabled:(BOOL)enabled
{
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = BEContentSupportJS;
  v13 = [(BEContentSupportJS *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_mode = mode;
    v13->_forDisplay = display;
    v15 = [attributesCopy copy];
    attributes = v14->_attributes;
    v14->_attributes = v15;

    v14->_imageFilterMode = filterMode;
    v14->_singleTapEnabled = 1;
    v14->_lineGuideEnabled = enabled;
  }

  return v14;
}

- (int64_t)_interfaceLevel
{
  v2 = +[UITraitCollection currentTraitCollection];
  be_contentSupportInterfaceLevel = [v2 be_contentSupportInterfaceLevel];

  return be_contentSupportInterfaceLevel;
}

- (id)mainFrameJavascriptURL:(int64_t)l
{
  if (l == 1)
  {
    v3 = +[content_support sourceName];
    v4 = BEJavascriptProviderUniqueURLForFilename(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)anyFrameJavascript:(int64_t)javascript
{
  if (javascript)
  {
    if (self->_mode == 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = [NSString stringWithFormat:@"__ibooks_content_support._updateImageVisibilityAndFilter(%lu)", [(BEContentSupportJS *)self imageFilterMode]];;
    }
  }

  else
  {
    v16[0] = @"mode";
    v5 = [NSNumber numberWithUnsignedInteger:self->_mode];
    stringValue = [v5 stringValue];
    v7 = stringValue;
    v8 = @"0";
    if (stringValue)
    {
      v8 = stringValue;
    }

    v17[0] = v8;
    v16[1] = @"configuration";
    v9 = sub_3680(self->_forDisplay, [(BEContentSupportJS *)self _interfaceLevel], [(BEContentSupportJS *)self imageFilterMode], self->_singleTapEnabled, self->_lineGuideEnabled);
    v17[1] = v9;
    v16[2] = @"image_mime_types";
    v10 = BESupportedImageMimeTypesJSON();
    v17[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

    v12 = +[content_support source];
    v4 = [BESimpleTemplate javascriptStringFromJavascriptSource:v12 replacements:v11];
  }

  v13 = [BEContentSupportJS _javascriptForAttributes:self->_attributes];
  v14 = [v4 stringByAppendingString:v13];

  return v14;
}

- (id)anyFrameJavascriptURL:(int64_t)l
{
  if (l)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[content_support sourceName];
    v3 = BEJavascriptProviderUniqueURLForFilename(v4);
  }

  return v3;
}

+ (id)javascriptForDocumentTheme:(id)theme level:(int64_t)level
{
  themeCopy = theme;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BKFlowingBookViewControllerInvertImagesKey"];

  v8 = [NSNumber numberWithInteger:level];
  v9 = v8;
  v10 = @"0";
  if (v7)
  {
    v10 = @"1";
  }

  v11 = [NSString stringWithFormat:@"__ibooks_content_support.setDocumentTheme('%@', '%@', '%@')", themeCopy, v8, v10];;

  return v11;
}

+ (id)javascriptForUpdatedDisplaySetting:(BOOL)setting imageFilterMode:(unint64_t)mode lineGuideEnabled:(BOOL)enabled
{
  v5 = sub_3680(setting, 0, mode, 1, enabled);
  v6 = [NSString stringWithFormat:@"__ibooks_content_support.updateConfiguration('%@')", v5];

  return v6;
}

+ (id)javascriptForUpdatedImageFilterMode:(unint64_t)mode
{
  v3 = [NSNumber numberWithUnsignedInteger:mode];
  stringValue = [v3 stringValue];
  v5 = [NSString stringWithFormat:@"__ibooks_content_support.refetchVisibleImages(%@)", stringValue];

  return v5;
}

+ (id)javascriptForUpdatedLineGuideDisplayEnabled:(BOOL)enabled
{
  v3 = [NSNumber numberWithBool:enabled];
  stringValue = [v3 stringValue];
  v5 = [NSString stringWithFormat:@"__ibooks_content_support.updateLineGuideEnabledStatus(%@)", stringValue];

  return v5;
}

+ (id)_javascriptForAttributes:(id)attributes
{
  if (attributes)
  {
    v3 = [NSJSONSerialization dataWithJSONObject:attributes options:4 error:0];
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
    v5 = [NSString stringWithFormat:@"__ibooks_content_support.setDocumentAttributes('%@')", v4];;
  }

  else
  {
    v5 = &stru_33E120;
  }

  return v5;
}

@end