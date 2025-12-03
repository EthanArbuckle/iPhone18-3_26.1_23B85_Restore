@interface PKInkFunction
- (PKInkFunction)initWithInputPoints:(id)points outputPoints:(id)outputPoints functionType:(unint64_t)type;
- (PKInkFunction)initWithProperty:(unint64_t)property input:(unint64_t)input math:(unint64_t)math inputMask:(unint64_t)mask deviceMask:(unint64_t)deviceMask inputPoints:(id)points maxInputPoints:(id)inputPoints minOutputPoints:(id)self0 maxOutputPoints:(id)self1 outputPoints:(id)self2 controlPoints:(id)self3 functionType:(unint64_t)self4;
- (double)solveForInput:(double)input;
- (id)description;
- (void)setControlPoints:(id)points;
@end

@implementation PKInkFunction

- (PKInkFunction)initWithProperty:(unint64_t)property input:(unint64_t)input math:(unint64_t)math inputMask:(unint64_t)mask deviceMask:(unint64_t)deviceMask inputPoints:(id)points maxInputPoints:(id)inputPoints minOutputPoints:(id)self0 maxOutputPoints:(id)self1 outputPoints:(id)self2 controlPoints:(id)self3 functionType:(unint64_t)self4
{
  pointsCopy = points;
  inputPointsCopy = inputPoints;
  outputPointsCopy = outputPoints;
  maxOutputPointsCopy = maxOutputPoints;
  v27 = a12;
  controlPointsCopy = controlPoints;
  v30.receiver = self;
  v30.super_class = PKInkFunction;
  v19 = [(PKInkFunction *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_inkProperty = property;
    v19->_inkInput = input;
    v19->_inputMask = mask;
    v19->_deviceMask = deviceMask;
    v19->_math = math;
    objc_storeStrong(&v19->_inputPoints, points);
    objc_storeStrong(&v20->_maxInputPoints, inputPoints);
    objc_storeStrong(&v20->_outputPoints, a12);
    objc_storeStrong(&v20->_controlPoints, controlPoints);
    objc_storeStrong(&v20->_minOutputPoints, outputPoints);
    objc_storeStrong(&v20->_maxOutputPoints, maxOutputPoints);
    v20->_functionType = type;
  }

  return v20;
}

- (PKInkFunction)initWithInputPoints:(id)points outputPoints:(id)outputPoints functionType:(unint64_t)type
{
  pointsCopy = points;
  outputPointsCopy = outputPoints;
  v15.receiver = self;
  v15.super_class = PKInkFunction;
  v11 = [(PKInkFunction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inputPoints, points);
    maxInputPoints = v12->_maxInputPoints;
    v12->_maxInputPoints = 0;

    objc_storeStrong(&v12->_outputPoints, outputPoints);
    objc_storeStrong(&v12->_minOutputPoints, outputPoints);
    objc_storeStrong(&v12->_maxOutputPoints, outputPoints);
    v12->_functionType = type;
    v12->_math = 0;
  }

  return v12;
}

- (void)setControlPoints:(id)points
{
  pointsCopy = points;
  objc_storeStrong(&self->_controlPoints, points);
  self->_functionType = 0;
  if ([(NSMutableArray *)self->_controlPoints count]== 4)
  {
    v5 = [(NSMutableArray *)self->_controlPoints objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;
    v8 = [(NSMutableArray *)self->_controlPoints objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;
    v11 = [(NSMutableArray *)self->_controlPoints objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;
    v14 = [(NSMutableArray *)self->_controlPoints objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;

    self->_functionType = [PKInkProperties functionTypeForBezierControlPoints:v7, v10, v13, v16];
  }
}

- (double)solveForInput:(double)input
{
  [(PKInkBehavior *)v7 outputFunctionFromInkFunction:self];
  v4 = v8;
  v5 = (**v8)(v8, input, 0.0);
  ((*v4)[5])(v4);
  return v5;
}

- (id)description
{
  v3 = +[PKInkProperties inkPropertyNames];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_inkProperty];
  v5 = [v3 allKeysForObject:v4];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = +[PKInkProperties inputNames];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_inkInput];
  v9 = [v7 allKeysForObject:v8];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<PKInkFunction: %p %@ -> %@>", self, v10, v6];

  return v11;
}

@end