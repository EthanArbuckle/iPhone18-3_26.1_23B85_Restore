@interface BEContentSupportJS
+ (id)_javascriptForAttributes:(id)a3;
+ (id)javascriptForDocumentTheme:(id)a3 level:(int64_t)a4;
+ (id)javascriptForUpdatedDisplaySetting:(BOOL)a3 imageFilterMode:(unint64_t)a4 lineGuideEnabled:(BOOL)a5;
+ (id)javascriptForUpdatedImageFilterMode:(unint64_t)a3;
+ (id)javascriptForUpdatedLineGuideDisplayEnabled:(BOOL)a3;
- (BEContentSupportJS)initWithMode:(unint64_t)a3 forDisplay:(BOOL)a4 attributes:(id)a5 imageFilterMode:(unint64_t)a6 lineGuideEnabled:(BOOL)a7;
- (id)anyFrameJavascript:(int64_t)a3;
- (id)anyFrameJavascriptURL:(int64_t)a3;
- (id)mainFrameJavascriptURL:(int64_t)a3;
- (int64_t)_interfaceLevel;
@end

@implementation BEContentSupportJS

- (BEContentSupportJS)initWithMode:(unint64_t)a3 forDisplay:(BOOL)a4 attributes:(id)a5 imageFilterMode:(unint64_t)a6 lineGuideEnabled:(BOOL)a7
{
  v12 = a5;
  v18.receiver = self;
  v18.super_class = BEContentSupportJS;
  v13 = [(BEContentSupportJS *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_mode = a3;
    v13->_forDisplay = a4;
    v15 = [v12 copy];
    attributes = v14->_attributes;
    v14->_attributes = v15;

    v14->_imageFilterMode = a6;
    v14->_singleTapEnabled = 1;
    v14->_lineGuideEnabled = a7;
  }

  return v14;
}

- (int64_t)_interfaceLevel
{
  v2 = +[UITraitCollection currentTraitCollection];
  v3 = [v2 be_contentSupportInterfaceLevel];

  return v3;
}

- (id)mainFrameJavascriptURL:(int64_t)a3
{
  if (a3 == 1)
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

- (id)anyFrameJavascript:(int64_t)a3
{
  if (a3)
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
    v6 = [v5 stringValue];
    v7 = v6;
    v8 = @"0";
    if (v6)
    {
      v8 = v6;
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

- (id)anyFrameJavascriptURL:(int64_t)a3
{
  if (a3)
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

+ (id)javascriptForDocumentTheme:(id)a3 level:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BKFlowingBookViewControllerInvertImagesKey"];

  v8 = [NSNumber numberWithInteger:a4];
  v9 = v8;
  v10 = @"0";
  if (v7)
  {
    v10 = @"1";
  }

  v11 = [NSString stringWithFormat:@"__ibooks_content_support.setDocumentTheme('%@', '%@', '%@')", v5, v8, v10];;

  return v11;
}

+ (id)javascriptForUpdatedDisplaySetting:(BOOL)a3 imageFilterMode:(unint64_t)a4 lineGuideEnabled:(BOOL)a5
{
  v5 = sub_3680(a3, 0, a4, 1, a5);
  v6 = [NSString stringWithFormat:@"__ibooks_content_support.updateConfiguration('%@')", v5];

  return v6;
}

+ (id)javascriptForUpdatedImageFilterMode:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [v3 stringValue];
  v5 = [NSString stringWithFormat:@"__ibooks_content_support.refetchVisibleImages(%@)", v4];

  return v5;
}

+ (id)javascriptForUpdatedLineGuideDisplayEnabled:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  v4 = [v3 stringValue];
  v5 = [NSString stringWithFormat:@"__ibooks_content_support.updateLineGuideEnabledStatus(%@)", v4];

  return v5;
}

+ (id)_javascriptForAttributes:(id)a3
{
  if (a3)
  {
    v3 = [NSJSONSerialization dataWithJSONObject:a3 options:4 error:0];
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