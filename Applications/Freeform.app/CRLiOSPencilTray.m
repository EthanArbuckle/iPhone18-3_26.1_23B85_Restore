@interface CRLiOSPencilTray
- (CGRect)rectangleObscuringCanvasScrollView;
- (_TtC8Freeform16CRLiOSPencilTray)init;
- (id)_colorPickerPopoverPresentationBarButtonItem:(id)a3;
- (id)_toolPickerCurrentSelectionColor:(id)a3;
- (void)_toggleLassoToolEditingViewColorPickerForToolPicker:(id)a3;
- (void)_toolPicker:(id)a3 didChangeColor:(id)a4;
- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5;
- (void)installToolTray;
- (void)lassoSegmentedControlDidChangeType:(unint64_t)a3;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)setToolTrayHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)toolPickerFramesObscuredDidChange:(id)a3;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolItemDidChange:(id)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
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
  v2 = self;
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
  v2 = self;
  sub_100F10818();
}

- (void)uninstallToolTray
{
  v2 = self;
  sub_100F10C3C();
}

- (void)setToolTrayHidden:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_100F161BC(a3);
}

- (void)toolPickerSelectedToolItemDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F11088();
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F116C0(v4);
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F11DA4();
}

- (void)updateForToolPickerVisibilityDidChange
{
  v2 = self;
  sub_100F12420();
}

- (void)toolPickerFramesObscuredDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F12A0C();
}

- (void)_toolPicker:(id)a3 didChangeColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100F1308C(v6, a4);
}

- (id)_toolPickerCurrentSelectionColor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100F13A30();

  return v6;
}

- (void)_toggleLassoToolEditingViewColorPickerForToolPicker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F14098();
}

- (id)_colorPickerPopoverPresentationBarButtonItem:(id)a3
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = self;
  v6 = [Strong barButtonItemForPresentingColorPickerWithHiddenPencilTray:v5];

  swift_unknownObjectRelease();

  return v6;
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100F14AE4(v5);

  sub_100005070(&v7);
}

- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  if ([v6 pencilModeType])
  {
    sub_100F09EB4();
  }
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = self;
  v4 = [Strong mode];

  v5 = [v4 pencilModeType];
  if (v5 == 1)
  {
    sub_100F09EB4();
  }
}

- (void)toolkitDidUpdateRulerVisibility
{
  v2 = self;
  sub_100F1501C();
}

- (void)lassoSegmentedControlDidChangeType:(unint64_t)a3
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = self;
  v6 = [Strong freehandDrawingToolkit];

  if (v6)
  {
    v7 = [v6 toolkitUIState];

    [v7 setCurrentLassoType:a3];
  }

  else
  {
    __break(1u);
  }
}

@end