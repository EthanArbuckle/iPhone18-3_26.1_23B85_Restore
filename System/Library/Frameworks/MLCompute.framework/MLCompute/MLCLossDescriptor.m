@interface MLCLossDescriptor
- (BOOL)isEqual:(id)a3;
- (MLCLossDescriptor)initWithLossDescriptorWithType:(int)a3 reductionType:(int)a4 weight:(float)a5 labelSmoothing:(float)a6 classCount:(unint64_t)a7 epsilon:(float)a8 delta:(float)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCLossDescriptor

- (MLCLossDescriptor)initWithLossDescriptorWithType:(int)a3 reductionType:(int)a4 weight:(float)a5 labelSmoothing:(float)a6 classCount:(unint64_t)a7 epsilon:(float)a8 delta:(float)a9
{
  if (a4 >= 3)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCLossDescriptor initWithLossDescriptorWithType:a2 reductionType:a4 weight:v18 labelSmoothing:? classCount:? epsilon:? delta:?];
    }
  }

  v20.receiver = self;
  v20.super_class = MLCLossDescriptor;
  result = [(MLCLossDescriptor *)&v20 init];
  if (result)
  {
    result->_lossType = a3;
    result->_reductionType = a4;
    result->_weight = a5;
    result->_labelSmoothing = a6;
    result->_classCount = a7;
    result->_epsilon = a8;
    result->_delta = a9;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLossDescriptor *)self lossType];
  v7 = [(MLCLossDescriptor *)self reductionType];
  [(MLCLossDescriptor *)self weight];
  v9 = v8;
  [(MLCLossDescriptor *)self labelSmoothing];
  v11 = v10;
  v12 = [(MLCLossDescriptor *)self classCount];
  [(MLCLossDescriptor *)self epsilon];
  v14 = v13;
  [(MLCLossDescriptor *)self delta];
  v16 = [v3 stringWithFormat:@"%@: { lossType=%d : reductionType=%d : weight=%f : labelSmoothing=%f : numberOfClasses=%lu : epsilon=%f : delta=%f }", v5, v6, v7, *&v9, *&v11, v12, *&v14, v15];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 lossType];
    if (v6 != [(MLCLossDescriptor *)self lossType])
    {
      goto LABEL_10;
    }

    v7 = [v5 reductionType];
    if (v7 != [(MLCLossDescriptor *)self reductionType])
    {
      goto LABEL_10;
    }

    [v5 weight];
    v9 = v8;
    [(MLCLossDescriptor *)self weight];
    if (v9 != v10)
    {
      goto LABEL_10;
    }

    [v5 labelSmoothing];
    v12 = v11;
    [(MLCLossDescriptor *)self labelSmoothing];
    if (v12 == v13 && (v14 = [v5 classCount], v14 == -[MLCLossDescriptor classCount](self, "classCount")) && (objc_msgSend(v5, "epsilon"), v16 = v15, -[MLCLossDescriptor epsilon](self, "epsilon"), v16 == v17))
    {
      [v5 delta];
      v19 = v18;
      [(MLCLossDescriptor *)self delta];
      v21 = v19 == v20;
    }

    else
    {
LABEL_10:
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v20 = 0;
  v19 = [(MLCLossDescriptor *)self lossType];
  [(MLCLossDescriptor *)self reductionType];
  v3 = MEMORY[0x277CCABB0];
  [(MLCLossDescriptor *)self weight];
  v4 = [v3 numberWithFloat:?];
  [v4 hash];
  v5 = MEMORY[0x277CCABB0];
  [(MLCLossDescriptor *)self labelSmoothing];
  v6 = [v5 numberWithFloat:?];
  [v6 hash];
  [(MLCLossDescriptor *)self classCount];
  v7 = MEMORY[0x277CCABB0];
  [(MLCLossDescriptor *)self epsilon];
  v8 = [v7 numberWithFloat:?];
  [v8 hash];
  v9 = MEMORY[0x277CCABB0];
  [(MLCLossDescriptor *)self delta];
  v10 = [v9 numberWithFloat:?];
  [v10 hash];
  hashCombine_3(&v20, v11, v12, v13, v14, v15, v16, v17, v19);

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCLossDescriptor *)self lossType];
  v6 = [(MLCLossDescriptor *)self reductionType];
  [(MLCLossDescriptor *)self weight];
  v8 = v7;
  [(MLCLossDescriptor *)self labelSmoothing];
  v10 = v9;
  v11 = [(MLCLossDescriptor *)self classCount];
  [(MLCLossDescriptor *)self epsilon];
  v13 = v12;
  [(MLCLossDescriptor *)self delta];
  LODWORD(v14) = LODWORD(v15);
  LODWORD(v15) = v8;
  LODWORD(v16) = v10;
  LODWORD(v17) = v13;

  return [v4 initWithLossDescriptorWithType:v5 reductionType:v6 weight:v11 labelSmoothing:v15 classCount:v16 epsilon:v17 delta:v14];
}

- (void)initWithLossDescriptorWithType:(NSObject *)a3 reductionType:weight:labelSmoothing:classCount:epsilon:delta:.cold.1(const char *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: reduction type is not supported, using MLCReductionTypeNone instead = %d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end