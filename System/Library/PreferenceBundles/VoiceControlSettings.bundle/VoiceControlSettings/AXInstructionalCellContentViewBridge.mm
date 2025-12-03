@interface AXInstructionalCellContentViewBridge
- (AXInstructionalCellContentViewBridge)init;
- (id)makeContentCellViewWithTitle:(id)title image:(id)image imageIgnoresInvertColors:(BOOL)colors description:(id)description linkTitle:(id)linkTitle linkCallback:(id)callback closeCallback:(id)closeCallback;
@end

@implementation AXInstructionalCellContentViewBridge

- (id)makeContentCellViewWithTitle:(id)title image:(id)image imageIgnoresInvertColors:(BOOL)colors description:(id)description linkTitle:(id)linkTitle linkCallback:(id)callback closeCallback:(id)closeCallback
{
  v10 = _Block_copy(callback);
  v11 = _Block_copy(closeCallback);
  v12 = sub_17324();
  v14 = v13;
  v15 = sub_17324();
  v17 = v16;
  v18 = sub_17324();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  imageCopy = image;
  selfCopy = self;
  v25 = sub_15B9C(v12, v14, imageCopy, colors, v15, v17, v18, v20, sub_15D8C, v21, sub_16BCC, v22);

  return v25;
}

- (AXInstructionalCellContentViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return [(AXInstructionalCellContentViewBridge *)&v3 init];
}

@end