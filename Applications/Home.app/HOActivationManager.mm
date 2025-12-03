@interface HOActivationManager
- (HOActivationManager)init;
- (void)_enteredForeground:(id)foreground;
@end

@implementation HOActivationManager

- (HOActivationManager)init
{
  v6.receiver = self;
  v6.super_class = HOActivationManager;
  v2 = [(HOActivationManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate date];
    [(HOActivationManager *)v2 setLastEnteredForegroundDate:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_enteredForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)_enteredForeground:(id)foreground
{
  v4 = +[NSDate date];
  [(HOActivationManager *)self setLastEnteredForegroundDate:v4];
}

@end