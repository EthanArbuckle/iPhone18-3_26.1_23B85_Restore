@interface AUISWShareableContent
- (AUISWShareableContent)initWithContent:(id)content;
- (LPLinkMetadata)metadata;
- (NSArray)itemProviders;
@end

@implementation AUISWShareableContent

- (AUISWShareableContent)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = AUISWShareableContent;
  v6 = [(AUISWShareableContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
  }

  return v7;
}

- (NSArray)itemProviders
{
  content = [(AUISWShareableContent *)self content];
  v4 = objc_opt_respondsToSelector();

  content2 = [(AUISWShareableContent *)self content];
  v6 = content2;
  if (v4)
  {
    itemProviders = [content2 itemProviders];
  }

  else
  {
    itemProvider = [content2 itemProvider];
    v10 = itemProvider;
    itemProviders = [NSArray arrayWithObjects:&v10 count:1];
  }

  return itemProviders;
}

- (LPLinkMetadata)metadata
{
  content = [(AUISWShareableContent *)self content];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    content2 = [(AUISWShareableContent *)self content];
    metadata = [content2 metadata];
  }

  else
  {
    metadata = 0;
  }

  return metadata;
}

@end