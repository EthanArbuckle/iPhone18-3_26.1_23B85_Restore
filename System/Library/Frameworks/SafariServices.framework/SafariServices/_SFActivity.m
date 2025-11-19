@interface _SFActivity
- (_SFActivityDelegate)delegate;
- (void)activityDidFinish:(BOOL)a3;
@end

@implementation _SFActivity

- (void)activityDidFinish:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _SFActivity;
  [(UIActivity *)&v6 activityDidFinish:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariActivity:self didFinish:v3];
  }
}

- (_SFActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end