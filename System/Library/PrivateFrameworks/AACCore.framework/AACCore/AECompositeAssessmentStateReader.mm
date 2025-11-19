@interface AECompositeAssessmentStateReader
- (AECompositeAssessmentStateReader)initWithFileBackedReader:(id)a3 accessibilityServerReader:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AECompositeAssessmentStateReader

- (AECompositeAssessmentStateReader)initWithFileBackedReader:(id)a3 accessibilityServerReader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AECompositeAssessmentStateReader;
  v9 = [(AECompositeAssessmentStateReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileBackedReader, a3);
    objc_storeStrong(&v10->_accessibilityServerReader, a4);
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 != @"CompositeReaderContext")
  {
    v8.receiver = self;
    v8.super_class = AECompositeAssessmentStateReader;
    [(AECompositeAssessmentStateReader *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  if ([(AEAssessmentStateReading *)self->_fileBackedReader isActive:a3])
  {
    if ([(AECompositeAssessmentStateReader *)self isActive])
    {
      return;
    }

    v7 = 1;
  }

  else
  {
    v7 = [(AEAssessmentStateReading *)self->_accessibilityServerReader isActive];
    if (v7 == [(AECompositeAssessmentStateReader *)self isActive])
    {
      return;
    }
  }

  [(AECompositeAssessmentStateReader *)self setActive:v7];
}

@end