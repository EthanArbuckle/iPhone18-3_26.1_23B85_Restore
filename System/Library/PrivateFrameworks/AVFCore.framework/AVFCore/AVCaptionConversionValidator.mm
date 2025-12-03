@interface AVCaptionConversionValidator
+ (AVCaptionConversionValidator)captionConversionValidatorWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange conversionSettings:(NSDictionary *)conversionSettings;
- (AVCaptionConversionValidator)initWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange conversionSettings:(NSDictionary *)conversionSettings;
- (AVCaptionConversionValidatorStatus)status;
- (BOOL)_isConversionToClosedCaptions:(id)captions;
- (CMTimeRange)timeRange;
- (NSArray)warnings;
- (void)_completeValidation;
- (void)_issueWarningForFigDictionary:(__CFDictionary *)dictionary;
- (void)dealloc;
- (void)stopValidating;
- (void)validateCaptionConversionWithWarningHandler:(void *)handler;
@end

@implementation AVCaptionConversionValidator

+ (AVCaptionConversionValidator)captionConversionValidatorWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange conversionSettings:(NSDictionary *)conversionSettings
{
  v8 = objc_alloc(objc_opt_class());
  v9 = *&timeRange->start.epoch;
  v11[0] = *&timeRange->start.value;
  v11[1] = v9;
  v11[2] = *&timeRange->duration.timescale;
  return [v8 initWithCaptions:captions timeRange:v11 conversionSettings:conversionSettings];
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

- (AVCaptionConversionValidator)initWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange conversionSettings:(NSDictionary *)conversionSettings
{
  v41 = *MEMORY[0x1E69E9840];
  if (![(AVCaptionConversionValidator *)self _isConversionToClosedCaptions:conversionSettings])
  {
    selfCopy = self;
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports conversions only to mediaType 'clcp' and mediaSubType 'c608'", v29, v30, v31, v32, v33, v35.receiver), 0}];
    objc_exception_throw(v34);
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](captions, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = [(NSArray *)captions countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(captions);
        }

        v15 = [*(*(&v36 + 1) + 8 * v14) copy];
        if (v15)
        {
          [v10 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)captions countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v35.receiver = self;
  v35.super_class = AVCaptionConversionValidator;
  v16 = [(AVCaptionConversionValidator *)&v35 init];
  if (v16)
  {
    v17 = malloc_type_calloc(1uLL, 0x68uLL, 0x10800408555C317uLL);
    v16->_validatorInternal = v17;
    if (v17)
    {
      *v16->_validatorInternal = [[AVWeakReference alloc] initWithReferencedObject:v16];
      v18 = [v10 copy];
      validatorInternal = v16->_validatorInternal;
      validatorInternal[1] = v18;
      v20 = *&timeRange->start.value;
      v21 = *&timeRange->duration.timescale;
      *(validatorInternal + 2) = *&timeRange->start.epoch;
      *(validatorInternal + 3) = v21;
      *(validatorInternal + 1) = v20;
      v22 = [(NSDictionary *)conversionSettings copy];
      v23 = v16->_validatorInternal;
      v23[8] = v22;
      v23[11] = 0;
      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_create("com.apple.avcaptionconversionvalidator", v24);
      v26 = v16->_validatorInternal;
      v26[9] = v25;
      v26[10] = 0;
      *(v16->_validatorInternal + 12) = [MEMORY[0x1E695DF70] array];
    }

    else
    {

      return 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  validatorInternal = self->_validatorInternal;
  if (validatorInternal)
  {

    v4 = self->_validatorInternal;
    if (v4[9])
    {
      dispatch_release(v4[9]);
      v4 = self->_validatorInternal;
    }

    free(v4);
  }

  v5.receiver = self;
  v5.super_class = AVCaptionConversionValidator;
  [(AVCaptionConversionValidator *)&v5 dealloc];
}

- (AVCaptionConversionValidatorStatus)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(self->_validatorInternal + 9);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVCaptionConversionValidator_status__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = v3[2];
  *&retstr->start.value = v3[1];
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = v3[3];
  return self;
}

- (void)_completeValidation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v2 = *(self->_validatorInternal + 9);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVCaptionConversionValidator__completeValidation__block_invoke;
  v4[3] = &unk_1E7460EE0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v2, v4);
  v3 = v6[5];
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __51__AVCaptionConversionValidator__completeValidation__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 88) <= 1)
  {
    *(v1 + 88) = 2;
    *(*(*(result + 40) + 8) + 40) = *(*(*(result + 32) + 8) + 80);
    *(*(*(result + 32) + 8) + 80) = 0;
  }

  return result;
}

- (void)_issueWarningForFigDictionary:(__CFDictionary *)dictionary
{
  v4 = [AVCaptionConversionWarning captionConversionWarningWithFigDictionary:dictionary];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 1;
  v5 = *(self->_validatorInternal + 9);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AVCaptionConversionValidator__issueWarningForFigDictionary___block_invoke;
  v7[3] = &unk_1E7461130;
  v7[6] = v8;
  v7[7] = &v10;
  v7[4] = self;
  v7[5] = v4;
  dispatch_sync(v5, v7);
  if (v4)
  {
    v6 = v11[5];
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
}

void *__62__AVCaptionConversionValidator__issueWarningForFigDictionary___block_invoke(void *result)
{
  *(*(result[6] + 8) + 24) = *(*(result[4] + 8) + 88) < 2;
  if (*(*(result[6] + 8) + 24) == 1)
  {
    *(*(result[7] + 8) + 40) = *(*(result[4] + 8) + 80);
    if (result[5])
    {
      return [*(*(result[4] + 8) + 96) addObject:?];
    }
  }

  return result;
}

- (void)validateCaptionConversionWithWarningHandler:(void *)handler
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26 = 0;
  v6 = *(self->_validatorInternal + 9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVCaptionConversionValidator_validateCaptionConversionWithWarningHandler___block_invoke;
  block[3] = &unk_1E7460EE0;
  block[4] = self;
  block[5] = &v27;
  dispatch_sync(v6, block);
  if (*(v28 + 24) == 1)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"cannot be called after caption conversion validation has started", v7, v8, v9, v10, v11, v21[0]), 0}];
    objc_exception_throw(v20);
  }

  if (!-[AVCaptionConversionValidator _isConversionToClosedCaptions:](self, "_isConversionToClosedCaptions:", *(self->_validatorInternal + 8)) || (v12 = *self->_validatorInternal, v23 = handleCaptionConversionWarning, v24 = v12, *(self->_validatorInternal + 10) = [handler copy], v13 = *MEMORY[0x1E695E480], FigCLCPCaptionConversionValidatorCreate()))
  {
    v16 = 0;
  }

  else
  {
    validatorInternal = self->_validatorInternal;
    v15 = validatorInternal[2];
    *&range.start.value = validatorInternal[1];
    *&range.start.epoch = v15;
    *&range.duration.timescale = validatorInternal[3];
    v16 = CMTimeRangeCopyAsDictionary(&range, v13);
    CMBaseObject = FigCaptionConversionValidatorGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18 && !v18(CMBaseObject, *MEMORY[0x1E6971830], v16))
    {
      CFRetain(v26);
      global_queue = dispatch_get_global_queue(0, 0);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __76__AVCaptionConversionValidator_validateCaptionConversionWithWarningHandler___block_invoke_2;
      v21[3] = &unk_1E7460FA8;
      v21[4] = v12;
      v21[5] = v26;
      dispatch_async(global_queue, v21);
      goto LABEL_9;
    }
  }

  [(AVCaptionConversionValidator *)self stopValidating];
LABEL_9:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __76__AVCaptionConversionValidator_validateCaptionConversionWithWarningHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 88) < 1)
  {
    *(v1 + 88) = 1;
  }

  else
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __76__AVCaptionConversionValidator_validateCaptionConversionWithWarningHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [objc_msgSend(*(a1 + 32) "referencedObject")];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 _figCaptionData];
        if (v8)
        {
          [v8 timeRange];
        }

        else
        {
          v17 = 0u;
          v18 = 0u;
          v16 = 0u;
        }

        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          v23[0] = v16;
          v23[1] = v17;
          v23[2] = v18;
          v11(v9, v10, v23, 0);
        }

        if (++v5 == 25)
        {
          v12 = [*(a1 + 32) referencedObject];
          if (!v12 || [v12 status] > 1)
          {
            goto LABEL_17;
          }

          v5 = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

LABEL_17:
  v13 = *(a1 + 40);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v14)
  {
    v14(v13, 0);
  }

  CFRelease(*(a1 + 40));
  return [objc_msgSend(*(a1 + 32) "referencedObject")];
}

- (void)stopValidating
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v2 = *(self->_validatorInternal + 9);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVCaptionConversionValidator_stopValidating__block_invoke;
  v4[3] = &unk_1E7460EE0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v2, v4);
  v3 = v6[5];
  if (v3)
  {
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __46__AVCaptionConversionValidator_stopValidating__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 88) <= 1)
  {
    *(v1 + 88) = 3;
    *(*(*(result + 40) + 8) + 40) = *(*(*(result + 32) + 8) + 80);
    *(*(*(result + 32) + 8) + 80) = 0;
  }

  return result;
}

- (NSArray)warnings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  v2 = *(self->_validatorInternal + 9);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVCaptionConversionValidator_warnings__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__AVCaptionConversionValidator_warnings__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 96) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end