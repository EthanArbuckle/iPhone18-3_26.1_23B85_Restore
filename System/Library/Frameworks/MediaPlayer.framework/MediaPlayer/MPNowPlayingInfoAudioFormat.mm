@interface MPNowPlayingInfoAudioFormat
- (BOOL)isEqual:(id)equal;
- (BOOL)isMultiChannel;
- (BOOL)isSpatialized;
- (MPNowPlayingInfoAudioFormat)init;
- (MPNowPlayingInfoAudioFormat)initWithCoder:(id)coder;
- (MPNowPlayingInfoAudioFormat)initWithMediaRemoteAudioFormat:(id)format;
- (NSString)audioChannelLayoutDescription;
- (NSString)groupID;
- (NSString)stableVariantID;
- (id)_descriptionForChannelLayoutTag:(unsigned int)tag;
- (id)debugBadgingDescription;
- (id)debugCodecDescription;
- (id)debugRenderingModeDescription;
- (id)debugTierDescription;
- (id)description;
- (id)humanDescription;
- (int64_t)badging;
- (int64_t)bitDepth;
- (int64_t)bitrate;
- (int64_t)renderingMode;
- (int64_t)sampleRate;
- (int64_t)tier;
- (unsigned)channelLayout;
- (unsigned)codec;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioChannelLayoutDescription:(id)description;
- (void)setBitDepth:(int64_t)depth;
- (void)setBitrate:(int64_t)bitrate;
- (void)setChannelLayout:(unsigned int)layout;
- (void)setCodec:(unsigned int)codec;
- (void)setGroupID:(id)d;
- (void)setMultiChannel:(BOOL)channel;
- (void)setRenderingMode:(int64_t)mode;
- (void)setSampleRate:(int64_t)rate;
- (void)setSpatialized:(BOOL)spatialized;
- (void)setStableVariantID:(id)d;
- (void)setTier:(int64_t)tier;
@end

@implementation MPNowPlayingInfoAudioFormat

- (id)debugBadgingDescription
{
  badging = [(MPNowPlayingInfoAudioFormat *)self badging];
  if (badging > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7681150[badging];
  }
}

- (id)debugRenderingModeDescription
{
  renderingMode = [(MPNowPlayingInfoAudioFormat *)self renderingMode];
  if ((renderingMode - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7681128[renderingMode - 1];
  }
}

- (id)_descriptionForChannelLayoutTag:(unsigned int)tag
{
  result = @"unknown";
  if (tag > 8323079)
  {
    if (tag > 12648463)
    {
      v4 = 12779529;
      v12 = @"7.1.2";
      if (tag != 12845066)
      {
        v12 = @"unknown";
      }

      if (tag == 12779530)
      {
        v6 = @"5.1.4";
      }

      else
      {
        v6 = v12;
      }

      v7 = @"9.1.6";
      v8 = tag == 12713992;
      v9 = @"5.1.2";
      v10 = 12648464;
    }

    else
    {
      v4 = 11796488;
      v5 = @"7.1.4";
      if (tag != 12582924)
      {
        v5 = @"unknown";
      }

      if (tag == 11796489)
      {
        v6 = @"8.1";
      }

      else
      {
        v6 = v5;
      }

      v7 = @"7.1";
      v8 = tag == 9306119;
      v9 = @"6.1";
      v10 = 8323080;
    }

    goto LABEL_26;
  }

  if (tag > 7471106)
  {
    v4 = 7864324;
    v11 = @"5.1";
    if (tag != 8126470)
    {
      v11 = @"unknown";
    }

    if (tag == 7864325)
    {
      v6 = @"5.0";
    }

    else
    {
      v6 = v11;
    }

    v7 = @"3.0";
    v8 = tag == 7602180;
    v9 = @"4.0";
    v10 = 7471107;
LABEL_26:
    if (!v8)
    {
      v9 = @"unknown";
    }

    if (tag != v10)
    {
      v7 = v9;
    }

    if (tag <= v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  if (tag > 6684673)
  {
    if (tag != 6684674)
    {
      if (tag == 6946818)
      {
        return @"Binaural";
      }

      return result;
    }

    return @"Stereo";
  }

  if (tag == 6553601)
  {
    return @"Mono";
  }

  if (tag == 6619138)
  {
    return @"Stereo";
  }

  return result;
}

- (id)debugCodecDescription
{
  v6 = bswap32([(MPNowPlayingInfoAudioFormat *)self codec]);
  v7 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v6 encoding:1];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (id)debugTierDescription
{
  tier = [(MPNowPlayingInfoAudioFormat *)self tier];
  if (tier >= 5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", tier];
  }

  else
  {
    v3 = off_1E7681100[tier];
  }

  return v3;
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = MEMORY[0x1E696AEC0];
  debugTierDescription = [(MPNowPlayingInfoAudioFormat *)self debugTierDescription];
  v6 = [v4 stringWithFormat:@"tier: %@", debugTierDescription];
  [v3 addObject:v6];

  if ([(MPNowPlayingInfoAudioFormat *)self bitrate])
  {
    v7 = MEMORY[0x1E696AEC0];
    debugBitRateDescription = [(MPNowPlayingInfoAudioFormat *)self debugBitRateDescription];
    v9 = [v7 stringWithFormat:@"bitrate: %@", debugBitRateDescription];
    [v3 addObject:v9];
  }

  groupID = [(MPNowPlayingInfoAudioFormat *)self groupID];

  if (groupID)
  {
    v11 = MEMORY[0x1E696AEC0];
    groupID2 = [(MPNowPlayingInfoAudioFormat *)self groupID];
    v13 = [v11 stringWithFormat:@"groupID: %@", groupID2];
    [v3 addObject:v13];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self bitDepth])
  {
    v14 = MEMORY[0x1E696AEC0];
    debugBitDepthDescription = [(MPNowPlayingInfoAudioFormat *)self debugBitDepthDescription];
    v16 = [v14 stringWithFormat:@"bitDepth: %@", debugBitDepthDescription];
    [v3 addObject:v16];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self sampleRate])
  {
    v17 = MEMORY[0x1E696AEC0];
    debugSampleRateDescription = [(MPNowPlayingInfoAudioFormat *)self debugSampleRateDescription];
    v19 = [v17 stringWithFormat:@"sampleRate: %@", debugSampleRateDescription];
    [v3 addObject:v19];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self codec])
  {
    v20 = MEMORY[0x1E696AEC0];
    debugCodecDescription = [(MPNowPlayingInfoAudioFormat *)self debugCodecDescription];
    v22 = [v20 stringWithFormat:@"codec: %@", debugCodecDescription];
    [v3 addObject:v22];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self channelLayout]&& [(MPNowPlayingInfoAudioFormat *)self channelLayout]!= -65536)
  {
    v23 = MEMORY[0x1E696AEC0];
    debugChannelCountDescription = [(MPNowPlayingInfoAudioFormat *)self debugChannelCountDescription];
    v25 = [v23 stringWithFormat:@"channels: %@", debugChannelCountDescription];
    [v3 addObject:v25];
  }

  audioChannelLayoutDescription = [(MPNowPlayingInfoAudioFormat *)self audioChannelLayoutDescription];

  if (audioChannelLayoutDescription)
  {
    v27 = MEMORY[0x1E696AEC0];
    debugChannelLayoutDescription = [(MPNowPlayingInfoAudioFormat *)self debugChannelLayoutDescription];
    v29 = [v27 stringWithFormat:@"layout: %@", debugChannelLayoutDescription];
    [v3 addObject:v29];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self isSpatialized])
  {
    [v3 addObject:@"spatialized"];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self isMultiChannel])
  {
    [v3 addObject:@"multichannel"];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self renderingMode])
  {
    v30 = MEMORY[0x1E696AEC0];
    debugRenderingModeDescription = [(MPNowPlayingInfoAudioFormat *)self debugRenderingModeDescription];
    v32 = [v30 stringWithFormat:@"renderingMode: %@", debugRenderingModeDescription];
    [v3 addObject:v32];
  }

  v33 = MEMORY[0x1E696AEC0];
  debugBadgingDescription = [(MPNowPlayingInfoAudioFormat *)self debugBadgingDescription];
  v35 = [v33 stringWithFormat:@"badging: %@", debugBadgingDescription];
  [v3 addObject:v35];

  stableVariantID = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];

  if (stableVariantID)
  {
    v37 = MEMORY[0x1E696AEC0];
    stableVariantID2 = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];
    v39 = [v37 stringWithFormat:@"stableVariantID: %@", stableVariantID2];
    [v3 addObject:v39];
  }

  v40 = [v3 componentsJoinedByString:@" "];;

  return v40;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  humanDescription = [(MPNowPlayingInfoAudioFormat *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, humanDescription];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[MPNowPlayingInfoAudioFormat tier](self, "tier")}];
  [coderCopy encodeObject:v6 forKey:@"nptier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat bitrate](self, "bitrate")}];
  [coderCopy encodeObject:v7 forKey:@"npbr"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat sampleRate](self, "sampleRate")}];
  [coderCopy encodeObject:v8 forKey:@"npsr"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat bitDepth](self, "bitDepth")}];
  [coderCopy encodeObject:v9 forKey:@"npbd"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPNowPlayingInfoAudioFormat codec](self, "codec")}];
  [coderCopy encodeObject:v10 forKey:@"npcodec"];

  groupID = [(MPNowPlayingInfoAudioFormat *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"npgrp"];

  stableVariantID = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];
  [coderCopy encodeObject:stableVariantID forKey:@"npvar"];

  [coderCopy encodeBool:-[MPNowPlayingInfoAudioFormat isSpatialized](self forKey:{"isSpatialized"), @"npspz"}];
  [coderCopy encodeBool:-[MPNowPlayingInfoAudioFormat isMultiChannel](self forKey:{"isMultiChannel"), @"npmul"}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPNowPlayingInfoAudioFormat channelLayout](self, "channelLayout")}];
  [coderCopy encodeObject:v13 forKey:@"npchlay"];

  audioChannelLayoutDescription = [(MPNowPlayingInfoAudioFormat *)self audioChannelLayoutDescription];
  [coderCopy encodeObject:audioChannelLayoutDescription forKey:@"npchlayd"];
}

- (MPNowPlayingInfoAudioFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MPNowPlayingInfoAudioFormat;
  v5 = [(MPNowPlayingInfoAudioFormat *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B09F8]);
    mediaRemoteAudioFormat = v5->_mediaRemoteAudioFormat;
    v5->_mediaRemoteAudioFormat = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nptier"];
    -[MPNowPlayingInfoAudioFormat setTier:](v5, "setTier:", [v8 integerValue]);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npbr"];
    -[MPNowPlayingInfoAudioFormat setBitrate:](v5, "setBitrate:", [v9 integerValue]);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npsr"];
    -[MPNowPlayingInfoAudioFormat setSampleRate:](v5, "setSampleRate:", [v10 integerValue]);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npbd"];
    -[MPNowPlayingInfoAudioFormat setBitDepth:](v5, "setBitDepth:", [v11 integerValue]);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npcodec"];
    -[MPNowPlayingInfoAudioFormat setCodec:](v5, "setCodec:", [v12 unsignedIntValue]);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npgrp"];
    [(MPNowPlayingInfoAudioFormat *)v5 setGroupID:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npvar"];
    [(MPNowPlayingInfoAudioFormat *)v5 setStableVariantID:v14];

    -[MPNowPlayingInfoAudioFormat setSpatialized:](v5, "setSpatialized:", [coderCopy decodeBoolForKey:@"npspz"]);
    -[MPNowPlayingInfoAudioFormat setMultiChannel:](v5, "setMultiChannel:", [coderCopy decodeBoolForKey:@"npmul"]);
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npchlay"];
    -[MPNowPlayingInfoAudioFormat setChannelLayout:](v5, "setChannelLayout:", [v15 unsignedIntValue]);

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"npchlayd"];
    [(MPNowPlayingInfoAudioFormat *)v5 setAudioChannelLayoutDescription:v16];
  }

  return v5;
}

- (int64_t)badging
{
  renderingMode = [(MPNowPlayingInfoAudioFormat *)self renderingMode];
  if (renderingMode > 3)
  {
    if (renderingMode == 5)
    {
      return 1;
    }

    if (renderingMode == 4)
    {
      return 2;
    }
  }

  else if (renderingMode == 1)
  {
    tier = [(MPNowPlayingInfoAudioFormat *)self tier];
    if (tier < 5)
    {
      return qword_1A2741A40[tier];
    }
  }

  else if (renderingMode == 3)
  {
    return 5;
  }

  tier2 = [(MPNowPlayingInfoAudioFormat *)self tier];
  if (tier2 == 2)
  {
    return 3;
  }

  if (tier2 == 3)
  {
    return 4;
  }

  if (tier2 != 4)
  {
    return 0;
  }

  if ([(MPNowPlayingInfoAudioFormat *)self isSpatialized])
  {
    return 1;
  }

  return 2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MRContentItemMetadataAudioFormat *)self->_mediaRemoteAudioFormat isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAudioChannelLayoutDescription:(id)description
{
  descriptionCopy = description;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setAudioChannelLayoutDescription:descriptionCopy];
}

- (NSString)audioChannelLayoutDescription
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  audioChannelLayoutDescription = [mediaRemoteAudioFormat audioChannelLayoutDescription];

  return audioChannelLayoutDescription;
}

- (void)setChannelLayout:(unsigned int)layout
{
  v3 = *&layout;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setChannelLayout:v3];
}

- (unsigned)channelLayout
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  channelLayout = [mediaRemoteAudioFormat channelLayout];

  return channelLayout;
}

- (void)setRenderingMode:(int64_t)mode
{
  if ((mode - 1) >= 5)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setRenderingMode:modeCopy];
}

- (int64_t)renderingMode
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  renderingMode = [mediaRemoteAudioFormat renderingMode];
  if ((renderingMode - 1) >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = renderingMode;
  }

  return v4;
}

- (void)setMultiChannel:(BOOL)channel
{
  channelCopy = channel;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setMultiChannel:channelCopy];
}

- (BOOL)isMultiChannel
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  isMultiChannel = [mediaRemoteAudioFormat isMultiChannel];

  return isMultiChannel;
}

- (void)setSpatialized:(BOOL)spatialized
{
  spatializedCopy = spatialized;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setSpatialized:spatializedCopy];
}

- (BOOL)isSpatialized
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  isSpatialized = [mediaRemoteAudioFormat isSpatialized];

  return isSpatialized;
}

- (void)setStableVariantID:(id)d
{
  dCopy = d;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setStableVariantID:dCopy];
}

- (NSString)stableVariantID
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  stableVariantID = [mediaRemoteAudioFormat stableVariantID];

  return stableVariantID;
}

- (void)setGroupID:(id)d
{
  dCopy = d;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setGroupID:dCopy];
}

- (NSString)groupID
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  groupID = [mediaRemoteAudioFormat groupID];

  return groupID;
}

- (void)setCodec:(unsigned int)codec
{
  v3 = *&codec;
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setCodec:v3];
}

- (unsigned)codec
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  codec = [mediaRemoteAudioFormat codec];

  return codec;
}

- (void)setBitDepth:(int64_t)depth
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setBitDepth:depth];
}

- (int64_t)bitDepth
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  bitDepth = [mediaRemoteAudioFormat bitDepth];

  return bitDepth;
}

- (void)setSampleRate:(int64_t)rate
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setSampleRate:rate];
}

- (int64_t)sampleRate
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  sampleRate = [mediaRemoteAudioFormat sampleRate];

  return sampleRate;
}

- (void)setBitrate:(int64_t)bitrate
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setBitrate:bitrate];
}

- (int64_t)bitrate
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  bitrate = [mediaRemoteAudioFormat bitrate];

  return bitrate;
}

- (void)setTier:(int64_t)tier
{
  if ((tier - 1) >= 4)
  {
    tierCopy = 0;
  }

  else
  {
    tierCopy = tier;
  }

  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [mediaRemoteAudioFormat setTier:tierCopy];
}

- (int64_t)tier
{
  mediaRemoteAudioFormat = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  tier = [mediaRemoteAudioFormat tier];
  if ((tier - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = tier;
  }

  return v4;
}

- (MPNowPlayingInfoAudioFormat)initWithMediaRemoteAudioFormat:(id)format
{
  formatCopy = format;
  if (formatCopy)
  {
    v10.receiver = self;
    v10.super_class = MPNowPlayingInfoAudioFormat;
    v6 = [(MPNowPlayingInfoAudioFormat *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mediaRemoteAudioFormat, format);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MPNowPlayingInfoAudioFormat)init
{
  v6.receiver = self;
  v6.super_class = MPNowPlayingInfoAudioFormat;
  v2 = [(MPNowPlayingInfoAudioFormat *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B09F8]);
    mediaRemoteAudioFormat = v2->_mediaRemoteAudioFormat;
    v2->_mediaRemoteAudioFormat = v3;
  }

  return v2;
}

@end