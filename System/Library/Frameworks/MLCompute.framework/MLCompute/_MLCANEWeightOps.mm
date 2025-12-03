@interface _MLCANEWeightOps
+ (id)hexStringForData:(id)data;
- (BOOL)convertAndComputHashWithWeightData:(id)data weightDataType:(int)type hash:(id *)hash convertedData:(id *)convertedData;
- (_MLCANEWeightOps)init;
- (id)queryConstantTensor:(id)tensor;
- (unint64_t)addWeightData:(id)data hash:(id)hash;
- (void)reset;
@end

@implementation _MLCANEWeightOps

+ (id)hexStringForData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
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
    data = [MEMORY[0x277CBEA90] data];
    v22[0] = data;
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

- (BOOL)convertAndComputHashWithWeightData:(id)data weightDataType:(int)type hash:(id *)hash convertedData:(id *)convertedData
{
  dataCopy = data;
  v11 = dataCopy;
  if (type > 9)
  {
    goto LABEL_10;
  }

  v12 = dataCopy;
  if (((1 << type) & 0x348) != 0)
  {
LABEL_3:
    *hash = [objc_opt_class() hexStringForData:v12];
    v13 = v12;
    *convertedData = v12;
    v14 = 1;
    goto LABEL_4;
  }

  if (type == 1)
  {
    v16 = [dataCopy length] >> 1;
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

- (unint64_t)addWeightData:(id)data hash:(id)hash
{
  v25[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  hashCopy = hash;
  v25[0] = hashCopy;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  v25[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

  weightFileIndexMap = [(_MLCANEWeightOps *)self weightFileIndexMap];
  v11 = [weightFileIndexMap objectForKeyedSubscript:v9];

  if (v11)
  {
    weightFileIndexMap2 = [(_MLCANEWeightOps *)self weightFileIndexMap];
    weightFiles = [weightFileIndexMap2 objectForKeyedSubscript:v9];
    unsignedIntegerValue = [weightFiles unsignedIntegerValue];
  }

  else
  {
    weights = [(_MLCANEWeightOps *)self weights];
    unsignedIntegerValue = [weights count];

    weightFileIndexMap2 = [kMLCANEWeightFileNamePrefix stringByAppendingFormat:@"%lu", unsignedIntegerValue];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    weightFileIndexMap3 = [(_MLCANEWeightOps *)self weightFileIndexMap];
    [weightFileIndexMap3 setObject:v16 forKeyedSubscript:v9];

    v23 = weightFileIndexMap2;
    v24 = dataCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    weights2 = [(_MLCANEWeightOps *)self weights];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [weights2 setObject:v18 forKeyedSubscript:v20];

    weightFiles = [(_MLCANEWeightOps *)self weightFiles];
    [weightFiles addObject:weightFileIndexMap2];
  }

  v21 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)queryConstantTensor:(id)tensor
{
  v25[2] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  data = [tensorCopy data];
  descriptor = [tensorCopy descriptor];
  v22 = 0;
  v23 = 0;
  v8 = -[_MLCANEWeightOps convertAndComputHashWithWeightData:weightDataType:hash:convertedData:](self, "convertAndComputHashWithWeightData:weightDataType:hash:convertedData:", data, [descriptor dataType], &v23, &v22);
  v9 = v23;
  v10 = v22;

  if (v8)
  {
    v25[0] = v9;
    descriptor2 = [tensorCopy descriptor];
    v25[1] = descriptor2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    constantTensorMap = [(_MLCANEWeightOps *)self constantTensorMap];
    v14 = [constantTensorMap objectForKeyedSubscript:v12];

    constantTensorMap2 = [(_MLCANEWeightOps *)self constantTensorMap];
    v16 = constantTensorMap2;
    if (v14)
    {
      v17 = [constantTensorMap2 objectForKeyedSubscript:v12];
    }

    else
    {
      [constantTensorMap2 setObject:tensorCopy forKeyedSubscript:v12];

      v24[0] = v9;
      v24[1] = v10;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      deviceMemory = [tensorCopy deviceMemory];
      [deviceMemory setObject:v18 atIndexedSubscript:{objc_msgSend(tensorCopy, "deviceIndex")}];

      v17 = tensorCopy;
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
  weights = [(_MLCANEWeightOps *)self weights];
  [weights removeAllObjects];

  weightFiles = [(_MLCANEWeightOps *)self weightFiles];
  [weightFiles removeAllObjects];

  weightFileIndexMap = [(_MLCANEWeightOps *)self weightFileIndexMap];
  [weightFileIndexMap removeAllObjects];

  constantTensorMap = [(_MLCANEWeightOps *)self constantTensorMap];
  [constantTensorMap removeAllObjects];

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