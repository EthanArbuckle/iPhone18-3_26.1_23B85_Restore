@interface MPSRNNRecurrentMatrixState
- (MPSMatrix)getMemoryCellMatrixForLayerIndex:(NSUInteger)layerIndex;
- (MPSMatrix)getRecurrentOutputMatrixForLayerIndex:(NSUInteger)layerIndex;
- (MPSRNNRecurrentMatrixState)initWithCommandBuffer:(id)buffer recurrentMatrixDescriptors:(id *)descriptors cellMatrixDescriptors:(id *)matrixDescriptors isTemporary:(BOOL)temporary layerCount:(int)count;
- (MPSRNNRecurrentMatrixState)initWithDevice:(id)device commandBuffer:(id)buffer recurrentMatrixDescriptors:(id *)descriptors cellMatrixDescriptors:(id *)matrixDescriptors isTemporary:(BOOL)temporary layerCount:(int)count;
- (void)dealloc;
- (void)setReadCount:(unint64_t)count;
@end

@implementation MPSRNNRecurrentMatrixState

- (MPSMatrix)getRecurrentOutputMatrixForLayerIndex:(NSUInteger)layerIndex
{
  if (self->nLayers > layerIndex && (recurrentMatrices = self->recurrentMatrices) != 0)
  {
    return recurrentMatrices[layerIndex];
  }

  else
  {
    return 0;
  }
}

- (MPSMatrix)getMemoryCellMatrixForLayerIndex:(NSUInteger)layerIndex
{
  if (self->nLayers > layerIndex && (cellMatrices = self->cellMatrices) != 0)
  {
    return cellMatrices[layerIndex];
  }

  else
  {
    return 0;
  }
}

- (MPSRNNRecurrentMatrixState)initWithCommandBuffer:(id)buffer recurrentMatrixDescriptors:(id *)descriptors cellMatrixDescriptors:(id *)matrixDescriptors isTemporary:(BOOL)temporary layerCount:(int)count
{
  v8 = *&count;
  temporaryCopy = temporary;
  v15 = objc_msgSend_device(buffer, a2, buffer, descriptors, matrixDescriptors, temporary, *&count, v7);

  return objc_msgSend_initWithDevice_commandBuffer_recurrentMatrixDescriptors_cellMatrixDescriptors_isTemporary_layerCount_(self, v14, v15, buffer, descriptors, matrixDescriptors, temporaryCopy, v8);
}

- (MPSRNNRecurrentMatrixState)initWithDevice:(id)device commandBuffer:(id)buffer recurrentMatrixDescriptors:(id *)descriptors cellMatrixDescriptors:(id *)matrixDescriptors isTemporary:(BOOL)temporary layerCount:(int)count
{
  temporaryCopy = temporary;
  MPSDevice = MPSDevice::GetMPSDevice();
  v15 = 0;
  if (count >= 1)
  {
    v16 = MPSDevice;
    if (MPSDevice)
    {
      v115.receiver = self;
      v115.super_class = MPSRNNRecurrentMatrixState;
      v15 = [(MPSState *)&v115 initWithResource:0];
      v15->_isTemporary = temporaryCopy;
      v17 = 64;
      v15->nLayers = count;
      v18 = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
      v15->recurrentMatrices = v18;
      if (!v18 || (v26 = 56, v15->cellMatrices = 0, matrixDescriptors) && (v27 = malloc_type_malloc(8 * v15->nLayers, 0x80040B8603338uLL), (v15->cellMatrices = v27) == 0))
      {

        return 0;
      }

      if (v15->nLayers >= 1)
      {
        if (buffer && temporaryCopy)
        {
          if (matrixDescriptors)
          {
            v28 = 0;
            while (1)
            {
              v29 = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x277CD72B0], v19, buffer, descriptors[v28], v22, v23, v24, v25);
              v30 = matrixDescriptors[v28];
              if (v30)
              {
                break;
              }

              v31 = 0;
              v15->recurrentMatrices[v28] = v29;
              cellMatrices = v15->cellMatrices;
              if (cellMatrices)
              {
                goto LABEL_16;
              }

LABEL_11:
              if (++v28 >= v15->nLayers)
              {
                return v15;
              }
            }

            v31 = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x277CD72B0], v19, buffer, v30, v22, v23, v24, v25);
            v15->recurrentMatrices[v28] = v29;
            cellMatrices = v15->cellMatrices;
            if (!cellMatrices)
            {
              goto LABEL_11;
            }

LABEL_16:
            cellMatrices[v28] = v31;
            goto LABEL_11;
          }

          v111 = 0;
          do
          {
            v15->recurrentMatrices[v111] = objc_msgSend_temporaryMatrixWithCommandBuffer_matrixDescriptor_(MEMORY[0x277CD72B0], v19, buffer, descriptors[v111], v22, v23, v24, v25);
            v112 = v15->cellMatrices;
            if (v112)
            {
              v112[v111] = 0;
            }

            ++v111;
          }

          while (v111 < v15->nLayers);
          return v15;
        }

        if (!matrixDescriptors)
        {
          v86 = 0;
          do
          {
            v87 = objc_msgSend_rows(descriptors[v86], v19, v20, v21, v22, v23, v24, v25);
            v95 = objc_msgSend_rowBytes(descriptors[v86], v88, v89, v90, v91, v92, v93, v94) * v87;
            v96 = (*(*v16 + 24))(v16);
            v102 = objc_msgSend_newBufferWithLength_options_(device, v97, v95, 16 * v96, v98, v99, v100, v101);
            v103 = objc_alloc(MEMORY[0x277CD7250]);
            v109 = objc_msgSend_initWithBuffer_descriptor_(v103, v104, v102, descriptors[v86], v105, v106, v107, v108);

            v15->recurrentMatrices[v86] = v109;
            v110 = v15->cellMatrices;
            if (v110)
            {
              v110[v86] = 0;
            }

            ++v86;
          }

          while (v86 < v15->nLayers);
          return v15;
        }

        deviceCopy = device;
        v34 = 0;
        while (1)
        {
          v35 = objc_msgSend_rows(descriptors[v34], v19, v20, v21, v22, v23, v24, v25);
          v43 = objc_msgSend_rowBytes(descriptors[v34], v36, v37, v38, v39, v40, v41, v42) * v35;
          v44 = (*(*v16 + 24))(v16);
          v50 = objc_msgSend_newBufferWithLength_options_(device, v45, v43, 16 * v44, v46, v47, v48, v49);
          v51 = objc_alloc(MEMORY[0x277CD7250]);
          v57 = objc_msgSend_initWithBuffer_descriptor_(v51, v52, v50, descriptors[v34], v53, v54, v55, v56);

          v58 = matrixDescriptors[v34];
          if (v58)
          {
            break;
          }

          v84 = 0;
          v15->recurrentMatrices[v34] = v57;
          v85 = *(&v15->super.super.isa + v26);
          if (v85)
          {
            goto LABEL_26;
          }

LABEL_21:
          ++v34;
          device = deviceCopy;
          if (v34 >= *(&v15->super.super.isa + v17))
          {
            return v15;
          }
        }

        v59 = objc_msgSend_rows(v58, v19, v20, v21, v22, v23, v24, v25);
        v67 = objc_msgSend_rowBytes(matrixDescriptors[v34], v60, v61, v62, v63, v64, v65, v66) * v59;
        v68 = (*(*v16 + 24))(v16);
        v74 = objc_msgSend_newBufferWithLength_options_(device, v69, v67, 16 * v68, v70, v71, v72, v73);
        v75 = v17;
        v76 = v26;
        v77 = v74;
        v78 = objc_alloc(MEMORY[0x277CD7250]);
        v84 = objc_msgSend_initWithBuffer_descriptor_(v78, v79, v77, matrixDescriptors[v34], v80, v81, v82, v83);

        v26 = v76;
        v17 = v75;
        v15->recurrentMatrices[v34] = v57;
        v85 = *(&v15->super.super.isa + v26);
        if (!v85)
        {
          goto LABEL_21;
        }

LABEL_26:
        *(v85 + 8 * v34) = v84;
        goto LABEL_21;
      }
    }
  }

  return v15;
}

- (void)dealloc
{
  if (self->nLayers >= 1)
  {
    v3 = 0;
    do
    {
      recurrentMatrices = self->recurrentMatrices;
      if (recurrentMatrices)
      {
      }

      cellMatrices = self->cellMatrices;
      if (cellMatrices)
      {
      }

      ++v3;
    }

    while (v3 < self->nLayers);
  }

  v6 = self->recurrentMatrices;
  if (v6)
  {
    free(v6);
  }

  v7 = self->cellMatrices;
  if (v7)
  {
    free(v7);
  }

  v8.receiver = self;
  v8.super_class = MPSRNNRecurrentMatrixState;
  [(MPSState *)&v8 dealloc];
}

- (void)setReadCount:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = MPSRNNRecurrentMatrixState;
  [(MPSState *)&v13 setReadCount:?];
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && self->nLayers >= 1)
  {
    v11 = 0;
    do
    {
      objc_msgSend_setReadCount_(self->recurrentMatrices[v11], v5, count, v6, v7, v8, v9, v10);
      cellMatrices = self->cellMatrices;
      if (cellMatrices)
      {
        objc_msgSend_setReadCount_(cellMatrices[v11], v5, count, v6, v7, v8, v9, v10);
      }

      ++v11;
    }

    while (v11 < self->nLayers);
  }
}

@end