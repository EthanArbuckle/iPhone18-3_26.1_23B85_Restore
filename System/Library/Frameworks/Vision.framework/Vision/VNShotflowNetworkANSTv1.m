@interface VNShotflowNetworkANSTv1
+ (CGSize)inputImageSize;
+ (const)importantClasses;
+ (tuple<float,)inputBiasRGB;
- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4;
- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4;
- (void)initializeBuffers;
@end

@implementation VNShotflowNetworkANSTv1

+ (tuple<float,)inputBiasRGB
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.var0.var2 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

+ (const)importantClasses
{
  if (+[VNShotflowNetworkANSTv1 importantClasses]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANSTv1 importantClasses]::onceToken, &__block_literal_global_240_34390);
  }

  return +[VNShotflowNetworkANSTv1 importantClasses]::importantClasses;
}

+ (CGSize)inputImageSize
{
  v2 = 512.0;
  v3 = 384.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)processVImage:(vImage_Buffer *)a3 inputIsBGR:(BOOL)a4
{
  v4 = a4;
  height = a3->height;
  width = a3->width;
  if ([(VNShotflowNetworkANSTv1 *)self setInputShape:width height:height])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6014;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v9 = *&a3->width;
  v49[0] = *&a3->data;
  v49[1] = v9;
  [(VNShotflowNetwork *)self runNetwork:v49 inputIsBGR:v4];
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
    v19 = **(v18 + 6);
    v20 = **(v18 + 8);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  if (v17 >= 1)
  {
    v47 = height;
    v48 = width;
    v21 = v17 & 0x7FFFFFFF;
    v22 = (v16 + 8);
    do
    {
      v23 = sqrtf(*v14);
      if (v23 >= 0.3)
      {
        v24 = *v15;
        v25 = [v12 hasPose];
        v26 = (v24 + 1.0);
        if (v26 == 1)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        v28 = 0.0;
        v29 = 0.0;
        v30 = 0.0;
        if (v27 == 1)
        {
          v31 = (v20 + 12 * *v19);
          v28 = (*v31 * 180.0) + -90.0;
          v30 = (*(v20 + 12 * *v19 + 4) * 360.0) + -180.0;
          v29 = (v31[2] * 180.0) + -90.0;
        }

        v33 = *(v22 - 2);
        v32 = *(v22 - 1);
        v34 = *v22;
        v35 = v22[1];
        v36 = [VNShotflowDetection alloc];
        v37 = [v12 importantClasses];
        v38 = (v33 / v48);
        v39 = (v32 / v47);
        v40 = (v34 / v48) - v38;
        v41 = (v35 / v47) - v39;
        v42 = 1.0 - (v41 * 0.5 + v39) - v41 * 0.5;
        v43 = [(VNShotflowDetection *)v36 initWithBox:0 defaultBox:v37[1] - *v37 > 8uLL confidence:v26 scale:v40 * 0.5 + v38 - v40 * 0.5 rotationAngle:v42 yawAngle:v40 pitchAngle:v41 hasLabel:v40 * 0.5 + v38 - v40 * 0.5 label:v42, v40, v41, __PAIR64__(LODWORD(v30), LODWORD(v23)), __PAIR64__(LODWORD(v28), LODWORD(v29))];
        [v10 addObject:v43];
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
        [(VNShotflowNetworkANSTv1 *)self initializeBuffers];
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

@end