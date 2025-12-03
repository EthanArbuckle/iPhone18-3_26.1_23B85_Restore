@interface PreviewController.Coordinator
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)dismiss;
@end

@implementation PreviewController.Coordinator

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875B860();

  return v4;
}

- (void)dismiss
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtCV12FinanceKitUI17PreviewController11Coordinator_parent;
  v4 = &v3[*(type metadata accessor for PreviewController(0) + 20)];
  v6 = *v4;
  v5 = *(v4 + 1);

  v6(v7);
}

@end