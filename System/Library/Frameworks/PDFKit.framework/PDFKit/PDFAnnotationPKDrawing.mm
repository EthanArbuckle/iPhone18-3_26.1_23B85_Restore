@interface PDFAnnotationPKDrawing
- (PDFAnnotationPKDrawing)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation forPage:(id)page;
- (PDFAnnotationPKDrawing)initWithPKDrawing:(id)drawing bounds:(CGRect)bounds;
- (__CFDictionary)dictionaryRef;
- (void)setDrawing:(id)drawing;
@end

@implementation PDFAnnotationPKDrawing

- (PDFAnnotationPKDrawing)initWithPKDrawing:(id)drawing bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  drawingCopy = drawing;
  v18.receiver = self;
  v18.super_class = PDFAnnotationPKDrawing;
  v11 = [(PDFAnnotation *)&v18 initWithBounds:@"/Square" forType:0 withProperties:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_drawing, drawing);
    v13 = objc_alloc_init(AKInkAnnotationClass());
    akInkAnnotation = v12->_akInkAnnotation;
    v12->_akInkAnnotation = v13;

    [(AKInkAnnotation *)v12->_akInkAnnotation setRectangle:x, y, width, height];
    [(AKInkAnnotation *)v12->_akInkAnnotation setDrawing:v12->_drawing];
    [(PDFAnnotation *)v12 setBounds:x, y, width, height];
    v15 = objc_alloc_init(PDFBorder);
    [(PDFBorder *)v15 setLineWidth:0.0];
    [(PDFAnnotation *)v12 setValue:v15 forAnnotationKey:@"/Border"];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PDFAnnotation *)v12 setValue:clearColor forAnnotationKey:@"/C"];
    [(PDFAnnotation *)v12 setValue:clearColor forAnnotationKey:@"/IC"];
    [(PDFAnnotation *)v12 setReadOnlyAnnotation:1];
    [(PDFAnnotation *)v12 setLocked:1];
    [(PDFAnnotation *)v12 setContentsLocked:1];
  }

  return v12;
}

- (void)setDrawing:(id)drawing
{
  objc_storeStrong(&self->_drawing, drawing);
  drawingCopy = drawing;
  [(AKInkAnnotation *)self->_akInkAnnotation setDrawing:self->_drawing];
}

- (PDFAnnotationPKDrawing)initWithCGPDFAnnotation:(CGPDFAnnotation *)annotation forPage:(id)page
{
  v13.receiver = self;
  v13.super_class = PDFAnnotationPKDrawing;
  v5 = [(PDFAnnotation *)&v13 initWithCGPDFAnnotation:annotation forPage:page];
  if (v5)
  {
    v6 = [PDFAKAnnotationSerializationHelper akAnnotationFromCGPDFAnnotation:annotation andDictionary:CGPDFAnnotationGetCGPDFDictionary()];
    AKInkAnnotationClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
      goto LABEL_6;
    }

    akInkAnnotation = v5->_akInkAnnotation;
    v5->_akInkAnnotation = v6;
    v8 = v6;

    drawing = [(AKInkAnnotation *)v5->_akInkAnnotation drawing];
    drawing = v5->_drawing;
    v5->_drawing = drawing;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (__CFDictionary)dictionaryRef
{
  v5.receiver = self;
  v5.super_class = PDFAnnotationPKDrawing;
  dictionaryRef = [(PDFAnnotation *)&v5 dictionaryRef];
  if (dictionaryRef)
  {
    [PDFAKAnnotationSerializationHelper addAKAnnotation:self->_akInkAnnotation toAnnotationDictionary:dictionaryRef];
  }

  return dictionaryRef;
}

@end