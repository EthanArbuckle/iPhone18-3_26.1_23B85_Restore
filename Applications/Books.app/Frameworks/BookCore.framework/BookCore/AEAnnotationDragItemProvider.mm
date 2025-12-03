@interface AEAnnotationDragItemProvider
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)itemProviderWithAnnotation:(id)annotation propertyProvider:(id)provider;
- (AEAnnotationDragItemProvider)initWithPlainTextString:(id)string htmlString:(id)htmlString;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)_loadHtmlData:(id)data;
- (void)_loadPlainTextData:(id)data;
@end

@implementation AEAnnotationDragItemProvider

- (AEAnnotationDragItemProvider)initWithPlainTextString:(id)string htmlString:(id)htmlString
{
  stringCopy = string;
  htmlStringCopy = htmlString;
  v14.receiver = self;
  v14.super_class = AEAnnotationDragItemProvider;
  v8 = [(AEAnnotationDragItemProvider *)&v14 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    plainTextString = v8->_plainTextString;
    v8->_plainTextString = v9;

    v11 = [htmlStringCopy copy];
    htmlString = v8->_htmlString;
    v8->_htmlString = v11;
  }

  return v8;
}

+ (id)itemProviderWithAnnotation:(id)annotation propertyProvider:(id)provider
{
  providerCopy = provider;
  annotationCopy = annotation;
  v7 = [[AEAnnotationDragHTMLGenerator alloc] initWithAnnotation:annotationCopy propertyProvider:providerCopy];

  v8 = objc_alloc(objc_opt_class());
  plainTextString = [(AEAnnotationDragHTMLGenerator *)v7 plainTextString];
  documentString = [(AEAnnotationDragHTMLGenerator *)v7 documentString];
  v11 = [v8 initWithPlainTextString:plainTextString htmlString:documentString];

  return v11;
}

- (void)_loadPlainTextData:(id)data
{
  plainTextString = self->_plainTextString;
  dataCopy = data;
  v6 = [(NSString *)plainTextString dataUsingEncoding:4];
  (*(data + 2))(dataCopy, v6, 0);
}

- (void)_loadHtmlData:(id)data
{
  htmlString = self->_htmlString;
  dataCopy = data;
  v6 = [(NSString *)htmlString dataUsingEncoding:4];
  (*(data + 2))(dataCopy, v6, 0);
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  identifier = [UTTypeHTML identifier];
  v6[0] = identifier;
  identifier2 = [UTTypeUTF8PlainText identifier];
  v6[1] = identifier2;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  identifier = [UTTypeUTF8PlainText identifier];
  v9 = [identifier isEqualToString:identifierCopy];

  if (v9)
  {
    [(AEAnnotationDragItemProvider *)self _loadPlainTextData:handlerCopy];
  }

  else
  {
    identifier2 = [UTTypeHTML identifier];
    v11 = [identifier2 isEqualToString:identifierCopy];

    if (v11)
    {
      [(AEAnnotationDragItemProvider *)self _loadHtmlData:handlerCopy];
    }

    else
    {
      if (identifierCopy)
      {
        v15 = @"typeIdentifier";
        v16 = identifierCopy;
        v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      }

      else
      {
        v12 = 0;
      }

      v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v12];
      handlerCopy[2](handlerCopy, 0, v13);
    }
  }

  return 0;
}

@end