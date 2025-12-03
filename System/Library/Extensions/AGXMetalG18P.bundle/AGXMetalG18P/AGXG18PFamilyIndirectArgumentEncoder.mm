@interface AGXG18PFamilyIndirectArgumentEncoder
- (AGXG18PFamilyIndirectArgumentEncoder)initWithLayout:(id)layout device:(id)device;
- (id).cxx_construct;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (void)constantDataAtIndex:(unint64_t)index;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index;
- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range;
- (void)setFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation AGXG18PFamilyIndirectArgumentEncoder

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  return self;
}

- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v5 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v9 = states[v5];
      if (v9)
      {
        v10 = v9[18] & 0x8FFFFFFF | (((v9[16] >> 19) & 1) << 28) & 0x9FFFFFFF | (((v9[16] >> 18) & 1) << 29) & 0xBFFFFFFF | (((v9[17] >> 21) & 1) << 30) | ((v9[19] & 0x8FFFFFFF | ((HIBYTE(v9[17]) & 7) << 28)) << 32);
      }

      else
      {
        v10 = 0;
      }

      if (*layout)
      {
        v11 = 16;
        v12 = layout + 8;
      }

      else
      {
        v11 = *(layout + 4);
        if (!v11)
        {
          goto LABEL_3;
        }

        v12 = *(layout + 1);
      }

      v13 = v11 - 1;
      v14 = (v11 - 1) & (37 * (v5 + LODWORD(range.location)));
      v15 = *&v12[16 * (v13 & (37 * (v5 + LODWORD(range.location))))];
      if (v15 == v5 + LODWORD(range.location))
      {
LABEL_13:
        v8 = *&v12[16 * v14 + 8];
        goto LABEL_4;
      }

      v16 = 1;
      while (v15 != -1)
      {
        v17 = v14 + v16++;
        v14 = v17 & v13;
        v15 = *&v12[16 * v14];
        if (v15 == v5 + LODWORD(range.location))
        {
          goto LABEL_13;
        }
      }

LABEL_3:
      v8 = 0;
LABEL_4:
      *&arguments[v8] = v10;
      ++v5;
    }

    while (v5 != length_low);
  }
}

- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index
{
  layout = self->_impl.layout;
  v5 = layout + 8;
  if (*layout)
  {
    v6 = 16;
  }

  else
  {
    v6 = *(layout + 4);
    if (!v6)
    {
      goto LABEL_14;
    }

    v5 = *(layout + 1);
  }

  v7 = v6 - 1;
  v8 = (v6 - 1) & (37 * index);
  v9 = *&v5[16 * v8];
  if (v9 == index)
  {
LABEL_6:
    v10 = *&v5[16 * v8 + 8];
    goto LABEL_7;
  }

  v12 = 1;
  while (v9 != -1)
  {
    v13 = v8 + v12++;
    v8 = v13 & v7;
    v9 = *&v5[16 * v8];
    if (v9 == index)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  v10 = 0;
LABEL_7:
  v11 = *(state + 18) & 0x8FFFFFFF | (((*(state + 16) >> 19) & 1) << 28) & 0x9FFFFFFF | (((*(state + 16) >> 18) & 1) << 29) & 0xBFFFFFFF | (((*(state + 17) >> 21) & 1) << 30) | ((*(state + 19) & 0x8FFFFFFF | ((HIBYTE(*(state + 17)) & 7) << 28)) << 32);
  if (!state)
  {
    v11 = 0;
  }

  *&self->_impl.arguments[v10] = v11;
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *buffers++;
      [(AGXG18PFamilyIndirectArgumentEncoder *)self setIndirectCommandBuffer:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  if (!buffer)
  {
    layout = self->_impl.layout;
    v11 = layout + 8;
    if (*layout)
    {
      v12 = 16;
    }

    else
    {
      v12 = *(layout + 4);
      if (!v12)
      {
        goto LABEL_31;
      }

      v11 = *(layout + 1);
    }

    v15 = v12 - 1;
    v16 = (v12 - 1) & (37 * index);
    v17 = *&v11[16 * v16];
    if (v17 == index)
    {
LABEL_15:
      v18 = *&v11[16 * v16 + 8];
LABEL_16:
      *&self->_impl.arguments[v18] = 0;
      return;
    }

    v26 = 1;
    while (v17 != -1)
    {
      v27 = v16 + v26++;
      v16 = v27 & v15;
      v17 = *&v11[16 * v16];
      if (v17 == index)
      {
        goto LABEL_15;
      }
    }

LABEL_31:
    v18 = 0;
    goto LABEL_16;
  }

  v4 = *(buffer + 102);
  if (v4 == 1)
  {
    v5 = *(*(buffer + 53) + 408);
    v13 = self->_impl.layout;
    arguments = self->_impl.arguments;
    v8 = v13 + 8;
    if (*v13)
    {
      v14 = 16;
    }

    else
    {
      v14 = *(v13 + 4);
      if (!v14)
      {
        goto LABEL_36;
      }

      v8 = *(v13 + 1);
    }

    v24 = v14 - 1;
    v20 = (v14 - 1) & (37 * index);
    v25 = *&v8[16 * v20];
    if (v25 != index)
    {
      v28 = 1;
      while (v25 != -1)
      {
        v29 = v20 + v28++;
        v20 = v29 & v24;
        v25 = *&v8[16 * v20];
        if (v25 == index)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (!v4)
  {
    v5 = *(*(buffer + 53) + 136);
    v7 = self->_impl.layout;
    arguments = self->_impl.arguments;
    v8 = v7 + 8;
    if (*v7)
    {
      v9 = 16;
LABEL_19:
      v19 = v9 - 1;
      v20 = (v9 - 1) & (37 * index);
      v21 = *&v8[16 * v20];
      if (v21 != index)
      {
        v22 = 1;
        while (v21 != -1)
        {
          v23 = v20 + v22++;
          v20 = v23 & v19;
          v21 = *&v8[16 * v20];
          if (v21 == index)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_36;
      }

LABEL_26:
      *&arguments[*&v8[16 * v20 + 8]] = v5;
      return;
    }

    v9 = *(v7 + 4);
    if (v9)
    {
      v8 = *(v7 + 1);
      goto LABEL_19;
    }

LABEL_36:
    *arguments = v5;
  }
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v5 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v9 = states[v5];
      if (v9)
      {
        v9 = v9[310];
      }

      if (*layout)
      {
        v10 = 16;
        v11 = layout + 8;
      }

      else
      {
        v10 = *(layout + 4);
        if (!v10)
        {
          goto LABEL_3;
        }

        v11 = *(layout + 1);
      }

      v12 = v10 - 1;
      v13 = (v10 - 1) & (37 * (v5 + LODWORD(range.location)));
      v14 = *&v11[16 * (v12 & (37 * (v5 + LODWORD(range.location))))];
      if (v14 == v5 + LODWORD(range.location))
      {
LABEL_12:
        v8 = *&v11[16 * v13 + 8];
        goto LABEL_4;
      }

      v15 = 1;
      while (v14 != -1)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *&v11[16 * v13];
        if (v14 == v5 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v8 = 0;
LABEL_4:
      *&arguments[v8] = v9;
      ++v5;
    }

    while (v5 != length_low);
  }
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  if (state)
  {
    v4 = *(state + 310);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v5 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v9 = states[v5];
      if (v9)
      {
        v9 = v9[50];
      }

      if (*layout)
      {
        v10 = 16;
        v11 = layout + 8;
      }

      else
      {
        v10 = *(layout + 4);
        if (!v10)
        {
          goto LABEL_3;
        }

        v11 = *(layout + 1);
      }

      v12 = v10 - 1;
      v13 = (v10 - 1) & (37 * (v5 + LODWORD(range.location)));
      v14 = *&v11[16 * (v12 & (37 * (v5 + LODWORD(range.location))))];
      if (v14 == v5 + LODWORD(range.location))
      {
LABEL_12:
        v8 = *&v11[16 * v13 + 8];
        goto LABEL_4;
      }

      v15 = 1;
      while (v14 != -1)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *&v11[16 * v13];
        if (v14 == v5 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v8 = 0;
LABEL_4:
      *&arguments[v8] = v9;
      ++v5;
    }

    while (v5 != length_low);
  }
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  if (state)
  {
    v4 = *(state + 50);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyIndirectArgumentEncoder;
  return [(_MTLIndirectArgumentEncoder *)&v4 newArgumentEncoderForBufferAtIndex:index];
}

- (void)constantDataAtIndex:(unint64_t)index
{
  layout = self->_impl.layout;
  v4 = layout + 8;
  if (*layout)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(layout + 4);
    if (!v5)
    {
      return self->_impl.arguments;
    }

    v4 = *(layout + 1);
  }

  v6 = v5 - 1;
  v7 = (v5 - 1) & (37 * index);
  v8 = *&v4[16 * v7];
  if (v8 == index)
  {
    return &self->_impl.arguments[*&v4[16 * v7 + 8] & 0xFFFFFFFFFFFFFFLL];
  }

  v10 = 1;
  while (v8 != -1)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *&v4[16 * v7];
    if (v8 == index)
    {
      return &self->_impl.arguments[*&v4[16 * v7 + 8] & 0xFFFFFFFFFFFFFFLL];
    }
  }

  return self->_impl.arguments;
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v5 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v9 = states[v5];
      if (v9)
      {
        v9 = v9[36];
      }

      if (*layout)
      {
        v10 = 16;
        v11 = layout + 8;
      }

      else
      {
        v10 = *(layout + 4);
        if (!v10)
        {
          goto LABEL_3;
        }

        v11 = *(layout + 1);
      }

      v12 = v10 - 1;
      v13 = (v10 - 1) & (37 * (v5 + LODWORD(range.location)));
      v14 = *&v11[16 * (v12 & (37 * (v5 + LODWORD(range.location))))];
      if (v14 == v5 + LODWORD(range.location))
      {
LABEL_12:
        v8 = *&v11[16 * v13 + 8];
        goto LABEL_4;
      }

      v15 = 1;
      while (v14 != -1)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *&v11[16 * v13];
        if (v14 == v5 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v8 = 0;
LABEL_4:
      *&arguments[v8] = v9;
      ++v5;
    }

    while (v5 != length_low);
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  if (state)
  {
    v4 = *(state + 36);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v5 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v9 = textures[v5];
      if (v9)
      {
        v9 = *(v9[74] + 120);
      }

      if (*layout)
      {
        v10 = 16;
        v11 = layout + 8;
      }

      else
      {
        v10 = *(layout + 4);
        if (!v10)
        {
          goto LABEL_3;
        }

        v11 = *(layout + 1);
      }

      v12 = v10 - 1;
      v13 = (v10 - 1) & (37 * (v5 + LODWORD(range.location)));
      v14 = *&v11[16 * (v12 & (37 * (v5 + LODWORD(range.location))))];
      if (v14 == v5 + LODWORD(range.location))
      {
LABEL_12:
        v8 = *&v11[16 * v13 + 8];
        goto LABEL_4;
      }

      v15 = 1;
      while (v14 != -1)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *&v11[16 * v13];
        if (v14 == v5 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v8 = 0;
LABEL_4:
      *&arguments[v8] = v9;
      ++v5;
    }

    while (v5 != length_low);
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if (texture)
  {
    v4 = *(*(texture + 74) + 120);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  indexCopy = index;
  if (![(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation])
  {
    if (structure)
    {
      v7 = *(structure + 90);
    }

    else
    {
      v7 = 0;
    }

    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    v10 = layout + 8;
    if (*layout)
    {
      v18 = 16;
    }

    else
    {
      v18 = *(layout + 4);
      if (!v18)
      {
        goto LABEL_28;
      }

      v10 = *(layout + 1);
    }

    v19 = v18 - 1;
    v13 = (v18 - 1) & (37 * indexCopy);
    v20 = *&v10[16 * v13];
    if (v20 != indexCopy)
    {
      v22 = 1;
      while (v20 != -1)
      {
        v23 = v13 + v22++;
        v13 = v23 & v19;
        v20 = *&v10[16 * v13];
        if (v20 == indexCopy)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (structure)
  {
    v7 = *(structure + 84);
  }

  else
  {
    v7 = 0;
  }

  v9 = self->_impl.layout;
  arguments = self->_impl.arguments;
  v10 = v9 + 8;
  if ((*v9 & 1) == 0)
  {
    v11 = *(v9 + 4);
    if (v11)
    {
      v10 = *(v9 + 1);
      goto LABEL_11;
    }

LABEL_28:
    v21 = 0;
    goto LABEL_23;
  }

  v11 = 16;
LABEL_11:
  v12 = v11 - 1;
  v13 = (v11 - 1) & (37 * indexCopy);
  v14 = *&v10[16 * v13];
  if (v14 != indexCopy)
  {
    v15 = 1;
    while (v14 != -1)
    {
      v16 = v13 + v15++;
      v13 = v16 & v12;
      v14 = *&v10[16 * v13];
      if (v14 == indexCopy)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_28;
  }

LABEL_22:
  v21 = *&v10[16 * v13 + 8];
LABEL_23:
  *&arguments[v21] = v7;
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    v20.receiver = self;
    v20.super_class = AGXG18PFamilyIndirectArgumentEncoder;
    [(IOGPUMetalIndirectArgumentEncoder *)&v20 setIntersectionFunctionTables:tables withBufferRange:location, length];
    return;
  }

  if (length)
  {
    v8 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v12 = tables[v8];
      if (v12)
      {
        v12 = *(v12[39] + 112);
      }

      if (*layout)
      {
        v13 = 16;
        v14 = layout + 8;
      }

      else
      {
        v13 = *(layout + 4);
        if (!v13)
        {
          goto LABEL_5;
        }

        v14 = *(layout + 1);
      }

      v15 = v13 - 1;
      v16 = (v13 - 1) & (37 * (v8 + location));
      v17 = *&v14[16 * (v15 & (37 * (v8 + location)))];
      if (v17 == v8 + location)
      {
LABEL_14:
        v11 = *&v14[16 * v16 + 8];
        goto LABEL_6;
      }

      v18 = 1;
      while (v17 != -1)
      {
        v19 = v16 + v18++;
        v16 = v19 & v15;
        v17 = *&v14[16 * v16];
        if (v17 == v8 + location)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v11 = 0;
LABEL_6:
      *&arguments[v11] = v12;
      ++v8;
    }

    while (v8 != length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if ([(MTLDevice *)[(_MTLIndirectArgumentEncoder *)self device] requiresRaytracingEmulation])
  {
    v17.receiver = self;
    v17.super_class = AGXG18PFamilyIndirectArgumentEncoder;
    [(IOGPUMetalIndirectArgumentEncoder *)&v17 setIntersectionFunctionTable:table atBufferIndex:index];
    return;
  }

  if (table)
  {
    v7 = *(*(table + 39) + 112);
  }

  else
  {
    v7 = 0;
  }

  layout = self->_impl.layout;
  v9 = layout + 8;
  if (*layout)
  {
    v10 = 16;
  }

  else
  {
    v10 = *(layout + 4);
    if (!v10)
    {
LABEL_18:
      v14 = 0;
      goto LABEL_12;
    }

    v9 = *(layout + 1);
  }

  v11 = v10 - 1;
  v12 = (v10 - 1) & (37 * index);
  v13 = *&v9[16 * v12];
  if (v13 != index)
  {
    v15 = 1;
    while (v13 != -1)
    {
      v16 = v12 + v15++;
      v12 = v16 & v11;
      v13 = *&v9[16 * v12];
      if (v13 == index)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

LABEL_11:
  v14 = *&v9[16 * v12 + 8];
LABEL_12:
  *&self->_impl.arguments[v14] = v7;
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v8 = tables[v4];
      if (v8)
      {
        v8 = v8[94];
      }

      if (*layout)
      {
        v9 = 16;
        v10 = layout + 8;
      }

      else
      {
        v9 = *(layout + 4);
        if (!v9)
        {
          goto LABEL_3;
        }

        v10 = *(layout + 1);
      }

      v11 = v9 - 1;
      v12 = (v9 - 1) & (37 * (v4 + LODWORD(range.location)));
      v13 = *&v10[16 * (v11 & (37 * (v4 + LODWORD(range.location))))];
      if (v13 == v4 + LODWORD(range.location))
      {
LABEL_12:
        v7 = *&v10[16 * v12 + 8];
        goto LABEL_4;
      }

      v14 = 1;
      while (v13 != -1)
      {
        v15 = v12 + v14++;
        v12 = v15 & v11;
        v13 = *&v10[16 * v12];
        if (v13 == v4 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v7 = 0;
LABEL_4:
      *&arguments[v7] = v8;
      ++v4;
    }

    while (v4 != range.length);
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (table)
  {
    v4 = *(table + 94);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (void)setFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    do
    {
      v8 = tables[v4];
      if (v8)
      {
        v8 = v8[94];
      }

      if (*layout)
      {
        v9 = 16;
        v10 = layout + 8;
      }

      else
      {
        v9 = *(layout + 4);
        if (!v9)
        {
          goto LABEL_3;
        }

        v10 = *(layout + 1);
      }

      v11 = v9 - 1;
      v12 = (v9 - 1) & (37 * (v4 + LODWORD(range.location)));
      v13 = *&v10[16 * (v11 & (37 * (v4 + LODWORD(range.location))))];
      if (v13 == v4 + LODWORD(range.location))
      {
LABEL_12:
        v7 = *&v10[16 * v12 + 8];
        goto LABEL_4;
      }

      v14 = 1;
      while (v13 != -1)
      {
        v15 = v12 + v14++;
        v12 = v15 & v11;
        v13 = *&v10[16 * v12];
        if (v13 == v4 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v7 = 0;
LABEL_4:
      *&arguments[v7] = v8;
      ++v4;
    }

    while (v4 != range.length);
  }
}

- (void)setFunctionTable:(id)table atIndex:(unint64_t)index
{
  if (table)
  {
    v4 = *(table + 94);
  }

  else
  {
    v4 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v7 = layout + 8;
  if (*layout)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(layout + 4);
    if (!v8)
    {
      goto LABEL_14;
    }

    v7 = *(layout + 1);
  }

  v9 = v8 - 1;
  v10 = (v8 - 1) & (37 * index);
  v11 = *&v7[16 * v10];
  if (v11 == index)
  {
LABEL_9:
    *&arguments[*&v7[16 * v10 + 8]] = v4;
    return;
  }

  v12 = 1;
  while (v11 != -1)
  {
    v13 = v10 + v12++;
    v10 = v13 & v9;
    v11 = *&v7[16 * v10];
    if (v11 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v4;
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length_low = LODWORD(range.length);
  if (LODWORD(range.length))
  {
    v6 = 0;
    layout = self->_impl.layout;
    arguments = self->_impl.arguments;
    v9 = MEMORY[0x29EDC5638];
    do
    {
      v11 = buffers[v6];
      if (v11)
      {
        v11 = (offsets[v6] + *&v11[*v9 + 8]);
      }

      if (*layout)
      {
        v12 = 16;
        v13 = layout + 8;
      }

      else
      {
        v12 = *(layout + 4);
        if (!v12)
        {
          goto LABEL_3;
        }

        v13 = *(layout + 1);
      }

      v14 = v12 - 1;
      v15 = (v12 - 1) & (37 * (v6 + LODWORD(range.location)));
      v16 = *&v13[16 * (v14 & (37 * (v6 + LODWORD(range.location))))];
      if (v16 == v6 + LODWORD(range.location))
      {
LABEL_12:
        v10 = *&v13[16 * v15 + 8];
        goto LABEL_4;
      }

      v17 = 1;
      while (v16 != -1)
      {
        v18 = v15 + v17++;
        v15 = v18 & v14;
        v16 = *&v13[16 * v15];
        if (v16 == v6 + LODWORD(range.location))
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v10 = 0;
LABEL_4:
      *&arguments[v10] = v11;
      ++v6;
    }

    while (v6 != length_low);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (buffer)
  {
    v5 = *(buffer + *MEMORY[0x29EDC5638] + 8) + offset;
  }

  else
  {
    v5 = 0;
  }

  layout = self->_impl.layout;
  arguments = self->_impl.arguments;
  v8 = layout + 8;
  if (*layout)
  {
    v9 = 16;
  }

  else
  {
    v9 = *(layout + 4);
    if (!v9)
    {
      goto LABEL_14;
    }

    v8 = *(layout + 1);
  }

  v10 = v9 - 1;
  v11 = (v9 - 1) & (37 * index);
  v12 = *&v8[16 * v11];
  if (v12 == index)
  {
LABEL_9:
    *&arguments[*&v8[16 * v11 + 8]] = v5;
    return;
  }

  v13 = 1;
  while (v12 != -1)
  {
    v14 = v11 + v13++;
    v11 = v14 & v10;
    v12 = *&v8[16 * v11];
    if (v12 == index)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  *arguments = v5;
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  p_impl = &self->_impl;
  if (self->_impl.current_argument_buffer != buffer)
  {
    bufferCopy = buffer;

    p_impl->current_argument_buffer = buffer;
  }

  if (buffer)
  {
    v8 = *(buffer + *MEMORY[0x29EDC5638] + 24) + offset;
  }

  else
  {
    v8 = 0;
  }

  p_impl->arguments = v8;
}

- (AGXG18PFamilyIndirectArgumentEncoder)initWithLayout:(id)layout device:(id)device
{
  v8.receiver = self;
  v8.super_class = AGXG18PFamilyIndirectArgumentEncoder;
  result = [_MTLIndirectArgumentEncoder initWithLayout:sel_initWithLayout_device_ device:?];
  if (result)
  {
    v7 = *(layout + 2);
    result->_impl.device = device;
    result->_impl.layout = v7;
    atomic_fetch_or(device + 108, 0x100000uLL);
  }

  return result;
}

@end