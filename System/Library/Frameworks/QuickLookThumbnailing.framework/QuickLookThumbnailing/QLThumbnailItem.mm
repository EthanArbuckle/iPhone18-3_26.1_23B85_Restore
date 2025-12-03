@interface QLThumbnailItem
- (QLThumbnailItem)initWithCoder:(id)coder;
- (QLThumbnailItem)initWithData:(id)data contentType:(id)type;
- (QLThumbnailItem)initWithURL:(id)l;
- (QLThumbnailItem)initWithURL:(id)l contentType:(id)type;
- (QLThumbnailItem)initWithURLWrapper:(id)wrapper parentDirectoryWrapper:(id)directoryWrapper contentType:(id)type;
- (id)fileData;
- (id)fileURL;
- (void)cleanup;
- (void)encodeWithCoder:(id)coder;
- (void)startAccessingIfNeeded;
@end

@implementation QLThumbnailItem

- (QLThumbnailItem)initWithURL:(id)l
{
  lCopy = l;
  v5 = [QLUTIAnalyzer contentTypeForURL:lCopy];
  v6 = [(QLThumbnailItem *)self initWithURL:lCopy contentType:v5];

  return v6;
}

- (QLThumbnailItem)initWithURL:(id)l contentType:(id)type
{
  typeCopy = type;
  lCopy = l;
  v8 = [getFPSandboxingURLWrapperClass() wrapperWithURL:lCopy readonly:1 error:0];

  v9 = [(QLThumbnailItem *)self initWithURLWrapper:v8 parentDirectoryWrapper:0 contentType:typeCopy];
  return v9;
}

- (QLThumbnailItem)initWithURLWrapper:(id)wrapper parentDirectoryWrapper:(id)directoryWrapper contentType:(id)type
{
  wrapperCopy = wrapper;
  directoryWrapperCopy = directoryWrapper;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = QLThumbnailItem;
  v11 = [(QLThumbnailItem *)&v18 init];
  contentType = v11->_contentType;
  v11->_contentType = typeCopy;
  v13 = typeCopy;

  urlWrapper = v11->_urlWrapper;
  v11->_urlWrapper = wrapperCopy;
  v15 = wrapperCopy;

  parentDirectoryWrapper = v11->_parentDirectoryWrapper;
  v11->_parentDirectoryWrapper = directoryWrapperCopy;

  return v11;
}

- (QLThumbnailItem)initWithData:(id)data contentType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = QLThumbnailItem;
  v8 = [(QLThumbnailItem *)&v13 init];
  data = v8->_data;
  v8->_data = dataCopy;
  v10 = dataCopy;

  contentType = v8->_contentType;
  v8->_contentType = typeCopy;

  return v8;
}

- (void)startAccessingIfNeeded
{
  if (![(QLThumbnailItem *)self needStopAccessing])
  {
    urlWrapper = [(QLThumbnailItem *)self urlWrapper];
    v4 = [urlWrapper url];
    -[QLThumbnailItem setNeedStopAccessing:](self, "setNeedStopAccessing:", [v4 startAccessingSecurityScopedResource]);
  }

  if (![(QLThumbnailItem *)self needStopAccessingParent])
  {
    parentDirectoryWrapper = [(QLThumbnailItem *)self parentDirectoryWrapper];
    v5 = [parentDirectoryWrapper url];
    -[QLThumbnailItem setNeedStopAccessingParent:](self, "setNeedStopAccessingParent:", [v5 startAccessingSecurityScopedResource]);
  }
}

- (void)cleanup
{
  if ([(QLThumbnailItem *)self needStopAccessing])
  {
    urlWrapper = [(QLThumbnailItem *)self urlWrapper];
    v4 = [urlWrapper url];
    [v4 stopAccessingSecurityScopedResource];

    [(QLThumbnailItem *)self setNeedStopAccessing:0];
  }

  if ([(QLThumbnailItem *)self needStopAccessingParent])
  {
    parentDirectoryWrapper = [(QLThumbnailItem *)self parentDirectoryWrapper];
    v6 = [parentDirectoryWrapper url];
    [v6 stopAccessingSecurityScopedResource];

    [(QLThumbnailItem *)self setNeedStopAccessingParent:0];
  }

  temporaryURL = [(QLThumbnailItem *)self temporaryURL];

  if (temporaryURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    temporaryURL2 = [(QLThumbnailItem *)self temporaryURL];
    [defaultManager removeItemAtURL:temporaryURL2 error:0];

    [(QLThumbnailItem *)self setTemporaryURL:0];
  }
}

- (id)fileURL
{
  temporaryURL = [(QLThumbnailItem *)self temporaryURL];

  if (temporaryURL)
  {
    goto LABEL_2;
  }

  urlWrapper = [(QLThumbnailItem *)self urlWrapper];

  if (urlWrapper)
  {
    urlWrapper2 = [(QLThumbnailItem *)self urlWrapper];
    temporaryURL4 = [urlWrapper2 url];
  }

  else
  {
    data = [(QLThumbnailItem *)self data];

    if (data)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      temporaryDirectory = [defaultManager temporaryDirectory];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      contentType = [(QLThumbnailItem *)self contentType];
      v14 = [temporaryDirectory URLByAppendingPathComponent:uUIDString conformingToType:contentType];
      [(QLThumbnailItem *)self setTemporaryURL:v14];

      data2 = [(QLThumbnailItem *)self data];
      temporaryURL2 = [(QLThumbnailItem *)self temporaryURL];
      [data2 writeToURL:temporaryURL2 atomically:1];

      temporaryURL3 = [(QLThumbnailItem *)self temporaryURL];
      NSLog(&cfstr_WritingTempora.isa, temporaryURL3);

LABEL_2:
      temporaryURL4 = [(QLThumbnailItem *)self temporaryURL];
      goto LABEL_5;
    }

    temporaryURL4 = 0;
  }

LABEL_5:

  return temporaryURL4;
}

- (id)fileData
{
  data = [(QLThumbnailItem *)self data];

  if (data)
  {
    data2 = [(QLThumbnailItem *)self data];
  }

  else
  {
    urlWrapper = [(QLThumbnailItem *)self urlWrapper];

    if (urlWrapper)
    {
      v6 = MEMORY[0x1E695DEF0];
      urlWrapper2 = [(QLThumbnailItem *)self urlWrapper];
      v8 = [urlWrapper2 url];
      data2 = [v6 dataWithContentsOfURL:v8 options:1 error:0];
    }

    else
    {
      data2 = 0;
    }
  }

  return data2;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"d"];
  [coderCopy encodeObject:self->_urlWrapper forKey:@"u"];
  [coderCopy encodeObject:self->_parentDirectoryWrapper forKey:@"p"];
  [coderCopy encodeObject:self->_contentType forKey:@"c"];
  [coderCopy encodeObject:self->_attachments forKey:@"a"];
}

- (QLThumbnailItem)initWithCoder:(id)coder
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = QLThumbnailItem;
  coderCopy = coder;
  v4 = [(QLThumbnailItem *)&v23 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  data = v4->_data;
  v4->_data = v5;

  v7 = [coderCopy decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"u"];
  urlWrapper = v4->_urlWrapper;
  v4->_urlWrapper = v7;

  v9 = [coderCopy decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"p"];
  parentDirectoryWrapper = v4->_parentDirectoryWrapper;
  v4->_parentDirectoryWrapper = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  contentType = v4->_contentType;
  v4->_contentType = v11;

  v13 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v15 = [v13 setWithArray:v14];
  v16 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v18 = [v16 setWithArray:v17];
  v19 = [coderCopy decodeDictionaryWithKeysOfClasses:v15 objectsOfClasses:v18 forKey:@"a"];

  attachments = v4->_attachments;
  v4->_attachments = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

@end