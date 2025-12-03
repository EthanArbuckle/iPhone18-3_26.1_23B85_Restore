@interface MPArtworkColorAnalysisOperation
- (CGImage)_createImageFromSource:(CGImageSource *)source size:(unint64_t)size;
- (CGImageSource)_createImageFromURL:(id)l;
- (MPArtworkColorAnalysisOperation)initWithURL:(id)l;
- (void)cancel;
- (void)main;
@end

@implementation MPArtworkColorAnalysisOperation

- (void)cancel
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPArtworkColorAnalysisErrorDomain" code:2 userInfo:0];
  error = self->_error;
  self->_error = v3;

  v5.receiver = self;
  v5.super_class = MPArtworkColorAnalysisOperation;
  [(MPArtworkColorAnalysisOperation *)&v5 cancel];
}

- (CGImage)_createImageFromSource:(CGImageSource *)source size:(unint64_t)size
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696E0A8];
  v10[0] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, size, v6);

  return ImageAtIndex;
}

- (CGImageSource)_createImageFromURL:(id)l
{
  lCopy = l;
  if (lCopy && ([MEMORY[0x1E696AC08] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), -[__CFURL path](lCopy, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:", v5), v5, v4, v6))
  {
    v7 = CGImageSourceCreateWithURL(lCopy, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)main
{
  v3 = [(MPArtworkColorAnalysisOperation *)self _createImageFromURL:self->_sourceURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(MPArtworkColorAnalysisOperation *)self _createImageFromSource:v3 size:0];
    v13 = [objc_alloc(MEMORY[0x1E69B13B0]) initWithSourceImage:v5];
    analyze = [(NSError *)v13 analyze];
    v7 = analyze;
    if (analyze)
    {
      v8 = analyze;
      colorAnalysis = self->_colorAnalysis;
      self->_colorAnalysis = v8;
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPArtworkColorAnalysisErrorDomain" code:1 userInfo:0];
      colorAnalysis = self->_error;
      self->_error = v12;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);

    error = v13;
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPArtworkColorAnalysisErrorDomain" code:0 userInfo:0];
    error = self->_error;
    self->_error = v10;
  }
}

- (MPArtworkColorAnalysisOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MPArtworkColorAnalysisOperation;
  v6 = [(MPArtworkColorAnalysisOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceURL, l);
  }

  return v7;
}

@end