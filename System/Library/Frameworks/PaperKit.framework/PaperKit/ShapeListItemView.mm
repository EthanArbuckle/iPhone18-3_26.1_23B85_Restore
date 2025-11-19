@interface ShapeListItemView
- (BOOL)isHighlighted;
- (_TtC8PaperKit17ShapeListItemView)initWithCoder:(id)a3;
- (_TtC8PaperKit17ShapeListItemView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)updateUI;
@end

@implementation ShapeListItemView

- (_TtC8PaperKit17ShapeListItemView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit17ShapeListItemView_cornerRadius) = 0x4018000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit17ShapeListItemView_symbolPointSize) = 0x403E000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateUI
{
  v2 = self;
  ShapeListItemView.updateUI()();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShapeListItemView();
  return [(ShapeListItemView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ShapeListItemView();
  v4 = v5.receiver;
  [(ShapeListItemView *)&v5 setHighlighted:v3];
  ShapeListItemView.updateUI()();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerRegion);
  v6 = self;
  [(ShapeListItemView *)v6 bounds];
  v7 = UIPointerRegion.init(rect:identifier:)();

  return v7;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for UIPointerEffect();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v24 - v15);
  v17 = objc_allocWithZone(MEMORY[0x1E69DD070]);
  v18 = a3;
  v19 = a4;
  v20 = self;
  *v16 = [v17 initWithView_];
  (*(v11 + 104))(v16, *MEMORY[0x1E69DBF70], v10);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerStyle);
  (*(v11 + 16))(v13, v16, v10);
  v21 = type metadata accessor for UIPointerShape();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = UIPointerStyle.init(effect:shape:)();
  (*(v11 + 8))(v16, v10);

  return v22;
}

- (_TtC8PaperKit17ShapeListItemView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end