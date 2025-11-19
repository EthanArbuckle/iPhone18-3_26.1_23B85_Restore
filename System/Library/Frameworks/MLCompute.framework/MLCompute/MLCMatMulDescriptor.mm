@interface MLCMatMulDescriptor
+ (MLCMatMulDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MLCMatMulDescriptor)initWithAlpha:(float)a3 transposesX:(BOOL)a4 transposesY:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCMatMulDescriptor

+ (MLCMatMulDescriptor)descriptor
{
  v2 = [a1 alloc];
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithAlpha:0 transposesX:0 transposesY:v3];

  return v4;
}

- (MLCMatMulDescriptor)initWithAlpha:(float)a3 transposesX:(BOOL)a4 transposesY:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = MLCMatMulDescriptor;
  result = [(MLCMatMulDescriptor *)&v9 init];
  if (result)
  {
    result->_alpha = a3;
    result->_transposesX = a4;
    result->_transposesY = a5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCMatMulDescriptor *)self alpha];
  v7 = [v3 stringWithFormat:@"%@: { alpha=%f : transposesX=%d : transposesY=%d }", v5, v6, -[MLCMatMulDescriptor transposesX](self, "transposesX"), -[MLCMatMulDescriptor transposesY](self, "transposesY")];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 alpha];
    v7 = v6;
    [(MLCMatMulDescriptor *)self alpha];
    if (v7 == v8 && (v9 = [v5 transposesX], v9 == -[MLCMatMulDescriptor transposesX](self, "transposesX")))
    {
      v11 = [v5 transposesY];
      v10 = v11 ^ [(MLCMatMulDescriptor *)self transposesY]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v14 = 0;
  v3 = MEMORY[0x277CCABB0];
  [(MLCMatMulDescriptor *)self alpha];
  v4 = [v3 numberWithFloat:?];
  v5 = [v4 hash];
  [(MLCMatMulDescriptor *)self transposesX];
  [(MLCMatMulDescriptor *)self transposesY];
  hashCombine_7(&v14, v6, v7, v8, v9, v10, v11, v12, v5);

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(MLCMatMulDescriptor *)self alpha];
  v6 = v5;
  v7 = [(MLCMatMulDescriptor *)self transposesY];
  v8 = [(MLCMatMulDescriptor *)self transposesY];
  LODWORD(v9) = v6;

  return [v4 initWithAlpha:v7 transposesX:v8 transposesY:v9];
}

@end