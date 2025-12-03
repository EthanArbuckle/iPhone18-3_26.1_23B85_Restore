@interface AGXG18PFamilySparseHeap
- (AGXG18PFamilySparseHeap)initWithDevice:(id)device descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)newTextureWithDescriptor:(id)descriptor;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)removeTexture:(id)texture;
@end

@implementation AGXG18PFamilySparseHeap

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

- (void)removeTexture:(id)texture
{
  begin = self->_resources.__begin_;
  var0 = self->_resources.var0;
  if (begin != var0)
  {
    while (*begin != texture)
    {
      if (++begin == var0)
      {
        return;
      }
    }

    if (begin != var0)
    {
      v5 = begin + 1;
      if (begin + 1 != var0)
      {
        do
        {
          if (*v5 != texture)
          {
            *begin++ = *v5;
          }

          ++v5;
        }

        while (v5 != var0);
        var0 = self->_resources.var0;
      }
    }
  }

  if (begin != var0)
  {
    self->_resources.var0 = begin;
  }
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  result = [(AGXTexture *)[AGXG18PFamilyTexture alloc] initWithSparseHeap:self desc:descriptor sparsePageSize:self->sparse_page_size];
  if (result)
  {
    v6 = result;
    v5 = result;
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](&self->_resources, &v6);
    return v5;
  }

  return result;
}

- (AGXG18PFamilySparseHeap)initWithDevice:(id)device descriptor:(id)descriptor
{
  if (![descriptor validateWithDevice:?])
  {
    goto LABEL_26;
  }

  descriptorPrivate = [descriptor descriptorPrivate];
  v8 = descriptorPrivate[3];
  if (v8 == 102)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0x4000;
  }

  if (v8 == 103)
  {
    v9 = 0x40000;
  }

  self->sparse_page_size = v9;
  v10 = v8 == 103 ? 0x40000 : (v8 == 102) << 16;
  self->sparse_page_queue_alignment_padding = v10;
  sparse_page_size = self->sparse_page_size;
  v12 = (sparse_page_size - 1 + *descriptorPrivate) & -sparse_page_size;
  v13 = v12 + sparse_page_size - 1;
  v14 = v13 / sparse_page_size;
  if (v13 / sparse_page_size > 0x80000000)
  {
LABEL_26:
    selfCopy = self;
LABEL_27:
    [(AGXG18PFamilySparseHeap *)selfCopy dealloc];
    return 0;
  }

  v15 = 1 << -__clz(v14);
  if (v13 < sparse_page_size)
  {
    v15 = 1;
  }

  v46 = v15;
  v45 = *MEMORY[0x29EDCA6D0];
  v16 = descriptorPrivate[2] != 0;
  v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | (([descriptor hazardTrackingMode] & 3) << 8);
  v48.receiver = self;
  v48.super_class = AGXG18PFamilySparseHeap;
  v18 = -[_MTLHeap initWithType:options:](&v48, sel_initWithType_options_, [descriptor type], v17 | 0x20);
  v19 = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithDevice:device length:v12 + v18->sparse_page_queue_alignment_padding options:v17 | 0x20 isSuballocDisabled:0 pinnedGPULocation:0];
  selfCopy = v18;
  v18->_sparse_pages_buffer = v19;
  if (!v19)
  {
    goto LABEL_27;
  }

  v21 = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithDevice:device length:((4 * v46 + 12) + v45 - 1) & -v45 options:v17 | 0x20020 isSuballocDisabled:0 pinnedGPULocation:0];
  selfCopy = v18;
  v18->_sparse_queue_buffer = v21;
  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = MEMORY[0x29EDC5638];
  v23 = *MEMORY[0x29EDC5638];
  v24 = *(v18->_sparse_pages_buffer + v23 + 8);
  v25 = *(&v21->super.super.super.super.super.super._label + v23);
  v18->sparse_page_queue_addr = v25;
  v26 = v18->_sparse_queue_buffer + *v22;
  v27 = *(v26 + 3);
  v28 = *(v26 + 1);
  v29 = (v27 + v25 - v28);
  *v29 = 0;
  v29[2] = v46;
  if (v13 >= sparse_page_size)
  {
    v30 = (v24 + (sparse_page_size - 1)) & ~(sparse_page_size - 1);
    p_sparse_page_size = &v18->sparse_page_size;
    if (v14 >= 0xC && (v29 + 3 < &v18->sparse_page_queue_alignment_padding ? (v32 = p_sparse_page_size >= v25 + 4 * v14 - v28 + v27 + 12) : (v32 = 1), v32))
    {
      v33 = (v13 / sparse_page_size) & 0xFFFFFFF8;
      v34 = vdupq_n_s64(v30);
      v35 = vld1q_dup_f32(p_sparse_page_size);
      v36 = (v25 - v28 + v27 + 28);
      v37 = xmmword_29D2F17F0;
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v39.i64[0] = 0x800000008;
      v39.i64[1] = 0x800000008;
      v40 = v33;
      do
      {
        v41 = vmulq_s32(v35, v37);
        v42 = vmulq_s32(v35, vaddq_s32(v37, v38));
        v36[-1] = vshrn_high_n_s64(vshrn_n_s64(vaddw_u32(v34, *v41.i8), 0xEuLL), vaddw_high_u32(v34, v41), 0xEuLL);
        *v36 = vshrn_high_n_s64(vshrn_n_s64(vaddw_u32(v34, *v42.i8), 0xEuLL), vaddw_high_u32(v34, v42), 0xEuLL);
        v37 = vaddq_s32(v37, v39);
        v36 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v14 == v33)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v33 = 0;
    }

    v44 = (v25 + 4 * v33 - v28 + v27 + 12);
    do
    {
      *v44++ = (v30 + (*p_sparse_page_size * v33++)) >> 14;
    }

    while (v33 < v14);
  }

LABEL_31:
  v29[1] = v14;
  v18->_size = v12;
  v18->_device = device;
  sparse_pages_buffer = v18->_sparse_pages_buffer;
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](&v18->_resources, &sparse_pages_buffer);
  sparse_pages_buffer = v18->_sparse_queue_buffer;
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](&v18->_resources, &sparse_pages_buffer);
  return v18;
}

- (unint64_t)usedSize
{
  v2 = self->_sparse_queue_buffer + *MEMORY[0x29EDC5638];
  v3 = (*(v2 + 3) + self->sparse_page_queue_addr - *(v2 + 1));
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    v5 += v3[2];
  }

  return self->_size - self->sparse_page_size * v5;
}

- (void)dealloc
{
  begin = self->_resources.__begin_;
  for (i = self->_resources.var0; begin != i; ++begin)
  {
    v5 = *begin;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(v5 + 74);
      if ((*(v6 + 240) & 1) == 0)
      {
        *(v6 + 592) = 0u;
        *(v6 + 616) = 0u;
      }
    }
  }

  self->_sparse_pages_buffer = 0;
  self->_sparse_queue_buffer = 0;
  self->_device = 0;
  self->sparse_page_queue_addr = 0;
  self->sparse_page_size = 0;
  v7.receiver = self;
  v7.super_class = AGXG18PFamilySparseHeap;
  [(_MTLObjectWithLabel *)&v7 dealloc];
}

@end