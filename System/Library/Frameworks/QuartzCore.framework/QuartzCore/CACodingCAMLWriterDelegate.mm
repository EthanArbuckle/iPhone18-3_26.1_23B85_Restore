@interface CACodingCAMLWriterDelegate
- (BOOL)CAMLWriter:(id)writer shouldEncodeObject:(id)object;
- (CACodingCAMLWriterDelegate)initWithResourceDir:(id)dir;
- (id)CAMLWriter:(id)writer URLForResource:(id)resource;
- (id)CAMLWriter:(id)writer typeForObject:(id)object;
- (void)dealloc;
@end

@implementation CACodingCAMLWriterDelegate

- (BOOL)CAMLWriter:(id)writer shouldEncodeObject:(id)object
{
  if (!self->_skipHiddenLayers)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  if ([object isHidden])
  {
    return 0;
  }

  [object opacity];
  return v6 > 0.0;
}

- (id)CAMLWriter:(id)writer URLForResource:(id)resource
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(resource);
  if (v6 != CGImageGetTypeID())
  {
    return 0;
  }

  imageEncodeOptions = [(CACodingCAMLWriterDelegate *)self imageEncodeOptions];
  imageFormat = [(CACodingCAMLWriterDelegate *)self imageFormat];
  if (resource)
  {
    if (CGImageGetBitsPerPixel(resource) == 8 && CGImageGetAlphaInfo(resource) == kCGImageAlphaNone)
    {
      CAGetColorSpace(3);
      CGImageGetColorSpace(resource);
      if (CGColorSpaceEqualToColorSpace())
      {
        imageFormat = @"public.png";
        imageEncodeOptions = 0;
      }
    }
  }

  os_unfair_lock_lock(&[CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::_extension_lock);
  v9 = [CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::extensions;
  if (![CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::extensions)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::extensions = v9;
  }

  v10 = [v9 objectForKeyedSubscript:imageFormat];
  if (!v10)
  {
    v11 = CGImageSourceCopyTypeExtensions();
    v10 = [v11 objectAtIndexedSubscript:0];
    [-[CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::extensions setObject:v10 forKeyedSubscript:imageFormat];
  }

  os_unfair_lock_unlock(&[CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::_extension_lock);
  v12 = MEMORY[0x1E696AEC0];
  serial = self->_serial;
  self->_serial = serial + 1;
  v14 = [v12 stringWithFormat:@"assets/image%d.%@", serial, v10];
  v15 = CGImageDestinationCreateWithURL([MEMORY[0x1E695DFF8] URLWithString:v14 relativeToURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", self->_resourceDir)}], imageFormat, 1uLL, 0);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  CGImageDestinationAddImage(v15, resource, imageEncodeOptions);
  v17 = objc_autoreleasePoolPush();
  v18 = CGImageDestinationFinalize(v16);
  objc_autoreleasePoolPop(v17);
  CFRelease(v16);
  if (!v18)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v21 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = [objc_msgSend(resource "description")];
      _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "CAML: Failed to encode image: %s\n", buf, 0xCu);
    }

    return 0;
  }

  v19 = MEMORY[0x1E695DFF8];

  return [v19 URLWithString:v14];
}

- (id)CAMLWriter:(id)writer typeForObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (coding_once[0] != -1)
  {
    dispatch_once_f(coding_once, 0, coding_init);
  }

  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:v4];
  if (v5 == self_bundle)
  {
    return 0;
  }

  do
  {
    v4 = [v4 superclass];
    if (!v4)
    {
      break;
    }

    v6 = [MEMORY[0x1E696AAE8] bundleForClass:v4];
  }

  while (v6 != self_bundle);

  return NSStringFromClass(v4);
}

- (CACodingCAMLWriterDelegate)initWithResourceDir:(id)dir
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CACodingCAMLWriterDelegate;
  result = [(CACodingCAMLWriterDelegate *)&v5 init];
  result->_resourceDir = dir;
  result->_serial = 0;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CACodingCAMLWriterDelegate;
  [(CACodingCAMLWriterDelegate *)&v3 dealloc];
}

@end