@interface MPContentTastePendingUpdateRecord
- (MPContentTastePendingUpdateRecord)initWithPlaylistGlobalID:(id)d tasteType:(int64_t)type;
- (MPContentTastePendingUpdateRecord)initWithStoreAdamID:(int64_t)d tasteType:(int64_t)type;
- (void)_initializeWithType:(int64_t)type tasteType:(int64_t)tasteType;
@end

@implementation MPContentTastePendingUpdateRecord

- (void)_initializeWithType:(int64_t)type tasteType:(int64_t)tasteType
{
  self->_tasteType = tasteType;
  self->_type = type;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  UUID = self->_UUID;
  self->_UUID = uUID;
}

- (MPContentTastePendingUpdateRecord)initWithStoreAdamID:(int64_t)d tasteType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = MPContentTastePendingUpdateRecord;
  v6 = [(MPContentTastePendingUpdateRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MPContentTastePendingUpdateRecord *)v6 _initializeWithType:1 tasteType:type];
    v7->_storeAdamID = d;
  }

  return v7;
}

- (MPContentTastePendingUpdateRecord)initWithPlaylistGlobalID:(id)d tasteType:(int64_t)type
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MPContentTastePendingUpdateRecord;
  v7 = [(MPContentTastePendingUpdateRecord *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(MPContentTastePendingUpdateRecord *)v7 _initializeWithType:0 tasteType:type];
    v9 = [dCopy copy];
    playlistGlobalID = v8->_playlistGlobalID;
    v8->_playlistGlobalID = v9;
  }

  return v8;
}

@end