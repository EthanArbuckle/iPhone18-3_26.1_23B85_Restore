@interface NSXPCCoder(ARAdditions)
- (CVPixelBufferRef)ar_decodePixelBufferForKey:()ARAdditions;
- (void)ar_encodePixelBuffer:()ARAdditions forKey:;
@end

@implementation NSXPCCoder(ARAdditions)

- (CVPixelBufferRef)ar_decodePixelBufferForKey:()ARAdditions
{
  v26 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v5, 0, &pixelBufferOut);
    if (v6)
    {
      v7 = v6;
      if (ARShouldUseLogTypeError_onceToken_50 != -1)
      {
        [NSXPCCoder(ARAdditions) ar_decodePixelBufferForKey:];
      }

      v8 = ARShouldUseLogTypeError_internalOSVersion_50;
      v9 = _ARLogGeneral_44();
      v10 = v9;
      if (v8 == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 138543874;
          v21 = v12;
          v22 = 2048;
          selfCopy2 = self;
          v24 = 1024;
          v25 = v7;
          v13 = "%{public}@ <%p>: Failed to decode pixel buffer - status: %d";
          v14 = v10;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_10:
          _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v12 = NSStringFromClass(v16);
        *buf = 138543874;
        v21 = v12;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 1024;
        v25 = v7;
        v13 = "Error: %{public}@ <%p>: Failed to decode pixel buffer - status: %d";
        v14 = v10;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_10;
      }
    }
  }

  v17 = pixelBufferOut;

  return v17;
}

- (void)ar_encodePixelBuffer:()ARAdditions forKey:
{
  v6 = a4;
  v7 = CVPixelBufferGetIOSurface(a3);
  [self encodeObject:v7 forKey:v6];
}

@end