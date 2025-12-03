@interface ANTelephonyObserver
- (ANTelephonyObserver)init;
- (ANTelephonyObserver)initWithQueue:(id)queue;
- (ANTelephonyObserverDelegate)delegate;
- (BOOL)hasCalls;
- (void)dealloc;
@end

@implementation ANTelephonyObserver

- (BOOL)hasCalls
{
  selfCopy = self;
  v3 = sub_23F57FD88();

  return v3 & 1;
}

- (ANTelephonyObserverDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ANTelephonyObserver)initWithQueue:(id)queue
{
  v5 = sub_23F5881D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  queueCopy = queue;
  sub_23F5881C4();
  (*(v6 + 32))(self + OBJC_IVAR___ANTelephonyObserver_logger, v9, v5);
  v11 = type metadata accessor for TelephonyObserver();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(ANTelephonyObserver *)&v14 init];
  sub_23F580278(queue);

  return v12;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = *MEMORY[0x277D26B50];
  sharedAVSystemController = [objc_opt_self() sharedAVSystemController];
  [defaultCenter removeObserver:selfCopy name:v6 object:sharedAVSystemController];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for TelephonyObserver();
  [(ANTelephonyObserver *)&v8 dealloc];
}

- (ANTelephonyObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end