@interface CanvasElementController.EditingContainerView
- (_TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView)initWithCoder:(id)a3;
- (_TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CanvasElementController.EditingContainerView

- (_TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CanvasElementController.EditingContainerView *)&v4 layoutSubviews];
  if ((v2[OBJC_IVAR____TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView_isCompactToolPicker] & 1) == 0)
  {
    v3 = *&v2[OBJC_IVAR____TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView_editingView];
    [v2 bounds];
    [v3 setFrame_];
  }
}

- (_TtCC8PaperKit23CanvasElementControllerP33_DA32B6809F82252A18050DB886E8EA8120EditingContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end