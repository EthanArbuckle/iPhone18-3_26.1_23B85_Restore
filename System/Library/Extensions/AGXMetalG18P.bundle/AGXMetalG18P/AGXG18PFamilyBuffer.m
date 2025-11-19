@interface AGXG18PFamilyBuffer
- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5;
- (void)dealloc;
@end

@implementation AGXG18PFamilyBuffer

- (void)dealloc
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
  if (v3)
  {
    free(v3);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyBuffer;
  [(AGXBuffer *)&v4 dealloc];
}

- (id)newTensorWithDescriptor:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  if (![a3 validateWithBuffer:self offset:a4 error:a5])
  {
    return 0;
  }

  v8 = [a3 dataType];
  if (v8 <= 36)
  {
    if (v8 > 28)
    {
      if (v8 == 29)
      {
        v9 = 7u;
        goto LABEL_25;
      }

      if (v8 == 33)
      {
        v9 = 8u;
        goto LABEL_25;
      }
    }

    else
    {
      if (v8 == 3)
      {
        v9 = 0;
        goto LABEL_25;
      }

      if (v8 == 16)
      {
        v9 = 1u;
        goto LABEL_25;
      }
    }
  }

  else if (v8 <= 44)
  {
    if (v8 == 37)
    {
      v9 = 5u;
      goto LABEL_25;
    }

    if (v8 == 41)
    {
      v9 = 6u;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v8)
    {
      case '-':
        v9 = 3u;
        goto LABEL_25;
      case '1':
        v9 = 4u;
        goto LABEL_25;
      case 'y':
        v9 = 2u;
        goto LABEL_25;
    }
  }

  v9 = 0xFFu;
LABEL_25:
  v11 = a4 / AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v9];
  v12 = [AGXG18PFamilyTensor alloc];
  v13 = [(IOGPUMetalResource *)self device];
  v14 = [objc_msgSend(a3 "dimensions")];
  v15 = [objc_msgSend(a3 "dimensions")];
  v16 = [objc_msgSend(a3 "strides")];
  v17 = [a3 dataType];
  if (v17 <= 36)
  {
    if (v17 > 28)
    {
      if (v17 == 29)
      {
        v18 = 7;
        goto LABEL_47;
      }

      if (v17 == 33)
      {
        v18 = 8;
        goto LABEL_47;
      }
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 0;
        goto LABEL_47;
      }

      if (v17 == 16)
      {
        v18 = 1;
        goto LABEL_47;
      }
    }

LABEL_46:
    v18 = -1;
    goto LABEL_47;
  }

  if (v17 <= 44)
  {
    if (v17 == 37)
    {
      v18 = 5;
      goto LABEL_47;
    }

    if (v17 == 41)
    {
      v18 = 6;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v17 == 45)
  {
    v18 = 3;
    goto LABEL_47;
  }

  if (v17 == 49)
  {
    v18 = 4;
    goto LABEL_47;
  }

  if (v17 != 121)
  {
    goto LABEL_46;
  }

  v18 = 2;
LABEL_47:
  LOBYTE(v19) = v18;
  return -[AGXG18PFamilyTensor initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:](v12, "initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:", self, v13, v14, v15 + 8, v16 + 8, v11, v19, [a3 usage], objc_msgSend(a3, "resourceIndex"));
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5
{
  result = [(AGXTexture *)[AGXG18PFamilyTexture alloc] initWithBuffer:self desc:a3 offset:a4 bytesPerRow:a5];
  if (result)
  {
    v7 = result;
    v8 = [(IOGPUMetalResource *)self device];
    result = v7;
    atomic_fetch_or(v8 + 107, 0x80000uLL);
  }

  return result;
}

@end