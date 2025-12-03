@interface HMAccessoryDiagnosticsOptions
- (HMAccessoryDiagnosticsOptions)initWithCoder:(id)coder;
- (HMAccessoryDiagnosticsOptions)initWithLogSizeBytes:(id)bytes delaySeconds:(id)seconds snapshotType:(int64_t)type recordAudio:(BOOL)audio enableAudioClips:(BOOL)clips cloudkitMetadataRequired:(BOOL)required;
- (id)payloadMetadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryDiagnosticsOptions

- (void)encodeWithCoder:(id)coder
{
  logSize = self->_logSize;
  coderCopy = coder;
  [coderCopy encodeObject:logSize forKey:@"HMA.diagnostics.ck.ls"];
  [coderCopy encodeObject:self->_delay forKey:@"HMA.diagnostics.ck.d"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_snapshotType];
  [coderCopy encodeObject:v5 forKey:@"HMA.diagnostics.ck.st"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_recordAudio];
  [coderCopy encodeObject:v6 forKey:@"HMA.diagnostics.ck.ra"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enableAudioClips];
  [coderCopy encodeObject:v7 forKey:@"HMA.diagnostics.ck.ec"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_metadataRequired];
  [coderCopy encodeObject:v8 forKey:@"HMA.diagnostics.ck.mr"];

  [coderCopy encodeObject:self->_matterLogType forKey:@"LogType"];
}

- (HMAccessoryDiagnosticsOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ls"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.d"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.st"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ra"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ec"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.mr"];
  if ([v5 integerValue] > 2 || objc_msgSend(v5, "integerValue") <= 0)
  {

    v5 = &unk_1F0EFCF50;
  }

  integerValue = [v5 integerValue];
  v10 = v6;
  v11 = -[HMAccessoryDiagnosticsOptions initWithLogSizeBytes:delaySeconds:snapshotType:recordAudio:enableAudioClips:cloudkitMetadataRequired:](self, "initWithLogSizeBytes:delaySeconds:snapshotType:recordAudio:enableAudioClips:cloudkitMetadataRequired:", v17, v16, integerValue, [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"), objc_msgSend(v8, "BOOLValue"));
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LogType"];
  matterLogType = v11->_matterLogType;
  v11->_matterLogType = v12;

  return v11;
}

- (id)payloadMetadata
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  logSize = [(HMAccessoryDiagnosticsOptions *)self logSize];

  if (logSize)
  {
    logSize2 = [(HMAccessoryDiagnosticsOptions *)self logSize];
    [v3 setObject:logSize2 forKeyedSubscript:@"maxLogSize"];
  }

  delay = [(HMAccessoryDiagnosticsOptions *)self delay];

  if (delay)
  {
    delay2 = [(HMAccessoryDiagnosticsOptions *)self delay];
    [v3 setObject:delay2 forKeyedSubscript:@"delay"];
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

  matterLogType = [(HMAccessoryDiagnosticsOptions *)self matterLogType];
  [v3 setObject:matterLogType forKeyedSubscript:@"LogType"];

  return v3;
}

- (HMAccessoryDiagnosticsOptions)initWithLogSizeBytes:(id)bytes delaySeconds:(id)seconds snapshotType:(int64_t)type recordAudio:(BOOL)audio enableAudioClips:(BOOL)clips cloudkitMetadataRequired:(BOOL)required
{
  clipsCopy = clips;
  audioCopy = audio;
  bytesCopy = bytes;
  secondsCopy = seconds;
  v20.receiver = self;
  v20.super_class = HMAccessoryDiagnosticsOptions;
  v17 = [(HMAccessoryDiagnosticsOptions *)&v20 init];
  if (!v17)
  {
    goto LABEL_11;
  }

  if ((!bytesCopy || [bytesCopy integerValue] <= 0x40000000 && objc_msgSend(bytesCopy, "integerValue") >= 5242880) && (objc_msgSend(secondsCopy, "integerValue") & 0x8000000000000000) == 0 && objc_msgSend(secondsCopy, "integerValue") <= 3600 && (type != 1 || !audioCopy && !clipsCopy))
  {
    objc_storeStrong(&v17->_logSize, bytes);
    objc_storeStrong(&v17->_delay, seconds);
    v17->_snapshotType = type;
    v17->_recordAudio = audioCopy;
    v17->_enableAudioClips = clipsCopy;
    v17->_metadataRequired = required;
LABEL_11:
    v18 = v17;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

@end