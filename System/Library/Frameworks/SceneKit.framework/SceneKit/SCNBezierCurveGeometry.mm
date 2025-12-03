@interface SCNBezierCurveGeometry
- (SCNBezierCurveGeometry)initWithCGPath:(__n128)path transform:(__n128)transform;
- (SCNBezierCurveGeometry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationGeometry;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNBezierCurveGeometry

- (SCNBezierCurveGeometry)initWithCGPath:(__n128)path transform:(__n128)transform
{
  v9 = C3DBezierCurveGeometryCreate();
  v16.receiver = self;
  v16.super_class = SCNBezierCurveGeometry;
  v10 = [(SCNGeometry *)&v16 initWithGeometryRef:v9];
  if (v10)
  {
    v10->_cgPath = MEMORY[0x21CF06E30](a7);
    *&v10[1].super.super.isa = a2;
    *(&v10[1].super + 1) = path;
    *&v10[1].super._elements = transform;
    *&v10[1].super._materials = a5;
    C3DBezierCurveGeometrySetPath(v9, v10->_cgPath);
  }

  CFRelease(v9);
  return v10;
}

- (void)dealloc
{
  cgPath = self->_cgPath;
  if (cgPath)
  {
    CFRelease(cgPath);
    self->_cgPath = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNBezierCurveGeometry;
  [(SCNGeometry *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithCGPath:self->_cgPath];
  [v4 _setupObjCModelFrom:self];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNBezierCurveGeometry;
  [(SCNGeometry *)&v9 encodeWithCoder:?];
  SCNEncodeCGPathForKey(coder, self->_cgPath, @"path");
  v5 = *(&self[1].super + 1);
  v6 = *&self[1].super._elements;
  v7 = *&self[1].super._materials;
  v8[0] = *&self[1].super.super.isa;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  SCNEncodeSCNMatrix4(coder, @"transform", v8);
}

- (SCNBezierCurveGeometry)initWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = SCNBezierCurveGeometry;
  v4 = [(SCNGeometry *)&v27 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = SCNDecodeCGPathForKey(coder, @"path");
    SCNDecodeSCNMatrix4(coder, @"transform", v26);
    v15 = v26[1];
    v17 = v26[0];
    v11 = v26[3];
    v13 = v26[2];
    if (v6)
    {
      v7 = CFRetain(v6);
    }

    else
    {
      v7 = 0;
    }

    v4->_cgPath = v7;
    *&v4[1].super.super.isa = v17;
    *(&v4[1].super + 1) = v15;
    *&v4[1].super._elements = v13;
    *&v4[1].super._materials = v11;
    v8 = [(SCNGeometry *)v4 geometryRef:v11];
    sceneRef = [(SCNGeometry *)v4 sceneRef];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__SCNBezierCurveGeometry_initWithCoder___block_invoke;
    v19[3] = &__block_descriptor_112_e8_v16__0d8l;
    v24 = v8;
    v25 = v6;
    v20 = v18;
    v21 = v16;
    v22 = v14;
    v23 = v12;
    [SCNTransaction postCommandWithContext:sceneRef object:v4 applyBlock:v19];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

__n128 *__40__SCNBezierCurveGeometry_initWithCoder___block_invoke(uint64_t a1)
{
  C3DBezierCurveGeometrySetPath(*(a1 + 96), *(a1 + 104));
  v2 = *(a1 + 96);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return C3DBezierCurveGeometrySetTransform(v2, v5, v6, v3, v4);
}

- (id)presentationGeometry
{
  v2 = [objc_alloc(objc_opt_class()) initPresentationGeometryWithGeometryRef:{-[SCNGeometry geometryRef](self, "geometryRef")}];

  return v2;
}

@end