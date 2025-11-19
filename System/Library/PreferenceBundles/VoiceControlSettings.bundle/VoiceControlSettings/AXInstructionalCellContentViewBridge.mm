@interface AXInstructionalCellContentViewBridge
- (AXInstructionalCellContentViewBridge)init;
- (id)makeContentCellViewWithTitle:(id)a3 image:(id)a4 imageIgnoresInvertColors:(BOOL)a5 description:(id)a6 linkTitle:(id)a7 linkCallback:(id)a8 closeCallback:(id)a9;
@end

@implementation AXInstructionalCellContentViewBridge

- (id)makeContentCellViewWithTitle:(id)a3 image:(id)a4 imageIgnoresInvertColors:(BOOL)a5 description:(id)a6 linkTitle:(id)a7 linkCallback:(id)a8 closeCallback:(id)a9
{
  v10 = _Block_copy(a8);
  v11 = _Block_copy(a9);
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
  v23 = a4;
  v24 = self;
  v25 = sub_15B9C(v12, v14, v23, a5, v15, v17, v18, v20, sub_15D8C, v21, sub_16BCC, v22);

  return v25;
}

- (AXInstructionalCellContentViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXInstructionalCellContentViewBridge();
  return [(AXInstructionalCellContentViewBridge *)&v3 init];
}

@end