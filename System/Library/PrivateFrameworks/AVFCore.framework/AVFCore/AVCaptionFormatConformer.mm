@interface AVCaptionFormatConformer
+ (AVCaptionFormatConformer)captionFormatConformerWithConversionSettings:(NSDictionary *)conversionSettings;
- (AVCaption)conformedCaptionForCaption:(AVCaption *)caption error:(NSError *)outError;
- (AVCaptionFormatConformer)initWithConversionSettings:(NSDictionary *)conversionSettings;
- (BOOL)_isConversionToClosedCaptions:(id)captions;
- (void)dealloc;
@end

@implementation AVCaptionFormatConformer

+ (AVCaptionFormatConformer)captionFormatConformerWithConversionSettings:(NSDictionary *)conversionSettings
{
  v3 = [objc_alloc(objc_opt_class()) initWithConversionSettings:conversionSettings];

  return v3;
}

- (BOOL)_isConversionToClosedCaptions:(id)captions
{
  result = 0;
  if ([objc_msgSend(captions objectForKeyedSubscript:{@"AVCaptionMediaTypeKey", "isEqualToString:", @"clcp"}])
  {
    v4 = [captions objectForKeyedSubscript:@"AVCaptionMediaSubTypeKey"];
    if ([v4 isEqual:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", 1664495672)}] & 1) != 0 || (objc_msgSend(objc_msgSend(captions, "objectForKeyedSubscript:", @"AVCaptionMediaSubTypeKey"), "isEqual:", @"c608"))
    {
      return 1;
    }
  }

  return result;
}

- (AVCaptionFormatConformer)initWithConversionSettings:(NSDictionary *)conversionSettings
{
  if (![(AVCaptionFormatConformer *)self _isConversionToClosedCaptions:conversionSettings])
  {
    selfCopy = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports conversions only to mediaType 'clcp' and mediaSubType 'c608'", v9, v10, v11, v12, v13, v15.receiver), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = AVCaptionFormatConformer;
  v5 = [(AVCaptionFormatConformer *)&v15 init];
  if (v5)
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    v5->_conformerInternal = v6;
    if (!v6 || FigCLCPCaptionFormatConformerCreate())
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  conformerInternal = self->_conformerInternal;
  if (conformerInternal)
  {
    if (*conformerInternal)
    {
      CFRelease(*conformerInternal);
      conformerInternal = self->_conformerInternal;
    }

    free(conformerInternal);
  }

  v4.receiver = self;
  v4.super_class = AVCaptionFormatConformer;
  [(AVCaptionFormatConformer *)&v4 dealloc];
}

- (AVCaption)conformedCaptionForCaption:(AVCaption *)caption error:(NSError *)outError
{
  _figCaptionData = [(AVCaption *)caption _figCaptionData];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  if (caption)
  {
    [(AVCaption *)caption timeRange];
  }

  cf = 0;
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v20 = *MEMORY[0x1E6960C98];
  v21 = v8;
  v22 = *(MEMORY[0x1E6960C98] + 32);
  v9 = *self->_conformerInternal;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v11 = -12782;
    if (outError)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_12;
  }

  v27 = v24;
  v28 = v25;
  v29 = v26;
  v11 = v10(v9, _figCaptionData, &v27, &cf, &v20, 0);
  if (v11)
  {
    if (outError)
    {
LABEL_6:
      v12 = 0;
      *outError = AVLocalizedErrorWithUnderlyingOSStatus(v11, 0);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v13 = [AVCaption alloc];
  v14 = &v24;
  if (*(self->_conformerInternal + 8))
  {
    v14 = &v20;
  }

  v15 = v14[1];
  v27 = *v14;
  v28 = v15;
  v29 = v14[2];
  v12 = [(AVCaption *)v13 initWithFigCaptionData:cf timeRange:&v27, v17, v18, v19, v20, v21, v22];
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

@end