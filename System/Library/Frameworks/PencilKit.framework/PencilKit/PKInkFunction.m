@interface PKInkFunction
- (PKInkFunction)initWithInputPoints:(id)a3 outputPoints:(id)a4 functionType:(unint64_t)a5;
- (PKInkFunction)initWithProperty:(unint64_t)a3 input:(unint64_t)a4 math:(unint64_t)a5 inputMask:(unint64_t)a6 deviceMask:(unint64_t)a7 inputPoints:(id)a8 maxInputPoints:(id)a9 minOutputPoints:(id)a10 maxOutputPoints:(id)a11 outputPoints:(id)a12 controlPoints:(id)a13 functionType:(unint64_t)a14;
- (double)solveForInput:(double)a3;
- (id)description;
- (void)setControlPoints:(id)a3;
@end

@implementation PKInkFunction

- (PKInkFunction)initWithProperty:(unint64_t)a3 input:(unint64_t)a4 math:(unint64_t)a5 inputMask:(unint64_t)a6 deviceMask:(unint64_t)a7 inputPoints:(id)a8 maxInputPoints:(id)a9 minOutputPoints:(id)a10 maxOutputPoints:(id)a11 outputPoints:(id)a12 controlPoints:(id)a13 functionType:(unint64_t)a14
{
  v16 = a8;
  v17 = a9;
  v29 = a10;
  v28 = a11;
  v27 = a12;
  v18 = a13;
  v30.receiver = self;
  v30.super_class = PKInkFunction;
  v19 = [(PKInkFunction *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_inkProperty = a3;
    v19->_inkInput = a4;
    v19->_inputMask = a6;
    v19->_deviceMask = a7;
    v19->_math = a5;
    objc_storeStrong(&v19->_inputPoints, a8);
    objc_storeStrong(&v20->_maxInputPoints, a9);
    objc_storeStrong(&v20->_outputPoints, a12);
    objc_storeStrong(&v20->_controlPoints, a13);
    objc_storeStrong(&v20->_minOutputPoints, a10);
    objc_storeStrong(&v20->_maxOutputPoints, a11);
    v20->_functionType = a14;
  }

  return v20;
}

- (PKInkFunction)initWithInputPoints:(id)a3 outputPoints:(id)a4 functionType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PKInkFunction;
  v11 = [(PKInkFunction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_inputPoints, a3);
    maxInputPoints = v12->_maxInputPoints;
    v12->_maxInputPoints = 0;

    objc_storeStrong(&v12->_outputPoints, a4);
    objc_storeStrong(&v12->_minOutputPoints, a4);
    objc_storeStrong(&v12->_maxOutputPoints, a4);
    v12->_functionType = a5;
    v12->_math = 0;
  }

  return v12;
}

- (void)setControlPoints:(id)a3
{
  v17 = a3;
  objc_storeStrong(&self->_controlPoints, a3);
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

- (double)solveForInput:(double)a3
{
  [(PKInkBehavior *)v7 outputFunctionFromInkFunction:self];
  v4 = v8;
  v5 = (**v8)(v8, a3, 0.0);
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