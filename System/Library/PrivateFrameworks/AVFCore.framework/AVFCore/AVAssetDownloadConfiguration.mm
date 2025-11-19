@interface AVAssetDownloadConfiguration
+ (AVAssetDownloadConfiguration)downloadConfigurationWithAsset:(AVURLAsset *)asset title:(NSString *)title;
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (AVAssetDownloadConfiguration)initWithAsset:(id)a3 title:(id)a4;
- (AVAssetDownloadConfiguration)initWithCoder:(id)a3;
- (AVURLAsset)_asset;
- (NSString)_assetTitle;
- (NSURL)_destinationURL;
- (void)_setDestinationURL:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation AVAssetDownloadConfiguration

- (AVAssetDownloadConfiguration)initWithAsset:(id)a3 title:(id)a4
{
  v24.receiver = self;
  v24.super_class = AVAssetDownloadConfiguration;
  v7 = [(AVAssetDownloadConfiguration *)&v24 init];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      if (a4)
      {
        v7->_asset = a3;
        v8->_title = [a4 copy];
        v8->_primaryContentConfiguration = objc_alloc_init(AVAssetDownloadDefaultPrimaryContentConfiguration);
        *&v8->_optimizesAuxiliaryContentConfigurations = 1;
        v9 = MEMORY[0x1E6960C98];
        v10 = *(MEMORY[0x1E6960C98] + 16);
        *&v8->_timeRange.start.value = *MEMORY[0x1E6960C98];
        *&v8->_timeRange.start.epoch = v10;
        *&v8->_timeRange.duration.timescale = *(v9 + 32);
        v11 = objc_alloc_init(AVAssetDownloadDefaultAuxiliaryContentConfiguration);
        v8->_auxiliaryContentConfigurations = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, 0}];

        return v8;
      }

      v22 = v7;
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = "title != nil";
    }

    else
    {
      v13 = v7;
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = "asset != nil";
    }

    v23 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, v21), 0}];
    objc_exception_throw(v23);
  }

  return v8;
}

+ (AVAssetDownloadConfiguration)downloadConfigurationWithAsset:(AVURLAsset *)asset title:(NSString *)title
{
  v4 = [[a1 alloc] initWithAsset:asset title:title];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetDownloadConfiguration;
  [(AVAssetDownloadConfiguration *)&v3 dealloc];
}

- (NSString)_assetTitle
{
  v2 = self->_title;

  return v2;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v3 = *&self[1].var0.var3;
  *&retstr->var0.var0 = *&self[1].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var1;
  return self;
}

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_timeRange.start.epoch = *&a3->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

- (NSURL)_destinationURL
{
  v2 = self->_destinationURL;

  return v2;
}

- (void)_setDestinationURL:(id)a3
{
  v4 = [a3 copy];

  self->_destinationURL = v4;
}

- (AVURLAsset)_asset
{
  v2 = self->_asset;

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v18.start.value), 0}];
    objc_exception_throw(v17);
  }

  v11 = [(AVURLAsset *)self->_asset URL];
  v12 = [(AVURLAsset *)self->_asset _serializableCreationOptions];
  [a3 encodeObject:v11 forKey:@"assetURL"];
  [a3 encodeObject:v12 forKey:@"assetCreationOptions"];
  [a3 encodeInt64:-[AVURLAsset downloadToken](self->_asset forKey:{"downloadToken"), @"downloadToken"}];
  [a3 encodeObject:self->_title forKey:@"title"];
  [a3 encodeObject:self->_artworkData forKey:@"artworkData"];
  [a3 encodeObject:self->_primaryContentConfiguration forKey:@"primaryContentConfig"];
  [a3 encodeObject:self->_auxiliaryContentConfigurations forKey:@"auxiliaryContentConfigs"];
  [a3 encodeObject:self->_destinationURL forKey:@"destinationURL"];
  [a3 encodeBool:self->_optimizesAuxiliaryContentConfigurations forKey:@"optimizesAuxiliaryContentConfigs"];
  [a3 encodeBool:self->_downloadsInterstitialAssets forKey:@"downloadInterstitialAssets"];
  [a3 encodeObject:self->_interstitialMediaSelectionCriteria forKey:@"interstitalMediaSelectionCriteria"];
  if ((self->_timeRange.start.flags & 1) != 0 && (self->_timeRange.duration.flags & 1) != 0 && !self->_timeRange.duration.epoch && (self->_timeRange.duration.value & 0x8000000000000000) == 0)
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = *&self->_timeRange.start.epoch;
    *&v18.start.value = *&self->_timeRange.start.value;
    *&v18.start.epoch = v14;
    *&v18.duration.timescale = *&self->_timeRange.duration.timescale;
    v15 = CMTimeRangeCopyAsDictionary(&v18, v13);
    if (v15)
    {
      v16 = v15;
      [a3 encodeObject:v15 forKey:@"timeRange"];
      CFRelease(v16);
    }
  }
}

- (AVAssetDownloadConfiguration)initWithCoder:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v28 = self;
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v29, v30, v31, v32, v33, v35), 0}];
    objc_exception_throw(v34);
  }

  v37.receiver = self;
  v37.super_class = AVAssetDownloadConfiguration;
  v6 = [(AVAssetDownloadConfiguration *)&v37 init];
  if (v6)
  {
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetURL"];
    v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetCreationOptions"];
    v9 = [a3 decodeInt64ForKey:@"downloadToken"];
    v10 = [AVURLAsset alloc];
    v38 = @"AVURLAssetDownloadTokenKey";
    v39[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    v11 = -[AVURLAsset initWithURL:options:](v10, "initWithURL:options:", 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1]);
    v6->_asset = v11;
    if (!v11 && v7)
    {
      v11 = +[AVURLAsset URLAssetWithURL:options:](AVURLAsset, "URLAssetWithURL:options:", v7, [v8 creationOptions]);
      v6->_asset = v11;
    }

    if (v11)
    {
      v6->_title = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      v6->_artworkData = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"artworkData"];
      v6->_primaryContentConfiguration = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"primaryContentConfig"];
      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      v6->_auxiliaryContentConfigurations = [a3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"auxiliaryContentConfigs"}];
      v6->_destinationURL = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"destinationURL"];
      v6->_optimizesAuxiliaryContentConfigurations = [a3 decodeBoolForKey:@"optimizesAuxiliaryContentConfigs"];
      v6->_downloadsInterstitialAssets = [a3 decodeBoolForKey:@"downloadInterstitialAssets"];
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v6->_interstitialMediaSelectionCriteria = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, v17, objc_opt_class(), 0), @"interstitalMediaSelectionCriteria"}];
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, v20, objc_opt_class(), 0), @"timeRange"}];
      if (v21)
      {
        CMTimeRangeMakeFromDictionary(&v36, v21);
        v22 = *&v36.start.epoch;
        *&v6->_timeRange.start.value = *&v36.start.value;
        *&v6->_timeRange.start.epoch = v22;
        v23 = *&v36.duration.timescale;
      }

      else
      {
        v25 = MEMORY[0x1E6960C98];
        v26 = *(MEMORY[0x1E6960C98] + 16);
        *&v6->_timeRange.start.value = *MEMORY[0x1E6960C98];
        *&v6->_timeRange.start.epoch = v26;
        v23 = *(v25 + 32);
      }

      *&v6->_timeRange.duration.timescale = v23;
    }

    else
    {
      v24 = v6;
      return 0;
    }
  }

  return v6;
}

@end