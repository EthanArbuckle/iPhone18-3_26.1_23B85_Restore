@interface AXPIFingerModel
+ (id)fingerModelForLocation:(CGPoint)location;
- (CGPoint)location;
- (id)description;
- (void)setForce:(double)force;
- (void)setLocation:(CGPoint)location;
- (void)setPressed:(BOOL)pressed sendDelegateCallback:(BOOL)callback;
- (void)setSelected:(BOOL)selected;
- (void)setShape:(unint64_t)shape;
- (void)updateWithPropertiesFromFingerModel:(id)model;
@end

@implementation AXPIFingerModel

+ (id)fingerModelForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v5 = objc_alloc_init(self);
  [v5 setLocation:{x, y}];
  [v5 setShape:0];

  return v5;
}

- (void)setPressed:(BOOL)pressed sendDelegateCallback:(BOOL)callback
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    if (callback)
    {
      delegate = [(AXPIFingerModel *)self delegate];
      [delegate didUpdatePressStateForFingerModel:self];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    delegate = [(AXPIFingerModel *)self delegate];
    [delegate didUpdateSelectedStateForFingerModel:self];
  }
}

- (void)setLocation:(CGPoint)location
{
  if (self->_location.x != location.x || self->_location.y != location.y)
  {
    self->_location = location;
    delegate = [(AXPIFingerModel *)self delegate];
    [delegate didUpdateLocationForFingerModel:self];
  }
}

- (void)setForce:(double)force
{
  if (self->_force != force)
  {
    self->_force = force;
    delegate = [(AXPIFingerModel *)self delegate];
    [delegate didUpdateForceForFingerModel:self];
  }
}

- (void)setShape:(unint64_t)shape
{
  if (self->_shape != shape)
  {
    self->_shape = shape;
    delegate = [(AXPIFingerModel *)self delegate];
    [delegate didUpdateShapeForFingerModel:self];
  }
}

- (void)updateWithPropertiesFromFingerModel:(id)model
{
  modelCopy = model;
  [modelCopy location];
  [(AXPIFingerModel *)self setLocation:?];
  [modelCopy force];
  [(AXPIFingerModel *)self setForce:?];
  -[AXPIFingerModel setPressed:](self, "setPressed:", [modelCopy isPressed]);
  -[AXPIFingerModel setSelected:](self, "setSelected:", [modelCopy isSelected]);
  shape = [modelCopy shape];

  [(AXPIFingerModel *)self setShape:shape];
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = AXPIFingerModel;
  v3 = [(AXPIFingerModel *)&v13 description];
  [(AXPIFingerModel *)self location];
  v5 = v4;
  [(AXPIFingerModel *)self location];
  v7 = v6;
  isPressed = [(AXPIFingerModel *)self isPressed];
  isSelected = [(AXPIFingerModel *)self isSelected];
  [(AXPIFingerModel *)self force];
  v11 = [v3 stringByAppendingFormat:@" - location: {%f, %f}, pressed: %i, selected: %i, force: %f, shape: %i", v5, v7, isPressed, isSelected, v10, -[AXPIFingerModel shape](self, "shape")];

  return v11;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end