@interface VLFSessionDebugBannerVisibilityMonitor
+ (BOOL)isEnabled;
- (VLFSessionDebugBannerVisibilityMonitor)initWithObserver:(id)observer;
- (id)debugDescription;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateState;
@end

@implementation VLFSessionDebugBannerVisibilityMonitor

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != objectCopy)
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = VLFSessionDebugBannerVisibilityMonitor;
    [(VLFSessionDebugBannerVisibilityMonitor *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  v15 = [pathCopy isEqualToString:@"VLFSessionDebugBannerVisibilityMonitorActiveKey"];

  if (!v15)
  {
    goto LABEL_5;
  }

  [(VLFSessionDebugBannerVisibilityMonitor *)self updateState];
LABEL_6:
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  if ([objc_opt_class() isEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  v6 = +[NSUserDefaults standardUserDefaults];
  if ([v6 BOOLForKey:@"VLFSessionDebugBannerVisibilityMonitorActiveKey"])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  state = [(VLFSessionMonitor *)self state];
  v10 = @"Hide";
  if (state == 1)
  {
    v10 = @"EnablePuck";
  }

  if (state == 2)
  {
    v10 = @"EnablePuckAndBanner";
  }

  v11 = [NSString stringWithFormat:@"<%@: isEnabled: %@, currentValue: %@, currentState: %@>", v3, v5, v8, v10];

  return v11;
}

- (void)updateState
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"VLFSessionDebugBannerVisibilityMonitorActiveKey"];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(VLFSessionMonitor *)self setState:v5];
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"VLFSessionDebugBannerVisibilityMonitorActiveKey" context:0];

  v4.receiver = self;
  v4.super_class = VLFSessionDebugBannerVisibilityMonitor;
  [(VLFSessionDebugBannerVisibilityMonitor *)&v4 dealloc];
}

- (VLFSessionDebugBannerVisibilityMonitor)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = VLFSessionDebugBannerVisibilityMonitor;
  v3 = [(VLFSessionMonitor *)&v6 initWithObserver:observer];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 addObserver:v3 forKeyPath:@"VLFSessionDebugBannerVisibilityMonitorActiveKey" options:1 context:0];

    [(VLFSessionDebugBannerVisibilityMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)isEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionDebugBannerVisibilityMonitorEnabledKey"];

  return v3;
}

@end