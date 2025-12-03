@interface VMVoicemail
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)time;
@end

@implementation VMVoicemail

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)time
{
  if (([(VMVoicemail *)self isRead]& 1) != 0)
  {
    return 0;
  }

  if (time > 5.0)
  {
    return 1;
  }

  [(VMVoicemail *)self duration];
  return v6 / 3.0 < time;
}

@end