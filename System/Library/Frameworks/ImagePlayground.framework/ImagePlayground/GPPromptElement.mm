@interface GPPromptElement
- (GPPromptElement)initWithCoder:(id)coder;
- (GPPromptElement)initWithText:(id)text title:(id)title isPersonHandle:(BOOL)handle isSuggestableText:(BOOL)suggestableText needsConceptsExtraction:(BOOL)extraction needsSuggestableConceptsExtraction:(BOOL)conceptsExtraction drawing:(id)drawing image:(CGImage *)self0;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDrawingPixelBuffer:(__CVBuffer *)buffer;
- (void)setIsTitle:(BOOL)title;
- (void)setPixelBuffer:(__CVBuffer *)buffer;
- (void)setTitle:(id)title;
@end

@implementation GPPromptElement

- (GPPromptElement)initWithText:(id)text title:(id)title isPersonHandle:(BOOL)handle isSuggestableText:(BOOL)suggestableText needsConceptsExtraction:(BOOL)extraction needsSuggestableConceptsExtraction:(BOOL)conceptsExtraction drawing:(id)drawing image:(CGImage *)self0
{
  textCopy = text;
  titleCopy = title;
  drawingCopy = drawing;
  v27.receiver = self;
  v27.super_class = GPPromptElement;
  v19 = [(GPPromptElement *)&v27 init];
  if (v19)
  {
    v20 = [textCopy copy];
    text = v19->_text;
    v19->_text = v20;

    v22 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v22;

    v19->_isPersonHandle = handle;
    v19->_isTitle = textCopy == titleCopy;
    v19->_isSuggestableText = suggestableText;
    v19->_needsConceptsExtraction = extraction;
    v19->_needsSuggestableConceptsExtraction = conceptsExtraction;
    v19->_renderDrawingOnHost = 0;
    v24 = [drawingCopy copy];
    drawing = v19->_drawing;
    v19->_drawing = v24;

    v19->_image = CGImageRetain(image);
  }

  return v19;
}

- (void)setIsTitle:(BOOL)title
{
  self->_isTitle = title;
  if (title)
  {
    objc_storeStrong(&self->_title, self->_text);
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  if (title)
  {
    self->_isTitle = 1;
  }
}

- (GPPromptElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeBoolForKey:@"isPersonHandle"];
  v8 = [coderCopy decodeBoolForKey:@"isSuggestableText"];
  v9 = [coderCopy decodeBoolForKey:@"needsConceptsExtraction"];
  v10 = [coderCopy decodeBoolForKey:@"needsSuggestableConceptsExtraction"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"drawing"];
  v12 = [(GPPromptElement *)self initWithText:v5 title:v6 isPersonHandle:v7 isSuggestableText:v8 needsConceptsExtraction:v9 needsSuggestableConceptsExtraction:v10 drawing:v11 image:0];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"drawingWrapper"];
  -[GPPromptElement setDrawingPixelBuffer:](v12, "setDrawingPixelBuffer:", [v13 pixelBuffer]);
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageWrapper"];

  -[GPPromptElement setPixelBuffer:](v12, "setPixelBuffer:", [v14 pixelBuffer]);
  return v12;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
  }

  drawingPixelBuffer = self->_drawingPixelBuffer;
  if (drawingPixelBuffer)
  {
    CVPixelBufferRelease(drawingPixelBuffer);
  }

  image = self->_image;
  if (image)
  {
    CGImageRelease(image);
  }

  v6.receiver = self;
  v6.super_class = GPPromptElement;
  [(GPPromptElement *)&v6 dealloc];
}

- (void)setDrawingPixelBuffer:(__CVBuffer *)buffer
{
  drawingPixelBuffer = self->_drawingPixelBuffer;
  if (drawingPixelBuffer != buffer)
  {
    if (drawingPixelBuffer)
    {
      CVPixelBufferRelease(drawingPixelBuffer);
    }

    if (buffer)
    {
      CVPixelBufferRetain(buffer);
    }

    self->_drawingPixelBuffer = buffer;
  }
}

- (void)setPixelBuffer:(__CVBuffer *)buffer
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != buffer)
  {
    if (pixelBuffer)
    {
      CVPixelBufferRelease(pixelBuffer);
    }

    if (buffer)
    {
      CVPixelBufferRetain(buffer);
    }

    self->_pixelBuffer = buffer;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(GPPromptElement *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  title = [(GPPromptElement *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeBool:-[GPPromptElement isPersonHandle](self forKey:{"isPersonHandle"), @"isPersonHandle"}];
  [coderCopy encodeBool:-[GPPromptElement isSuggestableText](self forKey:{"isSuggestableText"), @"isSuggestableText"}];
  [coderCopy encodeBool:-[GPPromptElement needsConceptsExtraction](self forKey:{"needsConceptsExtraction"), @"needsConceptsExtraction"}];
  [coderCopy encodeBool:-[GPPromptElement needsSuggestableConceptsExtraction](self forKey:{"needsSuggestableConceptsExtraction"), @"needsSuggestableConceptsExtraction"}];
  if ([(GPPromptElement *)self drawingPixelBuffer])
  {
    drawing4 = [[GPImageXPCWrapper alloc] initWithPixelBuffer:[(GPPromptElement *)self drawingPixelBuffer]];
    if (drawing4)
    {
LABEL_3:
      v7 = @"drawingWrapper";
      goto LABEL_11;
    }
  }

  else if ([(GPPromptElement *)self renderDrawingOnHost])
  {
    drawing = [(GPPromptElement *)self drawing];

    if (drawing)
    {
      drawing2 = [(GPPromptElement *)self drawing];
      drawing3 = [(GPPromptElement *)self drawing];
      [drawing3 bounds];
      v11 = [drawing2 imageFromRect:? scale:?];

      drawing4 = v11 ? -[GPImageXPCWrapper initWithImage:orientation:]([GPImageXPCWrapper alloc], "initWithImage:orientation:", [v11 gp_CGImage], 1) : 0;
      if (drawing4)
      {
        goto LABEL_3;
      }
    }
  }

  drawing4 = [(GPPromptElement *)self drawing];
  v7 = @"drawing";
LABEL_11:
  [coderCopy encodeObject:drawing4 forKey:v7];

  if ([(GPPromptElement *)self pixelBuffer])
  {
    v12 = [[GPImageXPCWrapper alloc] initWithPixelBuffer:[(GPPromptElement *)self pixelBuffer]];
  }

  else
  {
    if (![(GPPromptElement *)self image])
    {
      goto LABEL_17;
    }

    v12 = [[GPImageXPCWrapper alloc] initWithImage:[(GPPromptElement *)self image] orientation:1];
  }

  v13 = v12;
  if (v12)
  {
    [coderCopy encodeObject:v12 forKey:@"imageWrapper"];
  }

LABEL_17:
}

@end