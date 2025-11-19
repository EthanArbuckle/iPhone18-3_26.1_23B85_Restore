@interface VNFgBgE5MLInputTensors
- (VNFgBgE5MLInputTensors)initWithTargetPoint:(CGPoint)a3 queryNumber:(int)a4 maxSpatialLength:(int)a5 inputSize:(CGSize)a6 radius:(int)a7 error:(id *)a8;
- (VNFgBgE5MLInputTensors)initWithTargetPointList:(const void *)a3 queryNumber:(int)a4 maxSpatialLength:(int)a5 inputSize:(CGSize)a6 radius:(int)a7 error:(id *)a8;
@end

@implementation VNFgBgE5MLInputTensors

- (VNFgBgE5MLInputTensors)initWithTargetPointList:(const void *)a3 queryNumber:(int)a4 maxSpatialLength:(int)a5 inputSize:(CGSize)a6 radius:(int)a7 error:(id *)a8
{
  v10 = a4;
  v66[4] = *MEMORY[0x1E69E9840];
  v65.receiver = self;
  v65.super_class = VNFgBgE5MLInputTensors;
  v12 = [(VNFgBgE5MLInputTensors *)&v65 init:a3];
  v13 = v12;
  if (v12)
  {
    v43 = v12;
    LODWORD(v61) = -1082130432;
    std::vector<float>::vector[abi:ne200100](&v63, ((a5 + (a5 >> 31)) & 0xFFFFFFFE));
    LODWORD(v59) = -1082130432;
    std::vector<float>::vector[abi:ne200100](&v61, 2 * a5);
    v14 = (a5 / 2);
    v15 = v14;
    LODWORD(v57) = 1065353216;
    std::vector<float>::vector[abi:ne200100](&v59, v14);
    v16 = a5 + v10;
    v56 = -971227136;
    std::vector<float>::vector[abi:ne200100](&v57, (v16 * v16));
    if (v14 != ((*(a3 + 1) - *a3) >> 3))
    {
      __assert_rtn("[VNFgBgE5MLInputTensors initWithTargetPointList:queryNumber:maxSpatialLength:inputSize:radius:error:]", "VNFgBgE5MLProcess.mm", 198, "targetPointNum == positiveMaxSpatialLength");
    }

    if (a5 <= 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = v59;
      v19 = (*a3 + 4);
      v20 = v63 + 1;
      v21 = (v61 + 4);
      do
      {
        v22 = *(v19 - 1);
        v23 = *v19;
        if (v22 != -1.0 && v23 != -1.0)
        {
          ++v17;
          *(v20 - 1) = v22;
          *v20 = v23;
          *(v21 - 1) = v22;
          *v21 = v23;
          *v18 = 0;
        }

        ++v18;
        v19 += 2;
        v20 += 2;
        v21 += 2;
        --v14;
      }

      while (v14);
    }

    if (v10 >= 1)
    {
      v26 = 0;
      v27 = v57;
      v28 = v10;
      do
      {
        bzero(&v27[4 * v26], 4 * v10);
        v26 += v16;
        --v28;
      }

      while (v28);
    }

    v13 = v43;
    if (v17 >= 1)
    {
      v29 = v17 + v10;
      v30 = v57;
      v31 = v10 * v16;
      do
      {
        if (v29 >= 1)
        {
          bzero(&v30[4 * v31], 4 * (v29 - 1) + 4);
        }

        ++v10;
        v31 += v16;
      }

      while (v10 < v29);
    }

    __p = 0;
    v54 = 0;
    v55 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v63, v64, v64 - v63);
    v32 = createIOSurfaceWithInput(2, v15, 4, &__p, a8);
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v32 name:@"query_points_pos"];
      v50 = 0;
      v51 = 0;
      v52 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v50, v61, v62, (v62 - v61) >> 2);
      v34 = createIOSurfaceWithInput(2, a5, 4, &v50, a8);
      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      if (v34)
      {
        v35 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v34 name:@"query_points"];
        v47 = 0;
        v48 = 0;
        v49 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v47, v59, v60, (v60 - v59) >> 2);
        v36 = createIOSurfaceWithInput(1, v15, 2, &v47, a8);
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        if (v36)
        {
          v37 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v36 name:@"query_mask_pos"];
          v44 = 0;
          v45 = 0;
          v46 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v44, v57, v58, (v58 - v57) >> 2);
          v38 = createIOSurfaceWithInput(v16, v16, 2 * v16, &v44, a8);
          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }

          v39 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v38 name:@"attn_mask"];
          v66[0] = v33;
          v66[1] = v35;
          v66[2] = v37;
          v66[3] = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
          inputTensors = v43->_inputTensors;
          v43->_inputTensors = v40;

          v25 = v43;
        }

        else
        {
          v38 = 0;
          v25 = 0;
        }
      }

      else
      {
        v36 = 0;
        v38 = 0;
        v25 = 0;
      }

      CFRelease(v32);
      if (v34)
      {
        CFRelease(v34);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v38)
      {
        CFRelease(v38);
      }
    }

    else
    {
      v25 = 0;
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (VNFgBgE5MLInputTensors)initWithTargetPoint:(CGPoint)a3 queryNumber:(int)a4 maxSpatialLength:(int)a5 inputSize:(CGSize)a6 radius:(int)a7 error:(id *)a8
{
  height = a6.height;
  width = a6.width;
  y = a3.y;
  x = a3.x;
  v74[4] = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = VNFgBgE5MLInputTensors;
  v16 = [(VNFgBgE5MLInputTensors *)&v73 init];
  if (v16)
  {
    LODWORD(v69) = -1082130432;
    v59 = v16;
    std::vector<float>::vector[abi:ne200100](&v71, ((a5 + (a5 >> 31)) & 0xFFFFFFFE));
    LODWORD(v67) = -1082130432;
    std::vector<float>::vector[abi:ne200100](&v69, 2 * a5);
    LODWORD(v65) = 1065353216;
    v58 = a5 / 2;
    std::vector<float>::vector[abi:ne200100](&v67, v58);
    v17 = a8;
    v18 = a5 + a4;
    v64 = -971227136;
    std::vector<float>::vector[abi:ne200100](&v65, (v18 * v18));
    if (a4 >= 1)
    {
      v19 = 0;
      v20 = v65;
      v21 = a4;
      do
      {
        bzero(&v20[4 * v19], 4 * a4);
        v19 += v18;
        --v21;
      }

      while (v21);
    }

    v22 = x == -1.0 || y == -1.0;
    v23 = v17;
    if (!v22)
    {
      if (a5 >= 2)
      {
        v24 = a5 / 2 + a4;
        v25 = v65;
        v26 = a4 * v18;
        do
        {
          if (v24 >= 1)
          {
            bzero(&v25[4 * v26], 4 * (v24 - 1) + 4);
          }

          ++a4;
          v26 += v18;
        }

        while (a4 < v24);
      }

      if (v68 != v67)
      {
        v27 = (v68 - v67) >> 2;
        if (v27 <= 1)
        {
          v27 = 1;
        }

        bzero(v67, 4 * v27);
      }

      v28 = a7;
      v29 = fmax(x - a7, 0.0);
      v30 = fmin(width + -2.0, x + a7);
      v31 = v29;
      if (v30 > v29)
      {
        v32 = 0;
        v33 = fmax(y - v28, 0.0);
        v34 = y + v28;
        v35 = v33;
        v36 = fmin(height + -2.0, v34);
        v37 = v69 + 4;
        v38 = v71 + 4;
        v39 = v33 + 1;
        do
        {
          if (v36 > v35)
          {
            v40 = v32;
            v41 = v31 / width;
            v42 = &v37[8 * v32];
            v43 = &v38[8 * v32];
            v44 = v39;
            v45 = v35;
            do
            {
              v46 = v45 / height;
              *(v43 - 1) = v41;
              *v43 = v46;
              *(v42 - 1) = v41;
              *v42 = v46;
              ++v40;
              v45 = v44;
              v42 += 2;
              v43 += 2;
              ++v44;
            }

            while (v36 > v45);
            v32 = v40;
          }

          v31 = ++v29;
        }

        while (v30 > v29);
      }
    }

    memset(__p, 0, sizeof(__p));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, v71, v72, (v72 - v71) >> 2);
    IOSurfaceWithInput = createIOSurfaceWithInput(2, v58, 4, __p, v17);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (IOSurfaceWithInput)
    {
      v48 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:IOSurfaceWithInput name:@"query_points_pos"];
      CFRelease(IOSurfaceWithInput);
      memset(v62, 0, sizeof(v62));
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v62, v69, v70, (v70 - v69) >> 2);
      v49 = createIOSurfaceWithInput(2, a5, 4, v62, v17);
      if (v62[0])
      {
        operator delete(v62[0]);
      }

      if (v49)
      {
        v50 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v49 name:@"query_points"];
        CFRelease(v49);
        memset(v61, 0, sizeof(v61));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v61, v67, v68, (v68 - v67) >> 2);
        v51 = createIOSurfaceWithInput(1, v58, 2, v61, v17);
        if (v61[0])
        {
          operator delete(v61[0]);
        }

        if (v51)
        {
          v52 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v51 name:@"query_mask_pos"];
          CFRelease(v51);
          memset(v60, 0, sizeof(v60));
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v60, v65, v66, (v66 - v65) >> 2);
          v53 = createIOSurfaceWithInput(v18, v18, 2 * v18, v60, v23);
          if (v60[0])
          {
            operator delete(v60[0]);
          }

          if (v53)
          {
            v54 = [[VNFgBgE5MLInputElement alloc] initWithValueRef:v53 name:@"attn_mask"];
            v16 = v59;
            CFRelease(v53);
            v74[0] = v48;
            v74[1] = v50;
            v74[2] = v52;
            v74[3] = v54;
            v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
            inputTensors = v59->_inputTensors;
            v59->_inputTensors = v55;

            v53 = v59;
          }

          else
          {
            v16 = v59;
          }
        }

        else
        {
          v53 = 0;
          v16 = v59;
        }
      }

      else
      {
        v53 = 0;
        v16 = v59;
      }
    }

    else
    {
      v53 = 0;
      v16 = v59;
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

@end