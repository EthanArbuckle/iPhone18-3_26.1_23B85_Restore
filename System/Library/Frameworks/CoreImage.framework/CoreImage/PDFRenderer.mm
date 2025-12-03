@interface PDFRenderer
- (BOOL)setCanvasWidth:(unsigned int)width height:(unsigned int)height;
- (PDFRenderer)init;
- (void)dealloc;
- (void)flushRender;
- (void)setFileURL:(id)l;
@end

@implementation PDFRenderer

- (PDFRenderer)init
{
  v5.receiver = self;
  v5.super_class = PDFRenderer;
  v2 = [(CGRenderer *)&v5 init];
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 2, 0, 0);
    v2->info = Mutable;
    [(__CFDictionary *)Mutable setValue:@"Apple forKey:Inc.", *MEMORY[0x1E695F318]];
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->info);
  data = self->data;
  if (data)
  {
    CFRelease(data);
  }

  dataConsumer = self->dataConsumer;
  if (dataConsumer)
  {
    CGDataConsumerRelease(dataConsumer);
  }

  v5.receiver = self;
  v5.super_class = PDFRenderer;
  [(CGRenderer *)&v5 dealloc];
}

- (void)setFileURL:(id)l
{
  dataConsumer = self->dataConsumer;
  if (dataConsumer)
  {
    CGDataConsumerRelease(dataConsumer);
  }

  context = self->super.context;
  if (context)
  {
    CGContextRelease(context);
    self->super.context = 0;
  }

  if (l)
  {
    v7 = CGDataConsumerCreateWithURL([l URLByAppendingPathExtension:@"pdf"]);
  }

  else
  {
    data = self->data;
    if (data)
    {
      CFRelease(data);
    }

    Mutable = CFDataCreateMutable(0, 0);
    self->data = Mutable;
    v7 = CGDataConsumerCreateWithCFData(Mutable);
  }

  self->dataConsumer = v7;
}

- (BOOL)setCanvasWidth:(unsigned int)width height:(unsigned int)height
{
  v17[1] = *MEMORY[0x1E69E9840];
  __asm { FMOV            V2.2D, #-20.0 }

  v13.origin = _Q2;
  v13.size.width = width + 40.0;
  v13.size.height = height + 40.0;
  context = self->super.context;
  if (context)
  {
    CGPDFContextEndPage(context);
    v14 = *MEMORY[0x1E695F390];
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:32];
    v11 = 1;
    CGPDFContextBeginPage(self->super.context, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:{1, *&v13.origin, *&v13.size.width, *&v13.size.height}]);
  }

  else
  {
    self->super.context = CGPDFContextCreate(self->dataConsumer, &v13, self->info);
    v16 = *MEMORY[0x1E695F390];
    v17[0] = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:32];
    CGPDFContextBeginPage(self->super.context, [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:{1, *&v13.origin, *&v13.size.width, *&v13.size.height}]);
    return self->super.context != 0;
  }

  return v11;
}

- (void)flushRender
{
  CGPDFContextEndPage(self->super.context);
  context = self->super.context;

  CGPDFContextClose(context);
}

@end