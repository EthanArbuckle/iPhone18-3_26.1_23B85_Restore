@interface SRDismissalClassificationContext
- (SRDismissalClassificationContext)initWithCancellationReason:(int64_t)reason contentPresentationState:(int64_t)state dismissalReason:(int64_t)dismissalReason isDeviceUnlocked:(BOOL)unlocked siriState:(int64_t)siriState requestSource:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SRDismissalClassificationContext

- (SRDismissalClassificationContext)initWithCancellationReason:(int64_t)reason contentPresentationState:(int64_t)state dismissalReason:(int64_t)dismissalReason isDeviceUnlocked:(BOOL)unlocked siriState:(int64_t)siriState requestSource:(int64_t)source
{
  v15.receiver = self;
  v15.super_class = SRDismissalClassificationContext;
  result = [(SRDismissalClassificationContext *)&v15 init];
  if (result)
  {
    result->_cancellationReason = reason;
    result->_contentPresentationState = state;
    result->_isDeviceUnlocked = unlocked;
    result->_dismissalReason = dismissalReason;
    result->_siriState = siriState;
    result->_requestSource = source;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SRDismissalClassificationContext allocWithZone:?]contentPresentationState:"initWithCancellationReason:contentPresentationState:dismissalReason:isDeviceUnlocked:siriState:requestSource:" dismissalReason:self->_cancellationReason isDeviceUnlocked:self->_contentPresentationState siriState:self->_dismissalReason requestSource:self->_isDeviceUnlocked, self->_siriState, self->_requestSource];
  [(SRDismissalClassificationContext *)v4 setClassifiedAsUnintended:self->_classifiedAsUnintended];
  return v4;
}

@end