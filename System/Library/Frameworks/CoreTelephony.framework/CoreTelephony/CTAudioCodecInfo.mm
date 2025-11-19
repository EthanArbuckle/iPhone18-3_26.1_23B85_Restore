@interface CTAudioCodecInfo
- (CTAudioCodecInfo)initWithCallId:(unint64_t)a3 codec:(int64_t)a4 amrMode:(unint64_t)a5 evsBandwidth:(int64_t)a6 evsBitrate:(int64_t)a7 sampleRate:(unint64_t)a8 i2SClockRate:(unint64_t)a9;
- (CTAudioCodecInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTAudioCodecInfo

- (CTAudioCodecInfo)initWithCallId:(unint64_t)a3 codec:(int64_t)a4 amrMode:(unint64_t)a5 evsBandwidth:(int64_t)a6 evsBitrate:(int64_t)a7 sampleRate:(unint64_t)a8 i2SClockRate:(unint64_t)a9
{
  v16.receiver = self;
  v16.super_class = CTAudioCodecInfo;
  result = [(CTAudioCodecInfo *)&v16 init];
  if (result)
  {
    result->_callId = a3;
    result->_codec = a4;
    result->_amrMode = a5;
    result->_evsBandwidth = a6;
    result->_evsBitrate = a7;
    result->_sampleRate = a8;
    result->_i2SClockRate = a9;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo callId](self, "callId")}];
  [v3 appendFormat:@" callId=%@", v4];

  v5 = [(CTAudioCodecInfo *)self codec];
  if ((v5 - 1) > 4)
  {
    v6 = "kCTAudioCodecAMR_NB";
  }

  else
  {
    v6 = off_1E6A459F8[v5 - 1];
  }

  [v3 appendFormat:@" codec=%s", v6];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo amrMode](self, "amrMode")}];
  [v3 appendFormat:@" amrMode=%@", v7];

  v8 = [(CTAudioCodecInfo *)self evsBandwidth];
  if ((v8 - 1) > 2)
  {
    v9 = "kCTAudioCodecBandwidthEVS_NB";
  }

  else
  {
    v9 = off_1E6A45A20[v8 - 1];
  }

  [v3 appendFormat:@" evsBandwidth=%s", v9];
  v10 = [(CTAudioCodecInfo *)self evsBitrate];
  if ((v10 - 1) > 0xA)
  {
    v11 = "kCTAudioCodecBitrateEVS_5900";
  }

  else
  {
    v11 = off_1E6A45A38[v10 - 1];
  }

  [v3 appendFormat:@" evsBitrate=%s", v11];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo sampleRate](self, "sampleRate")}];
  [v3 appendFormat:@" sampleRate=%@", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo i2SClockRate](self, "i2SClockRate")}];
  [v3 appendFormat:@" i2SClockRate=%@", v13];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTAudioCodecInfo callId](self forKey:{"callId"), @"callId"}];
  [v4 encodeInteger:-[CTAudioCodecInfo codec](self forKey:{"codec"), @"codecType"}];
  [v4 encodeInteger:-[CTAudioCodecInfo amrMode](self forKey:{"amrMode"), @"amrMode"}];
  [v4 encodeInteger:-[CTAudioCodecInfo evsBandwidth](self forKey:{"evsBandwidth"), @"evsBandwidth"}];
  [v4 encodeInteger:-[CTAudioCodecInfo evsBitrate](self forKey:{"evsBitrate"), @"evsBitrate"}];
  [v4 encodeInteger:-[CTAudioCodecInfo sampleRate](self forKey:{"sampleRate"), @"sampleRate"}];
  [v4 encodeInteger:-[CTAudioCodecInfo i2SClockRate](self forKey:{"i2SClockRate"), @"i2SClockRate"}];
}

- (CTAudioCodecInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CTAudioCodecInfo initWithCallId:codec:amrMode:evsBandwidth:evsBitrate:sampleRate:i2SClockRate:](self, "initWithCallId:codec:amrMode:evsBandwidth:evsBitrate:sampleRate:i2SClockRate:", [v4 decodeIntegerForKey:@"callId"], objc_msgSend(v4, "decodeIntegerForKey:", @"codecType"), objc_msgSend(v4, "decodeIntegerForKey:", @"amrMode"), objc_msgSend(v4, "decodeIntegerForKey:", @"evsBandwidth"), objc_msgSend(v4, "decodeIntegerForKey:", @"evsBitrate"), objc_msgSend(v4, "decodeIntegerForKey:", @"sampleRate"), objc_msgSend(v4, "decodeIntegerForKey:", @"i2SClockRate"));

  return v5;
}

@end