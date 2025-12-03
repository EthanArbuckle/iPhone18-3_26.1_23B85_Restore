@interface _SFActivity
- (_SFActivityDelegate)delegate;
- (void)activityDidFinish:(BOOL)finish;
@end

@implementation _SFActivity

- (void)activityDidFinish:(BOOL)finish
{
  finishCopy = finish;
  v6.receiver = self;
  v6.super_class = _SFActivity;
  [(UIActivity *)&v6 activityDidFinish:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariActivity:self didFinish:finishCopy];
  }
}

- (_SFActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end