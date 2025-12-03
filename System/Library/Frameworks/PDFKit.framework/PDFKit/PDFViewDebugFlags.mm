@interface PDFViewDebugFlags
- (PDFViewDebugFlags)initWithView:(id)view;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PDFViewDebugFlags

- (PDFViewDebugFlags)initWithView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = PDFViewDebugFlags;
  v5 = [(PDFViewDebugFlags *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pdfView, viewCopy);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults addObserver:v6 forKeyPath:@"PDFKit2_ColorTileEdge" options:1 context:v6];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 addObserver:v6 forKeyPath:@"PDFKit2_HighlightDetectedAnnotations" options:1 context:v6];
  }

  return v6;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:@"PDFKit2_ColorTileEdge" context:self];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 removeObserver:self forKeyPath:@"PDFKit2_HighlightDetectedAnnotations" context:self];

  v5.receiver = self;
  v5.super_class = PDFViewDebugFlags;
  [(PDFViewDebugFlags *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if (context == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pdfView);
    if ([pathCopy isEqualToString:@"PDFKit2_ColorTileEdge"])
    {
      [WeakRetained forceTileRefresh];
    }

    else if ([pathCopy isEqualToString:@"PDFKit2_HighlightDetectedAnnotations"])
    {
      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      bOOLValue = [v13 BOOLValue];

      [WeakRetained drawDetectedAnnotationBounds:bOOLValue];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PDFViewDebugFlags;
    [(PDFViewDebugFlags *)&v15 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy context:context];
  }
}

@end