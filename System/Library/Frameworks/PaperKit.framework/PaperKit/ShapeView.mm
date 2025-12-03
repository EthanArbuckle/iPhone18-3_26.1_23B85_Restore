@interface ShapeView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGRect)textBoxViewActiveTextBoxFrame:(id)frame;
- (void)textBoxViewUpdateModelFrame:(id)frame modelFrame:(CGRect)modelFrame;
- (void)textBoxViewUpdateViewFrame:(id)frame viewFrame:(CGRect)viewFrame;
@end

@implementation ShapeView

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = ShapeView.becomeFirstResponder()();

  return v3;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = ShapeView.resignFirstResponder()();

  return v3;
}

- (CGRect)textBoxViewActiveTextBoxFrame:(id)frame
{
  [(ShapeView *)self frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)textBoxViewUpdateViewFrame:(id)frame viewFrame:(CGRect)viewFrame
{
  height = viewFrame.size.height;
  width = viewFrame.size.width;
  y = viewFrame.origin.y;
  x = viewFrame.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *self) + 0x3F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, self + v13, v9);
  selfCopy = self;
  LOBYTE(v13) = specialized Capsule<>.isTextBox.getter();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    [(ShapeView *)selfCopy setFrame:x, y, width, height];
  }
}

- (void)textBoxViewUpdateModelFrame:(id)frame modelFrame:(CGRect)modelFrame
{
  height = modelFrame.size.height;
  width = modelFrame.size.width;
  y = modelFrame.origin.y;
  x = modelFrame.origin.x;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((*MEMORY[0x1E69E7D40] & *self) + 0x3F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, self + v13, v9);
  selfCopy = self;
  LOBYTE(v13) = specialized Capsule<>.isTextBox.getter();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    specialized CanvasElementView.modelFrame.setter(x, y, width, height);
  }
}

@end