@interface MLCActivationDescriptor
+ (double)defaultParametersForType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (MLCActivationDescriptor)initWithType:(int)a3 a:(float)a4 b:(float)a5 c:(float)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCActivationDescriptor

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCActivationDescriptor *)self activationType];
  [(MLCActivationDescriptor *)self a];
  v8 = v7;
  [(MLCActivationDescriptor *)self b];
  v10 = v9;
  [(MLCActivationDescriptor *)self c];
  v12 = [v3 stringWithFormat:@"%@: { activationType=%d : a=%f : b=%f : c=%f}", v5, v6, *&v8, *&v10, v11];

  return v12;
}

+ (double)defaultParametersForType:(int)a3
{
  __asm { FMOV            V0.4S, #1.0 }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *&_Q0 = 0x3F80000000000000;
      }

      else
      {
        *&_Q0 = 1065353216;
      }
    }
  }

  else
  {
    if (a3 > 0x14)
    {
      goto LABEL_11;
    }

    if (((1 << a3) & 0x1F3FE0) != 0)
    {
      return *&_Q0;
    }

    if (a3 == 14 || a3 == 15)
    {
      *&_Q0 = 0x3F8000003F000000;
    }

    else
    {
LABEL_11:
      if (a3 != 3)
      {
        *&_Q0 = 0x3F0000003E4CCCCDLL;
      }
    }
  }

  return *&_Q0;
}

- (MLCActivationDescriptor)initWithType:(int)a3 a:(float)a4 b:(float)a5 c:(float)a6
{
  v6 = self;
  if (a3 == 21)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCActivationDescriptor initWithType:a2 a:v8 b:? c:?];
    }

    v9 = 0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MLCActivationDescriptor;
    v14 = [(MLCActivationDescriptor *)&v16 init];
    if (v14)
    {
      v14->_activationType = a3;
      v14->_a = a4;
      v14->_b = a5;
      v14->_c = a6;
    }

    v6 = v14;
    v9 = v6;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 activationType];
    if (v6 == -[MLCActivationDescriptor activationType](self, "activationType") && ([v5 a], v8 = v7, -[MLCActivationDescriptor a](self, "a"), v8 == v9) && (objc_msgSend(v5, "b"), v11 = v10, -[MLCActivationDescriptor b](self, "b"), v11 == v12))
    {
      [v5 c];
      v14 = v13;
      [(MLCActivationDescriptor *)self c];
      v16 = v14 == v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v19 = 0;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[MLCActivationDescriptor activationType](self, "activationType")}];
  v4 = [v3 hash];
  v5 = MEMORY[0x277CCABB0];
  [(MLCActivationDescriptor *)self a];
  v6 = [v5 numberWithFloat:?];
  [v6 hash];
  v7 = MEMORY[0x277CCABB0];
  [(MLCActivationDescriptor *)self b];
  v8 = [v7 numberWithFloat:?];
  [v8 hash];
  v9 = MEMORY[0x277CCABB0];
  [(MLCActivationDescriptor *)self c];
  v10 = [v9 numberWithFloat:?];
  [v10 hash];
  hashCombine(&v19, v11, v12, v13, v14, v15, v16, v17, v4);

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCActivationDescriptor *)self activationType];
  [(MLCActivationDescriptor *)self a];
  v7 = v6;
  [(MLCActivationDescriptor *)self b];
  v9 = v8;
  [(MLCActivationDescriptor *)self c];
  LODWORD(v10) = LODWORD(v11);
  LODWORD(v11) = v7;
  LODWORD(v12) = v9;

  return [v4 initWithType:v5 a:v11 b:v12 c:v10];
}

- (void)initWithType:(const char *)a1 a:(NSObject *)a2 b:c:.cold.1(const char *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = 21;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Requested activation type: (%d) not supported", &v5, 0x12u);

  v4 = *MEMORY[0x277D85DE8];
}

@end