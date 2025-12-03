@interface NTKParmesanTimeLayout
+ (NTKParmesanTimeLayout)default;
+ (void)setDefault:(id)default;
- (BOOL)isEqual:(id)equal;
- (CGRect)normalizedTimeRectWithoutComplications;
- (NSString)localizedAlignmentDisplayString;
- (NSString)localizedScaleDisplayString;
- (NTKParmesanTimeLayout)init;
- (NTKParmesanTimeLayout)initWithAlignment:(int64_t)alignment scale:(int64_t)scale;
- (id)copyWithZone:(void *)zone;
- (int64_t)_complicationAlignment;
- (int64_t)hash;
- (int64_t)textAlignment;
@end

@implementation NTKParmesanTimeLayout

- (int64_t)_complicationAlignment
{
  v5 = objc_msgSend_scale(self, a2, v2, v3);
  if (v5 == 3)
  {
    if (objc_msgSend_alignment(self, v6, v7, v8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return v5 != 2 && v5 != 1;
  }
}

+ (NTKParmesanTimeLayout)default
{
  if (qword_27E1DFD78 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1EB458;

  return v3;
}

+ (void)setDefault:(id)default
{
  v3 = qword_27E1DFD78;
  defaultCopy = default;
  if (v3 != -1)
  {
    v6 = defaultCopy;
    swift_once();
    defaultCopy = v6;
  }

  v5 = qword_27E1EB458;
  qword_27E1EB458 = defaultCopy;
}

- (NTKParmesanTimeLayout)initWithAlignment:(int64_t)alignment scale:(int64_t)scale
{
  *(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_alignment) = alignment;
  *(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_scale) = scale;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanTimeLayout();
  return [(NTKParmesanTimeLayout *)&v5 init];
}

- (int64_t)textAlignment
{
  selfCopy = self;
  v3 = sub_23BF6C3F4();

  return v3;
}

- (NTKParmesanTimeLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BF6CB64(v8);

  sub_23BF6D5A0(v8);
  return v6;
}

- (int64_t)hash
{
  sub_23BFFAE00();
  MEMORY[0x23EEC3A60](*(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_alignment));
  MEMORY[0x23EEC3A60](*(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_scale));
  return sub_23BFFADE0();
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  v4 = *(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  v5 = type metadata accessor for ParmesanTimeLayout();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = v3;
  *&v6[OBJC_IVAR___NTKParmesanTimeLayout_scale] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return [(NTKParmesanTimeLayout *)&v8 init];
}

- (NSString)localizedScaleDisplayString
{
  sub_23BF865B8(*(&self->super.isa + OBJC_IVAR___NTKParmesanTimeLayout_scale));
  v2 = sub_23BFFA2C0();

  return v2;
}

- (NSString)localizedAlignmentDisplayString
{
  selfCopy = self;
  sub_23BF86794();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (CGRect)normalizedTimeRectWithoutComplications
{
  selfCopy = self;
  sub_23BFE57F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end