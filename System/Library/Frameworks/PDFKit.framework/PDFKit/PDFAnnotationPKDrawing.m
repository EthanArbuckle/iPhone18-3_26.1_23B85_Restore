@interface PDFAnnotationPKDrawing
- (PDFAnnotationPKDrawing)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4;
- (PDFAnnotationPKDrawing)initWithPKDrawing:(id)a3 bounds:(CGRect)a4;
- (__CFDictionary)dictionaryRef;
- (void)setDrawing:(id)a3;
@end

@implementation PDFAnnotationPKDrawing

- (PDFAnnotationPKDrawing)initWithPKDrawing:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v18.receiver = self;
  v18.super_class = PDFAnnotationPKDrawing;
  v11 = [(PDFAnnotation *)&v18 initWithBounds:@"/Square" forType:0 withProperties:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_drawing, a3);
    v13 = objc_alloc_init(AKInkAnnotationClass());
    akInkAnnotation = v12->_akInkAnnotation;
    v12->_akInkAnnotation = v13;

    [(AKInkAnnotation *)v12->_akInkAnnotation setRectangle:x, y, width, height];
    [(AKInkAnnotation *)v12->_akInkAnnotation setDrawing:v12->_drawing];
    [(PDFAnnotation *)v12 setBounds:x, y, width, height];
    v15 = objc_alloc_init(PDFBorder);
    [(PDFBorder *)v15 setLineWidth:0.0];
    [(PDFAnnotation *)v12 setValue:v15 forAnnotationKey:@"/Border"];
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(PDFAnnotation *)v12 setValue:v16 forAnnotationKey:@"/C"];
    [(PDFAnnotation *)v12 setValue:v16 forAnnotationKey:@"/IC"];
    [(PDFAnnotation *)v12 setReadOnlyAnnotation:1];
    [(PDFAnnotation *)v12 setLocked:1];
    [(PDFAnnotation *)v12 setContentsLocked:1];
  }

  return v12;
}

- (void)setDrawing:(id)a3
{
  objc_storeStrong(&self->_drawing, a3);
  v5 = a3;
  [(AKInkAnnotation *)self->_akInkAnnotation setDrawing:self->_drawing];
}

- (PDFAnnotationPKDrawing)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4
{
  v13.receiver = self;
  v13.super_class = PDFAnnotationPKDrawing;
  v5 = [(PDFAnnotation *)&v13 initWithCGPDFAnnotation:a3 forPage:a4];
  if (v5)
  {
    v6 = [PDFAKAnnotationSerializationHelper akAnnotationFromCGPDFAnnotation:a3 andDictionary:CGPDFAnnotationGetCGPDFDictionary()];
    AKInkAnnotationClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
      goto LABEL_6;
    }

    akInkAnnotation = v5->_akInkAnnotation;
    v5->_akInkAnnotation = v6;
    v8 = v6;

    v9 = [(AKInkAnnotation *)v5->_akInkAnnotation drawing];
    drawing = v5->_drawing;
    v5->_drawing = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (__CFDictionary)dictionaryRef
{
  v5.receiver = self;
  v5.super_class = PDFAnnotationPKDrawing;
  v3 = [(PDFAnnotation *)&v5 dictionaryRef];
  if (v3)
  {
    [PDFAKAnnotationSerializationHelper addAKAnnotation:self->_akInkAnnotation toAnnotationDictionary:v3];
  }

  return v3;
}

@end