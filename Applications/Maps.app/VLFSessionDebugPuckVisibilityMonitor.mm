@interface VLFSessionDebugPuckVisibilityMonitor
+ (BOOL)isEnabled;
- (VLFSessionDebugPuckVisibilityMonitor)initWithObserver:(id)observer;
- (id)debugDescription;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateState;
@end

@implementation VLFSessionDebugPuckVisibilityMonitor

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
    v16.super_class = VLFSessionDebugPuckVisibilityMonitor;
    [(VLFSessionDebugPuckVisibilityMonitor *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  v15 = [pathCopy isEqualToString:@"VLFSessionDebugPuckVisibilityMonitorActiveKey"];

  if (!v15)
  {
    goto LABEL_5;
  }

  [(VLFSessionDebugPuckVisibilityMonitor *)self updateState];
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
  if ([v6 BOOLForKey:@"VLFSessionDebugPuckVisibilityMonitorActiveKey"])
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
  v4 = [v3 BOOLForKey:@"VLFSessionDebugPuckVisibilityMonitorActiveKey"];

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
  [v3 removeObserver:self forKeyPath:@"VLFSessionDebugPuckVisibilityMonitorActiveKey" context:0];

  v4.receiver = self;
  v4.super_class = VLFSessionDebugPuckVisibilityMonitor;
  [(VLFSessionDebugPuckVisibilityMonitor *)&v4 dealloc];
}

- (VLFSessionDebugPuckVisibilityMonitor)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = VLFSessionDebugPuckVisibilityMonitor;
  v3 = [(VLFSessionMonitor *)&v6 initWithObserver:observer];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 addObserver:v3 forKeyPath:@"VLFSessionDebugPuckVisibilityMonitorActiveKey" options:1 context:0];

    [(VLFSessionDebugPuckVisibilityMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)isEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionDebugPuckVisibilityMonitorEnabledKey"];

  return v3;
}

@end