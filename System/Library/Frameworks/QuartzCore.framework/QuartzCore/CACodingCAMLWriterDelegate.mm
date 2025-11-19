@interface CACodingCAMLWriterDelegate
- (BOOL)CAMLWriter:(id)a3 shouldEncodeObject:(id)a4;
- (CACodingCAMLWriterDelegate)initWithResourceDir:(id)a3;
- (id)CAMLWriter:(id)a3 URLForResource:(id)a4;
- (id)CAMLWriter:(id)a3 typeForObject:(id)a4;
- (void)dealloc;
@end

@implementation CACodingCAMLWriterDelegate

- (BOOL)CAMLWriter:(id)a3 shouldEncodeObject:(id)a4
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

  if ([a4 isHidden])
  {
    return 0;
  }

  [a4 opacity];
  return v6 > 0.0;
}

- (id)CAMLWriter:(id)a3 URLForResource:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a4);
  if (v6 != CGImageGetTypeID())
  {
    return 0;
  }

  v7 = [(CACodingCAMLWriterDelegate *)self imageEncodeOptions];
  v8 = [(CACodingCAMLWriterDelegate *)self imageFormat];
  if (a4)
  {
    if (CGImageGetBitsPerPixel(a4) == 8 && CGImageGetAlphaInfo(a4) == kCGImageAlphaNone)
    {
      CAGetColorSpace(3);
      CGImageGetColorSpace(a4);
      if (CGColorSpaceEqualToColorSpace())
      {
        v8 = @"public.png";
        v7 = 0;
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

  v10 = [v9 objectForKeyedSubscript:v8];
  if (!v10)
  {
    v11 = CGImageSourceCopyTypeExtensions();
    v10 = [v11 objectAtIndexedSubscript:0];
    [-[CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::extensions setObject:v10 forKeyedSubscript:v8];
  }

  os_unfair_lock_unlock(&[CACodingCAMLWriterDelegate CAMLWriter:URLForResource:]::_extension_lock);
  v12 = MEMORY[0x1E696AEC0];
  serial = self->_serial;
  self->_serial = serial + 1;
  v14 = [v12 stringWithFormat:@"assets/image%d.%@", serial, v10];
  v15 = CGImageDestinationCreateWithURL([MEMORY[0x1E695DFF8] URLWithString:v14 relativeToURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", self->_resourceDir)}], v8, 1uLL, 0);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  CGImageDestinationAddImage(v15, a4, v7);
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
      v23 = [objc_msgSend(a4 "description")];
      _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "CAML: Failed to encode image: %s\n", buf, 0xCu);
    }

    return 0;
  }

  v19 = MEMORY[0x1E695DFF8];

  return [v19 URLWithString:v14];
}

- (id)CAMLWriter:(id)a3 typeForObject:(id)a4
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

- (CACodingCAMLWriterDelegate)initWithResourceDir:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CACodingCAMLWriterDelegate;
  result = [(CACodingCAMLWriterDelegate *)&v5 init];
  result->_resourceDir = a3;
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