@interface AFMyriadRecord
- (AFMyriadRecord)init;
- (AFMyriadRecord)initWithAudioData:(id)data;
- (AFMyriadRecord)initWithDeviceID:(id)d data:(id)data;
- (BOOL)hasEqualAdvertisementData:(id)data;
- (BOOL)isALateSupressionTrumpFor:(id)for;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSane;
- (id)asAdvertisementData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)slowdownDelay;
- (unint64_t)hash;
- (void)adjustByMultiplier:(float)multiplier adding:(int)adding;
- (void)generateRandomConfidence;
- (void)generateTiebreaker;
- (void)setDeviceClass:(unsigned __int8)class;
- (void)setDeviceGroup:(unsigned __int8)group;
- (void)setPHash:(unsigned __int16)hash;
- (void)setProductType:(unsigned __int8)type;
- (void)setRawAudioGoodnessScore:(unsigned __int8)score withBump:(unsigned __int8)bump;
- (void)setTieBreaker:(unsigned __int8)breaker;
- (void)setUserConfidence:(unsigned __int8)confidence;
@end

@implementation AFMyriadRecord

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    deviceID = self->_deviceID;
    deviceID = [v5 deviceID];
    if (![(NSUUID *)deviceID isEqual:deviceID])
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
  asAdvertisementData = [(AFMyriadRecord *)self asAdvertisementData];
  v5 = [asAdvertisementData hash] ^ self->_isMe ^ v3;
  v6 = self->_isCollectedFromContextCollector ^ self->_rawAudioGoodnessScore ^ self->_bump;

  return v5 ^ v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)hasEqualAdvertisementData:(id)data
{
  dataCopy = data;
  if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = dataCopy;
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

- (BOOL)isALateSupressionTrumpFor:(id)for
{
  forCopy = for;
  pHash = self->_pHash;
  v6 = pHash == [forCopy pHash] && !-[AFMyriadRecord isAContinuation](self, "isAContinuation") && !-[AFMyriadRecord isATrump](self, "isATrump") && self->_goodness == 255 && objc_msgSend(forCopy, "goodness") != 255;

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

- (void)setTieBreaker:(unsigned __int8)breaker
{
  if (self->_tieBreaker != breaker)
  {
    self->_tieBreaker = breaker;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setProductType:(unsigned __int8)type
{
  if (self->_productType != type)
  {
    self->_productType = type;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setDeviceClass:(unsigned __int8)class
{
  if (self->_deviceClass != class)
  {
    self->_deviceClass = class;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)setDeviceGroup:(unsigned __int8)group
{
  if (self->_deviceGroup != group)
  {
    self->_deviceGroup = group;
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

- (void)setUserConfidence:(unsigned __int8)confidence
{
  if (self->_userConfidence != confidence)
  {
    self->_userConfidence = confidence;
    self->_advertisementDataIsDirty = 1;
  }
}

- (void)adjustByMultiplier:(float)multiplier adding:(int)adding
{
  v14 = *MEMORY[0x1E69E9840];
  LOBYTE(v4) = self->_goodness;
  v6 = (adding + (v4 * multiplier));
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

- (void)setRawAudioGoodnessScore:(unsigned __int8)score withBump:(unsigned __int8)bump
{
  v22 = *MEMORY[0x1E69E9840];
  self->_rawAudioGoodnessScore = score;
  self->_bump = bump;
  v5 = bump + score;
  if ((bump + score) >= 0x100)
  {
    bumpCopy = bump;
    scoreCopy = score;
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[AFMyriadRecord setRawAudioGoodnessScore:withBump:]";
      v16 = 1024;
      v17 = scoreCopy;
      v18 = 1024;
      bumpCopy2 = bumpCopy;
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
    bumpCopy2 = bump;
    v20 = 1024;
    v21 = goodness;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s rawAudioGoodnessScore: %d, bump: %d goodness: %d", &v14, 0x1Eu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPHash:(unsigned __int16)hash
{
  if (self->_pHash != hash)
  {
    self->_pHash = hash;
    self->_advertisementDataIsDirty = 1;
  }
}

- (AFMyriadRecord)initWithDeviceID:(id)d data:(id)data
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataCopy = data;
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
      v28 = dCopy;
      v29 = 2112;
      v30 = dataCopy;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s AFMyriadRecord initfrom: %@ - %@", buf, 0x20u);
    }

    advertisementData = v9->_advertisementData;
    v9->_advertisementData = 0;

    v9->_productType = 0;
    objc_storeStrong(&v9->_deviceID, d);
    v12 = [dataCopy length];
    if (v12 < 7)
    {
      if (dataCopy)
      {
        v15 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          v21 = MEMORY[0x1E696AD98];
          v22 = v15;
          v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
          *buf = 136315650;
          v26 = "[AFMyriadRecord initWithDeviceID:data:]";
          v27 = 2112;
          v28 = v23;
          v29 = 2112;
          v30 = dataCopy;
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
      [dataCopy getBytes:&v9->_pHash range:{0, 2}];
      [dataCopy getBytes:&v9->_goodness range:{2, 1}];
      [dataCopy getBytes:&v9->_userConfidence range:{3, 1}];
      [dataCopy getBytes:&v9->_deviceGroup range:{4, 1}];
      [dataCopy getBytes:&v9->_deviceClass range:{5, 1}];
      [dataCopy getBytes:&v9->_tieBreaker range:{6, 1}];
      if (v13 == 7 || ([dataCopy getBytes:&v9->_productType range:{7, 1}], v13 == 8))
      {
        v14 = [dataCopy copy];
      }

      else
      {
        v16 = dataCopy;
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

- (AFMyriadRecord)initWithAudioData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  dataCopy = data;
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
      v17 = dataCopy;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s AFMyriadRecord initfrom: <THISDEVICE> - %@", buf, 0x16u);
    }

    extractMyriadDataFromAudioContext(dataCopy, &v5->_pHash, &v5->_goodness, &v5->_userConfidence, 0, &v5->_tieBreaker);
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
    if ([dataCopy length] == 13)
    {
      [dataCopy getBytes:&v5->_tieBreaker range:{12, 1}];
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