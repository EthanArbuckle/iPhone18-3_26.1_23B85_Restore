@interface DynamicTypeTextField
- (UIFont)font;
- (_TtC11AppStoreKit20DynamicTypeTextField)initWithCoder:(id)a3;
- (_TtC11AppStoreKit20DynamicTypeTextField)initWithFrame:(CGRect)a3;
- (int64_t)textAlignment;
- (void)setFont:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeTextField

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicTypeTextField();
  v2 = [(DynamicTypeTextField *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for DynamicTypeTextField();
  v12.receiver = self;
  v12.super_class = v8;
  v9 = a3;
  v10 = self;
  [(DynamicTypeTextField *)&v12 setFont:v9];
  v11 = sub_1E1AF12AC();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_1E157C660(v7);
}

- (int64_t)textAlignment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DynamicTypeTextField();
  return [(DynamicTypeTextField *)&v3 textAlignment];
}

- (void)setTextAlignment:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = 0;
  v9 = v6;
  v7 = self;
  sub_1E157CF90(&v9);
  v8.receiver = v7;
  v8.super_class = type metadata accessor for DynamicTypeTextField();
  [(DynamicTypeTextField *)&v8 setTextAlignment:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E157D318(a3);
}

- (_TtC11AppStoreKit20DynamicTypeTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  v9 = sub_1E1AF12AC();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DynamicTypeTextField();
  return [(DynamicTypeTextField *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC11AppStoreKit20DynamicTypeTextField)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  v6 = sub_1E1AF12AC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DynamicTypeTextField();
  v7 = a3;
  v8 = [(DynamicTypeTextField *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end