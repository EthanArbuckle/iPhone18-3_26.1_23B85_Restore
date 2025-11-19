@interface QLThumbnailItem
- (QLThumbnailItem)initWithCoder:(id)a3;
- (QLThumbnailItem)initWithData:(id)a3 contentType:(id)a4;
- (QLThumbnailItem)initWithURL:(id)a3;
- (QLThumbnailItem)initWithURL:(id)a3 contentType:(id)a4;
- (QLThumbnailItem)initWithURLWrapper:(id)a3 parentDirectoryWrapper:(id)a4 contentType:(id)a5;
- (id)fileData;
- (id)fileURL;
- (void)cleanup;
- (void)encodeWithCoder:(id)a3;
- (void)startAccessingIfNeeded;
@end

@implementation QLThumbnailItem

- (QLThumbnailItem)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [QLUTIAnalyzer contentTypeForURL:v4];
  v6 = [(QLThumbnailItem *)self initWithURL:v4 contentType:v5];

  return v6;
}

- (QLThumbnailItem)initWithURL:(id)a3 contentType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v7 readonly:1 error:0];

  v9 = [(QLThumbnailItem *)self initWithURLWrapper:v8 parentDirectoryWrapper:0 contentType:v6];
  return v9;
}

- (QLThumbnailItem)initWithURLWrapper:(id)a3 parentDirectoryWrapper:(id)a4 contentType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = QLThumbnailItem;
  v11 = [(QLThumbnailItem *)&v18 init];
  contentType = v11->_contentType;
  v11->_contentType = v10;
  v13 = v10;

  urlWrapper = v11->_urlWrapper;
  v11->_urlWrapper = v8;
  v15 = v8;

  parentDirectoryWrapper = v11->_parentDirectoryWrapper;
  v11->_parentDirectoryWrapper = v9;

  return v11;
}

- (QLThumbnailItem)initWithData:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = QLThumbnailItem;
  v8 = [(QLThumbnailItem *)&v13 init];
  data = v8->_data;
  v8->_data = v6;
  v10 = v6;

  contentType = v8->_contentType;
  v8->_contentType = v7;

  return v8;
}

- (void)startAccessingIfNeeded
{
  if (![(QLThumbnailItem *)self needStopAccessing])
  {
    v3 = [(QLThumbnailItem *)self urlWrapper];
    v4 = [v3 url];
    -[QLThumbnailItem setNeedStopAccessing:](self, "setNeedStopAccessing:", [v4 startAccessingSecurityScopedResource]);
  }

  if (![(QLThumbnailItem *)self needStopAccessingParent])
  {
    v6 = [(QLThumbnailItem *)self parentDirectoryWrapper];
    v5 = [v6 url];
    -[QLThumbnailItem setNeedStopAccessingParent:](self, "setNeedStopAccessingParent:", [v5 startAccessingSecurityScopedResource]);
  }
}

- (void)cleanup
{
  if ([(QLThumbnailItem *)self needStopAccessing])
  {
    v3 = [(QLThumbnailItem *)self urlWrapper];
    v4 = [v3 url];
    [v4 stopAccessingSecurityScopedResource];

    [(QLThumbnailItem *)self setNeedStopAccessing:0];
  }

  if ([(QLThumbnailItem *)self needStopAccessingParent])
  {
    v5 = [(QLThumbnailItem *)self parentDirectoryWrapper];
    v6 = [v5 url];
    [v6 stopAccessingSecurityScopedResource];

    [(QLThumbnailItem *)self setNeedStopAccessingParent:0];
  }

  v7 = [(QLThumbnailItem *)self temporaryURL];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(QLThumbnailItem *)self temporaryURL];
    [v8 removeItemAtURL:v9 error:0];

    [(QLThumbnailItem *)self setTemporaryURL:0];
  }
}

- (id)fileURL
{
  v3 = [(QLThumbnailItem *)self temporaryURL];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [(QLThumbnailItem *)self urlWrapper];

  if (v5)
  {
    v6 = [(QLThumbnailItem *)self urlWrapper];
    v4 = [v6 url];
  }

  else
  {
    v8 = [(QLThumbnailItem *)self data];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v9 temporaryDirectory];
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];
      v13 = [(QLThumbnailItem *)self contentType];
      v14 = [v10 URLByAppendingPathComponent:v12 conformingToType:v13];
      [(QLThumbnailItem *)self setTemporaryURL:v14];

      v15 = [(QLThumbnailItem *)self data];
      v16 = [(QLThumbnailItem *)self temporaryURL];
      [v15 writeToURL:v16 atomically:1];

      v17 = [(QLThumbnailItem *)self temporaryURL];
      NSLog(&cfstr_WritingTempora.isa, v17);

LABEL_2:
      v4 = [(QLThumbnailItem *)self temporaryURL];
      goto LABEL_5;
    }

    v4 = 0;
  }

LABEL_5:

  return v4;
}

- (id)fileData
{
  v3 = [(QLThumbnailItem *)self data];

  if (v3)
  {
    v4 = [(QLThumbnailItem *)self data];
  }

  else
  {
    v5 = [(QLThumbnailItem *)self urlWrapper];

    if (v5)
    {
      v6 = MEMORY[0x1E695DEF0];
      v7 = [(QLThumbnailItem *)self urlWrapper];
      v8 = [v7 url];
      v4 = [v6 dataWithContentsOfURL:v8 options:1 error:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"d"];
  [v5 encodeObject:self->_urlWrapper forKey:@"u"];
  [v5 encodeObject:self->_parentDirectoryWrapper forKey:@"p"];
  [v5 encodeObject:self->_contentType forKey:@"c"];
  [v5 encodeObject:self->_attachments forKey:@"a"];
}

- (QLThumbnailItem)initWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = QLThumbnailItem;
  v3 = a3;
  v4 = [(QLThumbnailItem *)&v23 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  data = v4->_data;
  v4->_data = v5;

  v7 = [v3 decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"u"];
  urlWrapper = v4->_urlWrapper;
  v4->_urlWrapper = v7;

  v9 = [v3 decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"p"];
  parentDirectoryWrapper = v4->_parentDirectoryWrapper;
  v4->_parentDirectoryWrapper = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
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
  v19 = [v3 decodeDictionaryWithKeysOfClasses:v15 objectsOfClasses:v18 forKey:@"a"];

  attachments = v4->_attachments;
  v4->_attachments = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

@end