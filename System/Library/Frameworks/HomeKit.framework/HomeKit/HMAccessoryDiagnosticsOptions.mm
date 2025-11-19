@interface HMAccessoryDiagnosticsOptions
- (HMAccessoryDiagnosticsOptions)initWithCoder:(id)a3;
- (HMAccessoryDiagnosticsOptions)initWithLogSizeBytes:(id)a3 delaySeconds:(id)a4 snapshotType:(int64_t)a5 recordAudio:(BOOL)a6 enableAudioClips:(BOOL)a7 cloudkitMetadataRequired:(BOOL)a8;
- (id)payloadMetadata;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryDiagnosticsOptions

- (void)encodeWithCoder:(id)a3
{
  logSize = self->_logSize;
  v9 = a3;
  [v9 encodeObject:logSize forKey:@"HMA.diagnostics.ck.ls"];
  [v9 encodeObject:self->_delay forKey:@"HMA.diagnostics.ck.d"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_snapshotType];
  [v9 encodeObject:v5 forKey:@"HMA.diagnostics.ck.st"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_recordAudio];
  [v9 encodeObject:v6 forKey:@"HMA.diagnostics.ck.ra"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableAudioClips];
  [v9 encodeObject:v7 forKey:@"HMA.diagnostics.ck.ec"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_metadataRequired];
  [v9 encodeObject:v8 forKey:@"HMA.diagnostics.ck.mr"];

  [v9 encodeObject:self->_matterLogType forKey:@"LogType"];
}

- (HMAccessoryDiagnosticsOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ls"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.d"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.st"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ra"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ec"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.mr"];
  if ([v5 integerValue] > 2 || objc_msgSend(v5, "integerValue") <= 0)
  {

    v5 = &unk_1F0EFCF50;
  }

  v9 = [v5 integerValue];
  v10 = v6;
  v11 = -[HMAccessoryDiagnosticsOptions initWithLogSizeBytes:delaySeconds:snapshotType:recordAudio:enableAudioClips:cloudkitMetadataRequired:](self, "initWithLogSizeBytes:delaySeconds:snapshotType:recordAudio:enableAudioClips:cloudkitMetadataRequired:", v17, v16, v9, [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"), objc_msgSend(v8, "BOOLValue"));
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LogType"];
  matterLogType = v11->_matterLogType;
  v11->_matterLogType = v12;

  return v11;
}

- (id)payloadMetadata
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(HMAccessoryDiagnosticsOptions *)self logSize];

  if (v4)
  {
    v5 = [(HMAccessoryDiagnosticsOptions *)self logSize];
    [v3 setObject:v5 forKeyedSubscript:@"maxLogSize"];
  }

  v6 = [(HMAccessoryDiagnosticsOptions *)self delay];

  if (v6)
  {
    v7 = [(HMAccessoryDiagnosticsOptions *)self delay];
    [v3 setObject:v7 forKeyedSubscript:@"delay"];
  }

  if ([(HMAccessoryDiagnosticsOptions *)self recordAudio])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryDiagnosticsOptions recordAudio](self, "recordAudio")}];
    [v3 setObject:v8 forKeyedSubscript:@"recordAudio"];
  }

  if ([(HMAccessoryDiagnosticsOptions *)self enableAudioClips])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryDiagnosticsOptions enableAudioClips](self, "enableAudioClips")}];
    [v3 setObject:v9 forKeyedSubscript:@"audioClips"];
  }

  if ([(HMAccessoryDiagnosticsOptions *)self snapshotType]!= 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryDiagnosticsOptions snapshotType](self, "snapshotType")}];
    [v3 setObject:v10 forKeyedSubscript:@"snapshotType"];
  }

  v11 = [(HMAccessoryDiagnosticsOptions *)self matterLogType];
  [v3 setObject:v11 forKeyedSubscript:@"LogType"];

  return v3;
}

- (HMAccessoryDiagnosticsOptions)initWithLogSizeBytes:(id)a3 delaySeconds:(id)a4 snapshotType:(int64_t)a5 recordAudio:(BOOL)a6 enableAudioClips:(BOOL)a7 cloudkitMetadataRequired:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = HMAccessoryDiagnosticsOptions;
  v17 = [(HMAccessoryDiagnosticsOptions *)&v20 init];
  if (!v17)
  {
    goto LABEL_11;
  }

  if ((!v15 || [v15 integerValue] <= 0x40000000 && objc_msgSend(v15, "integerValue") >= 5242880) && (objc_msgSend(v16, "integerValue") & 0x8000000000000000) == 0 && objc_msgSend(v16, "integerValue") <= 3600 && (a5 != 1 || !v10 && !v9))
  {
    objc_storeStrong(&v17->_logSize, a3);
    objc_storeStrong(&v17->_delay, a4);
    v17->_snapshotType = a5;
    v17->_recordAudio = v10;
    v17->_enableAudioClips = v9;
    v17->_metadataRequired = a8;
LABEL_11:
    v18 = v17;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

@end