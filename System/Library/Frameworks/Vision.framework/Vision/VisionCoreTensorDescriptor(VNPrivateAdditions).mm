@interface VisionCoreTensorDescriptor(VNPrivateAdditions)
- (uint64_t)getVNElementType:()VNPrivateAdditions error:;
@end

@implementation VisionCoreTensorDescriptor(VNPrivateAdditions)

- (uint64_t)getVNElementType:()VNPrivateAdditions error:
{
  if (a1)
  {
    v7 = [a1 dataType];
    if (v7 == 65568)
    {
      v8 = 1;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_5;
    }

    if (v7 == 65600)
    {
      v8 = 2;
      if (!a3)
      {
        return 1;
      }

LABEL_5:
      *a3 = v8;
      return 1;
    }
  }

  if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    [a1 dataType];
    v11 = NSStringFromVisionCoreTensorDataType();
    v12 = [v10 initWithFormat:@"tensor data type %@ is not supported", v11];

    *a4 = [VNError errorForInvalidArgumentWithLocalizedDescription:v12];
  }

  return 0;
}

@end