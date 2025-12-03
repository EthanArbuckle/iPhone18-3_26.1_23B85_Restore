@interface _IOSurfaceDebugDescription
- (NSString)pixelFormatString;
- (_IOSurfaceDebugDescription)initWithBasicInfo:(id *)info layoutInfo:(id *)layoutInfo name:(id)name;
- (id)description;
- (void)dealloc;
@end

@implementation _IOSurfaceDebugDescription

- (_IOSurfaceDebugDescription)initWithBasicInfo:(id *)info layoutInfo:(id *)layoutInfo name:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = _IOSurfaceDebugDescription;
  v8 = [(_IOSurfaceDebugDescription *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&info->var10;
    v12 = *&info->var0;
    v11 = *&info->var3;
    *(v8 + 40) = *&info->var7;
    *(v8 + 56) = v10;
    *(v8 + 8) = v12;
    *(v8 + 24) = v11;
    v14 = *&info->var18;
    v13 = *&info->var20;
    v15 = *&info->var16;
    *(v8 + 15) = info->var22;
    *(v8 + 88) = v14;
    *(v8 + 104) = v13;
    *(v8 + 72) = v15;
    v16 = *&layoutInfo->var4;
    v17 = *&layoutInfo->var0;
    *(v8 + 9) = *&layoutInfo->var2;
    *(v8 + 10) = v16;
    *(v8 + 8) = v17;
    *(v8 + 22) = [name copy];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _IOSurfaceDebugDescription;
  [(_IOSurfaceDebugDescription *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  p_basicInfo = &self->_basicInfo;
  pixelFormat = self->_basicInfo.pixelFormat;
  v5 = pixelFormat >> 24;
  if ((pixelFormat & 0x80000000) != 0)
  {
    if (__maskrune(v5, 0x800uLL))
    {
      goto LABEL_3;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x800) != 0)
  {
LABEL_3:
    __str[0] = BYTE3(pixelFormat);
    __str[1] = BYTE2(pixelFormat);
    __str[2] = BYTE1(pixelFormat);
    __str[3] = pixelFormat;
    __str[4] = 0;
    goto LABEL_6;
  }

  snprintf(__str, 5uLL, "%4d", pixelFormat);
LABEL_6:
  v6 = MEMORY[0x1E696AEC0];
  traceID = p_basicInfo->traceID;
  clientAddress = p_basicInfo->clientAddress;
  width = self->_layoutInfo.width;
  height = self->_layoutInfo.height;
  allocSize = p_basicInfo->allocSize;
  surfaceID = p_basicInfo->surfaceID;
  uTF8String = [NSLocalizedFileSizeDescription() UTF8String];
  name = self->_name;
  if (!name)
  {
    name = &stru_1F25E13F8;
  }

  result = [v6 stringWithFormat:@"sid: %08x traceID: %016llx virt: %016llx fmt: %s dims: %5d x %5d size: %7s name: %@", surfaceID, traceID, clientAddress, __str, width, height, uTF8String, name];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)pixelFormatString
{
  v7 = *MEMORY[0x1E69E9840];
  pixelFormat = self->_basicInfo.pixelFormat;
  v3 = pixelFormat >> 24;
  if ((pixelFormat & 0x80000000) != 0)
  {
    if (__maskrune(v3, 0x800uLL))
    {
      goto LABEL_3;
    }

LABEL_5:
    snprintf(__str, 5uLL, "%4d", pixelFormat);
    goto LABEL_6;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x800) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __str[0] = BYTE3(pixelFormat);
  __str[1] = BYTE2(pixelFormat);
  __str[2] = BYTE1(pixelFormat);
  __str[3] = pixelFormat;
  __str[4] = 0;
LABEL_6:
  result = [MEMORY[0x1E696AEC0] stringWithCString:__str encoding:1];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end