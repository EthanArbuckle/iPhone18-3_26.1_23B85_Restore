@interface PKVisualizationManager
- (BOOL)recognitionStatusReportingEnabled;
- (PKVisualizationManager)delegate;
- (PKVisualizationManager)initWithRecognitionSession:(id)session;
- (id)valueForRecognitionStatusKey:(id)key;
- (void)dealloc;
- (void)setRecognitionStatusReportingEnabled:(BOOL)enabled;
- (void)visualizationManagerDidUpdateSessionStatus:(id)status;
@end

@implementation PKVisualizationManager

- (PKVisualizationManager)initWithRecognitionSession:(id)session
{
  v10.receiver = self;
  v10.super_class = PKVisualizationManager;
  sessionCopy = session;
  v4 = [(PKVisualizationManager *)&v10 init];
  v5 = objc_alloc(MEMORY[0x1E6997C10]);
  v6 = [v5 initWithRecognitionSession:{sessionCopy, v10.receiver, v10.super_class}];

  chVisualizationManager = v4->_chVisualizationManager;
  v4->_chVisualizationManager = v6;

  chVisualizationManager = [(PKVisualizationManager *)v4 chVisualizationManager];
  [chVisualizationManager setDelegate:v4];

  return v4;
}

- (void)dealloc
{
  chVisualizationManager = [(PKVisualizationManager *)self chVisualizationManager];
  [chVisualizationManager setDelegate:0];

  [(PKVisualizationManager *)self setDelegate:0];
  v4.receiver = self;
  v4.super_class = PKVisualizationManager;
  [(PKVisualizationManager *)&v4 dealloc];
}

- (BOOL)recognitionStatusReportingEnabled
{
  chVisualizationManager = [(PKVisualizationManager *)self chVisualizationManager];
  statusReportingEnabled = [chVisualizationManager statusReportingEnabled];

  return statusReportingEnabled;
}

- (void)setRecognitionStatusReportingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  chVisualizationManager = [(PKVisualizationManager *)self chVisualizationManager];
  [chVisualizationManager setStatusReportingEnabled:enabledCopy];
}

- (id)valueForRecognitionStatusKey:(id)key
{
  keyCopy = key;
  chVisualizationManager = [(PKVisualizationManager *)self chVisualizationManager];
  v6 = [chVisualizationManager valueForRecognitionStatusKey:keyCopy];

  return v6;
}

- (void)visualizationManagerDidUpdateSessionStatus:(id)status
{
  delegate = [(PKVisualizationManager *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    v7 = delegate;
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