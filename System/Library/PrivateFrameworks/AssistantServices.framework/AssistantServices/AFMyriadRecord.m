@interface AFMyriadRecord
- (AFMyriadRecord)init;
- (AFMyriadRecord)initWithAudioData:(id)a3;
- (AFMyriadRecord)initWithDeviceID:(id)a3 data:(id)a4;
- (BOOL)hasEqualAdvertisementData:(id)a3;
- (BOOL)isALateSupressionTrumpFor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSane;
- (id)asAdvertisementData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)slowdownDelay;
- (unint64_t)hash;
- (void)adjustByMultiplier:(float)a3 adding:(int)a4;
- (void)generateRandomConfidence;
- (void)generateTiebreaker;
- (void)setDeviceClass:(unsigned __int8)a3;
- (void)setDeviceGroup:(unsigned __int8)a3;
- (void)setPHash:(unsigned __int16)a3;
- (void)setProductType:(unsigned __int8)a3;
- (void)setRawAudioGoodnessScore:(unsigned __int8)a3 withBump:(unsigned __int8)a4;
- (void)setTieBreaker:(unsigned __int8)a3;
- (void)setUserConfidence:(unsigned __int8)a3;
@end

@implementation AFMyriadRecord

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    deviceID = self->_deviceID;
    v7 = [v5 deviceID];
    if (![(NSUUID *)deviceID isEqual:v7])
    {
      goto LABEL_16;
    }

    pHash = self->_pHash;
    if (pHash != [v5 pHash])
    {
      goto LABEL_16;
    }

    goodness = self->_goodness;
    if (goodness != [v5 goodness])
    {
      goto LABEL_16;
    }

    rawAudioGoodnessScore = self->_rawAudioGoodnessScore;
    if (rawAudioGoodnessScore != [v5 rawAudioGoodnessScore])
    {
      goto LABEL_16;
    }

    bump = self->_bump;
    if (bump == [v5 bump] && (userConfidence = self->_userConfidence, userConfidence == objc_msgSend(v5, "userConfidence")) && (deviceGroup = self->_deviceGroup, deviceGroup == objc_msgSend(v5, "deviceGroup")) && (deviceClass = self->_deviceClass, deviceClass == objc_msgSend(v5, "deviceClass")) && (tieBreaker = self->_tieBreaker, tieBreaker == objc_msgSend(v5, "tieBreaker")) && (productType = self->_productType, productType == objc_msgSend(v5, "productType")) && (isMe = self->_isMe, isMe == objc_msgSend(v5, "isMe")))
    {
      isCollectedFromContextCollector = self->_isCollectedFromContextCollector;
      v19 = isCollectedFromContextCollector == [v5 isCollectedFromContextCollector];
    }

    else
    {
LABEL_16:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_deviceID hash];
  v4 = [(AFMyriadRecord *)self asAdvertisementData];
  v5 = [v4 hash] ^ self->_isMe ^ v3;
  v6 = self->_isCollectedFromContextCollector ^ self->_rawAudioGoodnessScore ^ self->_bump;

  return v5 ^ v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AFMyriadRecord allocWithZone:?]];
  [(AFMyriadRecord *)v4 setDeviceID:self->_deviceID];
  [(AFMyriadRecord *)v4 setPHash:self->_pHash];
  [(AFMyriadRecord *)v4 setGoodness:self->_goodness];
  [(AFMyriadRecord *)v4 setRawAudioGoodnessScore:self->_rawAudioGoodnessScore];
  [(AFMyriadRecord *)v4 setBump:self->_bump];
  [(AFMyriadRecord *)v4 setUserConfidence:self->_userConfidence];
  [(AFMyriadRecord *)v4 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v4 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v4 setTieBreaker:self->_tieBreaker];
  [(AFMyriadRecord *)v4 setProductType:self->_productType];
  [(AFMyriadRecord *)v4 setIsMe:self->_isMe];
  [(AFMyriadRecord *)v4 setIsCollectedFromContextCollector:self->_isCollectedFromContextCollector];
  return v4;
}

- (id)description
{
  if (self->_isMe)
  {
    v2 = @"TRUE";
  }

  else
  {
    v2 = @"FALSE";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"MyriadRecord: hash=%#04x, good=%d, conf=%d, dc=%d, pt=%d, tb=%d, isMe=%@, g=%d, cc=%d", self->_pHash, self->_goodness, self->_userConfidence, self->_deviceClass, self->_productType, self->_tieBreaker, v2, self->_deviceGroup, self->_isCollectedFromContextCollector];
}

- (BOOL)hasEqualAdvertisementData:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    pHash = self->_pHash;
    v13 = 0;
    if (pHash == [v5 pHash])
    {
      goodness = self->_goodness;
      if (goodness == [v5 goodness])
      {
        userConfidence = self->_userConfidence;
        if (userConfidence == [v5 userConfidence])
        {
          deviceGroup = self->_deviceGroup;
          if (deviceGroup == [v5 deviceGroup])
          {
            deviceClass = self->_deviceClass;
            if (deviceClass == [v5 deviceClass])
            {
              tieBreaker = self->_tieBreaker;
              if (tieBreaker == [v5 tieBreaker])
              {
                productType = self->_productType;
                if (productType == [v5 productType])
                {
                  v13 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)asAdvertisementData
{
  if (self->_advertisementDataIsDirty || (v3 = self->_advertisementData) == 0)
  {
    v4 = [MEMORY[0x1E695DF88] dataWithCapacity:7];
    [v4 appendBytes:&self->_pHash length:2];
    [v4 appendBytes:&self->_goodness length:1];
    [v4 appendBytes:&self->_userConfidence length:1];
    [v4 appendBytes:&self->_deviceGroup length:1];
    [v4 appendBytes:&self->_deviceClass length:1];
    [v4 appendBytes:&self->_tieBreaker length:1];
    [v4 appendBytes:&self->_productType length:1];
    v5 = [v4 copy];
    advertisementData = self->_advertisementData;
    self->_advertisementData = v5;

    self->_advertisementDataIsDirty = 0;
    v3 = self->_advertisementData;
  }

  v7 = [(NSData *)v3 copy];

  return v7;
}

- (int)slowdownDelay
{
  result = [(AFMyriadRecord *)self isSlowdown];
  if (result)
  {
    return 8 * self->_userConfidence;
  }

  return result;
}

- (BOOL)isSane
{
  v15 = *MEMORY[0x1E69E9840];
  goodness = self->_goodness;
  v6 = goodness == 224 || goodness == 208 || goodness > -17;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = self->_deviceClass < 0xBu && v6;
    v11 = 136315394;
    v12 = "[AFMyriadRecord isSane]";
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s AFMyriadRecord sanity: %d", &v11, 0x12u);
  }

  result = self->_deviceClass < 0xBu && v6;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isALateSupressionTrumpFor:(id)a3
{
  v4 = a3;
  pHash = self->_pHash;
  v6 = pHash == [v4 pHash] && !-[AFMyriadRecord isAContinuation](self, "isAContinuation") && !-[AFMyriadRecord isATrump](self, "isATrump") && self->_goodness == 255 && objc_msgSend(v4, "goodness") != 255;

  return v6;
}

- (void)generateTiebreaker
{
  v3 = arc4random_uniform(0x100u);
  self->_tieBreaker = v3;
  while (_lastRandomTieBreakerGenerated == v3)
  {
    v3 = arc4random_uniform(0x100u);
    self->_tieBreaker = v3;
  }

  _lastRandomTieBreakerGenerated = v3;
  self->_advertisementDataIsDirty = 1;
}

- (void)setTieBreaker:(unsigned __int8)a3
{
  if (self->_tieBreaker != a3)
  {
    self->_tieBreaker = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setProductType:(unsigned __int8)a3
{
  if (self->_productType != a3)
  {
    self->_productType = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setDeviceClass:(unsigned __int8)a3
{
  if (self->_deviceClass != a3)
  {
    self->_deviceClass = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setDeviceGroup:(unsigned __int8)a3
{
  if (self->_deviceGroup != a3)
  {
    self->_deviceGroup = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)generateRandomConfidence
{
  v3 = arc4random_uniform(0x100u);
  self->_userConfidence = v3;
  while (_lastRandomConfidenceGenerated == v3)
  {
    v3 = arc4random_uniform(0x100u);
    self->_userConfidence = v3;
  }

  _lastRandomConfidenceGenerated = v3;
  self->_advertisementDataIsDirty = 1;
}

- (void)setUserConfidence:(unsigned __int8)a3
{
  if (self->_userConfidence != a3)
  {
    self->_userConfidence = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)adjustByMultiplier:(float)a3 adding:(int)a4
{
  v14 = *MEMORY[0x1E69E9840];
  LOBYTE(v4) = self->_goodness;
  v6 = (a4 + (v4 * a3));
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[AFMyriadRecord adjustByMultiplier:adding:]";
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s #myriad newGoodness: %d", &v10, 0x12u);
  }

  v8 = v6 & ~(v6 >> 31);
  if (v8 >= 127)
  {
    LOBYTE(v8) = 127;
  }

  if (v6 > 254)
  {
    LOBYTE(v8) = -1;
  }

  self->_bump = v8;
  [(AFMyriadRecord *)self setGoodness:v8];
  self->_advertisementDataIsDirty = 1;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setRawAudioGoodnessScore:(unsigned __int8)a3 withBump:(unsigned __int8)a4
{
  v22 = *MEMORY[0x1E69E9840];
  self->_rawAudioGoodnessScore = a3;
  self->_bump = a4;
  v5 = a4 + a3;
  if ((a4 + a3) >= 0x100)
  {
    v6 = a4;
    v7 = a3;
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[AFMyriadRecord setRawAudioGoodnessScore:withBump:]";
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = v6;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s [(rawAudioGoodnessScore + bump) overflow] rawAudioGoodnessScore: %d, bump: %d. Overwriting goodness score to 0xff", &v14, 0x18u);
    }

    v5 = -1;
  }

  [(AFMyriadRecord *)self setGoodness:v5];
  self->_advertisementDataIsDirty = 1;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    rawAudioGoodnessScore = self->_rawAudioGoodnessScore;
    bump = self->_bump;
    goodness = self->_goodness;
    v14 = 136315906;
    v15 = "[AFMyriadRecord setRawAudioGoodnessScore:withBump:]";
    v16 = 1024;
    v17 = rawAudioGoodnessScore;
    v18 = 1024;
    v19 = bump;
    v20 = 1024;
    v21 = goodness;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s rawAudioGoodnessScore: %d, bump: %d goodness: %d", &v14, 0x1Eu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPHash:(unsigned __int16)a3
{
  if (self->_pHash != a3)
  {
    self->_pHash = a3;
    self->_advertisementDataIsDirty = 1;
  }
}

- (AFMyriadRecord)initWithDeviceID:(id)a3 data:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = AFMyriadRecord;
  v9 = [(AFMyriadRecord *)&v24 init];
  if (v9)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[AFMyriadRecord initWithDeviceID:data:]";
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s AFMyriadRecord initfrom: %@ - %@", buf, 0x20u);
    }

    advertisementData = v9->_advertisementData;
    v9->_advertisementData = 0;

    v9->_productType = 0;
    objc_storeStrong(&v9->_deviceID, a3);
    v12 = [v8 length];
    if (v12 < 7)
    {
      if (v8)
      {
        v15 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          v21 = MEMORY[0x1E696AD98];
          v22 = v15;
          v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
          *buf = 136315650;
          v26 = "[AFMyriadRecord initWithDeviceID:data:]";
          v27 = 2112;
          v28 = v23;
          v29 = 2112;
          v30 = v8;
          _os_log_error_impl(&dword_1912FE000, v22, OS_LOG_TYPE_ERROR, "%s Bad data of unexpected length %@ : %@", buf, 0x20u);
        }
      }

      v9->_pHash = 0;
      *&v9->_goodness = 0;
      *&v9->_productType = 0;
    }

    else
    {
      v13 = v12;
      [v8 getBytes:&v9->_pHash range:{0, 2}];
      [v8 getBytes:&v9->_goodness range:{2, 1}];
      [v8 getBytes:&v9->_userConfidence range:{3, 1}];
      [v8 getBytes:&v9->_deviceGroup range:{4, 1}];
      [v8 getBytes:&v9->_deviceClass range:{5, 1}];
      [v8 getBytes:&v9->_tieBreaker range:{6, 1}];
      if (v13 == 7 || ([v8 getBytes:&v9->_productType range:{7, 1}], v13 == 8))
      {
        v14 = [v8 copy];
      }

      else
      {
        v16 = v8;
        v14 = [v16 initWithBytes:objc_msgSend(v16 length:{"bytes"), 8}];
      }

      v17 = v9->_advertisementData;
      v9->_advertisementData = v14;
    }

    v18 = v9;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AFMyriadRecord)initWithAudioData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AFMyriadRecord;
  v5 = [(AFMyriadRecord *)&v13 init];
  if (v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[AFMyriadRecord initWithAudioData:]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s AFMyriadRecord initfrom: <THISDEVICE> - %@", buf, 0x16u);
    }

    extractMyriadDataFromAudioContext(v4, &v5->_pHash, &v5->_goodness, &v5->_userConfidence, 0, &v5->_tieBreaker);
    goodness = v5->_goodness;
    if (goodness >= 0x7F)
    {
      LOBYTE(goodness) = 127;
    }

    v5->_goodness = goodness;
    v5->_rawAudioGoodnessScore = goodness;
    v5->_deviceGroup = 0;
    deviceID = v5->_deviceID;
    v5->_deviceID = 0;

    v5->_deviceClass = 0;
    if ([v4 length] == 13)
    {
      [v4 getBytes:&v5->_tieBreaker range:{12, 1}];
    }

    else
    {
      v5->_tieBreaker = 0;
    }

    v5->_isMe = 0;
    advertisementData = v5->_advertisementData;
    v5->_advertisementData = 0;

    v10 = v5;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (AFMyriadRecord)init
{
  v7.receiver = self;
  v7.super_class = AFMyriadRecord;
  v2 = [(AFMyriadRecord *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_goodness = 0;
    v2->_pHash = 0;
    deviceID = v2->_deviceID;
    v2->_deviceID = 0;

    *&v3->_deviceClass = 0;
    v5 = v3;
  }

  return v3;
}

@end