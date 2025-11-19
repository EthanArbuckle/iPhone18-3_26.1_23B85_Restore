@interface PKDrawingPaletteInputAssistantContainerView
- (PKDrawingPaletteInputAssistantContainerView)initWithFrame:(CGRect)a3;
@end

@implementation PKDrawingPaletteInputAssistantContainerView

- (PKDrawingPaletteInputAssistantContainerView)initWithFrame:(CGRect)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKDrawingPaletteInputAssistantContainerView;
  v3 = [(PKDrawingPaletteInputAssistantContainerView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PKPaletteButton UCBButton];
    UCBbutton = v3->_UCBbutton;
    v3->_UCBbutton = v4;

    [(PKPaletteButton *)v3->_UCBbutton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKDrawingPaletteInputAssistantContainerView *)v3 addSubview:v3->_UCBbutton];
    v16 = MEMORY[0x1E696ACD8];
    v20 = [(PKPaletteButton *)v3->_UCBbutton topAnchor];
    v19 = [(PKDrawingPaletteInputAssistantContainerView *)v3 topAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v17 = [(PKPaletteButton *)v3->_UCBbutton bottomAnchor];
    v6 = [(PKDrawingPaletteInputAssistantContainerView *)v3 bottomAnchor];
    v7 = [v17 constraintEqualToAnchor:v6];
    v22[1] = v7;
    v8 = [(PKPaletteButton *)v3->_UCBbutton leadingAnchor];
    v9 = [(PKDrawingPaletteInputAssistantContainerView *)v3 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v22[2] = v10;
    v11 = [(PKPaletteButton *)v3->_UCBbutton trailingAnchor];
    v12 = [(PKDrawingPaletteInputAssistantContainerView *)v3 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v22[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v16 activateConstraints:v14];
  }

  return v3;
}

@end