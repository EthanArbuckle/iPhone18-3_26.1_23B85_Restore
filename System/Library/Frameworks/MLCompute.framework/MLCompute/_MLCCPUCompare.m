@interface _MLCCPUCompare
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
- (_MLCCPUCompare)initWithDevice:(id)a3 operation:(int)a4;
@end

@implementation _MLCCPUCompare

- (_MLCCPUCompare)initWithDevice:(id)a3 operation:(int)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (a4 >= 0xC)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_MLCCPUCompare initWithDevice:a2 operation:v9];
    }

    v8 = 0;
  }

  else
  {
    v8 = dword_238D45E5C[a4];
  }

  memset(v24, 0, 512);
  LODWORD(v24[0]) = v8;
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:536];
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:176];
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:176];
  memset(v23, 0, sizeof(v23));
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:176];
  v26[0] = v11;
  v26[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v25 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v16 = [MLCCPUDeviceOps deviceOpsWithType:42 params:v10 inDeltaData:v14 outDeltaData:v15 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  [v16 setBinaryOperation:a4 != 8];
  if (v16)
  {
    [v7 addObject:v16];
  }

  v17 = [v7 copy];
  v22.receiver = self;
  v22.super_class = _MLCCPUCompare;
  v18 = [(_MLCCPULayer *)&v22 initWithDevice:v6 deviceOps:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v8 = a5;
  v38 = a6;
  v37 = [a4 objectAtIndexedSubscript:0];
  v9 = [v37 params];
  v10 = [v9 bytes];

  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 shape];
  v14 = [v8 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = [v15 stride];
  v17 = [v8 objectAtIndexedSubscript:0];
  v18 = [v17 descriptor];
  v36 = v10;
  MajorDescriptor = CPU_BuildBNNSNDArrayLastMajorDescriptor(v10 + 8, v13, v16, 0, [v18 dataType]);

  if (!MajorDescriptor)
  {
    goto LABEL_6;
  }

  if ([v8 count] == 2)
  {
    v20 = [v8 objectAtIndexedSubscript:1];
    v21 = [v20 descriptor];
    v22 = [v21 shape];
    v23 = [v8 objectAtIndexedSubscript:1];
    v24 = [v23 descriptor];
    v25 = [v24 stride];
    v26 = [v8 objectAtIndexedSubscript:1];
    v27 = [v26 descriptor];
    v28 = CPU_BuildBNNSNDArrayLastMajorDescriptor(v36 + 184, v22, v25, 0, [v27 dataType]);

    if (!v28)
    {
      LOBYTE(MajorDescriptor) = 0;
LABEL_6:
      v29 = v38;
      goto LABEL_7;
    }
  }

  v29 = v38;
  v30 = [v38 descriptor];
  v31 = [v30 shape];
  v32 = [v38 descriptor];
  v33 = [v32 stride];
  v34 = [v38 descriptor];
  LOBYTE(MajorDescriptor) = CPU_BuildBNNSNDArrayLastMajorDescriptor(v36 + 360, v31, v33, 0, [v34 dataType]);

LABEL_7:
  return MajorDescriptor;
}

- (void)initWithDevice:(const char *)a1 operation:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Unsupported operation.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end