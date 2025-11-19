@interface _MLCANEWeightOps
+ (id)hexStringForData:(id)a3;
- (BOOL)convertAndComputHashWithWeightData:(id)a3 weightDataType:(int)a4 hash:(id *)a5 convertedData:(id *)a6;
- (_MLCANEWeightOps)init;
- (id)queryConstantTensor:(id)a3;
- (unint64_t)addWeightData:(id)a3 hash:(id)a4;
- (void)reset;
@end

@implementation _MLCANEWeightOps

+ (id)hexStringForData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = objc_autoreleasePoolPush();
  v5 = [&stru_284B8AA80 mutableCopy];
  for (i = 0; i != 32; ++i)
  {
    [v5 appendFormat:@"%02X", md[i]];
  }

  objc_autoreleasePoolPop(v4);

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (_MLCANEWeightOps)init
{
  v22[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = _MLCANEWeightOps;
  v2 = [(_MLCANEWeightOps *)&v20 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEC10];
    v4 = [MEMORY[0x277CBEC10] mutableCopy];
    weights = v2->_weights;
    v2->_weights = v4;

    v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    weightFiles = v2->_weightFiles;
    v2->_weightFiles = v6;

    v8 = [v3 mutableCopy];
    weightFileIndexMap = v2->_weightFileIndexMap;
    v2->_weightFileIndexMap = v8;

    v10 = [(NSMutableDictionary *)v2->_weights count];
    v11 = [kMLCANEWeightFileNamePrefix stringByAppendingFormat:@"%lu", v10];
    v21 = v11;
    v12 = [MEMORY[0x277CBEA90] data];
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = v2->_weights;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

    [(NSMutableArray *)v2->_weightFiles addObject:v11];
    v16 = [v3 mutableCopy];
    constantTensorMap = v2->_constantTensorMap;
    v2->_constantTensorMap = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)convertAndComputHashWithWeightData:(id)a3 weightDataType:(int)a4 hash:(id *)a5 convertedData:(id *)a6
{
  v10 = a3;
  v11 = v10;
  if (a4 > 9)
  {
    goto LABEL_10;
  }

  v12 = v10;
  if (((1 << a4) & 0x348) != 0)
  {
LABEL_3:
    *a5 = [objc_opt_class() hexStringForData:v12];
    v13 = v12;
    *a6 = v12;
    v14 = 1;
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    v16 = [v10 length] >> 1;
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:malloc_type_malloc(v16 length:0x77827D73uLL) freeWhenDone:{v16, 1}];

    if (+[MLCDataHelper convertFp32toFp16:fp32Values:fp16Values:](MLCDataHelper, "convertFp32toFp16:fp32Values:fp16Values:", [v11 length] >> 2, objc_msgSend(v11, "bytes"), objc_msgSend(v12, "bytes")))
    {
      goto LABEL_3;
    }

    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEWeightOps convertAndComputHashWithWeightData:a2 weightDataType:? hash:? convertedData:?];
    }

    v14 = 0;
  }

  else
  {
LABEL_10:
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEWeightOps convertAndComputHashWithWeightData:a2 weightDataType:? hash:? convertedData:?];
    }

    v14 = 0;
    v12 = v11;
  }

LABEL_4:

  return v14;
}

- (unint64_t)addWeightData:(id)a3 hash:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v25[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  v10 = [(_MLCANEWeightOps *)self weightFileIndexMap];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [(_MLCANEWeightOps *)self weightFileIndexMap];
    v13 = [v12 objectForKeyedSubscript:v9];
    v14 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = [(_MLCANEWeightOps *)self weights];
    v14 = [v15 count];

    v12 = [kMLCANEWeightFileNamePrefix stringByAppendingFormat:@"%lu", v14];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v17 = [(_MLCANEWeightOps *)self weightFileIndexMap];
    [v17 setObject:v16 forKeyedSubscript:v9];

    v23 = v12;
    v24 = v6;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [(_MLCANEWeightOps *)self weights];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v13 = [(_MLCANEWeightOps *)self weightFiles];
    [v13 addObject:v12];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)queryConstantTensor:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 data];
  v7 = [v5 descriptor];
  v22 = 0;
  v23 = 0;
  v8 = -[_MLCANEWeightOps convertAndComputHashWithWeightData:weightDataType:hash:convertedData:](self, "convertAndComputHashWithWeightData:weightDataType:hash:convertedData:", v6, [v7 dataType], &v23, &v22);
  v9 = v23;
  v10 = v22;

  if (v8)
  {
    v25[0] = v9;
    v11 = [v5 descriptor];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v13 = [(_MLCANEWeightOps *)self constantTensorMap];
    v14 = [v13 objectForKeyedSubscript:v12];

    v15 = [(_MLCANEWeightOps *)self constantTensorMap];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 objectForKeyedSubscript:v12];
    }

    else
    {
      [v15 setObject:v5 forKeyedSubscript:v12];

      v24[0] = v9;
      v24[1] = v10;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      v19 = [v5 deviceMemory];
      [v19 setObject:v18 atIndexedSubscript:{objc_msgSend(v5, "deviceIndex")}];

      v17 = v5;
    }
  }

  else
  {
    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_MLCANEWeightOps queryConstantTensor:a2];
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)reset
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_MLCANEWeightOps *)self weights];
  [v4 removeAllObjects];

  v5 = [(_MLCANEWeightOps *)self weightFiles];
  [v5 removeAllObjects];

  v6 = [(_MLCANEWeightOps *)self weightFileIndexMap];
  [v6 removeAllObjects];

  v7 = [(_MLCANEWeightOps *)self constantTensorMap];
  [v7 removeAllObjects];

  objc_autoreleasePoolPop(v3);
}

- (void)convertAndComputHashWithWeightData:(const char *)a1 weightDataType:hash:convertedData:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)convertAndComputHashWithWeightData:(const char *)a1 weightDataType:hash:convertedData:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addWeightData:(const char *)a1 weightDataType:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryConstantTensor:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end