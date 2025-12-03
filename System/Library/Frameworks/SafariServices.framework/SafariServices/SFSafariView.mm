@interface SFSafariView
- (void)didMoveToWindow;
- (void)setTintColor:(id)color;
@end

@implementation SFSafariView

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SFSafariView;
  [(SFSafariView *)&v6 setTintColor:color];
  if ((warnAboutTintColorIfNeeded_didWarningCheck & 1) == 0)
  {
    warnAboutTintColorIfNeeded_didWarningCheck = 1;
    if (__UIApplicationLinkedOnOrAfter())
    {
      v3 = dyld_program_minos_at_least();
      v4 = WBS_LOG_CHANNEL_PREFIXOther();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        if (v5)
        {
          [SFSafariView setTintColor:v4];
        }
      }

      else if (v5)
      {
        [SFSafariView setTintColor:v4];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SFSafariView;
  [(SFSafariView *)&v3 didMoveToWindow];
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] setNeedsUpdate];
}

@end