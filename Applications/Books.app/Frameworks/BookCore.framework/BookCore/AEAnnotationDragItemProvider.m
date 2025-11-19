@interface AEAnnotationDragItemProvider
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)itemProviderWithAnnotation:(id)a3 propertyProvider:(id)a4;
- (AEAnnotationDragItemProvider)initWithPlainTextString:(id)a3 htmlString:(id)a4;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)_loadHtmlData:(id)a3;
- (void)_loadPlainTextData:(id)a3;
@end

@implementation AEAnnotationDragItemProvider

- (AEAnnotationDragItemProvider)initWithPlainTextString:(id)a3 htmlString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AEAnnotationDragItemProvider;
  v8 = [(AEAnnotationDragItemProvider *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    plainTextString = v8->_plainTextString;
    v8->_plainTextString = v9;

    v11 = [v7 copy];
    htmlString = v8->_htmlString;
    v8->_htmlString = v11;
  }

  return v8;
}

+ (id)itemProviderWithAnnotation:(id)a3 propertyProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AEAnnotationDragHTMLGenerator alloc] initWithAnnotation:v6 propertyProvider:v5];

  v8 = objc_alloc(objc_opt_class());
  v9 = [(AEAnnotationDragHTMLGenerator *)v7 plainTextString];
  v10 = [(AEAnnotationDragHTMLGenerator *)v7 documentString];
  v11 = [v8 initWithPlainTextString:v9 htmlString:v10];

  return v11;
}

- (void)_loadPlainTextData:(id)a3
{
  plainTextString = self->_plainTextString;
  v5 = a3;
  v6 = [(NSString *)plainTextString dataUsingEncoding:4];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)_loadHtmlData:(id)a3
{
  htmlString = self->_htmlString;
  v5 = a3;
  v6 = [(NSString *)htmlString dataUsingEncoding:4];
  (*(a3 + 2))(v5, v6, 0);
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = [UTTypeHTML identifier];
  v6[0] = v2;
  v3 = [UTTypeUTF8PlainText identifier];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UTTypeUTF8PlainText identifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    [(AEAnnotationDragItemProvider *)self _loadPlainTextData:v7];
  }

  else
  {
    v10 = [UTTypeHTML identifier];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      [(AEAnnotationDragItemProvider *)self _loadHtmlData:v7];
    }

    else
    {
      if (v6)
      {
        v15 = @"typeIdentifier";
        v16 = v6;
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      }

      else
      {
        v12 = 0;
      }

      v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v12];
      v7[2](v7, 0, v13);
    }
  }

  return 0;
}

@end