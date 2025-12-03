@interface ACDelayedConfirmationViewController
- (BOOL)_executeTriggerBlock:(id)block;
- (BOOL)triggerConfirmation;
- (BOOL)triggerDenial;
- (void)_cancelAutomaticConfirmation;
- (void)_removeFromTranscript;
- (void)_scheduleAutomaticConfirmation;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ACDelayedConfirmationViewController

- (void)dealloc
{
  [(ACDelayedConfirmationViewController *)self _cancelAutomaticConfirmation];
  v3.receiver = self;
  v3.super_class = ACDelayedConfirmationViewController;
  [(ACDelayedConfirmationViewController *)&v3 dealloc];
}

- (void)_cancelAutomaticConfirmation
{
  [*(&self->super + 1) invalidate];
  v3 = *(&self->super + 1);
  *(&self->super + 1) = 0;
}

- (void)_scheduleAutomaticConfirmation
{
  [(ACDelayedConfirmationViewController *)self _cancelAutomaticConfirmation];
  aceObject = [(ACDelayedConfirmationViewController *)self aceObject];
  v3 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self, "_automaticConfirmationTimerDidFire:", 0, 0, [aceObject autoConfirmDelay]);
  v4 = *(&self->super + 1);
  *(&self->super + 1) = v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ACDelayedConfirmationViewController;
  [(ACDelayedConfirmationViewController *)&v4 viewDidAppear:appear];
  if ([(ACDelayedConfirmationViewController *)self isVirgin])
  {
    if (![(ACDelayedConfirmationViewController *)self _hasScheduledAutomaticConfirmation])
    {
      [(ACDelayedConfirmationViewController *)self _scheduleAutomaticConfirmation];
    }
  }
}

- (void)_removeFromTranscript
{
  _privateDelegate = [(ACDelayedConfirmationViewController *)self _privateDelegate];
  [_privateDelegate removeSiriViewController:self];
}

- (BOOL)_executeTriggerBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy && (*(blockCopy + 2))(blockCopy))
  {
    [(ACDelayedConfirmationViewController *)self _removeFromTranscript];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)triggerConfirmation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1604;
  v3[3] = &unk_18490;
  v3[4] = self;
  return [(ACDelayedConfirmationViewController *)self _executeTriggerBlock:v3];
}

- (BOOL)triggerDenial
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_16AC;
  v3[3] = &unk_18490;
  v3[4] = self;
  return [(ACDelayedConfirmationViewController *)self _executeTriggerBlock:v3];
}

@end