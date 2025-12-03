@interface MPSRNNRecurrentImageState
- (MPSImage)getMemoryCellImageForLayerIndex:(NSUInteger)layerIndex;
- (MPSImage)getRecurrentOutputImageForLayerIndex:(NSUInteger)layerIndex;
- (MPSRNNRecurrentImageState)initWithCommandBuffer:(id)buffer recurrentImageDescriptors:(id *)descriptors cellImageDescriptors:(id *)imageDescriptors isTemporary:(BOOL)temporary layerCount:(int)count;
- (void)dealloc;
- (void)setReadCount:(unint64_t)count;
@end

@implementation MPSRNNRecurrentImageState

- (MPSImage)getRecurrentOutputImageForLayerIndex:(NSUInteger)layerIndex
{
  if (self->nLayers > layerIndex && (recurrentImages = self->recurrentImages) != 0)
  {
    return recurrentImages[layerIndex];
  }

  else
  {
    return 0;
  }
}

- (MPSImage)getMemoryCellImageForLayerIndex:(NSUInteger)layerIndex
{
  if (self->nLayers > layerIndex && (cellImages = self->cellImages) != 0)
  {
    return cellImages[layerIndex];
  }

  else
  {
    return 0;
  }
}

- (MPSRNNRecurrentImageState)initWithCommandBuffer:(id)buffer recurrentImageDescriptors:(id *)descriptors cellImageDescriptors:(id *)imageDescriptors isTemporary:(BOOL)temporary layerCount:(int)count
{
  temporaryCopy = temporary;
  v76.receiver = self;
  v76.super_class = MPSRNNRecurrentImageState;
  v12 = [(MPSState *)&v76 initWithResource:0];
  v12->_isTemporary = temporaryCopy;
  v12->nLayers = count;
  v13 = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
  v12->recurrentImages = v13;
  if (!v13 || (v12->cellImages = 0, imageDescriptors) && (v19 = malloc_type_malloc(8 * v12->nLayers, 0x80040B8603338uLL), (v12->cellImages = v19) == 0))
  {

    return 0;
  }

  if (v12->nLayers >= 1)
  {
    if (temporaryCopy)
    {
      if (imageDescriptors)
      {
        v20 = 0;
        while (1)
        {
          v21 = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x277CD72A8], v14, buffer, descriptors[v20], v15, v16, v17, v18);
          v22 = imageDescriptors[v20];
          if (v22)
          {
            break;
          }

          v23 = 0;
          v12->recurrentImages[v20] = v21;
          cellImages = v12->cellImages;
          if (cellImages)
          {
            goto LABEL_13;
          }

LABEL_8:
          if (++v20 >= v12->nLayers)
          {
            return v12;
          }
        }

        v23 = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x277CD72A8], v14, buffer, v22, v15, v16, v17, v18);
        v12->recurrentImages[v20] = v21;
        cellImages = v12->cellImages;
        if (!cellImages)
        {
          goto LABEL_8;
        }

LABEL_13:
        cellImages[v20] = v23;
        goto LABEL_8;
      }

      do
      {
        v12->recurrentImages[imageDescriptors] = objc_msgSend_temporaryImageWithCommandBuffer_imageDescriptor_(MEMORY[0x277CD72A8], v14, buffer, descriptors[imageDescriptors], v15, v16, v17, v18);
        v59 = v12->cellImages;
        if (v59)
        {
          v59[imageDescriptors] = 0;
        }

        imageDescriptors = (imageDescriptors + 1);
      }

      while (imageDescriptors < v12->nLayers);
      return v12;
    }

    if (!imageDescriptors)
    {
      v60 = 0;
      do
      {
        v61 = objc_alloc(MEMORY[0x277CD7218]);
        v69 = objc_msgSend_device(buffer, v62, v63, v64, v65, v66, v67, v68);
        v12->recurrentImages[v60] = objc_msgSend_initWithDevice_imageDescriptor_(v61, v70, v69, descriptors[v60], v71, v72, v73, v74);
        v75 = v12->cellImages;
        if (v75)
        {
          v75[v60] = 0;
        }

        ++v60;
      }

      while (v60 < v12->nLayers);
      return v12;
    }

    v26 = 0;
    for (i = 0x277CD7000; ; i = 0x277CD7000uLL)
    {
      v28 = objc_alloc(*(i + 536));
      v36 = objc_msgSend_device(buffer, v29, v30, v31, v32, v33, v34, v35);
      v42 = objc_msgSend_initWithDevice_imageDescriptor_(v28, v37, v36, descriptors[v26], v38, v39, v40, v41);
      if (imageDescriptors[v26])
      {
        break;
      }

      v57 = 0;
      v12->recurrentImages[v26] = v42;
      v58 = v12->cellImages;
      if (v58)
      {
        goto LABEL_23;
      }

LABEL_18:
      if (++v26 >= v12->nLayers)
      {
        return v12;
      }
    }

    v43 = objc_alloc(*(i + 536));
    v51 = objc_msgSend_device(buffer, v44, v45, v46, v47, v48, v49, v50);
    v57 = objc_msgSend_initWithDevice_imageDescriptor_(v43, v52, v51, imageDescriptors[v26], v53, v54, v55, v56);
    v12->recurrentImages[v26] = v42;
    v58 = v12->cellImages;
    if (!v58)
    {
      goto LABEL_18;
    }

LABEL_23:
    v58[v26] = v57;
    goto LABEL_18;
  }

  return v12;
}

- (void)dealloc
{
  if (self->nLayers >= 1)
  {
    v3 = 0;
    do
    {
      recurrentImages = self->recurrentImages;
      if (recurrentImages)
      {
      }

      cellImages = self->cellImages;
      if (cellImages)
      {
      }

      ++v3;
    }

    while (v3 < self->nLayers);
  }

  v6 = self->recurrentImages;
  if (v6)
  {
    free(v6);
  }

  v7 = self->cellImages;
  if (v7)
  {
    free(v7);
  }

  v8.receiver = self;
  v8.super_class = MPSRNNRecurrentImageState;
  [(MPSState *)&v8 dealloc];
}

- (void)setReadCount:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = MPSRNNRecurrentImageState;
  [(MPSState *)&v13 setReadCount:?];
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && self->nLayers >= 1)
  {
    v11 = 0;
    do
    {
      objc_msgSend_setReadCount_(self->recurrentImages[v11], v5, count, v6, v7, v8, v9, v10);
      cellImages = self->cellImages;
      if (cellImages)
      {
        objc_msgSend_setReadCount_(cellImages[v11], v5, count, v6, v7, v8, v9, v10);
      }

      ++v11;
    }

    while (v11 < self->nLayers);
  }
}

@end