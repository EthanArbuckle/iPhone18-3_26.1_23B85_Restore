@interface CTAudioCodecInfo
- (CTAudioCodecInfo)initWithCallId:(unint64_t)id codec:(int64_t)codec amrMode:(unint64_t)mode evsBandwidth:(int64_t)bandwidth evsBitrate:(int64_t)bitrate sampleRate:(unint64_t)rate i2SClockRate:(unint64_t)clockRate;
- (CTAudioCodecInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTAudioCodecInfo

- (CTAudioCodecInfo)initWithCallId:(unint64_t)id codec:(int64_t)codec amrMode:(unint64_t)mode evsBandwidth:(int64_t)bandwidth evsBitrate:(int64_t)bitrate sampleRate:(unint64_t)rate i2SClockRate:(unint64_t)clockRate
{
  v16.receiver = self;
  v16.super_class = CTAudioCodecInfo;
  result = [(CTAudioCodecInfo *)&v16 init];
  if (result)
  {
    result->_callId = id;
    result->_codec = codec;
    result->_amrMode = mode;
    result->_evsBandwidth = bandwidth;
    result->_evsBitrate = bitrate;
    result->_sampleRate = rate;
    result->_i2SClockRate = clockRate;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo callId](self, "callId")}];
  [v3 appendFormat:@" callId=%@", v4];

  codec = [(CTAudioCodecInfo *)self codec];
  if ((codec - 1) > 4)
  {
    v6 = "kCTAudioCodecAMR_NB";
  }

  else
  {
    v6 = off_1E6A459F8[codec - 1];
  }

  [v3 appendFormat:@" codec=%s", v6];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo amrMode](self, "amrMode")}];
  [v3 appendFormat:@" amrMode=%@", v7];

  evsBandwidth = [(CTAudioCodecInfo *)self evsBandwidth];
  if ((evsBandwidth - 1) > 2)
  {
    v9 = "kCTAudioCodecBandwidthEVS_NB";
  }

  else
  {
    v9 = off_1E6A45A20[evsBandwidth - 1];
  }

  [v3 appendFormat:@" evsBandwidth=%s", v9];
  evsBitrate = [(CTAudioCodecInfo *)self evsBitrate];
  if ((evsBitrate - 1) > 0xA)
  {
    v11 = "kCTAudioCodecBitrateEVS_5900";
  }

  else
  {
    v11 = off_1E6A45A38[evsBitrate - 1];
  }

  [v3 appendFormat:@" evsBitrate=%s", v11];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo sampleRate](self, "sampleRate")}];
  [v3 appendFormat:@" sampleRate=%@", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CTAudioCodecInfo i2SClockRate](self, "i2SClockRate")}];
  [v3 appendFormat:@" i2SClockRate=%@", v13];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTAudioCodecInfo callId](self forKey:{"callId"), @"callId"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo codec](self forKey:{"codec"), @"codecType"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo amrMode](self forKey:{"amrMode"), @"amrMode"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo evsBandwidth](self forKey:{"evsBandwidth"), @"evsBandwidth"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo evsBitrate](self forKey:{"evsBitrate"), @"evsBitrate"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo sampleRate](self forKey:{"sampleRate"), @"sampleRate"}];
  [coderCopy encodeInteger:-[CTAudioCodecInfo i2SClockRate](self forKey:{"i2SClockRate"), @"i2SClockRate"}];
}

- (CTAudioCodecInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CTAudioCodecInfo initWithCallId:codec:amrMode:evsBandwidth:evsBitrate:sampleRate:i2SClockRate:](self, "initWithCallId:codec:amrMode:evsBandwidth:evsBitrate:sampleRate:i2SClockRate:", [coderCopy decodeIntegerForKey:@"callId"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codecType"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"amrMode"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"evsBandwidth"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"evsBitrate"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"sampleRate"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"i2SClockRate"));

  return v5;
}

@end