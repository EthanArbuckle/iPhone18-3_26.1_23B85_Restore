@interface DaemonLogging
+ (OS_os_log)daemon;
- (_TtC11postersyncd13DaemonLogging)init;
@end

@implementation DaemonLogging

+ (OS_os_log)daemon
{
  if (qword_100020C20 != -1)
  {
    swift_once();
  }

  v3 = qword_100021670;

  return v3;
}

- (_TtC11postersyncd13DaemonLogging)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonLogging();
  return [(DaemonLogging *)&v3 init];
}

@end