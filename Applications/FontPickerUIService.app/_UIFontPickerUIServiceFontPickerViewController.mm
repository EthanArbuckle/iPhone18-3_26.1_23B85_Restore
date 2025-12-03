@interface _UIFontPickerUIServiceFontPickerViewController
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithCoder:(id)coder;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithRootViewController:(id)controller;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)font;
- (void)applyFontPickerConfiguration:(id)configuration;
- (void)applyHideNavigationBar:(BOOL)bar;
- (void)applySelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible;
- (void)applyShowsGrabber:(BOOL)grabber;
- (void)viewDidLoad;
@end

@implementation _UIFontPickerUIServiceFontPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100018BDC();
}

- (void)_pickerDidSelectFont:(id)font
{
  v5 = objc_opt_self();
  fontCopy = font;
  selfCopy = self;
  v7 = [v5 actionForPickerDidSelectFont:fontCopy];
  _hostedWindowScene = [(_UIFontPickerUIServiceFontPickerViewController *)selfCopy _hostedWindowScene];
  if (_hostedWindowScene)
  {
    v9 = _hostedWindowScene;
    [_hostedWindowScene sendAction:v7];
  }
}

- (void)_pickerDidCancel
{
  v3 = objc_opt_self();
  selfCopy = self;
  actionForPickerDidCancel = [v3 actionForPickerDidCancel];
  _hostedWindowScene = [(_UIFontPickerUIServiceFontPickerViewController *)selfCopy _hostedWindowScene];
  if (_hostedWindowScene)
  {
    v6 = _hostedWindowScene;
    [_hostedWindowScene sendAction:actionForPickerDidCancel];
  }
}

- (void)applyFontPickerConfiguration:(id)configuration
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setConfiguration:configuration];
  }
}

- (void)applySelectedFontDescriptors:(id)descriptors scrollToVisible:(BOOL)visible
{
  descriptorsCopy = descriptors;
  if (descriptors)
  {
    sub_100019258();
    descriptorsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100018EA4(descriptorsCopy);
}

- (void)applyHideNavigationBar:(BOOL)bar
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setHideNavigationBar:bar];
  }
}

- (void)applyShowsGrabber:(BOOL)grabber
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController);
  if (v3)
  {
    [v3 _setShowsGrabber:grabber];
  }
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(_UIFontPickerUIServiceFontPickerViewController *)&v9 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithRootViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(_UIFontPickerUIServiceFontPickerViewController *)&v7 initWithRootViewController:controller];
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(_UIFontPickerUIServiceFontPickerViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19FontPickerUIService46_UIFontPickerUIServiceFontPickerViewController_contentViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(_UIFontPickerUIServiceFontPickerViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end