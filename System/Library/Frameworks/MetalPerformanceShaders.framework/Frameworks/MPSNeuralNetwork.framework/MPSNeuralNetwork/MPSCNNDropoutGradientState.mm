@interface MPSCNNDropoutGradientState
- (MPSCNNDropoutGradientState)init;
- (NSData)maskData;
- (void)dealloc;
- (void)synchronizeOnCommandBuffer:(id)buffer;
@end

@implementation MPSCNNDropoutGradientState

- (MPSCNNDropoutGradientState)init
{
  v3.receiver = self;
  v3.super_class = MPSCNNDropoutGradientState;
  return [(MPSState *)&v3 initWithResource:0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNDropoutGradientState;
  [(MPSNNGradientState *)&v3 dealloc];
}

- (void)synchronizeOnCommandBuffer:(id)buffer
{
  v3.receiver = self;
  v3.super_class = MPSCNNDropoutGradientState;
  [(MPSState *)&v3 synchronizeOnCommandBuffer:buffer];
}

- (NSData)maskData
{
  width = self->_resourceSize.width;
  resourcePixelFormat = self->_resourcePixelFormat;
  if (resourcePixelFormat == 30)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (resourcePixelFormat != 10);
  }

  v11 = self->_resourceSize.depth * self->_resourceSize.height;
  v12 = objc_msgSend_contents(self->_commonMaskBuffer, a2, v2, v3, v4, v5, v6, v7);
  v13 = 4 * v11 * (width << v10);
  v14 = malloc_type_malloc(v13, 0x100004052888210uLL);
  v21 = v14;
  v22 = (v11 * width) << v10;
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v22 >= 4 && (v14 < v12 + v22 ? (_CF = v12 >= v14 + 4 * v22) : (_CF = 1), _CF))
  {
    __asm { FMOV            V0.4S, #1.0 }

    if (v22 >= 0x20)
    {
      v28 = v22 & 0xFFFFFFFFFFFFFFE0;
      v36 = (v12 + 16);
      v37 = v14 + 4;
      v38 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = vceqzq_s8(v36[-1]);
        v40 = vmovl_high_s8(v39);
        v41 = vmovl_s8(*v39.i8);
        v42 = vceqzq_s8(*v36);
        v43 = vmovl_high_s8(v42);
        v44 = vmovl_s8(*v42.i8);
        v37[-2] = vbicq_s8(_Q0, vmovl_s16(*v40.i8));
        v37[-1] = vbicq_s8(_Q0, vmovl_high_s16(v40));
        v37[-4] = vbicq_s8(_Q0, vmovl_s16(*v41.i8));
        v37[-3] = vbicq_s8(_Q0, vmovl_high_s16(v41));
        v37[2] = vbicq_s8(_Q0, vmovl_s16(*v43.i8));
        v37[3] = vbicq_s8(_Q0, vmovl_high_s16(v43));
        v20 = vbicq_s8(_Q0, vmovl_high_s16(v44));
        *v37 = vbicq_s8(_Q0, vmovl_s16(*v44.i8));
        v37[1] = v20;
        v37 += 8;
        v36 += 2;
        v38 -= 32;
      }

      while (v38);
      if (v22 == v28)
      {
        goto LABEL_19;
      }

      if ((v22 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v28 = 0;
    }

    v45 = v28;
    v28 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v46 = (v12 + v45);
    v47 = (v14 + 4 * v45);
    v48 = v45 - (v22 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v49 = *v46++;
      v20.i32[0] = v49;
      v20 = vbicq_s8(_Q0, vceqzq_s32(vmovl_u16(*&vmovl_u8(*v20.i8))));
      *v47++ = v20;
      v48 += 4;
    }

    while (v48);
    if (v22 == v28)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_14:
  v29 = v22 - v28;
  v30 = &v14->i32[v28];
  v31 = (v12 + v28);
  do
  {
    if (*v31++)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.0;
    }

    *v30++ = v33;
    --v29;
  }

  while (v29);
LABEL_19:
  v34 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, v14, v13, v16, v17, v18, v19);
  free(v21);
  return v34;
}

@end