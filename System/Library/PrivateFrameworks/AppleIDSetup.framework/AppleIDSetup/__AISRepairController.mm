@interface __AISRepairController
- (__AISRepairController)init;
- (void)generateSymptomReportWithContext:(id)a3 completionHandler:(id)a4;
- (void)repairWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation __AISRepairController

- (void)repairWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_2406C8274(v8, v6, v7);
  sub_24058CA60(v6);
}

- (void)generateSymptomReportWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_2406C9324(v8, v6, v7);
  sub_24058CA60(v6);
}

- (__AISRepairController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end