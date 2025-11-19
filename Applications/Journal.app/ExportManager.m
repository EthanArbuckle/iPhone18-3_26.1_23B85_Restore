@interface ExportManager
- (id)printInteractionControllerParentViewController:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)printInteractionControllerDidFinishJob:(id)a3;
- (void)setCurrentExportOptions:(id)a3;
@end

@implementation ExportManager

- (id)printInteractionControllerParentViewController:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)printInteractionControllerDidFinishJob:(id)a3
{
  v3 = self;
  sub_10072B094(1);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v4 = self;
  sub_10072B094(1);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v3 = self;
  sub_10072B094(1);
}

- (void)setCurrentExportOptions:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions);
  *(&self->super.isa + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions) = a3;
  v3 = a3;
}

@end