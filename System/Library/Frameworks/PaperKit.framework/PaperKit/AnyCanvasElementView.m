@interface AnyCanvasElementView
- (CGRect)textBoxViewActiveTextBoxFrame:(id)a3;
- (_TtC8PaperKit20AnyCanvasElementView)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
@end

@implementation AnyCanvasElementView

- (_TtC8PaperKit20AnyCanvasElementView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v4 = self;
  v5 = [(AnyCanvasElementView *)v4 window];
  if (v5)
  {

    v6 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)textBoxViewActiveTextBoxFrame:(id)a3
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