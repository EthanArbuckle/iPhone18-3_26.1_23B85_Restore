@interface PKVisualizationManager
- (BOOL)recognitionStatusReportingEnabled;
- (PKVisualizationManager)delegate;
- (PKVisualizationManager)initWithRecognitionSession:(id)a3;
- (id)valueForRecognitionStatusKey:(id)a3;
- (void)dealloc;
- (void)setRecognitionStatusReportingEnabled:(BOOL)a3;
- (void)visualizationManagerDidUpdateSessionStatus:(id)a3;
@end

@implementation PKVisualizationManager

- (PKVisualizationManager)initWithRecognitionSession:(id)a3
{
  v10.receiver = self;
  v10.super_class = PKVisualizationManager;
  v3 = a3;
  v4 = [(PKVisualizationManager *)&v10 init];
  v5 = objc_alloc(MEMORY[0x1E6997C10]);
  v6 = [v5 initWithRecognitionSession:{v3, v10.receiver, v10.super_class}];

  chVisualizationManager = v4->_chVisualizationManager;
  v4->_chVisualizationManager = v6;

  v8 = [(PKVisualizationManager *)v4 chVisualizationManager];
  [v8 setDelegate:v4];

  return v4;
}

- (void)dealloc
{
  v3 = [(PKVisualizationManager *)self chVisualizationManager];
  [v3 setDelegate:0];

  [(PKVisualizationManager *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = PKVisualizationManager;
  [(PKVisualizationManager *)&v4 dealloc];
}

- (BOOL)recognitionStatusReportingEnabled
{
  v2 = [(PKVisualizationManager *)self chVisualizationManager];
  v3 = [v2 statusReportingEnabled];

  return v3;
}

- (void)setRecognitionStatusReportingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKVisualizationManager *)self chVisualizationManager];
  [v4 setStatusReportingEnabled:v3];
}

- (id)valueForRecognitionStatusKey:(id)a3
{
  v4 = a3;
  v5 = [(PKVisualizationManager *)self chVisualizationManager];
  v6 = [v5 valueForRecognitionStatusKey:v4];

  return v6;
}

- (void)visualizationManagerDidUpdateSessionStatus:(id)a3
{
  v4 = [(PKVisualizationManager *)self delegate];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 visualizationManagerDidUpdateRecognitionStatus:self];
      v5 = v7;
    }
  }
}

- (PKVisualizationManager)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end