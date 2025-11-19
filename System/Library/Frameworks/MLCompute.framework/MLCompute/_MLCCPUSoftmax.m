@interface _MLCCPUSoftmax
- (_MLCCPUSoftmax)initWithDevice:(id)a3 operation:(int)a4 dimension:(unint64_t)a5;
@end

@implementation _MLCCPUSoftmax

- (_MLCCPUSoftmax)initWithDevice:(id)a3 operation:(int)a4 dimension:(unint64_t)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  if (!a4)
  {
    v10 = 11;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v10 = 21;
LABEL_5:
    LODWORD(v25) = v10;
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:408];
    memset(v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:176];
    v30[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v29 = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v16 = [MLCCPUDeviceOps deviceOpsWithType:16 params:v11 inDeltaData:v14 outDeltaData:v15 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

    if (v16)
    {
      [v16 setSoftmaxDimension:a5];
      [v9 addObject:v16];
    }

    v17 = [v9 copy];
    v21.receiver = self;
    v21.super_class = _MLCCPUSoftmax;
    self = [(_MLCCPULayer *)&v21 initWithDevice:v8 deviceOps:v17];

    v18 = self;
    goto LABEL_11;
  }

  v11 = +[MLCLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [_MLCCPUSoftmax initWithDevice:a4 operation:v11 dimension:?];
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)initWithDevice:(int)a1 operation:(NSObject *)a2 dimension:.cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[_MLCCPUSoftmax initWithDevice:operation:dimension:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%s: Unknown softmaxOp=%d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end