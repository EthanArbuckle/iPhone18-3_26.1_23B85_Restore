@interface VLFSessionCarPlayConnectionMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionCarPlayConnectionMonitor)initWithObserver:(id)observer;
- (id)debugDescription;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateState;
@end

@implementation VLFSessionCarPlayConnectionMonitor

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = NSStringFromSelector("state");
  if (([pathCopy isEqualToString:v13] & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = +[CarDisplayController sharedInstance];

  if (v14 != objectCopy)
  {
LABEL_7:
    v16.receiver = self;
    v16.super_class = VLFSessionCarPlayConnectionMonitor;
    [(VLFSessionCarPlayConnectionMonitor *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_8;
  }

  v15 = sub_100F748E8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Detected carplay connectivity state changed; updating state", buf, 2u);
  }

  [(VLFSessionCarPlayConnectionMonitor *)self updateState];
LABEL_8:
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
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v10 = +[CarDisplayController sharedInstance];
  state = [v10 state];
  state2 = [(VLFSessionMonitor *)self state];
  v13 = @"Hide";
  if (state2 == 1)
  {
    v13 = @"EnablePuck";
  }

  if (state2 == 2)
  {
    v13 = @"EnablePuckAndBanner";
  }

  v14 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentValue: %lu, currentState: %@>", v3, v5, v7, v9, state, v13];

  return v14;
}

- (void)updateState
{
  v3 = +[CarDisplayController sharedInstance];
  state = [v3 state];

  v5 = sub_100F748E8();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (state == 2)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected that carplay is connected; updating state", v8, 2u);
    }

    v7 = 0;
  }

  else if (v6)
  {
    *buf = 0;
    v7 = 2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Detected that carplay is not connected; updating state", buf, 2u);
  }

  else
  {
    v7 = 2;
  }

  [(VLFSessionMonitor *)self setState:v7];
}

- (void)dealloc
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = NSStringFromSelector("state");
  [v3 removeObserver:self forKeyPath:v4 context:0];

  v5.receiver = self;
  v5.super_class = VLFSessionCarPlayConnectionMonitor;
  [(VLFSessionCarPlayConnectionMonitor *)&v5 dealloc];
}

- (VLFSessionCarPlayConnectionMonitor)initWithObserver:(id)observer
{
  v7.receiver = self;
  v7.super_class = VLFSessionCarPlayConnectionMonitor;
  v3 = [(VLFSessionMonitor *)&v7 initWithObserver:observer];
  if (v3)
  {
    v4 = +[CarDisplayController sharedInstance];
    v5 = NSStringFromSelector("state");
    [v4 addObserver:v3 forKeyPath:v5 options:0 context:0];

    [(VLFSessionCarPlayConnectionMonitor *)v3 updateState];
  }

  return v3;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionCarPlayConnectionMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionCarPlayConnectionMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end