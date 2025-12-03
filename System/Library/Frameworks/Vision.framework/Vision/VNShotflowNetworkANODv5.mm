@interface VNShotflowNetworkANODv5
+ (CGSize)inputImageSize;
+ (const)importantClasses;
+ (tuple<float,)inputBiasRGB;
- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r;
- (int)setInputShape:(unint64_t)shape height:(unint64_t)height;
- (void)initializeBuffers;
@end

@implementation VNShotflowNetworkANODv5

+ (tuple<float,)inputBiasRGB
{
  [objc_opt_class() inputScale];
  v3 = v2 * -116.28;
  v4 = v2 * -123.68;
  v5 = v2 * -103.53;
  result.var0.var2 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v5;
  return result;
}

+ (const)importantClasses
{
  if (+[VNShotflowNetworkANODv5 importantClasses]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANODv5 importantClasses]::onceToken, &__block_literal_global_250);
  }

  return +[VNShotflowNetworkANODv5 importantClasses]::importantClasses;
}

+ (CGSize)inputImageSize
{
  v2 = 608.0;
  v3 = 384.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r
{
  rCopy = r;
  height = image->height;
  width = image->width;
  if ([(VNShotflowNetworkANODv5 *)self setInputShape:width height:height])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 6014;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v9 = *&image->width;
  v66[0] = *&image->data;
  v66[1] = v9;
  [(VNShotflowNetwork *)self runNetwork:v66 inputIsBGR:rCopy];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(VNShotflowNetwork *)self threshold];
  v59 = v10;
  if (v11 == 1.0)
  {
    v55 = __cxa_allocate_exception(8uLL);
    *v55 = 6012;
    __cxa_throw(v55, MEMORY[0x1E69E54B0], 0);
  }

  v12 = objc_opt_class();
  begin = self->super.super._logitsPosOutputs.__begin_;
  v14 = *begin[2];
  v15 = *begin[4];
  v16 = (*begin)[3];
  v63 = **begin;
  v64 = height;
  if (([v12 hasPose] & 1) != 0 || (objc_msgSend(v12, "hasPetFaces") & 1) != 0 || objc_msgSend(v12, "hasFaceBodyAssociation"))
  {
    v17 = width;
    v18 = **(self->super.super._logitsPosOutputs.__begin_ + 6);
  }

  else
  {
    v17 = width;
    v18 = 0;
  }

  if ([v12 hasPose])
  {
    v19 = **(self->super.super._logitsPosOutputs.__begin_ + 8);
    v20 = 5;
  }

  else
  {
    v19 = 0;
    v20 = 4;
  }

  if ([v12 hasPetFaces])
  {
    v58 = **(self->super.super._logitsPosOutputs.__begin_ + 2 * v20++);
  }

  else
  {
    v58 = 0;
  }

  if ([v12 hasFaceBodyAssociation])
  {
    v57 = **(self->super.super._logitsPosOutputs.__begin_ + 2 * v20);
  }

  else
  {
    v57 = 0;
  }

  if (v16 >= 1)
  {
    v60 = v64;
    v61 = v17;
    v21 = v16 & 0x7FFFFFFF;
    v22 = (v63 + 8);
    do
    {
      v23 = sqrtf(*v14);
      if (v23 >= 0.3)
      {
        v24 = *v15;
        hasPose = [v12 hasPose];
        v26 = (v24 + 1.0);
        if (v26 == 1)
        {
          v27 = hasPose;
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
          v31 = 3 * *v18;
          v32 = (v19 + 4 * v31);
          v30 = ((1.0 / (expf(-*v32) + 1.0)) * 360.0) + -180.0;
          v29 = (*(v19 + 4 * v31 + 4) * 180.0) + -90.0;
          v33 = v32[2];
          v10 = v59;
          v28 = (v33 * 180.0) + -90.0;
        }

        hasPetFaces = [v12 hasPetFaces];
        if ((v26 - 9) < 2)
        {
          v35 = hasPetFaces;
        }

        else
        {
          v35 = 0;
        }

        v36 = 0;
        if (v35 == 1)
        {
          v36 = *(v58 + 4 * *v18);
        }

        v37 = 0;
        v65 = v30;
        v62 = __PAIR64__(LODWORD(v28), LODWORD(v29));
        if ([v12 hasFaceBodyAssociation])
        {
          v38 = v26 != 12 && (v26 & 0xFFFFFFF7) - 1 > 1;
          v39 = 0;
          if (!v38)
          {
            v40 = *v18;
            v39 = *(v57 + 8 * v40);
            v37 = *(v57 + 8 * v40 + 4);
          }
        }

        else
        {
          v39 = 0;
        }

        v42 = *(v22 - 2);
        v41 = *(v22 - 1);
        v44 = *v22;
        v43 = v22[1];
        v45 = [VNShotflowDetection alloc];
        importantClasses = [v12 importantClasses];
        v47 = (v42 / v61);
        v48 = (v41 / v60);
        v49 = (v44 / v61) - v47;
        v50 = (v43 / v60) - v48;
        v51 = 1.0 - (v50 * 0.5 + v48) - v50 * 0.5;
        LODWORD(v56) = v37;
        v52 = [(VNShotflowDetection *)v45 initWithBox:0 defaultBox:importantClasses[1] - *importantClasses > 8uLL confidence:v26 scale:v49 * 0.5 + v47 - v49 * 0.5 rotationAngle:v51 yawAngle:v49 pitchAngle:v50 hasLabel:v49 * 0.5 + v47 - v49 * 0.5 label:v51 petFaceScore:v49 associatedX:v50 associatedY:__PAIR64__(LODWORD(v65), LODWORD(v23)), v62, __PAIR64__(v39, v36), v56];
        [v10 addObject:v52];
      }

      ++v14;
      ++v15;
      ++v18;
      v22 += 4;
      --v21;
    }

    while (v21);
  }

  return v10;
}

- (int)setInputShape:(unint64_t)shape height:(unint64_t)height
{
  heightCopy = height;
  shapeCopy = shape;
  if (*&self->super.super._currentNetworkWidth == __PAIR128__(height, shape))
  {
    return 0;
  }

  inputLayerName = [objc_opt_class() inputLayerName];
  [inputLayerName UTF8String];

  [objc_opt_class() inputImageSize];
  if (v10 != heightCopy || v9 != shapeCopy)
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
        [(VNShotflowNetworkANODv5 *)self initializeBuffers];
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
  inputLayerName = [v3 inputLayerName];
  [inputLayerName UTF8String];
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