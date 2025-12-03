@interface AKModernToolbarPicker
- (AKController)controller;
- (AKModernToolbarPicker)initWithFrame:(CGRect)frame controller:(id)controller;
- (void)setCurrentTag:(int64_t)tag;
@end

@implementation AKModernToolbarPicker

- (AKModernToolbarPicker)initWithFrame:(CGRect)frame controller:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v36[3] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v35.receiver = self;
  v35.super_class = AKModernToolbarPicker;
  height = [(AKModernToolbarPicker *)&v35 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_currentTag = 763000;
    [(AKModernToolbarPicker *)height setController:controllerCopy];
    v12 = objc_alloc(MEMORY[0x277D75A68]);
    [(AKModernToolbarPicker *)v11 bounds];
    v13 = [v12 initWithFrame:?];
    [(AKModernToolbarPicker *)v11 setStackview:v13];

    stackview = [(AKModernToolbarPicker *)v11 stackview];
    [stackview setDistribution:3];

    stackview2 = [(AKModernToolbarPicker *)v11 stackview];
    [stackview2 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackview3 = [(AKModernToolbarPicker *)v11 stackview];
    [stackview3 setSpacing:9.0];

    stackview4 = [(AKModernToolbarPicker *)v11 stackview];
    [(AKModernToolbarPicker *)v11 addSubview:stackview4];

    stackview5 = [(AKModernToolbarPicker *)v11 stackview];
    leadingAnchor = [stackview5 leadingAnchor];
    leadingAnchor2 = [(AKModernToolbarPicker *)v11 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

    LODWORD(v22) = 1148829696;
    [v21 setPriority:v22];
    stackview6 = [(AKModernToolbarPicker *)v11 stackview];
    trailingAnchor = [stackview6 trailingAnchor];
    trailingAnchor2 = [(AKModernToolbarPicker *)v11 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];

    LODWORD(v27) = 1148829696;
    [v26 setPriority:v27];
    stackview7 = [(AKModernToolbarPicker *)v11 stackview];
    centerYAnchor = [stackview7 centerYAnchor];
    centerYAnchor2 = [(AKModernToolbarPicker *)v11 centerYAnchor];
    v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v32 = MEMORY[0x277CCAAD0];
    v36[0] = v21;
    v36[1] = v26;
    v36[2] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    [v32 activateConstraints:v33];
  }

  return v11;
}

- (void)setCurrentTag:(int64_t)tag
{
  if (self->_currentTag != tag)
  {
    self->_currentTag = tag;
    [(AKModernToolbarPicker *)self sendActionsForControlEvents:4096];
  }
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end