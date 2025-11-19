@interface MPRadioStationRemotePlaybackQueue
- (BOOL)verifyWithError:(id *)a3;
- (MPRadioStationRemotePlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4;
- (id)description;
@end

@implementation MPRadioStationRemotePlaybackQueue

- (BOOL)verifyWithError:(id *)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_stationID || self->_stationStringID)
  {
    return 1;
  }

  if (a3)
  {
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"Radio station is invalid or not found.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPErrorDomain" code:100 userInfo:v5];
    *a3 = v6;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_stationID];
  v6 = [v3 stringWithFormat:@"<%@ %p, stationID = %@, stationStringID = %@>", v4, self, v5, self->_stationStringID];

  return v6;
}

- (MPRadioStationRemotePlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPRadioStationRemotePlaybackQueue;
  v4 = [MPRemotePlaybackQueue initWithMediaRemotePlaybackQueue:sel_initWithMediaRemotePlaybackQueue_options_ options:?];
  if (v4)
  {
    RadioStationIDType = MRSystemAppPlaybackQueueGetRadioStationIDType();
    if (RadioStationIDType == 2)
    {
      v6 = MRSystemAppPlaybackQueueCopyRadioStationStringIdentifier();
      stationStringID = v4->_stationStringID;
      v4->_stationStringID = v6;
    }

    else if (RadioStationIDType == 1)
    {
      v4->_stationID = MRSystemAppPlaybackQueueGetRadioStationIntegerPID();
    }
  }

  return v4;
}

@end