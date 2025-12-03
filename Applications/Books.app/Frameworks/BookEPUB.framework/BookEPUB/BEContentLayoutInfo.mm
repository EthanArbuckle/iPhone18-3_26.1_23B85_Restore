@interface BEContentLayoutInfo
+ (id)javascriptForContentOptions:(unint64_t)options;
+ (id)updateScriptWithOptions:(id)options;
- (BEContentLayoutInfo)initWithOptions:(id)options;
- (id)mainFrameJavascriptURL:(int64_t)l;
- (id)mainFrameOnlyJavascript:(int64_t)javascript;
@end

@implementation BEContentLayoutInfo

- (BEContentLayoutInfo)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = BEContentLayoutInfo;
  v6 = [(BEContentLayoutInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
  }

  return v7;
}

- (id)mainFrameOnlyJavascript:(int64_t)javascript
{
  if (javascript)
  {
    v3 = 0;
  }

  else
  {
    v10 = @"bookInfo";
    jsonRepresentation = [(BEWebViewFactoryPaginationOptions *)self->_options jsonRepresentation];
    v5 = jsonRepresentation;
    v6 = &stru_33E120;
    if (jsonRepresentation)
    {
      v6 = jsonRepresentation;
    }

    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v8 = +[content_layout_info source];
    v3 = [BESimpleTemplate javascriptStringFromJavascriptSource:v8 replacements:v7];
  }

  return v3;
}

- (id)mainFrameJavascriptURL:(int64_t)l
{
  if (l)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[content_layout_info sourceName];
    v3 = BEJavascriptProviderUniqueURLForFilename(v4);
  }

  return v3;
}

+ (id)javascriptForContentOptions:(unint64_t)options
{
  v3 = [NSNumber numberWithUnsignedInteger:options];
  v4 = [NSString stringWithFormat:@"__ibooks_content_layout_info.getFramesAndPageOffsets(%@)", v3];

  return v4;
}

+ (id)updateScriptWithOptions:(id)options
{
  jsonRepresentation = [options jsonRepresentation];
  v4 = [NSString stringWithFormat:@"__ibooks_content_layout_info.updateDocumentInfo('%@')", jsonRepresentation];

  return v4;
}

@end