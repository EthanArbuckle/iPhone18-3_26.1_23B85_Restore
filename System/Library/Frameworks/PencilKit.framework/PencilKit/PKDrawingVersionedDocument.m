@interface PKDrawingVersionedDocument
- (BOOL)loadUnzippedData:(id)a3;
- (PKDrawingVersionedDocument)initWithDrawing:(id)a3;
- (PKDrawingVersionedDocument)initWithDrawingClass:(Class)a3;
- (id)serializeCurrentVersion:(unsigned int *)a3;
- (unint64_t)mergeWithDrawingVersionedDocument:(id)a3;
- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4;
@end

@implementation PKDrawingVersionedDocument

- (PKDrawingVersionedDocument)initWithDrawingClass:(Class)a3
{
  v6.receiver = self;
  v6.super_class = PKDrawingVersionedDocument;
  v4 = [(PKVersionedDocument *)&v6 init];
  objc_storeStrong(&v4->_drawingClass, a3);
  return v4;
}

- (BOOL)loadUnzippedData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDrawingVersionedDocument;
  v5 = [(PKVersionedDocument *)&v9 loadUnzippedData:v4];
  if (v5 && !self->_drawing)
  {
    v6 = objc_alloc_init(self->_drawingClass);
    drawing = self->_drawing;
    self->_drawing = v6;
  }

  return v5;
}

- (PKDrawingVersionedDocument)initWithDrawing:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDrawingVersionedDocument;
  v5 = [(PKVersionedDocument *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    drawing = v5->_drawing;
    v5->_drawing = v6;

    v8 = objc_opt_class();
    drawingClass = v5->_drawingClass;
    v5->_drawingClass = v8;
  }

  return v5;
}

- (unint64_t)mergeWithDrawingVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingVersionedDocument *)self drawing];
  v6 = [v4 drawing];
  v7 = [v5 mergeWithDrawing:v6];

  v9.receiver = self;
  v9.super_class = PKDrawingVersionedDocument;
  [(PKVersionedDocument *)&v9 mergeWithVersionedDocument:v4];

  return v7;
}

- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4
{
  v11 = a4;
  drawingClass = self->_drawingClass;
  if (a3 < 0xA)
  {
    v7 = [[drawingClass alloc] initWithLegacyData:v11];
  }

  else
  {
    v7 = [[drawingClass alloc] initWithV1Data:v11 loadNonInkingStrokes:{-[PKDrawingVersionedDocument loadNonInkingStrokes](self, "loadNonInkingStrokes")}];
  }

  v8 = v7;
  if (self->_drawing)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    drawing = [(PKDrawingVersionedDocument *)self drawing];
    [drawing mergeWithDrawing:v8];
  }

  else
  {
    v10 = v7;
    drawing = self->_drawing;
    self->_drawing = v10;
  }

LABEL_9:
}

- (id)serializeCurrentVersion:(unsigned int *)a3
{
  v4 = [(PKDrawingVersionedDocument *)self drawing];
  v5 = [v4 v1SerializeWithPathData:1 toVersion:a3];

  return v5;
}

@end