@interface MTROvenCavityOperationalStateClusterOperationCompletionEvent
- (MTROvenCavityOperationalStateClusterOperationCompletionEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROvenCavityOperationalStateClusterOperationCompletionEvent

- (MTROvenCavityOperationalStateClusterOperationCompletionEvent)init
{
  v8.receiver = self;
  v8.super_class = MTROvenCavityOperationalStateClusterOperationCompletionEvent;
  v2 = [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    completionErrorCode = v2->_completionErrorCode;
    v2->_completionErrorCode = &unk_284C3E588;

    totalOperationalTime = v3->_totalOperationalTime;
    v3->_totalOperationalTime = 0;

    pausedTime = v3->_pausedTime;
    v3->_pausedTime = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROvenCavityOperationalStateClusterOperationCompletionEvent);
  completionErrorCode = [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)self completionErrorCode];
  [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)v4 setCompletionErrorCode:completionErrorCode];

  totalOperationalTime = [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)self totalOperationalTime];
  [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)v4 setTotalOperationalTime:totalOperationalTime];

  pausedTime = [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)self pausedTime];
  [(MTROvenCavityOperationalStateClusterOperationCompletionEvent *)v4 setPausedTime:pausedTime];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: completionErrorCode:%@ totalOperationalTime:%@; pausedTime:%@; >", v5, self->_completionErrorCode, self->_totalOperationalTime, self->_pausedTime];;

  return v6;
}

@end