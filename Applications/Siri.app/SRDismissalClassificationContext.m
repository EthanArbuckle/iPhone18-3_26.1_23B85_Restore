@interface SRDismissalClassificationContext
- (SRDismissalClassificationContext)initWithCancellationReason:(int64_t)a3 contentPresentationState:(int64_t)a4 dismissalReason:(int64_t)a5 isDeviceUnlocked:(BOOL)a6 siriState:(int64_t)a7 requestSource:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SRDismissalClassificationContext

- (SRDismissalClassificationContext)initWithCancellationReason:(int64_t)a3 contentPresentationState:(int64_t)a4 dismissalReason:(int64_t)a5 isDeviceUnlocked:(BOOL)a6 siriState:(int64_t)a7 requestSource:(int64_t)a8
{
  v15.receiver = self;
  v15.super_class = SRDismissalClassificationContext;
  result = [(SRDismissalClassificationContext *)&v15 init];
  if (result)
  {
    result->_cancellationReason = a3;
    result->_contentPresentationState = a4;
    result->_isDeviceUnlocked = a6;
    result->_dismissalReason = a5;
    result->_siriState = a7;
    result->_requestSource = a8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SRDismissalClassificationContext allocWithZone:?]contentPresentationState:"initWithCancellationReason:contentPresentationState:dismissalReason:isDeviceUnlocked:siriState:requestSource:" dismissalReason:self->_cancellationReason isDeviceUnlocked:self->_contentPresentationState siriState:self->_dismissalReason requestSource:self->_isDeviceUnlocked, self->_siriState, self->_requestSource];
  [(SRDismissalClassificationContext *)v4 setClassifiedAsUnintended:self->_classifiedAsUnintended];
  return v4;
}

@end