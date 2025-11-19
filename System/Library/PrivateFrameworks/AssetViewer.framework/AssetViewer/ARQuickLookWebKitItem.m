@interface ARQuickLookWebKitItem
- (ARQuickLookWebKitItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 previewItem:(id)a6;
- (ARQuickLookWebKitItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6 previewItem:(id)a7;
- (ARQuickLookWebKitItemDelegate)delegate;
- (id)previewOptions;
- (void)handleMessageFromCustomExtension:(id)a3 completionHandler:(id)a4;
- (void)previewOptions;
@end

@implementation ARQuickLookWebKitItem

- (ARQuickLookWebKitItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 previewItem:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = ARQuickLookWebKitItem;
  v12 = [(ARQuickLookWebKitItem *)&v16 initWithDataProvider:a3 contentType:a4 previewTitle:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItem, a6);
    additionalParameters = v13->_additionalParameters;
    v13->_additionalParameters = MEMORY[0x277CBEC10];
  }

  return v13;
}

- (ARQuickLookWebKitItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6 previewItem:(id)a7
{
  v13 = a7;
  v18.receiver = self;
  v18.super_class = ARQuickLookWebKitItem;
  v14 = [(ARQuickLookWebKitItem *)&v18 initWithPreviewItemProvider:a3 contentType:a4 previewTitle:a5 fileSize:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_previewItem, a7);
    additionalParameters = v15->_additionalParameters;
    v15->_additionalParameters = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (id)previewOptions
{
  v4 = [(ARQuickLookWebKitItem *)self additionalParameters];
  v5 = [v4 objectForKeyedSubscript:@"ARQLPrivateSourceAppKey"];

  if (v5)
  {
    [(ARQuickLookWebKitItem *)a2 previewOptions];
  }

  v6 = [(ARQuickLookWebKitItem *)self additionalParameters];
  v7 = [v6 mutableCopy];

  [v7 setObject:@"WebKit" forKeyedSubscript:@"ARQLPrivateSourceAppKey"];
  v8 = [(ARQuickLookWebKitItem *)self urlFragment];
  [v7 setObject:v8 forKeyedSubscript:@"ARQLPrivateURLFragment"];

  v9 = [(ARQuickLookWebKitItem *)self previewItem];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ARQuickLookWebKitItem *)self previewItem];
    v12 = [objc_msgSend(v11 performSelector:{sel_previewOptions), "mutableCopy"}];

    [v12 addEntriesFromDictionary:v7];
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (void)handleMessageFromCustomExtension:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  NSLog(&cfstr_Arqlwebkititem.isa, v6);
  v5 = [(ARQuickLookWebKitItem *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 previewItem:self didReceiveMessage:v6];
  }
}

- (ARQuickLookWebKitItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)previewOptions
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

@end