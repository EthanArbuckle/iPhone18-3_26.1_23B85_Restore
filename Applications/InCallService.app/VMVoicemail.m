@interface VMVoicemail
- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)a3;
@end

@implementation VMVoicemail

- (BOOL)shouldMarkAsReadForPlaybackCurrentTime:(float)a3
{
  if (([(VMVoicemail *)self isRead]& 1) != 0)
  {
    return 0;
  }

  if (a3 > 5.0)
  {
    return 1;
  }

  [(VMVoicemail *)self duration];
  return v6 / 3.0 < a3;
}

@end