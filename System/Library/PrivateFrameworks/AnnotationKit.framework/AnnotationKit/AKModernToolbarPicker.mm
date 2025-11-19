@interface AKModernToolbarPicker
- (AKController)controller;
- (AKModernToolbarPicker)initWithFrame:(CGRect)a3 controller:(id)a4;
- (void)setCurrentTag:(int64_t)a3;
@end

@implementation AKModernToolbarPicker

- (AKModernToolbarPicker)initWithFrame:(CGRect)a3 controller:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v36[3] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v35.receiver = self;
  v35.super_class = AKModernToolbarPicker;
  v10 = [(AKModernToolbarPicker *)&v35 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v10->_currentTag = 763000;
    [(AKModernToolbarPicker *)v10 setController:v9];
    v12 = objc_alloc(MEMORY[0x277D75A68]);
    [(AKModernToolbarPicker *)v11 bounds];
    v13 = [v12 initWithFrame:?];
    [(AKModernToolbarPicker *)v11 setStackview:v13];

    v14 = [(AKModernToolbarPicker *)v11 stackview];
    [v14 setDistribution:3];

    v15 = [(AKModernToolbarPicker *)v11 stackview];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(AKModernToolbarPicker *)v11 stackview];
    [v16 setSpacing:9.0];

    v17 = [(AKModernToolbarPicker *)v11 stackview];
    [(AKModernToolbarPicker *)v11 addSubview:v17];

    v18 = [(AKModernToolbarPicker *)v11 stackview];
    v19 = [v18 leadingAnchor];
    v20 = [(AKModernToolbarPicker *)v11 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

    LODWORD(v22) = 1148829696;
    [v21 setPriority:v22];
    v23 = [(AKModernToolbarPicker *)v11 stackview];
    v24 = [v23 trailingAnchor];
    v25 = [(AKModernToolbarPicker *)v11 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];

    LODWORD(v27) = 1148829696;
    [v26 setPriority:v27];
    v28 = [(AKModernToolbarPicker *)v11 stackview];
    v29 = [v28 centerYAnchor];
    v30 = [(AKModernToolbarPicker *)v11 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    v32 = MEMORY[0x277CCAAD0];
    v36[0] = v21;
    v36[1] = v26;
    v36[2] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    [v32 activateConstraints:v33];
  }

  return v11;
}

- (void)setCurrentTag:(int64_t)a3
{
  if (self->_currentTag != a3)
  {
    self->_currentTag = a3;
    [(AKModernToolbarPicker *)self sendActionsForControlEvents:4096];
  }
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end