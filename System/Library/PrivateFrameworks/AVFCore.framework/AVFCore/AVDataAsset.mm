@interface AVDataAsset
+ (id)_getFigAssetCreationOptionsFromDataAssetInitializationOptions:(id)a3 figAssetCreationFlags:(unint64_t *)a4;
- (AVDataAsset)initWithData:(id)a3 contentType:(id)a4 options:(id)a5;
- (id)tracks;
- (unint64_t)referenceRestrictions;
- (void)dealloc;
@end

@implementation AVDataAsset

+ (id)_getFigAssetCreationOptionsFromDataAssetInitializationOptions:(id)a3 figAssetCreationFlags:(unint64_t *)a4
{
  if (a3)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a3 objectForKey:@"AVAssetReferenceRestrictionsKey"];
  if (v7)
  {
    v8 = 4 * ([v7 unsignedIntegerValue] & 0xF);
  }

  else
  {
    v8 = 8;
  }

  *a4 = v8;
  v9 = [a3 objectForKey:@"AVAssetPreferNominalDurationsKey"];
  if (v9)
  {
    if (([v9 BOOLValue] & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_9:
    *a4 |= 0x100uLL;
  }

LABEL_10:
  v10 = [a3 objectForKey:@"AVAssetPreferPreciseDurationAndTimingKey"];
  if (v10)
  {
    [v6 setObject:v10 forKey:*MEMORY[0x1E6971090]];
  }

  v11 = [a3 objectForKey:@"AVURLAssetAllowableTypeCategoriesKey"];
  if (v11)
  {
    [v6 setObject:v11 forKey:*MEMORY[0x1E6970EF8]];
  }

  if ([AVAsset _assetCreationOptionsRequiresInProcessOperation:a3])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 setObject:v12 forKey:*MEMORY[0x1E69710D0]];
  }

  if ([AVAsset _assetCreationOptionsPrefersSandboxedOption:a3])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 setObject:v13 forKey:*MEMORY[0x1E6971098]];
  }

  return v6;
}

- (AVDataAsset)initWithData:(id)a3 contentType:(id)a4 options:(id)a5
{
  if ([a3 length] > 0xA00000)
  {
    v16 = self;
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Data length cannot exceed %llu bytes", v17, v18, v19, v20, v21, 10485760), 0}];
    objc_exception_throw(v22);
  }

  v26.receiver = self;
  v26.super_class = AVDataAsset;
  v9 = [(AVAsset *)&v26 init];
  if (v9)
  {
    v24 = 0;
    cf = 0;
    v10 = [a3 copy];
    v9->_initializationOptions = [a5 copy];
    v9->_allocateTracksOnceOnly = objc_alloc_init(AVDispatchOnce);
    [v10 length];
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy || ((v23 = 0, [AVDataAsset _getFigAssetCreationOptionsFromDataAssetInitializationOptions:v9->_initializationOptions figAssetCreationFlags:&v23], ![AVAsset _assetCreationOptionsRequiresInProcessOperation:v9->_initializationOptions]) ? (v12 = FigAssetRemoteCreateWithBlockBuffer()) : (v12 = FigAssetCreateWithBlockBuffer()), BlockBufferWithCFDataNoCopy = v12, v12))
    {
      v13 = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:BlockBufferWithCFDataNoCopy userInfo:0];
    }

    else
    {
      v15 = [AVFigAssetInspectorLoader alloc];
      v13 = [(AVFigAssetInspectorLoader *)v15 initWithFigAsset:v24 forAsset:v9];
    }

    v9->_loader = &v13->super;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (!v9->_loader)
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDataAsset;
  [(AVAsset *)&v3 dealloc];
}

- (id)tracks
{
  allocateTracksOnceOnly = self->_allocateTracksOnceOnly;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__AVDataAsset_tracks__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)allocateTracksOnceOnly runBlockOnce:v5];
  return self->_tracks;
}

uint64_t __21__AVDataAsset_tracks__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) _tracksWithClass:{objc_opt_class()), "copy"}];
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (unint64_t)referenceRestrictions
{
  if (![(NSDictionary *)self->_initializationOptions objectForKey:@"AVAssetReferenceRestrictionsKey"])
  {
    return 2;
  }

  v3 = [(NSDictionary *)self->_initializationOptions objectForKey:@"AVAssetReferenceRestrictionsKey"];

  return [v3 unsignedIntegerValue];
}

@end