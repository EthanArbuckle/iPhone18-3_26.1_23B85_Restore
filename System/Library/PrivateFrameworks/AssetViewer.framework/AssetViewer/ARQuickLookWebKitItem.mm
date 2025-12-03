@interface ARQuickLookWebKitItem
- (ARQuickLookWebKitItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title previewItem:(id)item;
- (ARQuickLookWebKitItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size previewItem:(id)item;
- (ARQuickLookWebKitItemDelegate)delegate;
- (id)previewOptions;
- (void)handleMessageFromCustomExtension:(id)extension completionHandler:(id)handler;
- (void)previewOptions;
@end

@implementation ARQuickLookWebKitItem

- (ARQuickLookWebKitItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title previewItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = ARQuickLookWebKitItem;
  v12 = [(ARQuickLookWebKitItem *)&v16 initWithDataProvider:provider contentType:type previewTitle:title];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItem, item);
    additionalParameters = v13->_additionalParameters;
    v13->_additionalParameters = MEMORY[0x277CBEC10];
  }

  return v13;
}

- (ARQuickLookWebKitItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size previewItem:(id)item
{
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = ARQuickLookWebKitItem;
  v14 = [(ARQuickLookWebKitItem *)&v18 initWithPreviewItemProvider:provider contentType:type previewTitle:title fileSize:size];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_previewItem, item);
    additionalParameters = v15->_additionalParameters;
    v15->_additionalParameters = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (id)previewOptions
{
  additionalParameters = [(ARQuickLookWebKitItem *)self additionalParameters];
  v5 = [additionalParameters objectForKeyedSubscript:@"ARQLPrivateSourceAppKey"];

  if (v5)
  {
    [(ARQuickLookWebKitItem *)a2 previewOptions];
  }

  additionalParameters2 = [(ARQuickLookWebKitItem *)self additionalParameters];
  v7 = [additionalParameters2 mutableCopy];

  [v7 setObject:@"WebKit" forKeyedSubscript:@"ARQLPrivateSourceAppKey"];
  urlFragment = [(ARQuickLookWebKitItem *)self urlFragment];
  [v7 setObject:urlFragment forKeyedSubscript:@"ARQLPrivateURLFragment"];

  previewItem = [(ARQuickLookWebKitItem *)self previewItem];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    previewItem2 = [(ARQuickLookWebKitItem *)self previewItem];
    v12 = [objc_msgSend(previewItem2 performSelector:{sel_previewOptions), "mutableCopy"}];

    [v12 addEntriesFromDictionary:v7];
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (void)handleMessageFromCustomExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  NSLog(&cfstr_Arqlwebkititem.isa, extensionCopy);
  delegate = [(ARQuickLookWebKitItem *)self delegate];
  if (extensionCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate previewItem:self didReceiveMessage:extensionCopy];
  }
}

- (ARQuickLookWebKitItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)previewOptions
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
}

@end