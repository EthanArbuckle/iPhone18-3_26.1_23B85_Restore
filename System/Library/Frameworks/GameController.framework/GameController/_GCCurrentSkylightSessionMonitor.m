@interface _GCCurrentSkylightSessionMonitor
+ (id)sharedInstance;
- (_GCCurrentSkylightSessionMonitor)init;
- (void)dealloc;
@end

@implementation _GCCurrentSkylightSessionMonitor

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken_2 != -1)
  {
    +[_GCCurrentSkylightSessionMonitor sharedInstance];
  }

  v0 = sharedInstance_Shared_0;

  return v0;
}

- (_GCCurrentSkylightSessionMonitor)init
{
  v3.receiver = self;
  v3.super_class = _GCCurrentSkylightSessionMonitor;
  return [(_GCCurrentSkylightSessionMonitor *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _GCCurrentSkylightSessionMonitor;
  [(_GCCurrentSkylightSessionMonitor *)&v2 dealloc];
}

@end