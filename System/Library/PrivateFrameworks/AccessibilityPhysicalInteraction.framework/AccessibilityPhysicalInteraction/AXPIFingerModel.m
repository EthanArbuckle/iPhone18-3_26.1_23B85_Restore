@interface AXPIFingerModel
+ (id)fingerModelForLocation:(CGPoint)a3;
- (CGPoint)location;
- (id)description;
- (void)setForce:(double)a3;
- (void)setLocation:(CGPoint)a3;
- (void)setPressed:(BOOL)a3 sendDelegateCallback:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
- (void)setShape:(unint64_t)a3;
- (void)updateWithPropertiesFromFingerModel:(id)a3;
@end

@implementation AXPIFingerModel

+ (id)fingerModelForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(a1);
  [v5 setLocation:{x, y}];
  [v5 setShape:0];

  return v5;
}

- (void)setPressed:(BOOL)a3 sendDelegateCallback:(BOOL)a4
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    if (a4)
    {
      v5 = [(AXPIFingerModel *)self delegate];
      [v5 didUpdatePressStateForFingerModel:self];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    v5 = [(AXPIFingerModel *)self delegate];
    [v5 didUpdateSelectedStateForFingerModel:self];
  }
}

- (void)setLocation:(CGPoint)a3
{
  if (self->_location.x != a3.x || self->_location.y != a3.y)
  {
    self->_location = a3;
    v6 = [(AXPIFingerModel *)self delegate];
    [v6 didUpdateLocationForFingerModel:self];
  }
}

- (void)setForce:(double)a3
{
  if (self->_force != a3)
  {
    self->_force = a3;
    v5 = [(AXPIFingerModel *)self delegate];
    [v5 didUpdateForceForFingerModel:self];
  }
}

- (void)setShape:(unint64_t)a3
{
  if (self->_shape != a3)
  {
    self->_shape = a3;
    v5 = [(AXPIFingerModel *)self delegate];
    [v5 didUpdateShapeForFingerModel:self];
  }
}

- (void)updateWithPropertiesFromFingerModel:(id)a3
{
  v4 = a3;
  [v4 location];
  [(AXPIFingerModel *)self setLocation:?];
  [v4 force];
  [(AXPIFingerModel *)self setForce:?];
  -[AXPIFingerModel setPressed:](self, "setPressed:", [v4 isPressed]);
  -[AXPIFingerModel setSelected:](self, "setSelected:", [v4 isSelected]);
  v5 = [v4 shape];

  [(AXPIFingerModel *)self setShape:v5];
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
  v8 = [(AXPIFingerModel *)self isPressed];
  v9 = [(AXPIFingerModel *)self isSelected];
  [(AXPIFingerModel *)self force];
  v11 = [v3 stringByAppendingFormat:@" - location: {%f, %f}, pressed: %i, selected: %i, force: %f, shape: %i", v5, v7, v8, v9, v10, -[AXPIFingerModel shape](self, "shape")];

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