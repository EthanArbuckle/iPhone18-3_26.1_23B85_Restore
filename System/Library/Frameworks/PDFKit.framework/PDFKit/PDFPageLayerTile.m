@interface PDFPageLayerTile
- (CGRect)rootViewFrame;
- (PDFPageLayerTile)initWithFrame:(CGRect)a3 forPageLayer:(id)a4 withRenderingTransform:(CGAffineTransform *)a5 tileContentsScale:(double)a6 generationID:(int)a7;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)recievePDFTileSurface:(id)a3;
@end

@implementation PDFPageLayerTile

- (PDFPageLayerTile)initWithFrame:(CGRect)a3 forPageLayer:(id)a4 withRenderingTransform:(CGAffineTransform *)a5 tileContentsScale:(double)a6 generationID:(int)a7
{
  v11 = a4;
  v19.receiver = self;
  v19.super_class = PDFPageLayerTile;
  v12 = [(PDFPageLayerTile *)&v19 init];
  v13 = v12;
  if (v12)
  {
    [(PDFPageLayerTile *)v12 setFrame:PDFRectToCGRect(v12)];
    [(PDFPageLayerTile *)v13 setContentsOpaque:1];
    [(PDFPageLayerTile *)v13 setContents:0];
    pageSurface = v13->pageSurface;
    v13->pageSurface = 0;

    objc_storeWeak(&v13->pageLayer, v11);
    v16 = *&a5->c;
    v15 = *&a5->tx;
    *&v13->renderingTransform.a = *&a5->a;
    *&v13->renderingTransform.c = v16;
    *&v13->renderingTransform.tx = v15;
    v13->generationID = a7;
    atomic_store(0, &v13->isWorking);
    atomic_store(0, &v13->hasContent);
    v13->tileContentsScale = a6;
    [(PDFPageLayerTile *)v13 setContentsScale:a6];
    [(PDFPageLayerTile *)v13 setContentsGravity:*MEMORY[0x1E6979DC0]];
    [(PDFPageLayerTile *)v13 setEdgeAntialiasingMask:0];
    [(PDFPageLayerTile *)v13 setMinificationFilter:*MEMORY[0x1E6979CB8]];
    [(PDFPageLayerTile *)v13 setMagnificationFilter:*MEMORY[0x1E6979C48]];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Generation %d", v13->generationID];
    [(PDFPageLayerTile *)v13 setName:v17];
  }

  return v13;
}

- (void)dealloc
{
  if (self->pageSurface)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = +[PDFTilePool sharedPool];
    [v3 releasePDFTileSurface:self->pageSurface];

    [(PDFPageLayerTile *)self setContents:0];
    [MEMORY[0x1E6979518] commit];
  }

  v4.receiver = self;
  v4.super_class = PDFPageLayerTile;
  [(PDFPageLayerTile *)&v4 dealloc];
}

- (void)recievePDFTileSurface:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->pageLayer);
  if (WeakRetained)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    objc_storeStrong(&self->pageSurface, a3);
    type = self->pageSurface->type;
    if (type <= 2)
    {
      [(PDFPageLayerTile *)self setContents:*(v10 + *off_1E8151460[type])];
    }

    v7 = v10[4];
    v8 = v10[5];
    [(PDFPageLayerTile *)self setContentsRect:v8 / (v7 + 2 * v8), v8 / (v7 + 2 * v8), v7 / (v7 + 2 * v8), v7 / (v7 + 2 * v8)];
    atomic_store(0, &self->isWorking);
    atomic_store(1u, &self->hasContent);
    [(PDFPageLayerTile *)self setName:@"PDFPageLayerTile [Image Set]"];
    [MEMORY[0x1E6979518] commit];
    [WeakRetained tileDrawingComplete:self];
  }

  else
  {
    v9 = +[PDFTilePool sharedPool];
    [v9 releasePDFTileSurface:v10];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  [(PDFPageLayerTile *)self hasStartedWork];
  CGContextSetRGBFillColor(a3, 1.0, 1.0, 1.0, 1.0);
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  v15 = CGRectIntegral(ClipBoundingBox);
  CGContextFillRect(a3, v15);
  renderingTransform = self->renderingTransform;
  CGContextSetCTM();
  v5 = [PDFPage isNativeRotationDrawingEnabledForThisThread:*&renderingTransform.a];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:0];
  v6 = +[PDFPage shouldHideAnnotationsForThisThread];
  [PDFPage setShouldHideAnnotationsForThisThread:1];
  v7 = +[PDFPage isExcludingAKAnnotationRenderingForThisThread];
  [PDFPage setExcludingAKAnnotationRenderingForThisThread:1];
  WeakRetained = objc_loadWeakRetained(&self->pageLayer);
  v9 = [WeakRetained page];
  v10 = [v9 copyDisplayList];
  if (v10)
  {
    v11 = v10;
    CGDisplayListDrawInContext();
    CFRelease(v11);
  }

  else
  {
    v12 = [(PDFPageLayerTile *)self renderingProperties];
    [v9 drawWithBox:objc_msgSend(v12 toContext:{"displayBox"), a3}];
  }

  [PDFPage setExcludingAKAnnotationRenderingForThisThread:v7];
  [PDFPage setShouldHideAnnotationsForThisThread:v6];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
  atomic_store(0, &self->isWorking);
  atomic_store(1u, &self->hasContent);
  [WeakRetained tileDrawingComplete:self];
}

- (CGRect)rootViewFrame
{
  objc_copyStruct(v6, &self->_rootViewFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end