@interface PHImportTimer
- (PHImportTimer)initWithType:(unsigned __int8)a3 subtype:(unsigned __int8)a4;
- (id)description;
- (void)start;
- (void)stop;
@end

@implementation PHImportTimer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uuid = self->_uuid;
  v5 = [importTypeNames objectAtIndexedSubscript:self->_type];
  subtype = self->_subtype;
  [(PHImportTimer *)self duration];
  v8 = [v3 stringWithFormat:@"uuid: %@, type: %@, sub type: %hhu, duration: %fl", uuid, v5, subtype, v7];

  return v8;
}

- (void)stop
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_startTime && !self->_endTime)
  {
    v4 = importPerfLog;
    v5 = v4;
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      type = self->_type;
      subtype = self->_subtype;
      *buf = 134218240;
      v13 = type;
      v14 = 2048;
      v15 = subtype;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v5, OS_SIGNPOST_INTERVAL_END, signpostId, "PHImportTimer", "%lu-%lu", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E695DF00] date];
    endTime = self->_endTime;
    self->_endTime = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHImportTimer.m" lineNumber:166 description:@"Trying to stop a timer that is either not running or already done running."];
  }
}

- (void)start
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_startTime)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PHImportTimer.m" lineNumber:156 description:@"Trying to start a timer that is already running."];
  }

  else
  {
    v4 = importPerfLog;
    v5 = v4;
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      type = self->_type;
      subtype = self->_subtype;
      *buf = 134218240;
      v13 = type;
      v14 = 2048;
      v15 = subtype;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "PHImportTimer", "%lu-%lu", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E695DF00] date];
    startTime = self->_startTime;
    self->_startTime = v9;
  }
}

- (PHImportTimer)initWithType:(unsigned __int8)a3 subtype:(unsigned __int8)a4
{
  if (initWithType_subtype__onceToken != -1)
  {
    dispatch_once(&initWithType_subtype__onceToken, &__block_literal_global_39715);
  }

  v7 = [(PHImportTimer *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v7->_subtype = a4;
    v7->_signpostId = os_signpost_id_make_with_pointer(importPerfLog, v7);
  }

  return v8;
}

uint64_t __38__PHImportTimer_initWithType_subtype___block_invoke()
{
  v0 = importTypeNames;
  importTypeNames = &unk_1F102E228;

  v1 = mediaTypeNames;
  mediaTypeNames = &unk_1F102E240;

  v2 = aspectRatioNames;
  aspectRatioNames = &unk_1F102E258;

  v3 = os_log_create("com.apple.Photos.Import", "PointsOfInterest");
  v4 = importPerfLog;
  importPerfLog = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end