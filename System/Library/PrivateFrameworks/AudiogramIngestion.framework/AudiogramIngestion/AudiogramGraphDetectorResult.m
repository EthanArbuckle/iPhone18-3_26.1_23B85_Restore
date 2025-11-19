@interface AudiogramGraphDetectorResult
+ (_TtC18AudiogramIngestion28AudiogramGraphDetectorResult)defaultResult;
- (CGRect)box;
- (CGRect)scaledBoxWithSize:(CGSize)a3;
- (_TtC18AudiogramIngestion28AudiogramGraphDetectorResult)init;
- (void)setBox:(CGRect)a3;
@end

@implementation AudiogramGraphDetectorResult

- (CGRect)box
{
  v2 = (self + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setBox:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (CGRect)scaledBoxWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = (self + OBJC_IVAR____TtC18AudiogramIngestion28AudiogramGraphDetectorResult_box);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  CGAffineTransformMakeTranslation(&v28, -0.5, -0.5);
  v29.origin.x = v7;
  v29.origin.y = v8;
  v29.size.width = v9;
  v29.size.height = v10;
  v30 = CGRectApplyAffineTransform(v29, &v28);
  *&v28.a = 0x3FF0000000000000uLL;
  v28.c = 0.0;
  v28.d = 1.0;
  *&v28.tx = 0uLL;
  v31 = CGRectApplyAffineTransform(v30, &v28);
  x = v31.origin.x;
  y = v31.origin.y;
  v13 = v31.size.width;
  v14 = v31.size.height;
  CGAffineTransformMakeTranslation(&v28, 0.5, 0.5);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = v13;
  v32.size.height = v14;
  v33 = CGRectApplyAffineTransform(v32, &v28);
  v15 = v33.origin.x;
  v16 = v33.origin.y;
  v17 = v33.size.width;
  v18 = v33.size.height;
  v19 = self;
  v34.origin.x = v15;
  v34.origin.y = v16;
  v34.size.width = v17;
  v34.size.height = v18;
  v20 = width * CGRectGetMinX(v34);
  v35.origin.x = v15;
  v35.origin.y = v16;
  v35.size.width = v17;
  v35.size.height = v18;
  v21 = height * CGRectGetMinY(v35);
  v36.origin.x = v15;
  v36.origin.y = v16;
  v36.size.width = v17;
  v36.size.height = v18;
  v22 = width * CGRectGetWidth(v36);
  v37.origin.x = v15;
  v37.origin.y = v16;
  v37.size.width = v17;
  v37.size.height = v18;
  v23 = CGRectGetHeight(v37);

  v24 = height * v23;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  result.size.height = v24;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (_TtC18AudiogramIngestion28AudiogramGraphDetectorResult)defaultResult
{
  if (qword_27E54B388 != -1)
  {
    swift_once();
  }

  v3 = qword_27E54B5E0;

  return v3;
}

- (_TtC18AudiogramIngestion28AudiogramGraphDetectorResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end