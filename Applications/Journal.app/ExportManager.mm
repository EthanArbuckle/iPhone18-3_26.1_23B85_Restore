@interface ExportManager
- (id)printInteractionControllerParentViewController:(id)controller;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)printInteractionControllerDidFinishJob:(id)job;
- (void)setCurrentExportOptions:(id)options;
@end

@implementation ExportManager

- (id)printInteractionControllerParentViewController:(id)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)printInteractionControllerDidFinishJob:(id)job
{
  selfCopy = self;
  sub_10072B094(1);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  selfCopy = self;
  sub_10072B094(1);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  selfCopy = self;
  sub_10072B094(1);
}

- (void)setCurrentExportOptions:(id)options
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions);
  *(&self->super.isa + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions) = options;
  optionsCopy = options;
}

@end