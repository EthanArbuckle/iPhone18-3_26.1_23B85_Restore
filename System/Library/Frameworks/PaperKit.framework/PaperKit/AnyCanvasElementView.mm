@interface AnyCanvasElementView
- (CGRect)textBoxViewActiveTextBoxFrame:(id)frame;
- (_TtC8PaperKit20AnyCanvasElementView)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
@end

@implementation AnyCanvasElementView

- (_TtC8PaperKit20AnyCanvasElementView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  selfCopy = self;
  window = [(AnyCanvasElementView *)selfCopy window];
  if (window)
  {

    initWithView_ = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    initWithView_ = 0;
  }

  return initWithView_;
}

- (CGRect)textBoxViewActiveTextBoxFrame:(id)frame
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end