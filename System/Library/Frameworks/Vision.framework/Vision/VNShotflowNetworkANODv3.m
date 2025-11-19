@interface VNShotflowNetworkANODv3
+ (const)importantClasses;
+ (tuple<float,)inputBiasRGB;
- (VNShotflowNetworkANODv3)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7;
- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4;
- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4;
- (void)initializeBuffers;
@end

@implementation VNShotflowNetworkANODv3

- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4
{
  v4 = a4;
  height = a3->height;
  width = a3->width;
  if ([(VNShotflowNetworkANODv3 *)self setInputShape:width height:height])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6014;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v9 = *&a3->width;
  v51[0] = *&a3->data;
  v51[1] = v9;
  [(VNShotflowNetwork *)self runNetwork:v51 inputIsBGR:v4];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VNShotflowNetwork *)self threshold];
  if (v11 == 1.0)
  {
    v46 = __cxa_allocate_exception(8uLL);
    *v46 = 6012;
    __cxa_throw(v46, MEMORY[0x1E69E54B0], 0);
  }

  v12 = objc_opt_class();
  begin = self->super.super._logitsPosOutputs.__begin_;
  v14 = *begin[2];
  v15 = *begin[4];
  v16 = **begin;
  v17 = (*begin)[3];
  if ([v12 hasPose])
  {
    v18 = self->super.super._logitsPosOutputs.__begin_;
    v19 = *v18[6];
    v48 = *v18[10];
    v49 = *v18[8];
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v19 = 0;
  }

  if (v17 >= 1)
  {
    v50 = width;
    v20 = height;
    v21 = v17 & 0x7FFFFFFF;
    v22 = (v16 + 8);
    v23 = 0.5;
    do
    {
      v24 = *v14;
      if (*v14 >= v23)
      {
        v25 = *v15;
        v26 = [v12 hasPose];
        v27 = (v25 + 1.0);
        if (v27 == 1)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        v29 = 0;
        v30 = 0;
        if (v28 == 1)
        {
          v31 = *v19;
          v30 = dword_1A6051508[*(v49 + 4 * v31)];
          v29 = dword_1A6051538[*(v48 + 4 * v31)];
        }

        v32 = *(v22 - 2);
        v33 = *(v22 - 1);
        v34 = *v22;
        v35 = v22[1];
        v36 = [VNShotflowDetection alloc];
        v37 = [v12 importantClasses];
        v38 = (v32 / v50);
        v39 = (v33 / v20);
        v40 = (v34 / v50) - v38;
        v41 = (v35 / v20) - v39;
        v42 = 1.0 - (v41 * 0.5 + v39) - v41 * 0.5;
        LODWORD(v47) = v29;
        v43 = [(VNShotflowDetection *)v36 initWithBox:0 defaultBox:v37[1] - *v37 > 8uLL confidence:v27 scale:v40 * 0.5 + v38 - v40 * 0.5 rotationAngle:v42 yawAngle:v40 hasLabel:v41 label:v40 * 0.5 + v38 - v40 * 0.5, v42, v40, v41, __PAIR64__(v30, LODWORD(v24)), v47];
        [v10 addObject:v43];

        v23 = 0.5;
      }

      ++v14;
      ++v15;
      ++v19;
      v22 += 4;
      --v21;
    }

    while (v21);
  }

  return v10;
}

- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (*&self->super.super._currentNetworkWidth == __PAIR128__(a4, a3))
  {
    return 0;
  }

  v8 = [objc_opt_class() inputLayerName];
  [v8 UTF8String];

  [objc_opt_class() inputImageSize];
  if (v10 != v4 || v9 != v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6005;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  result = espresso_plan_build_clean();
  if (!result)
  {
    result = espresso_network_change_input_blob_shapes();
    if (!result)
    {
      result = espresso_plan_build();
      if (!result)
      {
        [(VNShotflowNetworkANODv3 *)self initializeBuffers];
        return 0;
      }
    }
  }

  return result;
}

- (void)initializeBuffers
{
  v3 = objc_opt_class();
  v7 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, 4uLL);
  v4 = [v3 inputLayerName];
  [v4 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();

  if (!blob_dimensions)
  {
    std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](&self->super.super._logitsPosOutputs);
    operator new();
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = 6014;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

- (VNShotflowNetworkANODv3)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v12 = a3;
  v18.receiver = self;
  v18.super_class = VNShotflowNetworkANODv3;
  *&v13 = a7;
  v14 = [(VNShotflowNetworkANODBase *)&v18 initWithModelPath:v12 espressoEngineID:v10 espressoDeviceID:v9 espressoStorageType:v8 threshold:v13];
  v15 = v14;
  if (v14)
  {
    [(VNShotflowNetworkANODv3 *)v14 initializeBuffers];
    v16 = v15;
  }

  return v15;
}

+ (tuple<float,)inputBiasRGB
{
  v2 = -2.1398;
  v3 = -2.0209;
  v4 = -1.7949;
  result.var0.var2 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

+ (const)importantClasses
{
  if (+[VNShotflowNetworkANODv3 importantClasses]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANODv3 importantClasses]::onceToken, &__block_literal_global_195);
  }

  return +[VNShotflowNetworkANODv3 importantClasses]::importantClasses;
}

@end