@interface AECAssessmentSessionWrapper
- (AECAssessmentConfigurationWrapper)configurationWrapper;
- (AECAssessmentSessionWrapper)initWithConfigurationWrapper:(id)a3 queue:(id)a4;
- (AECAssessmentSessionWrapperDelegate)delegate;
- (BOOL)isActive;
- (void)assessmentSession:(id)a3 failedToBeginWithError:(id)a4;
- (void)assessmentSession:(id)a3 wasInterruptedWithError:(id)a4;
- (void)assessmentSessionDidBegin:(id)a3;
- (void)assessmentSessionDidEnd:(id)a3;
- (void)assessmentSessionDidUpdate:(id)a3;
- (void)assessmentSesson:(id)a3 failedToUpdateToConfiguration:(id)a4 error:(id)a5;
- (void)begin;
- (void)end;
- (void)updateToConfigurationWrapper:(id)a3;
@end

@implementation AECAssessmentSessionWrapper

- (AECAssessmentSessionWrapper)initWithConfigurationWrapper:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AECAssessmentSessionWrapper;
  v8 = [(AECAssessmentSessionWrapper *)&v14 init];
  if (v8)
  {
    v9 = [_TtC9AACClient20AECAssessmentSession alloc];
    v10 = [v6 makeConfiguration];
    v11 = [(AECAssessmentSession *)v9 initWithConfiguration:v10 queue:v7];
    session = v8->_session;
    v8->_session = v11;

    [(AECAssessmentSession *)v8->_session setDelegate:v8];
  }

  return v8;
}

- (BOOL)isActive
{
  v2 = [(AECAssessmentSessionWrapper *)self session];
  v3 = [v2 isActive];

  return v3;
}

- (AECAssessmentConfigurationWrapper)configurationWrapper
{
  v2 = [(AECAssessmentSessionWrapper *)self session];
  v3 = [v2 configuration];
  v4 = [AECAssessmentConfigurationWrapper wrapperFromConfiguration:v3];

  return v4;
}

- (void)begin
{
  v2 = [(AECAssessmentSessionWrapper *)self session];
  [v2 begin];
}

- (void)updateToConfigurationWrapper:(id)a3
{
  v4 = a3;
  v6 = [(AECAssessmentSessionWrapper *)self session];
  v5 = [v4 makeConfiguration];

  [v6 updateWithConfiguration:v5];
}

- (void)end
{
  v2 = [(AECAssessmentSessionWrapper *)self session];
  [v2 end];
}

- (void)assessmentSessionDidBegin:(id)a3
{
  v4 = [(AECAssessmentSessionWrapper *)self delegate];
  [v4 assessmentSessionWrapperDidBegin:self];
}

- (void)assessmentSessionDidEnd:(id)a3
{
  v4 = [(AECAssessmentSessionWrapper *)self delegate];
  [v4 assessmentSessionWrapperDidEnd:self];
}

- (void)assessmentSession:(id)a3 failedToBeginWithError:(id)a4
{
  v5 = a4;
  v6 = [(AECAssessmentSessionWrapper *)self delegate];
  [v6 assessmentSessionWrapper:self failedToBeginWithError:v5];
}

- (void)assessmentSession:(id)a3 wasInterruptedWithError:(id)a4
{
  v5 = a4;
  v6 = [(AECAssessmentSessionWrapper *)self delegate];
  [v6 assessmentSessionWrapper:self wasInterruptedWithError:v5];
}

- (void)assessmentSessionDidUpdate:(id)a3
{
  v4 = [(AECAssessmentSessionWrapper *)self delegate];
  [v4 assessmentSessionWrapperDidUpdate:self];
}

- (void)assessmentSesson:(id)a3 failedToUpdateToConfiguration:(id)a4 error:(id)a5
{
  v7 = a5;
  v9 = [AECAssessmentConfigurationWrapper wrapperFromConfiguration:a4];
  v8 = [(AECAssessmentSessionWrapper *)self delegate];
  [v8 assessmentSessionWrapper:self failedToUpdateToConfigurationWrapper:v9 error:v7];
}

- (AECAssessmentSessionWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end