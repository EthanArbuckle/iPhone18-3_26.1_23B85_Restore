@interface __AISRepairController
- (__AISRepairController)init;
- (void)generateSymptomReportWithContext:(id)context completionHandler:(id)handler;
- (void)repairWithContext:(id)context completionHandler:(id)handler;
@end

@implementation __AISRepairController

- (void)repairWithContext:(id)context completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2406CC368;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_2406C8274(contextCopy, v6, v7);
  sub_24058CA60(v6);
}

- (void)generateSymptomReportWithContext:(id)context completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2406CCB7C;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_2406C9324(contextCopy, v6, v7);
  sub_24058CA60(v6);
}

- (__AISRepairController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end