@interface BEContentLayoutInfo
+ (id)javascriptForContentOptions:(unint64_t)a3;
+ (id)updateScriptWithOptions:(id)a3;
- (BEContentLayoutInfo)initWithOptions:(id)a3;
- (id)mainFrameJavascriptURL:(int64_t)a3;
- (id)mainFrameOnlyJavascript:(int64_t)a3;
@end

@implementation BEContentLayoutInfo

- (BEContentLayoutInfo)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BEContentLayoutInfo;
  v6 = [(BEContentLayoutInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

- (id)mainFrameOnlyJavascript:(int64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v10 = @"bookInfo";
    v4 = [(BEWebViewFactoryPaginationOptions *)self->_options jsonRepresentation];
    v5 = v4;
    v6 = &stru_33E120;
    if (v4)
    {
      v6 = v4;
    }

    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v8 = +[content_layout_info source];
    v3 = [BESimpleTemplate javascriptStringFromJavascriptSource:v8 replacements:v7];
  }

  return v3;
}

- (id)mainFrameJavascriptURL:(int64_t)a3
{
  if (a3)
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

+ (id)javascriptForContentOptions:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [NSString stringWithFormat:@"__ibooks_content_layout_info.getFramesAndPageOffsets(%@)", v3];

  return v4;
}

+ (id)updateScriptWithOptions:(id)a3
{
  v3 = [a3 jsonRepresentation];
  v4 = [NSString stringWithFormat:@"__ibooks_content_layout_info.updateDocumentInfo('%@')", v3];

  return v4;
}

@end