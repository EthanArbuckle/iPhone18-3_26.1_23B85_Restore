@interface AECAssessmentSessionWrapper
- (AECAssessmentConfigurationWrapper)configurationWrapper;
- (AECAssessmentSessionWrapper)initWithConfigurationWrapper:(id)wrapper queue:(id)queue;
- (AECAssessmentSessionWrapperDelegate)delegate;
- (BOOL)isActive;
- (void)assessmentSession:(id)session failedToBeginWithError:(id)error;
- (void)assessmentSession:(id)session wasInterruptedWithError:(id)error;
- (void)assessmentSessionDidBegin:(id)begin;
- (void)assessmentSessionDidEnd:(id)end;
- (void)assessmentSessionDidUpdate:(id)update;
- (void)assessmentSesson:(id)sesson failedToUpdateToConfiguration:(id)configuration error:(id)error;
- (void)begin;
- (void)end;
- (void)updateToConfigurationWrapper:(id)wrapper;
@end

@implementation AECAssessmentSessionWrapper

- (AECAssessmentSessionWrapper)initWithConfigurationWrapper:(id)wrapper queue:(id)queue
{
  wrapperCopy = wrapper;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = AECAssessmentSessionWrapper;
  v8 = [(AECAssessmentSessionWrapper *)&v14 init];
  if (v8)
  {
    v9 = [_TtC9AACClient20AECAssessmentSession alloc];
    makeConfiguration = [wrapperCopy makeConfiguration];
    v11 = [(AECAssessmentSession *)v9 initWithConfiguration:makeConfiguration queue:queueCopy];
    session = v8->_session;
    v8->_session = v11;

    [(AECAssessmentSession *)v8->_session setDelegate:v8];
  }

  return v8;
}

- (BOOL)isActive
{
  session = [(AECAssessmentSessionWrapper *)self session];
  isActive = [session isActive];

  return isActive;
}

- (AECAssessmentConfigurationWrapper)configurationWrapper
{
  session = [(AECAssessmentSessionWrapper *)self session];
  configuration = [session configuration];
  v4 = [AECAssessmentConfigurationWrapper wrapperFromConfiguration:configuration];

  return v4;
}

- (void)begin
{
  session = [(AECAssessmentSessionWrapper *)self session];
  [session begin];
}

- (void)updateToConfigurationWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  session = [(AECAssessmentSessionWrapper *)self session];
  makeConfiguration = [wrapperCopy makeConfiguration];

  [session updateWithConfiguration:makeConfiguration];
}

- (void)end
{
  session = [(AECAssessmentSessionWrapper *)self session];
  [session end];
}

- (void)assessmentSessionDidBegin:(id)begin
{
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapperDidBegin:self];
}

- (void)assessmentSessionDidEnd:(id)end
{
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapperDidEnd:self];
}

- (void)assessmentSession:(id)session failedToBeginWithError:(id)error
{
  errorCopy = error;
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapper:self failedToBeginWithError:errorCopy];
}

- (void)assessmentSession:(id)session wasInterruptedWithError:(id)error
{
  errorCopy = error;
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapper:self wasInterruptedWithError:errorCopy];
}

- (void)assessmentSessionDidUpdate:(id)update
{
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapperDidUpdate:self];
}

- (void)assessmentSesson:(id)sesson failedToUpdateToConfiguration:(id)configuration error:(id)error
{
  errorCopy = error;
  v9 = [AECAssessmentConfigurationWrapper wrapperFromConfiguration:configuration];
  delegate = [(AECAssessmentSessionWrapper *)self delegate];
  [delegate assessmentSessionWrapper:self failedToUpdateToConfigurationWrapper:v9 error:errorCopy];
}

- (AECAssessmentSessionWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end