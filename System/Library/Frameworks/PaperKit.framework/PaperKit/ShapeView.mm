@interface ShapeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGRect)textBoxViewActiveTextBoxFrame:(id)a3;
- (void)textBoxViewUpdateModelFrame:(id)a3 modelFrame:(CGRect)a4;
- (void)textBoxViewUpdateViewFrame:(id)a3 viewFrame:(CGRect)a4;
@end

@implementation ShapeView

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = ShapeView.becomeFirstResponder()();

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = ShapeView.resignFirstResponder()();

  return v3;
}

- (CGRect)textBoxViewActiveTextBoxFrame:(id)a3
{
  [(ShapeView *)self frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)textBoxViewUpdateViewFrame:(id)a3 viewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *self) + 0x3F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, self + v13, v9);
  v14 = self;
  LOBYTE(v13) = specialized Capsule<>.isTextBox.getter();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    [(ShapeView *)v14 setFrame:x, y, width, height];
  }
}

- (void)textBoxViewUpdateModelFrame:(id)a3 modelFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *self) + 0x3F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, self + v13, v9);
  v14 = self;
  LOBYTE(v13) = specialized Capsule<>.isTextBox.getter();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    specialized CanvasElementView.modelFrame.setter(x, y, width, height);
  }
}

@end