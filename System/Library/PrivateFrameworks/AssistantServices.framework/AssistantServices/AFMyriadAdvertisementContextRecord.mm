@interface AFMyriadAdvertisementContextRecord
- (AFMyriadAdvertisementContextRecord)initWithAdvertisementRecordType:(int64_t)type voiceTriggerEndTime:(double)time advertisementPayload:(id)payload deviceID:(id)d;
- (AFMyriadAdvertisementContextRecord)initWithMyriadAdvertisementContextRecordData:(id)data;
- (BOOL)compareAdvertisementPayload:(id)payload;
- (BOOL)isSaneForVoiceTriggerEndTime:(double)time endtimeDistanceThreshold:(double)threshold;
- (char)_getAdvertisementRecordTypeForVersion:(unsigned __int8)version data:(id)data;
- (double)_getVoiceTriggerEndTimeForVersion:(unsigned __int8)version data:(id)data;
- (id)_deviceIDFromBytes:(const unsigned __int8 *)(a3;
- (id)_getDeviceIdForVersion:(unsigned __int8)version data:(id)data;
- (id)_getMyriadAdvertisementDataForVersion:(unsigned __int8)version data:(id)data;
- (id)description;
- (id)myriadAdvertisementContextAsData;
- (id)recordForDeviceId:(id)id;
- (unint64_t)_advertisementPayloadSizeForVersion:(unsigned __int8)version;
- (void)_initializeMyriadAdvertisementContextRecordFromData:(id)data;
@end

@implementation AFMyriadAdvertisementContextRecord

- (id)_deviceIDFromBytes:(const unsigned __int8 *)(a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (uuid_is_null(a3))
  {
    goto LABEL_2;
  }

  memset(out, 0, 37);
  uuid_unparse_upper(a3, out);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", out];
  if (![v5 length])
  {

LABEL_2:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)compareAdvertisementPayload:(id)payload
{
  payloadCopy = payload;
  v5 = payloadCopy;
  if (payloadCopy && self->_advertisementPayload && (v6 = [payloadCopy length], v6 == -[NSData length](self->_advertisementPayload, "length")))
  {
    v7 = [v5 isEqual:self->_advertisementPayload];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)recordForDeviceId:(id)id
{
  idCopy = id;
  if (idCopy && self->_advertisementPayload)
  {
    v5 = [[AFMyriadRecord alloc] initWithDeviceID:idCopy data:self->_advertisementPayload];
    [(AFMyriadRecord *)v5 setIsCollectedFromContextCollector:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_initializeMyriadAdvertisementContextRecordFromData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [dataCopy length];
  if (dataCopy && v5)
  {
    [dataCopy getBytes:&self->_advertisementContextVersion range:{0, 1}];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      advertisementContextVersion = self->_advertisementContextVersion;
      v15 = 136315394;
      v16 = "[AFMyriadAdvertisementContextRecord _initializeMyriadAdvertisementContextRecordFromData:]";
      v17 = 1024;
      LODWORD(v18) = advertisementContextVersion;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Initializing Myriad advertisement context (version: %d)", &v15, 0x12u);
    }

    self->_advertisementRecordType = [(AFMyriadAdvertisementContextRecord *)self _getAdvertisementRecordTypeForVersion:self->_advertisementContextVersion data:dataCopy];
    [(AFMyriadAdvertisementContextRecord *)self _getVoiceTriggerEndTimeForVersion:self->_advertisementContextVersion data:dataCopy];
    self->_voiceTriggerEndTime = v8;
    v9 = [(AFMyriadAdvertisementContextRecord *)self _getMyriadAdvertisementDataForVersion:self->_advertisementContextVersion data:dataCopy];
    advertisementPayload = self->_advertisementPayload;
    self->_advertisementPayload = v9;

    v11 = [(AFMyriadAdvertisementContextRecord *)self _getDeviceIdForVersion:self->_advertisementContextVersion data:dataCopy];
    deviceID = self->_deviceID;
    self->_deviceID = v11;
  }

  else
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[AFMyriadAdvertisementContextRecord _initializeMyriadAdvertisementContextRecordFromData:]";
      v17 = 2112;
      v18 = dataCopy;
      _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s #myriad-advertisementcontext: Received wedged Myriad advertisement context record %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_getDeviceIdForVersion:(unsigned __int8)version data:(id)data
{
  versionCopy = version;
  v13[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13[0] = 0;
  v13[1] = 0;
  v7 = [dataCopy length];
  if ((versionCopy - 1) > 1)
  {
    if (v7 >= 0x22)
    {
      v8 = 18;
      goto LABEL_6;
    }
  }

  else if (v7 > 0x20)
  {
    v8 = 17;
LABEL_6:
    [dataCopy getBytes:v13 range:{v8, 16}];
    v9 = [(AFMyriadAdvertisementContextRecord *)self _deviceIDFromBytes:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = [v9 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_getMyriadAdvertisementDataForVersion:(unsigned __int8)version data:(id)data
{
  v12[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = [(AFMyriadAdvertisementContextRecord *)self _advertisementPayloadSizeForVersion:self->_advertisementContextVersion];
  MEMORY[0x1EEE9AC00]();
  v8 = v12 - v7;
  bzero(v12 - v7, v6);
  if ([dataCopy length] >= v6 + 10)
  {
    [dataCopy getBytes:v8 range:{10, v6}];
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (double)_getVoiceTriggerEndTimeForVersion:(unsigned __int8)version data:(id)data
{
  dataCopy = data;
  v7 = 0.0;
  v5 = 0.0;
  if ([dataCopy length] >= 0xA)
  {
    [dataCopy getBytes:&v7 range:{2, 8}];
    v5 = v7;
  }

  return v5;
}

- (char)_getAdvertisementRecordTypeForVersion:(unsigned __int8)version data:(id)data
{
  dataCopy = data;
  v5 = 7;
  v7 = 7;
  if ([dataCopy length] >= 2)
  {
    [dataCopy getBytes:&v7 range:{1, 1}];
    v5 = v7;
  }

  return v5;
}

- (unint64_t)_advertisementPayloadSizeForVersion:(unsigned __int8)version
{
  if ((version - 1) < 2)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

- (BOOL)isSaneForVoiceTriggerEndTime:(double)time endtimeDistanceThreshold:(double)threshold
{
  v27 = *MEMORY[0x1E69E9840];
  if (time <= 0.0)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[AFMyriadAdvertisementContextRecord isSaneForVoiceTriggerEndTime:endtimeDistanceThreshold:]";
      v17 = 2048;
      *v18 = time;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s Invalid Voicetrigger endtime: %f", &v15, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v6 = fmin(threshold, 0.5);
    voiceTriggerEndTime = self->_voiceTriggerEndTime;
    if (voiceTriggerEndTime - time >= 0.0)
    {
      v8 = voiceTriggerEndTime - time;
    }

    else
    {
      v8 = -(voiceTriggerEndTime - time);
    }

    v9 = v8 <= v6;
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      advertisementPayload = self->_advertisementPayload;
      v15 = 136316674;
      v16 = "[AFMyriadAdvertisementContextRecord isSaneForVoiceTriggerEndTime:endtimeDistanceThreshold:]";
      v17 = 1024;
      *v18 = v8 <= v6;
      *&v18[4] = 2048;
      *&v18[6] = v6;
      v19 = 2048;
      timeCopy = time;
      v21 = 2048;
      v22 = voiceTriggerEndTime;
      v23 = 2048;
      v24 = v8;
      v25 = 2112;
      v26 = advertisementPayload;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s VoicetriggerEndtime isSane: %d (threshold: %f, me: %f, other: %f, abs-diff: %f adv: %@)", &v15, 0x44u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)myriadAdvertisementContextAsData
{
  v17[2] = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  v4 = [(AFMyriadAdvertisementContextRecord *)self _advertisementPayloadSizeForVersion:self->_advertisementContextVersion];
  v5 = &buf[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v5, v4);
  advertisementPayload = self->_advertisementPayload;
  if (advertisementPayload && [(NSData *)advertisementPayload length]== v4)
  {
    [(NSData *)self->_advertisementPayload getBytes:v5 length:v4];
  }

  v17[0] = 0;
  v17[1] = 0;
  deviceID = self->_deviceID;
  if (deviceID)
  {
    [(NSUUID *)deviceID getUUIDBytes:v17];
  }

  [data appendBytes:&self->_advertisementContextVersion length:1];
  [data appendBytes:&self->_advertisementRecordType length:1];
  [data appendBytes:&self->_voiceTriggerEndTime length:8];
  [data appendBytes:v5 length:v4];
  [data appendBytes:v17 length:16];
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [data length];
    *buf = 136315394;
    v14 = "[AFMyriadAdvertisementContextRecord myriadAdvertisementContextAsData]";
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s Generated Myriad advertisement context data: %lu bytes", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return data;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(NSData *)self->_advertisementPayload length])
  {
    bytes = [(NSData *)self->_advertisementPayload bytes];
    if ([(NSData *)self->_advertisementPayload length])
    {
      v5 = 0;
      do
      {
        [v3 appendFormat:@"%02x", bytes[v5++]];
      }

      while (v5 < [(NSData *)self->_advertisementPayload length]);
    }
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AFMyriadAdvertisementContextRecord: contextVersion=%ld vtEndTime=%f advRecordType=%ld advPayload=0x%@ deviceID=%@", self->_advertisementContextVersion, *&self->_voiceTriggerEndTime, self->_advertisementRecordType, v3, self->_deviceID];

  return v6;
}

- (AFMyriadAdvertisementContextRecord)initWithMyriadAdvertisementContextRecordData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = AFMyriadAdvertisementContextRecord;
  v5 = [(AFMyriadAdvertisementContextRecord *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AFMyriadAdvertisementContextRecord *)v5 _initializeMyriadAdvertisementContextRecordFromData:dataCopy];
  }

  return v6;
}

- (AFMyriadAdvertisementContextRecord)initWithAdvertisementRecordType:(int64_t)type voiceTriggerEndTime:(double)time advertisementPayload:(id)payload deviceID:(id)d
{
  payloadCopy = payload;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = AFMyriadAdvertisementContextRecord;
  v12 = [(AFMyriadAdvertisementContextRecord *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_advertisementContextVersion = kMyriadAdvertisementContextRecordVersion;
    v12->_advertisementRecordType = type;
    v12->_voiceTriggerEndTime = time;
    v14 = [payloadCopy copy];
    advertisementPayload = v13->_advertisementPayload;
    v13->_advertisementPayload = v14;

    v16 = [dCopy copy];
    deviceID = v13->_deviceID;
    v13->_deviceID = v16;
  }

  return v13;
}

@end