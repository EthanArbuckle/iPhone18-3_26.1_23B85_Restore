@interface AudiogramSymbolDetectorResult
+ (CGRect)boundingBoxForSymbols:(id)symbols;
- (CGRect)box;
- (CGRect)scaledBoxWithSize:(CGSize)size offset:(CGPoint)offset;
- (NSString)labelName;
- (_TtC18AudiogramIngestion29AudiogramSymbolDetectorResult)init;
@end

@implementation AudiogramSymbolDetectorResult

- (CGRect)box
{
  v2 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box);
  v3 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8);
  v4 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16);
  v5 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)labelName
{

  v2 = sub_2417E416C();

  return v2;
}

- (CGRect)scaledBoxWithSize:(CGSize)size offset:(CGPoint)offset
{
  height = size.height;
  width = size.width;
  v7 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box);
  v8 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 8);
  v9 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 16);
  v10 = *(self + OBJC_IVAR____TtC18AudiogramIngestion29AudiogramSymbolDetectorResult_box + 24);
  CGAffineTransformMakeTranslation(&v32, -0.5, -0.5);
  v33.origin.x = v7;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v10;
  v34 = CGRectApplyAffineTransform(v33, &v32);
  v32.a = 1.0;
  v32.b = 0.0;
  v32.c = 0.0;
  v32.d = 1.0;
  v32.tx = 0.0;
  v32.ty = 0.0;
  v35 = CGRectApplyAffineTransform(v34, &v32);
  x = v35.origin.x;
  y = v35.origin.y;
  v13 = v35.size.width;
  v14 = v35.size.height;
  CGAffineTransformMakeTranslation(&v32, 0.5, 0.5);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v13;
  v36.size.height = v14;
  v37 = CGRectApplyAffineTransform(v36, &v32);
  v15 = v37.origin.x;
  v16 = v37.origin.y;
  v17 = v37.size.width;
  v18 = v37.size.height;
  selfCopy = self;
  v38.origin.x = v15;
  v38.origin.y = v16;
  v38.size.width = v17;
  v38.size.height = v18;
  v20 = width * CGRectGetMinX(v38);
  v39.origin.x = v15;
  v39.origin.y = v16;
  v39.size.width = v17;
  v39.size.height = v18;
  v21 = height * CGRectGetMinY(v39);
  v40.origin.x = v15;
  v40.origin.y = v16;
  v40.size.width = v17;
  v40.size.height = v18;
  v22 = width * CGRectGetWidth(v40);
  v41.origin.x = v15;
  v41.origin.y = v16;
  v41.size.width = v17;
  v41.size.height = v18;
  v42.size.height = height * CGRectGetHeight(v41);
  v42.origin.x = v20;
  v42.origin.y = v21;
  v42.size.width = v22;
  v43 = CGRectOffset(v42, offset.x, offset.y);
  v23 = v43.origin.x;
  v24 = v43.origin.y;
  v25 = v43.size.width;
  v26 = v43.size.height;

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

+ (CGRect)boundingBoxForSymbols:(id)symbols
{
  type metadata accessor for AudiogramSymbolDetectorResult();
  v3 = sub_2417E424C();
  _s18AudiogramIngestion0A20SymbolDetectorResultC21boundingBoxForSymbolsySo6CGRectVSayACGFZ_0(v3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (_TtC18AudiogramIngestion29AudiogramSymbolDetectorResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end