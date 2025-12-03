@interface AMDMultiArrayFeature
- (AMDMultiArrayFeature)initWithValue:(id)value;
- (double)fillDoubleMultiArray:(double *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error;
- (float)fillFloat32MultiArray:(float *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error;
- (id)buildMultiArrayBufferFrom:(id)from andCapacity:(unint64_t)capacity error:(id *)error;
- (id)getMultiArray:(id *)array;
- (int)fillInt32MultiArray:(int *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error;
@end

@implementation AMDMultiArrayFeature

- (AMDMultiArrayFeature)initWithValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AMDMultiArrayFeature;
  selfCopy = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)getMultiArray:(id *)array
{
  v78 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v72 = a2;
  arrayCopy = array;
  v48 = objc_alloc(MEMORY[0x277CBEB18]);
  _shape = [(AMDFeature *)selfCopy _shape];
  v49 = [v48 initWithCapacity:{-[NSArray count](_shape, "count")}];
  [(AMDFeature *)selfCopy set_actualShape:?];
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](_shape);
  _value = [(AMDFeature *)selfCopy _value];
  v69 = 1;
  for (i = 0; ; ++i)
  {
    _shape2 = [(AMDFeature *)selfCopy _shape];
    v47 = [(NSArray *)_shape2 count];
    MEMORY[0x277D82BD8](_shape2);
    if (i >= v47)
    {
      _value2 = [(AMDFeature *)selfCopy _value];
      v56 = [AMDMultiArrayFeature buildMultiArrayBufferFrom:selfCopy andCapacity:"buildMultiArrayBufferFrom:andCapacity:error:" error:?];
      MEMORY[0x277D82BD8](_value2);
      if (*arrayCopy)
      {
        v74 = 0;
        v64 = 1;
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x277CBEB18]);
        _actualShape = [(AMDFeature *)selfCopy _actualShape];
        v55 = [v21 initWithCapacity:{-[NSMutableArray count](_actualShape, "count")}];
        MEMORY[0x277D82BD8](_actualShape);
        for (j = 0; ; ++j)
        {
          _actualShape2 = [(AMDFeature *)selfCopy _actualShape];
          v20 = [(NSMutableArray *)_actualShape2 count];
          MEMORY[0x277D82BD8](_actualShape2);
          if (j >= v20)
          {
            break;
          }

          v53 = 1;
          for (k = j + 1; ; ++k)
          {
            _actualShape3 = [(AMDFeature *)selfCopy _actualShape];
            v18 = [(NSMutableArray *)_actualShape3 count];
            MEMORY[0x277D82BD8](_actualShape3);
            if (k >= v18)
            {
              break;
            }

            _actualShape4 = [(AMDFeature *)selfCopy _actualShape];
            v15 = [(NSMutableArray *)_actualShape4 objectAtIndexedSubscript:k];
            v53 *= [v15 longValue];
            MEMORY[0x277D82BD8](v15);
            MEMORY[0x277D82BD8](_actualShape4);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithLong:v53];
          [v55 addObject:?];
          MEMORY[0x277D82BD8](v14);
        }

        v12 = objc_alloc(MEMORY[0x277CBFF48]);
        v8 = v56;
        bytes = [v56 bytes];
        _actualShape5 = [(AMDFeature *)selfCopy _actualShape];
        v51 = [v12 initWithDataPointer:bytes shape:_actualShape5 dataType:-[AMDFeature _dataType](selfCopy strides:"_dataType") deallocator:v55 error:{0, arrayCopy}];
        MEMORY[0x277D82BD8](_actualShape5);
        if (*arrayCopy)
        {
          v74 = 0;
        }

        else
        {
          v74 = MEMORY[0x277D82BE0](v51);
        }

        v64 = 1;
        objc_storeStrong(&v51, 0);
        objc_storeStrong(&v55, 0);
      }

      objc_storeStrong(&v56, 0);
      goto LABEL_35;
    }

    if (!_value || ![_value count])
    {
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty array at depth %u", i];
      location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v65 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v77, v67);
        _os_log_error_impl(&dword_240CB9000, location, v65, "%@", v77, 0xCu);
      }

      objc_storeStrong(&location, 0);
      v45 = [AMDError allocError:16 withMessage:v67];
      v3 = v45;
      *arrayCopy = v45;
      v74 = 0;
      v64 = 1;
      objc_storeStrong(&v67, 0);
      goto LABEL_35;
    }

    intValue2 = 0;
    _shape3 = [(AMDFeature *)selfCopy _shape];
    v42 = [(NSArray *)_shape3 objectAtIndexedSubscript:i];
    intValue = [v42 intValue];
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](_shape3);
    if (intValue < 0)
    {
      intValue2 = [_value count];
      goto LABEL_15;
    }

    v41 = [_value count];
    _shape4 = [(AMDFeature *)selfCopy _shape];
    v38 = [(NSArray *)_shape4 objectAtIndexedSubscript:i];
    unsignedIntValue = [v38 unsignedIntValue];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](_shape4);
    if (v41 != unsignedIntValue)
    {
      break;
    }

    _shape5 = [(AMDFeature *)selfCopy _shape];
    v31 = [(NSArray *)_shape5 objectAtIndexedSubscript:i];
    intValue2 = [v31 intValue];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](_shape5);
LABEL_15:
    _actualShape6 = [(AMDFeature *)selfCopy _actualShape];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:intValue2];
    [(NSMutableArray *)_actualShape6 addObject:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](_actualShape6);
    v69 *= intValue2;
    _shape6 = [(AMDFeature *)selfCopy _shape];
    v30 = [(NSArray *)_shape6 count];
    MEMORY[0x277D82BD8](_shape6);
    if (i + 1 >= v30)
    {
      firstObject = [_value firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x277D82BD8](firstObject);
      if ((isKindOfClass & 1) == 0)
      {
        v59 = MEMORY[0x277D82BE0](@"MultiArray does not contain numbers");
        v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v57 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v75, v59);
          _os_log_error_impl(&dword_240CB9000, v58, v57, "%@", v75, 0xCu);
        }

        objc_storeStrong(&v58, 0);
        v24 = [AMDError allocError:16 withMessage:v59];
        v7 = v24;
        *arrayCopy = v24;
        v74 = 0;
        v64 = 1;
        objc_storeStrong(&v59, 0);
        goto LABEL_35;
      }
    }

    else
    {
      firstObject2 = [_value firstObject];
      v6 = _value;
      _value = firstObject2;
      MEMORY[0x277D82BD8](v6);
    }
  }

  v35 = MEMORY[0x277CCACA8];
  v34 = [_value count];
  _shape7 = [(AMDFeature *)selfCopy _shape];
  v36 = [(NSArray *)_shape7 objectAtIndexedSubscript:i];
  v62 = [v35 stringWithFormat:@"Unexpected size at depth %u, found: %lu, expected: %@", i, v34, v36];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](_shape7);
  v61 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v60 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v76, v62);
    _os_log_error_impl(&dword_240CB9000, v61, v60, "%@", v76, 0xCu);
  }

  objc_storeStrong(&v61, 0);
  v33 = [AMDError allocError:16 withMessage:v62];
  v4 = v33;
  *arrayCopy = v33;
  v74 = 0;
  v64 = 1;
  objc_storeStrong(&v62, 0);
LABEL_35:
  objc_storeStrong(&_value, 0);
  *MEMORY[0x277D85DE8];
  v9 = v74;

  return v9;
}

- (id)buildMultiArrayBufferFrom:(id)from andCapacity:(unint64_t)capacity error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  capacityCopy = capacity;
  errorCopy = error;
  v31 = 0;
  _dataType = [(AMDFeature *)selfCopy _dataType];
  switch(_dataType)
  {
    case 65568:
      capacityCopy = [MEMORY[0x277CBEB28] dataWithLength:4 * capacityCopy];
      v14 = v31;
      v31 = capacityCopy;
      MEMORY[0x277D82BD8](v14);
      v21 = selfCopy;
      v15 = v31;
      mutableBytes = [v31 mutableBytes];
      v28[1] = [(AMDMultiArrayFeature *)v21 fillFloat32MultiArray:mutableBytes fromSource:location[0] atDepth:0 error:errorCopy];
      if (*errorCopy)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    case 65600:
      capacityCopy2 = [MEMORY[0x277CBEB28] dataWithLength:8 * capacityCopy];
      v6 = v31;
      v31 = capacityCopy2;
      MEMORY[0x277D82BD8](v6);
      v23 = selfCopy;
      v7 = v31;
      mutableBytes2 = [v31 mutableBytes];
      v30 = [(AMDMultiArrayFeature *)v23 fillDoubleMultiArray:mutableBytes2 fromSource:location[0] atDepth:0 error:errorCopy];
      if (*errorCopy)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    case 131104:
      capacityCopy3 = [MEMORY[0x277CBEB28] dataWithLength:4 * capacityCopy];
      v10 = v31;
      v31 = capacityCopy3;
      MEMORY[0x277D82BD8](v10);
      v22 = selfCopy;
      v11 = v31;
      mutableBytes3 = [v31 mutableBytes];
      v28[2] = [(AMDMultiArrayFeature *)v22 fillInt32MultiArray:mutableBytes3 fromSource:location[0] atDepth:0 error:errorCopy];
      if (*errorCopy)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    default:
      v28[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown data type: %ldd", -[AMDFeature _dataType](selfCopy, "_dataType")];
      v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v37, v28[0]);
        _os_log_error_impl(&dword_240CB9000, v27, OS_LOG_TYPE_ERROR, "%@", v37, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v20 = [AMDError allocError:16 withMessage:v28[0]];
      v17 = v20;
      *errorCopy = v20;
      objc_storeStrong(v28, 0);
      break;
  }

  v36 = MEMORY[0x277D82BE0](v31);
  v29 = 1;
LABEL_18:
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v18 = v36;

  return v18;
}

- (int)fillInt32MultiArray:(int *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42 = a2;
  arrayCopy = array;
  location = 0;
  objc_storeStrong(&location, source);
  depthCopy = depth;
  errorCopy = error;
  _actualShape = [(AMDFeature *)selfCopy _actualShape];
  v22 = [(NSMutableArray *)_actualShape objectAtIndexedSubscript:depth];
  unsignedIntValue = [v22 unsignedIntValue];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](_actualShape);
  v37 = unsignedIntValue;
  if ([location count] == unsignedIntValue)
  {
    _actualShape2 = [(AMDFeature *)selfCopy _actualShape];
    v18 = [(NSMutableArray *)_actualShape2 count];
    MEMORY[0x277D82BD8](_actualShape2);
    if (depthCopy + 1 == v18)
    {
      v32 = arrayCopy;
      firstObject = [location firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _remapInfo = [(AMDFeature *)selfCopy _remapInfo];
        MEMORY[0x277D82BD8](_remapInfo);
        if (_remapInfo)
        {
          v12 = location;
          _remapInfo2 = [(AMDFeature *)selfCopy _remapInfo];
          _postRemapOperation = [(AMDFeature *)selfCopy _postRemapOperation];
          [AMDFeature copyInt32Values:v37 fromArray:v12 toBuffer:v32 withDefaultValue:0 withRemapData:_remapInfo2 andPostRemapOperation:?];
          MEMORY[0x277D82BD8](_postRemapOperation);
          MEMORY[0x277D82BD8](_remapInfo2);
          v32 += v37;
        }

        else
        {
          for (i = 0; i < v37; ++i)
          {
            v11 = [location objectAtIndexedSubscript:i];
            *v32 = [v11 intValue];
            MEMORY[0x277D82BD8](v11);
            ++v32;
          }
        }

        v44 = v32;
        v33 = 1;
      }

      else
      {
        v30 = MEMORY[0x277D82BE0](@"Data is not int32");
        v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v45, v30);
          _os_log_error_impl(&dword_240CB9000, v29, OS_LOG_TYPE_ERROR, "%@", v45, 0xCu);
        }

        objc_storeStrong(&v29, 0);
        v16 = [AMDError allocError:16 withMessage:v30];
        v7 = v16;
        *errorCopy = v16;
        v44 = 0;
        v33 = 1;
        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&firstObject, 0);
    }

    else
    {
      v27 = arrayCopy;
      v26 = 0;
      for (j = 0; j < v37; ++j)
      {
        v9 = selfCopy;
        v10 = [location objectAtIndexedSubscript:j];
        v26 = [AMDMultiArrayFeature fillInt32MultiArray:v9 fromSource:"fillInt32MultiArray:fromSource:atDepth:error:" atDepth:v27 error:?];
        MEMORY[0x277D82BD8](v10);
        if (*errorCopy)
        {
          v44 = 0;
          v33 = 1;
          goto LABEL_23;
        }

        v27 = v26;
      }

      v44 = v26;
      v33 = 1;
    }
  }

  else
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying int32s at level %u: expected; %u, got: %lu", depthCopy, v37, objc_msgSend(location, "count")];
    v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v46, v36);
      _os_log_error_impl(&dword_240CB9000, v35, v34, "%@", v46, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v19 = [AMDError allocError:16 withMessage:v36];
    v6 = v19;
    *errorCopy = v19;
    v44 = 0;
    v33 = 1;
    objc_storeStrong(&v36, 0);
  }

LABEL_23:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v44;
}

- (float)fillFloat32MultiArray:(float *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v39 = a2;
  arrayCopy = array;
  location = 0;
  objc_storeStrong(&location, source);
  depthCopy = depth;
  errorCopy = error;
  _actualShape = [(AMDFeature *)selfCopy _actualShape];
  v19 = [(NSMutableArray *)_actualShape objectAtIndexedSubscript:depth];
  unsignedIntValue = [v19 unsignedIntValue];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](_actualShape);
  v34 = unsignedIntValue;
  if ([location count] == unsignedIntValue)
  {
    _actualShape2 = [(AMDFeature *)selfCopy _actualShape];
    v15 = [(NSMutableArray *)_actualShape2 count];
    MEMORY[0x277D82BD8](_actualShape2);
    if (depthCopy + 1 == v15)
    {
      v29 = arrayCopy;
      firstObject = [location firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        for (i = 0; i < v34; ++i)
        {
          v12 = [location objectAtIndexedSubscript:i];
          [v12 floatValue];
          *v29 = v8;
          MEMORY[0x277D82BD8](v12);
          ++v29;
        }

        v41 = v29;
        v30 = 1;
      }

      else
      {
        v27 = MEMORY[0x277D82BE0](@"Data is not Float32");
        v26 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v42, v27);
          _os_log_error_impl(&dword_240CB9000, v26, OS_LOG_TYPE_ERROR, "%@", v42, 0xCu);
        }

        objc_storeStrong(&v26, 0);
        v13 = [AMDError allocError:16 withMessage:v27];
        v7 = v13;
        *errorCopy = v13;
        v41 = 0;
        v30 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&firstObject, 0);
    }

    else
    {
      v24 = arrayCopy;
      v23 = 0;
      for (j = 0; j < v34; ++j)
      {
        v10 = selfCopy;
        v11 = [location objectAtIndexedSubscript:j];
        v23 = [AMDMultiArrayFeature fillFloat32MultiArray:v10 fromSource:"fillFloat32MultiArray:fromSource:atDepth:error:" atDepth:v24 error:?];
        MEMORY[0x277D82BD8](v11);
        if (*errorCopy)
        {
          v41 = 0;
          v30 = 1;
          goto LABEL_21;
        }

        v24 = v23;
      }

      v41 = v23;
      v30 = 1;
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying float32s at level %u: expected; %u, got: %lu", depthCopy, v34, objc_msgSend(location, "count")];
    v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v43, v33);
      _os_log_error_impl(&dword_240CB9000, v32, v31, "%@", v43, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v16 = [AMDError allocError:16 withMessage:v33];
    v6 = v16;
    *errorCopy = v16;
    v41 = 0;
    v30 = 1;
    objc_storeStrong(&v33, 0);
  }

LABEL_21:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v41;
}

- (double)fillDoubleMultiArray:(double *)array fromSource:(id)source atDepth:(unsigned int)depth error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v39 = a2;
  arrayCopy = array;
  location = 0;
  objc_storeStrong(&location, source);
  depthCopy = depth;
  errorCopy = error;
  _actualShape = [(AMDFeature *)selfCopy _actualShape];
  v19 = [(NSMutableArray *)_actualShape objectAtIndexedSubscript:depth];
  unsignedIntValue = [v19 unsignedIntValue];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](_actualShape);
  v34 = unsignedIntValue;
  if ([location count] == unsignedIntValue)
  {
    _actualShape2 = [(AMDFeature *)selfCopy _actualShape];
    v15 = [(NSMutableArray *)_actualShape2 count];
    MEMORY[0x277D82BD8](_actualShape2);
    if (depthCopy + 1 == v15)
    {
      v29 = arrayCopy;
      firstObject = [location firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        for (i = 0; i < v34; ++i)
        {
          v12 = [location objectAtIndexedSubscript:i];
          [v12 doubleValue];
          *v29 = v8;
          MEMORY[0x277D82BD8](v12);
          ++v29;
        }

        v41 = v29;
        v30 = 1;
      }

      else
      {
        v27 = MEMORY[0x277D82BE0](@"Data is not Float32");
        v26 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v42, v27);
          _os_log_error_impl(&dword_240CB9000, v26, OS_LOG_TYPE_ERROR, "%@", v42, 0xCu);
        }

        objc_storeStrong(&v26, 0);
        v13 = [AMDError allocError:16 withMessage:v27];
        v7 = v13;
        *errorCopy = v13;
        v41 = 0;
        v30 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&firstObject, 0);
    }

    else
    {
      v24 = arrayCopy;
      v23 = 0;
      for (j = 0; j < v34; ++j)
      {
        v10 = selfCopy;
        v11 = [location objectAtIndexedSubscript:j];
        v23 = [AMDMultiArrayFeature fillDoubleMultiArray:v10 fromSource:"fillDoubleMultiArray:fromSource:atDepth:error:" atDepth:v24 error:?];
        MEMORY[0x277D82BD8](v11);
        if (*errorCopy)
        {
          v41 = 0;
          v30 = 1;
          goto LABEL_21;
        }

        v24 = v23;
      }

      v41 = v23;
      v30 = 1;
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying doubles at level %u: expected; %u, got: %lu", depthCopy, v34, objc_msgSend(location, "count")];
    v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v43, v33);
      _os_log_error_impl(&dword_240CB9000, v32, v31, "%@", v43, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v16 = [AMDError allocError:16 withMessage:v33];
    v6 = v16;
    *errorCopy = v16;
    v41 = 0;
    v30 = 1;
    objc_storeStrong(&v33, 0);
  }

LABEL_21:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v41;
}

@end