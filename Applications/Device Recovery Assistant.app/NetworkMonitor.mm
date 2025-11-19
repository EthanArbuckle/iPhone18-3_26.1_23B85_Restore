@interface NetworkMonitor
+ (id)shared;
- (void)activate;
- (void)invalidate;
@end

@implementation NetworkMonitor

+ (id)shared
{
  if (qword_100032168 != -1)
  {
    sub_100012CC0();
  }

  v3 = qword_100032170;

  return v3;
}

- (void)activate
{
  v3 = [(NetworkMonitor *)self pathMonitor];

  if (v3)
  {
    [(NetworkMonitor *)self invalidate];
  }

  v4 = nw_path_monitor_create();
  [(NetworkMonitor *)self setPathMonitor:v4];

  v5 = [(NetworkMonitor *)self pathMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_10000C3D4;
  update_handler[3] = &unk_100028B40;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v5, update_handler);

  v6 = [(NetworkMonitor *)self pathMonitor];
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  nw_path_monitor_set_queue(v6, v8);

  v9 = [(NetworkMonitor *)self pathMonitor];
  nw_path_monitor_start(v9);
}

- (void)invalidate
{
  v3 = [(NetworkMonitor *)self pathMonitor];

  if (v3)
  {
    v4 = [(NetworkMonitor *)self pathMonitor];
    nw_path_monitor_cancel(v4);

    [(NetworkMonitor *)self setPathMonitor:0];
  }
}

@end