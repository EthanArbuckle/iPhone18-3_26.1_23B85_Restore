@interface AVHapticPlayerParameterCurve
- (AVHapticPlayerParameterCurve)initWithCoder:(id)a3;
- (AVHapticPlayerParameterCurve)initWithType:(unint64_t)a3 relativeTime:(double)a4 shape:(unint64_t)a5 controlPoints:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVHapticPlayerParameterCurve

- (AVHapticPlayerParameterCurve)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeInt32ForKey:@"paramCurveType"];
  [v4 decodeDoubleForKey:@"paramCurveTime"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClasses:v7 forKey:@"controlPoints"];
  v12 = [(AVHapticPlayerParameterCurve *)self initWithType:v8 relativeTime:1 shape:v11 controlPoints:v10];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_type forKey:@"paramCurveType"];
  [v4 encodeDouble:@"paramCurveTime" forKey:self->_time];
  [v4 encodeObject:self->_controlPoints forKey:@"controlPoints"];
}

- (AVHapticPlayerParameterCurve)initWithType:(unint64_t)a3 relativeTime:(double)a4 shape:(unint64_t)a5 controlPoints:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = AVHapticPlayerParameterCurve;
  v11 = [(AVHapticPlayerParameterCurve *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v11->_time = a4;
    v11->_shape = a5;
    v13 = [v10 sortedArrayUsingComparator:&__block_literal_global_11107];
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