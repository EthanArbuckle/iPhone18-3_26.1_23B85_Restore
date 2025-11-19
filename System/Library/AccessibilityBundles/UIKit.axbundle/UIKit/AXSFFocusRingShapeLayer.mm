@interface AXSFFocusRingShapeLayer
+ (id)focusLayerForUserInterfaceStyle:(int64_t)a3;
+ (id)layer;
- (uint64_t)innerBorder;
- (uint64_t)outerBorder;
- (void)setInnerBorder:(uint64_t)a1;
- (void)setOuterBorder:(uint64_t)a1;
- (void)setPath:(CGPath *)a3;
@end

@implementation AXSFFocusRingShapeLayer

+ (id)layer
{
  v8[2] = a1;
  v8[1] = a2;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___AXSFFocusRingShapeLayer;
  v8[0] = objc_msgSendSuper2(&v7, sel_layer);
  v5 = [MEMORY[0x29EDC7A00] clearColor];
  v2 = v5;
  v3 = [v5 CGColor];
  [v8[0] setFillColor:v3];
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v6;
}

+ (id)focusLayerForUserInterfaceStyle:(int64_t)a3
{
  v31[3] = a1;
  v31[2] = a2;
  v31[1] = a3;
  v31[0] = +[AXSFFocusRingShapeLayer layer];
  v8 = [MEMORY[0x29EDBBAC0] layer];
  [(AXSFFocusRingShapeLayer *)v31[0] setInnerBorder:v8];
  MEMORY[0x29EDC9740](v8);
  v11 = [MEMORY[0x29EDC7A00] blackColor];
  v3 = v11;
  v9 = [v11 CGColor];
  v10 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v10 setStrokeColor:v9];
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  v14 = [MEMORY[0x29EDC7A00] clearColor];
  v4 = v14;
  v12 = [v14 CGColor];
  v13 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v13 setFillColor:v12];
  MEMORY[0x29EDC9740](v13);
  MEMORY[0x29EDC9740](v14);
  v15 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v15 setLineWidth:3.0];
  MEMORY[0x29EDC9740](v15);
  v16 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v16 setCornerRadius:?];
  MEMORY[0x29EDC9740](v16);
  v17 = v31[0];
  v18 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v17 addSublayer:?];
  MEMORY[0x29EDC9740](v18);
  v19 = [MEMORY[0x29EDBBAC0] layer];
  [(AXSFFocusRingShapeLayer *)v31[0] setOuterBorder:v19];
  MEMORY[0x29EDC9740](v19);
  v22 = [MEMORY[0x29EDC7A00] whiteColor];
  v5 = v22;
  v20 = [v22 CGColor];
  v21 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v21 setStrokeColor:v20];
  MEMORY[0x29EDC9740](v21);
  MEMORY[0x29EDC9740](v22);
  v25 = [MEMORY[0x29EDC7A00] clearColor];
  v6 = v25;
  v23 = [v25 CGColor];
  v24 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v24 setFillColor:v23];
  MEMORY[0x29EDC9740](v24);
  MEMORY[0x29EDC9740](v25);
  v26 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v26 setLineWidth:1.0];
  MEMORY[0x29EDC9740](v26);
  v27 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v27 setCornerRadius:5.0];
  MEMORY[0x29EDC9740](v27);
  v28 = v31[0];
  v29 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v28 addSublayer:?];
  MEMORY[0x29EDC9740](v29);
  v30 = MEMORY[0x29EDC9748](v31[0]);
  objc_storeStrong(v31, 0);

  return v30;
}

- (void)setInnerBorder:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (uint64_t)innerBorder
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (void)setOuterBorder:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (uint64_t)outerBorder
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

- (void)setPath:(CGPath *)a3
{
  v35 = self;
  v34 = a2;
  v33 = a3;
  v32.receiver = self;
  v32.super_class = AXSFFocusRingShapeLayer;
  [(AXSFFocusRingShapeLayer *)&v32 setPath:a3];
  v8 = v33;
  v9 = [(AXSFFocusRingShapeLayer *)v35 outerBorder];
  [v9 setPath:v8];
  MEMORY[0x29EDC9740](v9);
  v31 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v33];
  [v31 bounds];
  v30 = v36;
  v29 = CGRectInset(v36, 1.0, 1.0);
  Width = CGRectGetWidth(v29);
  v28 = Width / CGRectGetWidth(v30);
  Height = CGRectGetHeight(v29);
  v27 = Height / CGRectGetHeight(v30);
  memset(&__b, 0, sizeof(__b));
  __src = MEMORY[0x29EDB90A0];
  memcpy(&__dst, MEMORY[0x29EDB90A0], sizeof(__dst));
  CGAffineTransformScale(&__b, &__dst, v28, v27);
  memcpy(v24, &__b, sizeof(v24));
  [v31 applyTransform:v24];
  [v31 bounds];
  *&v21 = v3;
  *(&v21 + 1) = v4;
  v22 = v5;
  v23 = v6;
  v20 = v21;
  origin = v30.origin;
  memset(&v18, 0, sizeof(v18));
  memcpy(&v17, __src, sizeof(v17));
  CGAffineTransformTranslate(&v18, &v17, v30.origin.x - *&v21 + 1.0, v30.origin.y - *(&v21 + 1) + 1.0);
  memcpy(v16, &v18, sizeof(v16));
  [v31 applyTransform:v16];
  v13 = v31;
  v7 = v31;
  v14 = [v13 CGPath];
  v15 = [(AXSFFocusRingShapeLayer *)v35 innerBorder];
  [v15 setPath:v14];
  MEMORY[0x29EDC9740](v15);
  objc_storeStrong(&v31, 0);
}

@end