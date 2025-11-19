@interface VisionCoreInferenceNetworkDescriptor(VNInternalAdditions)
- (BOOL)getVNEspressoModelImageprintData:()VNInternalAdditions elementType:elementCount:fromTensorData:descriptor:error:;
- (id)URLForComputeDevice:()VNInternalAdditions error:;
- (id)VNEspressoModelImageprintOfClass:()VNInternalAdditions fromData:tensorDescriptor:originatingRequestSpecifier:fromBlock:error:;
@end

@implementation VisionCoreInferenceNetworkDescriptor(VNInternalAdditions)

- (id)VNEspressoModelImageprintOfClass:()VNInternalAdditions fromData:tensorDescriptor:originatingRequestSpecifier:fromBlock:error:
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  LOBYTE(a1) = [a1 getVNEspressoModelImageprintData:&v23 elementType:&v25 elementCount:&v24 fromTensorData:v14 descriptor:v15 error:a8];
  v18 = v23;
  if (a1)
  {
    if (v17)
    {
      v19 = v17[2](v17, a3, v18, v25, v24, v16, a8);
    }

    else
    {
      v20 = [a3 printWithDescriptorData:v18 elementType:v25 elementCount:v24 originatingRequestSpecifier:v16 error:a8];
      v19 = v20;
      if (v20)
      {
        v21 = v20;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)getVNEspressoModelImageprintData:()VNInternalAdditions elementType:elementCount:fromTensorData:descriptor:error:
{
  v13 = a6;
  v14 = a7;
  v15 = [v14 shape];
  v43 = 0;
  if (([v15 getOneDimensionalArrayDimensionIndex:&v43 error:a8] & 1) == 0)
  {
    goto LABEL_23;
  }

  v16 = [v14 dataType];
  v17 = v16;
  v40 = 1;
  v18 = 4;
  if (v16 != 65552 && v16 != 65568)
  {
    if (v16 == 65600)
    {
      v40 = 2;
      v18 = 8;
      goto LABEL_6;
    }

    if (a8)
    {
      v30 = objc_alloc(MEMORY[0x1E696AEC0]);
      v31 = NSStringFromVisionCoreTensorDataType();
      v32 = [v30 initWithFormat:@"tensor data type %@ is not supported", v31];

      *a8 = [VNError errorForInvalidArgumentWithLocalizedDescription:v32];
    }

LABEL_23:
    v20 = 0;
    goto LABEL_32;
  }

LABEL_6:
  v19 = [v15 elementCount];
  v39 = a3;
  if (v18 * v19 != [v14 storageByteCount])
  {
    v38 = v13;
    v21 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v18 * v19];
    v22 = [v21 mutableBytes];
    if (v22)
    {
      v36 = v21;
      v23 = [v15 rank];
      v34 = a4;
      v35 = a5;
      src.data = 0;
      std::vector<unsigned long>::vector[abi:ne200100](__p, v23);
      v24 = [v38 bytes];
      if (v19)
      {
        v25 = v24;
        v20 = 0;
        v26 = 0;
        v37 = vdupq_n_s64(1uLL);
        while (1)
        {
          *(__p[0] + v43) = v26;
          v41 = 0;
          if (([v14 getByteOffset:&v41 forPosition:? rank:? error:?] & 1) == 0)
          {
            v21 = v36;
            goto LABEL_27;
          }

          v27 = (v25 + v41);
          if (v17 == 65600)
          {
            *(v22 + 8 * v26) = *v27;
            goto LABEL_19;
          }

          if (v17 == 65568)
          {
            break;
          }

          if (v17 == 65552)
          {
            src.data = (v25 + v41);
            *&src.height = v37;
            src.rowBytes = 2;
            v45 = 2143289344;
            dest.data = &v45;
            *&dest.height = v37;
            dest.rowBytes = 4;
            vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
            v28 = v45;
LABEL_17:
            *(v22 + 4 * v26) = v28;
          }

LABEL_19:
          v20 = ++v26 >= v19;
          if (v19 == v26)
          {
            goto LABEL_20;
          }
        }

        v28 = *v27;
        goto LABEL_17;
      }

LABEL_20:
      v21 = v36;
      v29 = v36;
      *v39 = v36;
      *v34 = v40;
      v20 = 1;
      *v35 = v19;
LABEL_27:
      v13 = v38;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      if (a8)
      {
        +[VNError errorForMemoryAllocationFailure];
        *a8 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }

      v13 = v38;
    }

    goto LABEL_32;
  }

  *a3 = [v13 copy];
  *a4 = v40;
  v20 = 1;
  *a5 = v19;
LABEL_32:

  return v20;
}

- (id)URLForComputeDevice:()VNInternalAdditions error:
{
  v6 = a3;
  v7 = [a1 URL];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    *a4 = [VNError errorForUnsupportedComputeDevice:v6];
  }

  return v8;
}

@end