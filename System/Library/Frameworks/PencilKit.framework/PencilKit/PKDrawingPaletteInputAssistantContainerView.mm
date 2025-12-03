@interface PKDrawingPaletteInputAssistantContainerView
- (PKDrawingPaletteInputAssistantContainerView)initWithFrame:(CGRect)frame;
@end

@implementation PKDrawingPaletteInputAssistantContainerView

- (PKDrawingPaletteInputAssistantContainerView)initWithFrame:(CGRect)frame
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKDrawingPaletteInputAssistantContainerView;
  v3 = [(PKDrawingPaletteInputAssistantContainerView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PKPaletteButton UCBButton];
    UCBbutton = v3->_UCBbutton;
    v3->_UCBbutton = v4;

    [(PKPaletteButton *)v3->_UCBbutton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKDrawingPaletteInputAssistantContainerView *)v3 addSubview:v3->_UCBbutton];
    v16 = MEMORY[0x1E696ACD8];
    topAnchor = [(PKPaletteButton *)v3->_UCBbutton topAnchor];
    topAnchor2 = [(PKDrawingPaletteInputAssistantContainerView *)v3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[0] = v18;
    bottomAnchor = [(PKPaletteButton *)v3->_UCBbutton bottomAnchor];
    bottomAnchor2 = [(PKDrawingPaletteInputAssistantContainerView *)v3 bottomAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[1] = v7;
    leadingAnchor = [(PKPaletteButton *)v3->_UCBbutton leadingAnchor];
    leadingAnchor2 = [(PKDrawingPaletteInputAssistantContainerView *)v3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[2] = v10;
    trailingAnchor = [(PKPaletteButton *)v3->_UCBbutton trailingAnchor];
    trailingAnchor2 = [(PKDrawingPaletteInputAssistantContainerView *)v3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v16 activateConstraints:v14];
  }

  return v3;
}

@end