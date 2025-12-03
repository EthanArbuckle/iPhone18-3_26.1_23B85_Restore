@interface RingerSwitchObserver
- (void)dealloc;
@end

@implementation RingerSwitchObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17SequoiaTranslator20RingerSwitchObserver_token);
  selfCopy = self;
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for RingerSwitchObserver();
  [(RingerSwitchObserver *)&v4 dealloc];
}

@end