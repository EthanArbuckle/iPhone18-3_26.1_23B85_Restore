@interface AMDMultiArrayFeature
- (AMDMultiArrayFeature)initWithValue:(id)a3;
- (double)fillDoubleMultiArray:(double *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6;
- (float)fillFloat32MultiArray:(float *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6;
- (id)buildMultiArrayBufferFrom:(id)a3 andCapacity:(unint64_t)a4 error:(id *)a5;
- (id)getMultiArray:(id *)a3;
- (int)fillInt32MultiArray:(int *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6;
@end

@implementation AMDMultiArrayFeature

- (AMDMultiArrayFeature)initWithValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AMDMultiArrayFeature;
  v8 = [(AMDFeature *)&v6 initWithValue:location[0]];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)getMultiArray:(id *)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v73 = self;
  v72 = a2;
  v71 = a3;
  v48 = objc_alloc(MEMORY[0x277CBEB18]);
  v50 = [(AMDFeature *)v73 _shape];
  v49 = [v48 initWithCapacity:{-[NSArray count](v50, "count")}];
  [(AMDFeature *)v73 set_actualShape:?];
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  v70 = [(AMDFeature *)v73 _value];
  v69 = 1;
  for (i = 0; ; ++i)
  {
    v46 = [(AMDFeature *)v73 _shape];
    v47 = [(NSArray *)v46 count];
    MEMORY[0x277D82BD8](v46);
    if (i >= v47)
    {
      v23 = [(AMDFeature *)v73 _value];
      v56 = [AMDMultiArrayFeature buildMultiArrayBufferFrom:v73 andCapacity:"buildMultiArrayBufferFrom:andCapacity:error:" error:?];
      MEMORY[0x277D82BD8](v23);
      if (*v71)
      {
        v74 = 0;
        v64 = 1;
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x277CBEB18]);
        v22 = [(AMDFeature *)v73 _actualShape];
        v55 = [v21 initWithCapacity:{-[NSMutableArray count](v22, "count")}];
        MEMORY[0x277D82BD8](v22);
        for (j = 0; ; ++j)
        {
          v19 = [(AMDFeature *)v73 _actualShape];
          v20 = [(NSMutableArray *)v19 count];
          MEMORY[0x277D82BD8](v19);
          if (j >= v20)
          {
            break;
          }

          v53 = 1;
          for (k = j + 1; ; ++k)
          {
            v17 = [(AMDFeature *)v73 _actualShape];
            v18 = [(NSMutableArray *)v17 count];
            MEMORY[0x277D82BD8](v17);
            if (k >= v18)
            {
              break;
            }

            v16 = [(AMDFeature *)v73 _actualShape];
            v15 = [(NSMutableArray *)v16 objectAtIndexedSubscript:k];
            v53 *= [v15 longValue];
            MEMORY[0x277D82BD8](v15);
            MEMORY[0x277D82BD8](v16);
          }

          v14 = [MEMORY[0x277CCABB0] numberWithLong:v53];
          [v55 addObject:?];
          MEMORY[0x277D82BD8](v14);
        }

        v12 = objc_alloc(MEMORY[0x277CBFF48]);
        v8 = v56;
        v11 = [v56 bytes];
        v13 = [(AMDFeature *)v73 _actualShape];
        v51 = [v12 initWithDataPointer:v11 shape:v13 dataType:-[AMDFeature _dataType](v73 strides:"_dataType") deallocator:v55 error:{0, v71}];
        MEMORY[0x277D82BD8](v13);
        if (*v71)
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

    if (!v70 || ![v70 count])
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
      *v71 = v45;
      v74 = 0;
      v64 = 1;
      objc_storeStrong(&v67, 0);
      goto LABEL_35;
    }

    v63 = 0;
    v43 = [(AMDFeature *)v73 _shape];
    v42 = [(NSArray *)v43 objectAtIndexedSubscript:i];
    v44 = [v42 intValue];
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    if (v44 < 0)
    {
      v63 = [v70 count];
      goto LABEL_15;
    }

    v41 = [v70 count];
    v39 = [(AMDFeature *)v73 _shape];
    v38 = [(NSArray *)v39 objectAtIndexedSubscript:i];
    v40 = [v38 unsignedIntValue];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    if (v41 != v40)
    {
      break;
    }

    v32 = [(AMDFeature *)v73 _shape];
    v31 = [(NSArray *)v32 objectAtIndexedSubscript:i];
    v63 = [v31 intValue];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
LABEL_15:
    v28 = [(AMDFeature *)v73 _actualShape];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v63];
    [(NSMutableArray *)v28 addObject:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    v69 *= v63;
    v29 = [(AMDFeature *)v73 _shape];
    v30 = [(NSArray *)v29 count];
    MEMORY[0x277D82BD8](v29);
    if (i + 1 >= v30)
    {
      v25 = [v70 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x277D82BD8](v25);
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
        *v71 = v24;
        v74 = 0;
        v64 = 1;
        objc_storeStrong(&v59, 0);
        goto LABEL_35;
      }
    }

    else
    {
      v5 = [v70 firstObject];
      v6 = v70;
      v70 = v5;
      MEMORY[0x277D82BD8](v6);
    }
  }

  v35 = MEMORY[0x277CCACA8];
  v34 = [v70 count];
  v37 = [(AMDFeature *)v73 _shape];
  v36 = [(NSArray *)v37 objectAtIndexedSubscript:i];
  v62 = [v35 stringWithFormat:@"Unexpected size at depth %u, found: %lu, expected: %@", i, v34, v36];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
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
  *v71 = v33;
  v74 = 0;
  v64 = 1;
  objc_storeStrong(&v62, 0);
LABEL_35:
  objc_storeStrong(&v70, 0);
  *MEMORY[0x277D85DE8];
  v9 = v74;

  return v9;
}

- (id)buildMultiArrayBufferFrom:(id)a3 andCapacity:(unint64_t)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v32 = a5;
  v31 = 0;
  v26 = [(AMDFeature *)v35 _dataType];
  switch(v26)
  {
    case 65568:
      v13 = [MEMORY[0x277CBEB28] dataWithLength:4 * v33];
      v14 = v31;
      v31 = v13;
      MEMORY[0x277D82BD8](v14);
      v21 = v35;
      v15 = v31;
      v16 = [v31 mutableBytes];
      v28[1] = [(AMDMultiArrayFeature *)v21 fillFloat32MultiArray:v16 fromSource:location[0] atDepth:0 error:v32];
      if (*v32)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    case 65600:
      v5 = [MEMORY[0x277CBEB28] dataWithLength:8 * v33];
      v6 = v31;
      v31 = v5;
      MEMORY[0x277D82BD8](v6);
      v23 = v35;
      v7 = v31;
      v8 = [v31 mutableBytes];
      v30 = [(AMDMultiArrayFeature *)v23 fillDoubleMultiArray:v8 fromSource:location[0] atDepth:0 error:v32];
      if (*v32)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    case 131104:
      v9 = [MEMORY[0x277CBEB28] dataWithLength:4 * v33];
      v10 = v31;
      v31 = v9;
      MEMORY[0x277D82BD8](v10);
      v22 = v35;
      v11 = v31;
      v12 = [v31 mutableBytes];
      v28[2] = [(AMDMultiArrayFeature *)v22 fillInt32MultiArray:v12 fromSource:location[0] atDepth:0 error:v32];
      if (*v32)
      {
        v36 = 0;
        v29 = 1;
        goto LABEL_18;
      }

      break;
    default:
      v28[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown data type: %ldd", -[AMDFeature _dataType](v35, "_dataType")];
      v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v37, v28[0]);
        _os_log_error_impl(&dword_240CB9000, v27, OS_LOG_TYPE_ERROR, "%@", v37, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v20 = [AMDError allocError:16 withMessage:v28[0]];
      v17 = v20;
      *v32 = v20;
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

- (int)fillInt32MultiArray:(int *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = self;
  v42 = a2;
  v41 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v39 = a5;
  v38 = a6;
  v23 = [(AMDFeature *)v43 _actualShape];
  v22 = [(NSMutableArray *)v23 objectAtIndexedSubscript:a5];
  v24 = [v22 unsignedIntValue];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v37 = v24;
  if ([location count] == v24)
  {
    v17 = [(AMDFeature *)v43 _actualShape];
    v18 = [(NSMutableArray *)v17 count];
    MEMORY[0x277D82BD8](v17);
    if (v39 + 1 == v18)
    {
      v32 = v41;
      v31 = [location firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [(AMDFeature *)v43 _remapInfo];
        MEMORY[0x277D82BD8](v15);
        if (v15)
        {
          v12 = location;
          v14 = [(AMDFeature *)v43 _remapInfo];
          v13 = [(AMDFeature *)v43 _postRemapOperation];
          [AMDFeature copyInt32Values:v37 fromArray:v12 toBuffer:v32 withDefaultValue:0 withRemapData:v14 andPostRemapOperation:?];
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
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
        *v38 = v16;
        v44 = 0;
        v33 = 1;
        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&v31, 0);
    }

    else
    {
      v27 = v41;
      v26 = 0;
      for (j = 0; j < v37; ++j)
      {
        v9 = v43;
        v10 = [location objectAtIndexedSubscript:j];
        v26 = [AMDMultiArrayFeature fillInt32MultiArray:v9 fromSource:"fillInt32MultiArray:fromSource:atDepth:error:" atDepth:v27 error:?];
        MEMORY[0x277D82BD8](v10);
        if (*v38)
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
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying int32s at level %u: expected; %u, got: %lu", v39, v37, objc_msgSend(location, "count")];
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
    *v38 = v19;
    v44 = 0;
    v33 = 1;
    objc_storeStrong(&v36, 0);
  }

LABEL_23:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v44;
}

- (float)fillFloat32MultiArray:(float *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = self;
  v39 = a2;
  v38 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v36 = a5;
  v35 = a6;
  v20 = [(AMDFeature *)v40 _actualShape];
  v19 = [(NSMutableArray *)v20 objectAtIndexedSubscript:a5];
  v21 = [v19 unsignedIntValue];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v34 = v21;
  if ([location count] == v21)
  {
    v14 = [(AMDFeature *)v40 _actualShape];
    v15 = [(NSMutableArray *)v14 count];
    MEMORY[0x277D82BD8](v14);
    if (v36 + 1 == v15)
    {
      v29 = v38;
      v28 = [location firstObject];
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
        *v35 = v13;
        v41 = 0;
        v30 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v24 = v38;
      v23 = 0;
      for (j = 0; j < v34; ++j)
      {
        v10 = v40;
        v11 = [location objectAtIndexedSubscript:j];
        v23 = [AMDMultiArrayFeature fillFloat32MultiArray:v10 fromSource:"fillFloat32MultiArray:fromSource:atDepth:error:" atDepth:v24 error:?];
        MEMORY[0x277D82BD8](v11);
        if (*v35)
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
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying float32s at level %u: expected; %u, got: %lu", v36, v34, objc_msgSend(location, "count")];
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
    *v35 = v16;
    v41 = 0;
    v30 = 1;
    objc_storeStrong(&v33, 0);
  }

LABEL_21:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v41;
}

- (double)fillDoubleMultiArray:(double *)a3 fromSource:(id)a4 atDepth:(unsigned int)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = self;
  v39 = a2;
  v38 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v36 = a5;
  v35 = a6;
  v20 = [(AMDFeature *)v40 _actualShape];
  v19 = [(NSMutableArray *)v20 objectAtIndexedSubscript:a5];
  v21 = [v19 unsignedIntValue];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v34 = v21;
  if ([location count] == v21)
  {
    v14 = [(AMDFeature *)v40 _actualShape];
    v15 = [(NSMutableArray *)v14 count];
    MEMORY[0x277D82BD8](v14);
    if (v36 + 1 == v15)
    {
      v29 = v38;
      v28 = [location firstObject];
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
        *v35 = v13;
        v41 = 0;
        v30 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v24 = v38;
      v23 = 0;
      for (j = 0; j < v34; ++j)
      {
        v10 = v40;
        v11 = [location objectAtIndexedSubscript:j];
        v23 = [AMDMultiArrayFeature fillDoubleMultiArray:v10 fromSource:"fillDoubleMultiArray:fromSource:atDepth:error:" atDepth:v24 error:?];
        MEMORY[0x277D82BD8](v11);
        if (*v35)
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
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size mismatch while copying doubles at level %u: expected; %u, got: %lu", v36, v34, objc_msgSend(location, "count")];
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
    *v35 = v16;
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