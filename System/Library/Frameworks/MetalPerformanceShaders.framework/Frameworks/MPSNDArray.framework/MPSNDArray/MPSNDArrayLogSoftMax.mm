@interface MPSNDArrayLogSoftMax
- (MPSNDArrayLogSoftMax)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayLogSoftMax)initWithDevice:(id)device;
- (MPSNDArrayLogSoftMax)initWithDevice:(id)device axis:(unint64_t)axis;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)reshapeFitToTileToCommandBuffer:(id)buffer currentSource:(id)source kernelDimension:(unint64_t)dimension dimensionsToBeRetained:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayLogSoftMax

- (MPSNDArrayLogSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogSoftMax;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  result->_axis = 0;
  result->super.super._encode = EncodeArraySoftMax;
  return result;
}

- (MPSNDArrayLogSoftMax)initWithDevice:(id)device axis:(unint64_t)axis
{
  result = [(MPSNDArrayLogSoftMax *)self initWithDevice:device];
  result->_axis = axis;
  return result;
}

- (MPSNDArrayLogSoftMax)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLogSoftMax;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    v6 = result;
    v7 = [coder decodeInt64ForKey:@"MPSNDArraySoftMax.axis"];
    result = v6;
    v6->_axis = v7;
    v6->super.super._encode = EncodeArraySoftMax;
    v6->super.super.super._encodeData = v6;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLogSoftMax;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_axis forKey:@"MPSNDArraySoftMax.axis"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLogSoftMax;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 83) = self->_axis;
    self->super.super._encode = EncodeArraySoftMax;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(self + 664) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

- (id)reshapeFitToTileToCommandBuffer:(id)buffer currentSource:(id)source kernelDimension:(unint64_t)dimension dimensionsToBeRetained:
{
  v71 = v5;
  v87 = *MEMORY[0x277D85DE8];
  axis = self->_axis;
  descriptor = [source descriptor];
  v11 = (source + *MEMORY[0x277CD7410]);
  v12 = v11[2];
  v13 = v11[3];
  v14 = HIDWORD(v13);
  v15 = *v11;
  v16 = v11[1];
  v17 = BYTE2(v71) == 1 || BYTE1(v71) == 1;
  v18 = BYTE3(v71) == 1 || BYTE2(v71) == 1;
  v19 = BYTE4(v71) == 1 || BYTE3(v71) == 1;
  v20 = BYTE5(v71) == 1 || BYTE4(v71) == 1;
  v21 = BYTE6(v71) == 1 || BYTE5(v71) == 1;
  v22 = BYTE7(v71) == 1 || BYTE6(v71) == 1;
  v23 = BYTE8(v71) == 1 || BYTE7(v71) == 1;
  v24 = BYTE9(v71) == 1;
  v25 = BYTE9(v71) == 1 || BYTE8(v71) == 1;
  v26 = BYTE10(v71) == 1;
  if (BYTE10(v71) == 1)
  {
    v24 = 1;
  }

  v27 = BYTE11(v71) == 1;
  if (BYTE11(v71) == 1)
  {
    v26 = 1;
  }

  v28 = BYTE12(v71) == 1;
  if (BYTE12(v71) == 1)
  {
    v27 = 1;
  }

  v29 = BYTE13(v71) == 1;
  if (BYTE13(v71) == 1)
  {
    v28 = 1;
  }

  v30 = BYTE14(v71) == 1;
  if (BYTE14(v71) == 1)
  {
    v29 = 1;
  }

  if (HIBYTE(v71) == 1)
  {
    v30 = 1;
  }

  v31 = !v30;
  if (v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = HIDWORD(v13);
  }

  if (v31)
  {
    v14 = 1;
  }

  v33 = (v32 * DWORD2(v13));
  v34 = !v29;
  if (v29)
  {
    v35 = 1;
  }

  else
  {
    v35 = v33;
  }

  if (v34)
  {
    v33 = 1;
  }

  v85 = v33;
  v86 = v14;
  v36 = (v35 * DWORD1(v13));
  if (v28)
  {
    v37 = 1;
  }

  else
  {
    v37 = v35 * DWORD1(v13);
  }

  if (!v28)
  {
    v36 = 1;
  }

  v38 = (v37 * v13);
  if (v27)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38;
  }

  if (!v27)
  {
    v38 = 1;
  }

  v83 = v38;
  v84 = v36;
  v40 = (v39 * HIDWORD(v12));
  if (v26)
  {
    v41 = 1;
  }

  else
  {
    v41 = v39 * HIDWORD(v12);
  }

  if (!v26)
  {
    v40 = 1;
  }

  v42 = (v41 * DWORD2(v12));
  if (v24)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (!v24)
  {
    v42 = 1;
  }

  v81 = v42;
  v82 = v40;
  v44 = (v43 * DWORD1(v12));
  v45 = !v25;
  if (v25)
  {
    v46 = 1;
  }

  else
  {
    v46 = v43 * DWORD1(v12);
  }

  if (v45)
  {
    v44 = 1;
  }

  v47 = (v46 * v12);
  v48 = !v23;
  if (v23)
  {
    v49 = 1;
  }

  else
  {
    v49 = v47;
  }

  if (v48)
  {
    v47 = 1;
  }

  v79 = v47;
  v80 = v44;
  v50 = (v49 * HIDWORD(v16));
  v51 = !v22;
  if (v22)
  {
    v52 = 1;
  }

  else
  {
    v52 = v50;
  }

  if (v51)
  {
    v50 = 1;
  }

  v53 = (v52 * DWORD2(v16));
  v54 = !v21;
  if (v21)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53;
  }

  if (v54)
  {
    v53 = 1;
  }

  v77 = v53;
  v78 = v50;
  v56 = (v55 * DWORD1(v16));
  v57 = !v20;
  if (v20)
  {
    v58 = 1;
  }

  else
  {
    v58 = v56;
  }

  if (v57)
  {
    v56 = 1;
  }

  v59 = (v58 * v16);
  v60 = !v19;
  if (v19)
  {
    v61 = 1;
  }

  else
  {
    v61 = v59;
  }

  if (v60)
  {
    v59 = 1;
  }

  v75 = v59;
  v76 = v56;
  v62 = (v61 * HIDWORD(v15));
  v63 = !v18;
  if (v18)
  {
    v64 = 1;
  }

  else
  {
    v64 = v62;
  }

  if (v63)
  {
    v62 = 1;
  }

  v65 = (v64 * DWORD2(v15));
  v66 = !v17;
  if (v17)
  {
    v67 = 1;
  }

  else
  {
    v67 = v65;
  }

  if (v66)
  {
    v65 = 1;
  }

  v73 = v65;
  v74 = v62;
  *&v68 = v15;
  *(&v68 + 1) = (v67 * DWORD1(v15));
  v72 = v68;
  if (axis >= 3)
  {
    v73 = *(&v72 + axis);
    *(&v72 + axis) = 1;
  }

  [descriptor reshapeWithDimensionCount:dimension dimensionSizes:&v72];
  result = [source arrayViewWithCommandBuffer:buffer descriptor:descriptor aliasing:1];
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

@end