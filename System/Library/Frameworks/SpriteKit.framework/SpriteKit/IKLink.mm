@interface IKLink
- (IKLink)initWithNode:(id)node;
- (double)normalizeAngle:(double)result;
- (void)rotateByAngle:(float)angle;
@end

@implementation IKLink

- (IKLink)initWithNode:(id)node
{
  nodeCopy = node;
  v11.receiver = self;
  v11.super_class = IKLink;
  v6 = [(IKLink *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
    v7->_position = 0;
    [nodeCopy zRotation];
    *&v8 = v8;
    v7->_angleInitial = *&v8;
    [nodeCopy zRotation];
    *&v9 = v9;
    v7->_angle = *&v9;
    v7->_length = 0.0;
  }

  return v7;
}

- (double)normalizeAngle:(double)result
{
  if (result < 0.0 || result > 6.28318531)
  {
    v3 = result / 6.28318531;
    return result - vcvtms_s32_f32(v3) * 6.28318531;
  }

  return result;
}

- (void)rotateByAngle:(float)angle
{
  reachConstraints = [(SKNode *)self->_node reachConstraints];

  if (reachConstraints)
  {
    reachConstraints2 = [(SKNode *)self->_node reachConstraints];
    [reachConstraints2 lowerAngleLimit];
    v8 = v7;
    if (v8 < 0.0 || v8 > 6.2832)
    {
      v8 = v8 - (floorf(v8 / 6.2832) * 6.2832);
    }

    reachConstraints3 = [(SKNode *)self->_node reachConstraints];
    [reachConstraints3 upperAngleLimit];
    *&v10 = v10;
    v11 = *&v10 - v8;
    if ((*&v10 - v8) < 0.0 || v11 > 6.2832)
    {
      v11 = v11 - (floorf(v11 / 6.2832) * 6.2832);
    }
  }

  else
  {
    v8 = 0.0;
    v11 = 6.2832;
  }

  angleInitial = self->_angleInitial;
  v13 = angleInitial - v8;
  if ((angleInitial - v8) < 0.0 || v13 > 6.2832)
  {
    v13 = v13 - (floorf(v13 / 6.2832) * 6.2832);
  }

  v14 = (self->_angle + angle) - v8;
  if (v14 < 0.0 || v14 > 6.2832)
  {
    v14 = v14 - (floorf(v14 / 6.2832) * 6.2832);
  }

  v15 = 0.0;
  if ((v14 - v11) < (6.2832 - v14))
  {
    v15 = v11;
  }

  if (v14 > v11)
  {
    v14 = v15;
  }

  v16 = v14 - v13;
  if (v11 >= 6.2832)
  {
    if (v16 <= 3.14159265)
    {
      if (v16 <= -3.14159265)
      {
        v16 = v16 + 6.2832;
      }
    }

    else
    {
      v16 = v16 + -6.2832;
    }
  }

  self->_angle = angleInitial + v16;
}

@end