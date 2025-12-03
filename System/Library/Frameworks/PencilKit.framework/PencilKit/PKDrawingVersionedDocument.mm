@interface PKDrawingVersionedDocument
- (BOOL)loadUnzippedData:(id)data;
- (PKDrawingVersionedDocument)initWithDrawing:(id)drawing;
- (PKDrawingVersionedDocument)initWithDrawingClass:(Class)class;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithDrawingVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation PKDrawingVersionedDocument

- (PKDrawingVersionedDocument)initWithDrawingClass:(Class)class
{
  v6.receiver = self;
  v6.super_class = PKDrawingVersionedDocument;
  v4 = [(PKVersionedDocument *)&v6 init];
  objc_storeStrong(&v4->_drawingClass, class);
  return v4;
}

- (BOOL)loadUnzippedData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PKDrawingVersionedDocument;
  v5 = [(PKVersionedDocument *)&v9 loadUnzippedData:dataCopy];
  if (v5 && !self->_drawing)
  {
    v6 = objc_alloc_init(self->_drawingClass);
    drawing = self->_drawing;
    self->_drawing = v6;
  }

  return v5;
}

- (PKDrawingVersionedDocument)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  v11.receiver = self;
  v11.super_class = PKDrawingVersionedDocument;
  v5 = [(PKVersionedDocument *)&v11 init];
  if (v5)
  {
    v6 = [drawingCopy copy];
    drawing = v5->_drawing;
    v5->_drawing = v6;

    v8 = objc_opt_class();
    drawingClass = v5->_drawingClass;
    v5->_drawingClass = v8;
  }

  return v5;
}

- (unint64_t)mergeWithDrawingVersionedDocument:(id)document
{
  documentCopy = document;
  drawing = [(PKDrawingVersionedDocument *)self drawing];
  drawing2 = [documentCopy drawing];
  v7 = [drawing mergeWithDrawing:drawing2];

  v9.receiver = self;
  v9.super_class = PKDrawingVersionedDocument;
  [(PKVersionedDocument *)&v9 mergeWithVersionedDocument:documentCopy];

  return v7;
}

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  dataCopy = data;
  drawingClass = self->_drawingClass;
  if (version < 0xA)
  {
    v7 = [[drawingClass alloc] initWithLegacyData:dataCopy];
  }

  else
  {
    v7 = [[drawingClass alloc] initWithV1Data:dataCopy loadNonInkingStrokes:{-[PKDrawingVersionedDocument loadNonInkingStrokes](self, "loadNonInkingStrokes")}];
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

- (id)serializeCurrentVersion:(unsigned int *)version
{
  drawing = [(PKDrawingVersionedDocument *)self drawing];
  v5 = [drawing v1SerializeWithPathData:1 toVersion:version];

  return v5;
}

@end