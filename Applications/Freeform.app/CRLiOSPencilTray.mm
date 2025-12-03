@interface CRLiOSPencilTray
- (CGRect)rectangleObscuringCanvasScrollView;
- (_TtC8Freeform16CRLiOSPencilTray)init;
- (id)_colorPickerPopoverPresentationBarButtonItem:(id)item;
- (id)_toolPickerCurrentSelectionColor:(id)color;
- (void)_toggleLassoToolEditingViewColorPickerForToolPicker:(id)picker;
- (void)_toolPicker:(id)picker didChangeColor:(id)color;
- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated;
- (void)installToolTray;
- (void)lassoSegmentedControlDidChangeType:(unint64_t)type;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)setToolTrayHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)toolPickerFramesObscuredDidChange:(id)change;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolItemDidChange:(id)change;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)toolkitDidUpdateCurrentToolSelection;
- (void)toolkitDidUpdateRulerVisibility;
- (void)uninstallToolTray;
- (void)updateForToolPickerVisibilityDidChange;
@end

@implementation CRLiOSPencilTray

- (_TtC8Freeform16CRLiOSPencilTray)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)rectangleObscuringCanvasScrollView
{
  selfCopy = self;
  v3 = sub_100F103AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)installToolTray
{
  selfCopy = self;
  sub_100F10818();
}

- (void)uninstallToolTray
{
  selfCopy = self;
  sub_100F10C3C();
}

- (void)setToolTrayHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  sub_100F161BC(hidden);
}

- (void)toolPickerSelectedToolItemDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100F11088();
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100F116C0(changeCopy);
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100F11DA4();
}

- (void)updateForToolPickerVisibilityDidChange
{
  selfCopy = self;
  sub_100F12420();
}

- (void)toolPickerFramesObscuredDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100F12A0C();
}

- (void)_toolPicker:(id)picker didChangeColor:(id)color
{
  pickerCopy = picker;
  colorCopy = color;
  selfCopy = self;
  sub_100F1308C(pickerCopy, color);
}

- (id)_toolPickerCurrentSelectionColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  v6 = sub_100F13A30();

  return v6;
}

- (void)_toggleLassoToolEditingViewColorPickerForToolPicker:(id)picker
{
  pickerCopy = picker;
  selfCopy = self;
  sub_100F14098();
}

- (id)_colorPickerPopoverPresentationBarButtonItem:(id)item
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  v6 = [Strong barButtonItemForPresentingColorPickerWithHiddenPencilTray:selfCopy];

  swift_unknownObjectRelease();

  return v6;
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100F14AE4(v5);

  sub_100005070(&v7);
}

- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated
{
  modeCopy = mode;
  selfCopy = self;
  if ([modeCopy pencilModeType])
  {
    sub_100F09EB4();
  }
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  mode = [Strong mode];

  pencilModeType = [mode pencilModeType];
  if (pencilModeType == 1)
  {
    sub_100F09EB4();
  }
}

- (void)toolkitDidUpdateRulerVisibility
{
  selfCopy = self;
  sub_100F1501C();
}

- (void)lassoSegmentedControlDidChangeType:(unint64_t)type
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  freehandDrawingToolkit = [Strong freehandDrawingToolkit];

  if (freehandDrawingToolkit)
  {
    toolkitUIState = [freehandDrawingToolkit toolkitUIState];

    [toolkitUIState setCurrentLassoType:type];
  }

  else
  {
    __break(1u);
  }
}

@end