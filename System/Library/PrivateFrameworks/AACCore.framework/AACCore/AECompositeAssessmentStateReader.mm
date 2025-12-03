@interface AECompositeAssessmentStateReader
- (AECompositeAssessmentStateReader)initWithFileBackedReader:(id)reader accessibilityServerReader:(id)serverReader;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AECompositeAssessmentStateReader

- (AECompositeAssessmentStateReader)initWithFileBackedReader:(id)reader accessibilityServerReader:(id)serverReader
{
  readerCopy = reader;
  serverReaderCopy = serverReader;
  v12.receiver = self;
  v12.super_class = AECompositeAssessmentStateReader;
  v9 = [(AECompositeAssessmentStateReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileBackedReader, reader);
    objc_storeStrong(&v10->_accessibilityServerReader, serverReader);
    [(AEAssessmentStateReading *)v10->_fileBackedReader addObserver:v10 forKeyPath:@"active" options:4 context:@"CompositeReaderContext"];
    [(AEAssessmentStateReading *)v10->_accessibilityServerReader addObserver:v10 forKeyPath:@"active" options:4 context:@"CompositeReaderContext"];
  }

  return v10;
}

- (void)dealloc
{
  [(AEAssessmentStateReading *)self->_fileBackedReader removeObserver:self forKeyPath:@"active" context:@"CompositeReaderContext"];
  [(AEAssessmentStateReading *)self->_accessibilityServerReader removeObserver:self forKeyPath:@"active" context:@"CompositeReaderContext"];
  v3.receiver = self;
  v3.super_class = AECompositeAssessmentStateReader;
  [(AECompositeAssessmentStateReader *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context != @"CompositeReaderContext")
  {
    v8.receiver = self;
    v8.super_class = AECompositeAssessmentStateReader;
    [(AECompositeAssessmentStateReader *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
    return;
  }

  if ([(AEAssessmentStateReading *)self->_fileBackedReader isActive:path])
  {
    if ([(AECompositeAssessmentStateReader *)self isActive])
    {
      return;
    }

    isActive = 1;
  }

  else
  {
    isActive = [(AEAssessmentStateReading *)self->_accessibilityServerReader isActive];
    if (isActive == [(AECompositeAssessmentStateReader *)self isActive])
    {
      return;
    }
  }

  [(AECompositeAssessmentStateReader *)self setActive:isActive];
}

@end