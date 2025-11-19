@interface ADDynamicPolynomialsLensDistortionModel
- (ADDynamicPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 dynFactor:(float)a4 polynomialsBase:(const ADDistortionPolynomials *)a5 polynomialsDynamic:(const ADDistortionPolynomials *)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)a3;
- (void)setDistortionPolynomialsBase:(const ADDistortionPolynomials *)a3;
- (void)setDistortionPolynomialsDynamic:(const ADDistortionPolynomials *)a3;
- (void)updatePolynomials;
@end

@implementation ADDynamicPolynomialsLensDistortionModel

- (ADDynamicPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 dynFactor:(float)a4 polynomialsBase:(const ADDistortionPolynomials *)a5 polynomialsDynamic:(const ADDistortionPolynomials *)a6
{
  if (!a5 || !a6)
  {
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortion polynomials cannot be nil" userInfo:{0, a3.x, a3.y}];
    objc_exception_throw(v20);
  }

  y = a3.y;
  x = a3.x;
  v21.receiver = self;
  v21.super_class = ADDynamicPolynomialsLensDistortionModel;
  v11 = [(ADDynamicPolynomialsLensDistortionModel *)&v21 init];
  v12 = v11;
  if (v11)
  {
    [(ADPolynomialsLensDistortionModel *)v11 setDistortionCenter:x, y];
    v13 = *&a5->inverseOrders[4];
    v15 = *a5->forwardOrders;
    v14 = *&a5->forwardOrders[4];
    *v12->_polynomialsBase.inverseOrders = *a5->inverseOrders;
    *&v12->_polynomialsBase.inverseOrders[4] = v13;
    *v12->_polynomialsBase.forwardOrders = v15;
    *&v12->_polynomialsBase.forwardOrders[4] = v14;
    v16 = *&a6->inverseOrders[4];
    v18 = *a6->forwardOrders;
    v17 = *&a6->forwardOrders[4];
    *v12->_polynomialsDynamic.inverseOrders = *a6->inverseOrders;
    *&v12->_polynomialsDynamic.inverseOrders[4] = v16;
    *v12->_polynomialsDynamic.forwardOrders = v18;
    *&v12->_polynomialsDynamic.forwardOrders[4] = v17;
    v12->_dynamicFactor = a4;
    [(ADDynamicPolynomialsLensDistortionModel *)v12 updatePolynomials];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADDynamicPolynomialsLensDistortionModel alloc];
  [(ADPolynomialsLensDistortionModel *)self distortionCenter];

  return [ADDynamicPolynomialsLensDistortionModel initWithDistortionCenter:v4 dynFactor:"initWithDistortionCenter:dynFactor:polynomialsBase:polynomialsDynamic:" polynomialsBase:&self->_polynomialsBase polynomialsDynamic:&self->_polynomialsDynamic];
}

- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)a3
{
  v8.receiver = self;
  v8.super_class = ADDynamicPolynomialsLensDistortionModel;
  [(ADPolynomialsLensDistortionModel *)&v8 setDistortionPolynomials:a3];
  v4 = &self->super._polynomials.forwardOrders[6];
  inverseOrders = self->_polynomialsDynamic.inverseOrders;
  v6 = self->_polynomialsBase.inverseOrders;
  v7 = 8;
  do
  {
    *(inverseOrders - 8) = 0.0;
    *inverseOrders++ = 0.0;
    *(v6 - 8) = *(v4 - 6);
    *v6++ = v4[2];
    ++v4;
    --v7;
  }

  while (v7);
}

- (void)setDistortionPolynomialsDynamic:(const ADDistortionPolynomials *)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, v3, v4}];
    objc_exception_throw(v8);
  }

  v5 = *&a3->inverseOrders[4];
  v7 = *a3->forwardOrders;
  v6 = *&a3->forwardOrders[4];
  *self->_polynomialsDynamic.inverseOrders = *a3->inverseOrders;
  *&self->_polynomialsDynamic.inverseOrders[4] = v5;
  *self->_polynomialsDynamic.forwardOrders = v7;
  *&self->_polynomialsDynamic.forwardOrders[4] = v6;

  [(ADDynamicPolynomialsLensDistortionModel *)self updatePolynomials];
}

- (void)setDistortionPolynomialsBase:(const ADDistortionPolynomials *)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, v3, v4}];
    objc_exception_throw(v8);
  }

  v5 = *&a3->inverseOrders[4];
  v7 = *a3->forwardOrders;
  v6 = *&a3->forwardOrders[4];
  *self->_polynomialsBase.inverseOrders = *a3->inverseOrders;
  *&self->_polynomialsBase.inverseOrders[4] = v5;
  *self->_polynomialsBase.forwardOrders = v7;
  *&self->_polynomialsBase.forwardOrders[4] = v6;

  [(ADDynamicPolynomialsLensDistortionModel *)self updatePolynomials];
}

- (void)updatePolynomials
{
  v2 = &self->super._polynomials.forwardOrders[6];
  v3 = 8;
  do
  {
    v2[2] = v2[22] + (self->_dynamicFactor * v2[38]);
    *(v2 - 6) = v2[14] + (self->_dynamicFactor * v2[30]);
    ++v2;
    --v3;
  }

  while (v3);
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = ADDynamicPolynomialsLensDistortionModel;
  v3 = [(ADPolynomialsLensDistortionModel *)&v9 hash];
  *&v4 = self->_dynamicFactor;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = v3 ^ (2 * [v5 hash]);

  v7 = v6 ^ (3 * [ADPolynomialsLensDistortionModel hashPolynomials:&self->_polynomialsBase]);
  return v7 ^ (4 * [ADPolynomialsLensDistortionModel hashPolynomials:&self->_polynomialsDynamic]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_14;
  }

  if (([(ADDynamicPolynomialsLensDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    [(ADPolynomialsLensDistortionModel *)self distortionCenter];
    v8 = v7;
    v10 = v9;
    [(ADPolynomialsLensDistortionModel *)v6 distortionCenter];
    v12 = 0;
    if (v8 == v13 && v10 == v11)
    {
      v12 = [ADPolynomialsLensDistortionModel isEqualPolynomials:&self->super._polynomials otherPolynomials:[(ADPolynomialsLensDistortionModel *)v6 distortionPolynomials]]&& (dynamicFactor = self->_dynamicFactor, [(ADDynamicPolynomialsLensDistortionModel *)v6 dynamicFactor], dynamicFactor == v15) && [ADPolynomialsLensDistortionModel isEqualPolynomials:&self->_polynomialsBase otherPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)v6 distortionPolynomialsBase]]&& [ADPolynomialsLensDistortionModel isEqualPolynomials:&self->_polynomialsDynamic otherPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)v6 distortionPolynomialsDynamic]];
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

LABEL_14:

  return v12;
}

@end