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
  pathMonitor = [(NetworkMonitor *)self pathMonitor];

  if (pathMonitor)
  {
    [(NetworkMonitor *)self invalidate];
  }

  v4 = nw_path_monitor_create();
  [(NetworkMonitor *)self setPathMonitor:v4];

  pathMonitor2 = [(NetworkMonitor *)self pathMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_10000C3D4;
  update_handler[3] = &unk_100028B40;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(pathMonitor2, update_handler);

  pathMonitor3 = [(NetworkMonitor *)self pathMonitor];
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  nw_path_monitor_set_queue(pathMonitor3, v8);

  pathMonitor4 = [(NetworkMonitor *)self pathMonitor];
  nw_path_monitor_start(pathMonitor4);
}

- (void)invalidate
{
  pathMonitor = [(NetworkMonitor *)self pathMonitor];

  if (pathMonitor)
  {
    pathMonitor2 = [(NetworkMonitor *)self pathMonitor];
    nw_path_monitor_cancel(pathMonitor2);

    [(NetworkMonitor *)self setPathMonitor:0];
  }
}

@end