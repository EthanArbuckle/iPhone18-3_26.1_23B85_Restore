@interface AVHapticPlayerParameterCurve
- (AVHapticPlayerParameterCurve)initWithCoder:(id)coder;
- (AVHapticPlayerParameterCurve)initWithType:(unint64_t)type relativeTime:(double)time shape:(unint64_t)shape controlPoints:(id)points;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVHapticPlayerParameterCurve

- (AVHapticPlayerParameterCurve)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeInt32ForKey:@"paramCurveType"];
  [coderCopy decodeDoubleForKey:@"paramCurveTime"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClasses:v7 forKey:@"controlPoints"];
  v12 = [(AVHapticPlayerParameterCurve *)self initWithType:v8 relativeTime:1 shape:v11 controlPoints:v10];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"paramCurveType"];
  [coderCopy encodeDouble:@"paramCurveTime" forKey:self->_time];
  [coderCopy encodeObject:self->_controlPoints forKey:@"controlPoints"];
}

- (AVHapticPlayerParameterCurve)initWithType:(unint64_t)type relativeTime:(double)time shape:(unint64_t)shape controlPoints:(id)points
{
  pointsCopy = points;
  v16.receiver = self;
  v16.super_class = AVHapticPlayerParameterCurve;
  v11 = [(AVHapticPlayerParameterCurve *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v11->_time = time;
    v11->_shape = shape;
    v13 = [pointsCopy sortedArrayUsingComparator:&__block_literal_global_11107];
    controlPoints = v12->_controlPoints;
    v12->_controlPoints = v13;
  }

  return v12;
}

uint64_t __78__AVHapticPlayerParameterCurve_initWithType_relativeTime_shape_controlPoints___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 time];
  v7 = v6;
  [v5 time];
  if (v7 >= v8)
  {
    [v5 time];
    v11 = v10;
    [v4 time];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

@end