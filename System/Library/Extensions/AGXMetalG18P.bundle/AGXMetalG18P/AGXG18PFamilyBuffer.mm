@interface AGXG18PFamilyBuffer
- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
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

- (id)newTensorWithDescriptor:(id)descriptor offset:(unint64_t)offset error:(id *)error
{
  if (![descriptor validateWithBuffer:self offset:offset error:error])
  {
    return 0;
  }

  dataType = [descriptor dataType];
  if (dataType <= 36)
  {
    if (dataType > 28)
    {
      if (dataType == 29)
      {
        v9 = 7u;
        goto LABEL_25;
      }

      if (dataType == 33)
      {
        v9 = 8u;
        goto LABEL_25;
      }
    }

    else
    {
      if (dataType == 3)
      {
        v9 = 0;
        goto LABEL_25;
      }

      if (dataType == 16)
      {
        v9 = 1u;
        goto LABEL_25;
      }
    }
  }

  else if (dataType <= 44)
  {
    if (dataType == 37)
    {
      v9 = 5u;
      goto LABEL_25;
    }

    if (dataType == 41)
    {
      v9 = 6u;
      goto LABEL_25;
    }
  }

  else
  {
    switch(dataType)
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
  v11 = offset / AGX::Tensor<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::kTensorDataTypeSize[v9];
  v12 = [AGXG18PFamilyTensor alloc];
  device = [(IOGPUMetalResource *)self device];
  v14 = [objc_msgSend(descriptor "dimensions")];
  v15 = [objc_msgSend(descriptor "dimensions")];
  v16 = [objc_msgSend(descriptor "strides")];
  dataType2 = [descriptor dataType];
  if (dataType2 <= 36)
  {
    if (dataType2 > 28)
    {
      if (dataType2 == 29)
      {
        v18 = 7;
        goto LABEL_47;
      }

      if (dataType2 == 33)
      {
        v18 = 8;
        goto LABEL_47;
      }
    }

    else
    {
      if (dataType2 == 3)
      {
        v18 = 0;
        goto LABEL_47;
      }

      if (dataType2 == 16)
      {
        v18 = 1;
        goto LABEL_47;
      }
    }

LABEL_46:
    v18 = -1;
    goto LABEL_47;
  }

  if (dataType2 <= 44)
  {
    if (dataType2 == 37)
    {
      v18 = 5;
      goto LABEL_47;
    }

    if (dataType2 == 41)
    {
      v18 = 6;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (dataType2 == 45)
  {
    v18 = 3;
    goto LABEL_47;
  }

  if (dataType2 == 49)
  {
    v18 = 4;
    goto LABEL_47;
  }

  if (dataType2 != 121)
  {
    goto LABEL_46;
  }

  v18 = 2;
LABEL_47:
  LOBYTE(v19) = v18;
  return -[AGXG18PFamilyTensor initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:](v12, "initWithBuffer:device:rank:dims:strides:offset:dataType:usage:resourceIndex:", self, device, v14, v15 + 8, v16 + 8, v11, v19, [descriptor usage], objc_msgSend(descriptor, "resourceIndex"));
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  result = [(AGXTexture *)[AGXG18PFamilyTexture alloc] initWithBuffer:self desc:descriptor offset:offset bytesPerRow:row];
  if (result)
  {
    v7 = result;
    device = [(IOGPUMetalResource *)self device];
    result = v7;
    atomic_fetch_or(device + 107, 0x80000uLL);
  }

  return result;
}

@end