@interface GPPromptElement
- (GPPromptElement)initWithCoder:(id)a3;
- (GPPromptElement)initWithText:(id)a3 title:(id)a4 isPersonHandle:(BOOL)a5 isSuggestableText:(BOOL)a6 needsConceptsExtraction:(BOOL)a7 needsSuggestableConceptsExtraction:(BOOL)a8 drawing:(id)a9 image:(CGImage *)a10;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDrawingPixelBuffer:(__CVBuffer *)a3;
- (void)setIsTitle:(BOOL)a3;
- (void)setPixelBuffer:(__CVBuffer *)a3;
- (void)setTitle:(id)a3;
@end

@implementation GPPromptElement

- (GPPromptElement)initWithText:(id)a3 title:(id)a4 isPersonHandle:(BOOL)a5 isSuggestableText:(BOOL)a6 needsConceptsExtraction:(BOOL)a7 needsSuggestableConceptsExtraction:(BOOL)a8 drawing:(id)a9 image:(CGImage *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = GPPromptElement;
  v19 = [(GPPromptElement *)&v27 init];
  if (v19)
  {
    v20 = [v16 copy];
    text = v19->_text;
    v19->_text = v20;

    v22 = [v17 copy];
    title = v19->_title;
    v19->_title = v22;

    v19->_isPersonHandle = a5;
    v19->_isTitle = v16 == v17;
    v19->_isSuggestableText = a6;
    v19->_needsConceptsExtraction = a7;
    v19->_needsSuggestableConceptsExtraction = a8;
    v19->_renderDrawingOnHost = 0;
    v24 = [v18 copy];
    drawing = v19->_drawing;
    v19->_drawing = v24;

    v19->_image = CGImageRetain(a10);
  }

  return v19;
}

- (void)setIsTitle:(BOOL)a3
{
  self->_isTitle = a3;
  if (a3)
  {
    objc_storeStrong(&self->_title, self->_text);
  }
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  if (a3)
  {
    self->_isTitle = 1;
  }
}

- (GPPromptElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [v4 decodeBoolForKey:@"isPersonHandle"];
  v8 = [v4 decodeBoolForKey:@"isSuggestableText"];
  v9 = [v4 decodeBoolForKey:@"needsConceptsExtraction"];
  v10 = [v4 decodeBoolForKey:@"needsSuggestableConceptsExtraction"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"drawing"];
  v12 = [(GPPromptElement *)self initWithText:v5 title:v6 isPersonHandle:v7 isSuggestableText:v8 needsConceptsExtraction:v9 needsSuggestableConceptsExtraction:v10 drawing:v11 image:0];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"drawingWrapper"];
  -[GPPromptElement setDrawingPixelBuffer:](v12, "setDrawingPixelBuffer:", [v13 pixelBuffer]);
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageWrapper"];

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

- (void)setDrawingPixelBuffer:(__CVBuffer *)a3
{
  drawingPixelBuffer = self->_drawingPixelBuffer;
  if (drawingPixelBuffer != a3)
  {
    if (drawingPixelBuffer)
    {
      CVPixelBufferRelease(drawingPixelBuffer);
    }

    if (a3)
    {
      CVPixelBufferRetain(a3);
    }

    self->_drawingPixelBuffer = a3;
  }
}

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != a3)
  {
    if (pixelBuffer)
    {
      CVPixelBufferRelease(pixelBuffer);
    }

    if (a3)
    {
      CVPixelBufferRetain(a3);
    }

    self->_pixelBuffer = a3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(GPPromptElement *)self text];
  [v14 encodeObject:v4 forKey:@"text"];

  v5 = [(GPPromptElement *)self title];
  [v14 encodeObject:v5 forKey:@"title"];

  [v14 encodeBool:-[GPPromptElement isPersonHandle](self forKey:{"isPersonHandle"), @"isPersonHandle"}];
  [v14 encodeBool:-[GPPromptElement isSuggestableText](self forKey:{"isSuggestableText"), @"isSuggestableText"}];
  [v14 encodeBool:-[GPPromptElement needsConceptsExtraction](self forKey:{"needsConceptsExtraction"), @"needsConceptsExtraction"}];
  [v14 encodeBool:-[GPPromptElement needsSuggestableConceptsExtraction](self forKey:{"needsSuggestableConceptsExtraction"), @"needsSuggestableConceptsExtraction"}];
  if ([(GPPromptElement *)self drawingPixelBuffer])
  {
    v6 = [[GPImageXPCWrapper alloc] initWithPixelBuffer:[(GPPromptElement *)self drawingPixelBuffer]];
    if (v6)
    {
LABEL_3:
      v7 = @"drawingWrapper";
      goto LABEL_11;
    }
  }

  else if ([(GPPromptElement *)self renderDrawingOnHost])
  {
    v8 = [(GPPromptElement *)self drawing];

    if (v8)
    {
      v9 = [(GPPromptElement *)self drawing];
      v10 = [(GPPromptElement *)self drawing];
      [v10 bounds];
      v11 = [v9 imageFromRect:? scale:?];

      v6 = v11 ? -[GPImageXPCWrapper initWithImage:orientation:]([GPImageXPCWrapper alloc], "initWithImage:orientation:", [v11 gp_CGImage], 1) : 0;
      if (v6)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = [(GPPromptElement *)self drawing];
  v7 = @"drawing";
LABEL_11:
  [v14 encodeObject:v6 forKey:v7];

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
    [v14 encodeObject:v12 forKey:@"imageWrapper"];
  }

LABEL_17:
}

@end