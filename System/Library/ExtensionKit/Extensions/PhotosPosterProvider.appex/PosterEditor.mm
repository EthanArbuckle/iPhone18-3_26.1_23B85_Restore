@interface PosterEditor
- (BOOL)editorShouldBeginFinalization:(id)finalization;
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(id)editor;
- (id)initialColorsForEditor:(id)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor depthEffectDisallowedDidChange:(BOOL)change;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateColors:(id)colors;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidDelayFinalizationForBackgroundTask:(id)task;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation PosterEditor

- (BOOL)editorShouldBeginFinalization:(id)finalization
{
  finalizationCopy = finalization;
  selfCopy = self;
  sub_10000B6D8();
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000B828();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000B9C4();

  sub_1000042B4(0, &unk_10004A600, PREditingLook_ptr);
  v6.super.isa = sub_10002F4A4().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000BFB0(editorCopy, lookCopy, progress);
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C178();

  v6 = sub_10002F3D4();

  return v6;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  v10 = sub_10000C300();

  return v10;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000C700(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (id)solidColorHomeScreenColorPickerConfigurationForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C9DC();
  v7 = v6;

  return v7;
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000CA54();
  v7 = v6;

  return v7;
}

- (id)initialColorsForEditor:(id)editor
{
  sub_1000042B4(0, &qword_10004A620, UIColor_ptr);
  v3.super.isa = sub_10002F4A4().super.isa;

  return v3.super.isa;
}

- (void)editor:(id)editor didUpdateColors:(id)colors
{
  sub_1000042B4(0, &qword_10004A620, UIColor_ptr);
  sub_10002F4C4();
}

- (void)editor:(id)editor depthEffectDisallowedDidChange:(BOOL)change
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000CCA0();
}

- (void)editorDidDelayFinalizationForBackgroundTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  sub_10000CE20();
}

@end