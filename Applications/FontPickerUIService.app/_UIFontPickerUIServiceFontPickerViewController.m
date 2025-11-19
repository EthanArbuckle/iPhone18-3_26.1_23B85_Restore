@interface _UIFontPickerUIServiceFontPickerViewController
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithCoder:(id)a3;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithRootViewController:(id)a3;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)a3;
- (void)applyFontPickerConfiguration:(id)a3;
- (void)applyHideNavigationBar:(BOOL)a3;
- (void)applySelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4;
- (void)applyShowsGrabber:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation _UIFontPickerUIServiceFontPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100018BDC();
}

- (void)_pickerDidSelectFont:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v10 = self;
  v7 = [v5 actionForPickerDidSelectFont:v6];
  v8 = [(_UIFontPickerUIServiceFontPickerViewController *)v10 _hostedWindowScene];
  if (v8)
  {
    v9 = v8;
    [v8 sendAction:v7];
  }
}

- (void)_pickerDidCancel
{
  v3 = objc_opt_self();
  v7 = self;
  v4 = [v3 actionForPickerDidCancel];
  v5 = [(_UIFontPickerUIServiceFontPickerViewController *)v7 _hostedWindowScene];
  if (v5)
  {
    v6 = v5;
    [v5 sendAction:v4];
  }
}

- (void)applyFontPickerConfiguration:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setConfiguration:a3];
  }
}

- (void)applySelectedFontDescriptors:(id)a3 scrollToVisible:(BOOL)a4
{
  v4 = a3;
  if (a3)
  {
    sub_100019258();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = self;
  sub_100018EA4(v4);
}

- (void)applyHideNavigationBar:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setHideNavigationBar:a3];
  }
}

- (void)applyShowsGrabber:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setShowsGrabber:a3];
  }
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(_UIFontPickerUIServiceFontPickerViewController *)&v9 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithRootViewController:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(_UIFontPickerUIServiceFontPickerViewController *)&v7 initWithRootViewController:a3];
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(_UIFontPickerUIServiceFontPickerViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(_UIFontPickerUIServiceFontPickerViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end