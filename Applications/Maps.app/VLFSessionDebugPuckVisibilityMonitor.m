@interface VLFSessionDebugPuckVisibilityMonitor
+ (BOOL)isEnabled;
- (VLFSessionDebugPuckVisibilityMonitor)initWithObserver:(id)a3;
- (id)debugDescription;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateState;
@end

@implementation VLFSessionDebugPuckVisibilityMonitor

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = VLFSessionDebugPuckVisibilityMonitor;
    [(VLFSessionDebugPuckVisibilityMonitor *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  v15 = [v10 isEqualToString:@"VLFSessionDebugPuckVisibilityMonitorActiveKey"];

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
  v9 = [(VLFSessionMonitor *)self state];
  v10 = @"Hide";
  if (v9 == 1)
  {
    v10 = @"EnablePuck";
  }

  if (v9 == 2)
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

- (VLFSessionDebugPuckVisibilityMonitor)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = VLFSessionDebugPuckVisibilityMonitor;
  v3 = [(VLFSessionMonitor *)&v6 initWithObserver:a3];
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