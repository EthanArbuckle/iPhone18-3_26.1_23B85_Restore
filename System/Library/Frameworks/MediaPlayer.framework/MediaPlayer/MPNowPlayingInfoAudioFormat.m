@interface MPNowPlayingInfoAudioFormat
- (BOOL)isEqual:(id)a3;
- (BOOL)isMultiChannel;
- (BOOL)isSpatialized;
- (MPNowPlayingInfoAudioFormat)init;
- (MPNowPlayingInfoAudioFormat)initWithCoder:(id)a3;
- (MPNowPlayingInfoAudioFormat)initWithMediaRemoteAudioFormat:(id)a3;
- (NSString)audioChannelLayoutDescription;
- (NSString)groupID;
- (NSString)stableVariantID;
- (id)_descriptionForChannelLayoutTag:(unsigned int)a3;
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
- (void)encodeWithCoder:(id)a3;
- (void)setAudioChannelLayoutDescription:(id)a3;
- (void)setBitDepth:(int64_t)a3;
- (void)setBitrate:(int64_t)a3;
- (void)setChannelLayout:(unsigned int)a3;
- (void)setCodec:(unsigned int)a3;
- (void)setGroupID:(id)a3;
- (void)setMultiChannel:(BOOL)a3;
- (void)setRenderingMode:(int64_t)a3;
- (void)setSampleRate:(int64_t)a3;
- (void)setSpatialized:(BOOL)a3;
- (void)setStableVariantID:(id)a3;
- (void)setTier:(int64_t)a3;
@end

@implementation MPNowPlayingInfoAudioFormat

- (id)debugBadgingDescription
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self badging];
  if (v2 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7681150[v2];
  }
}

- (id)debugRenderingModeDescription
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self renderingMode];
  if ((v2 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7681128[v2 - 1];
  }
}

- (id)_descriptionForChannelLayoutTag:(unsigned int)a3
{
  result = @"unknown";
  if (a3 > 8323079)
  {
    if (a3 > 12648463)
    {
      v4 = 12779529;
      v12 = @"7.1.2";
      if (a3 != 12845066)
      {
        v12 = @"unknown";
      }

      if (a3 == 12779530)
      {
        v6 = @"5.1.4";
      }

      else
      {
        v6 = v12;
      }

      v7 = @"9.1.6";
      v8 = a3 == 12713992;
      v9 = @"5.1.2";
      v10 = 12648464;
    }

    else
    {
      v4 = 11796488;
      v5 = @"7.1.4";
      if (a3 != 12582924)
      {
        v5 = @"unknown";
      }

      if (a3 == 11796489)
      {
        v6 = @"8.1";
      }

      else
      {
        v6 = v5;
      }

      v7 = @"7.1";
      v8 = a3 == 9306119;
      v9 = @"6.1";
      v10 = 8323080;
    }

    goto LABEL_26;
  }

  if (a3 > 7471106)
  {
    v4 = 7864324;
    v11 = @"5.1";
    if (a3 != 8126470)
    {
      v11 = @"unknown";
    }

    if (a3 == 7864325)
    {
      v6 = @"5.0";
    }

    else
    {
      v6 = v11;
    }

    v7 = @"3.0";
    v8 = a3 == 7602180;
    v9 = @"4.0";
    v10 = 7471107;
LABEL_26:
    if (!v8)
    {
      v9 = @"unknown";
    }

    if (a3 != v10)
    {
      v7 = v9;
    }

    if (a3 <= v4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  if (a3 > 6684673)
  {
    if (a3 != 6684674)
    {
      if (a3 == 6946818)
      {
        return @"Binaural";
      }

      return result;
    }

    return @"Stereo";
  }

  if (a3 == 6553601)
  {
    return @"Mono";
  }

  if (a3 == 6619138)
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
  v3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (id)debugTierDescription
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self tier];
  if (v2 >= 5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", v2];
  }

  else
  {
    v3 = off_1E7681100[v2];
  }

  return v3;
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MPNowPlayingInfoAudioFormat *)self debugTierDescription];
  v6 = [v4 stringWithFormat:@"tier: %@", v5];
  [v3 addObject:v6];

  if ([(MPNowPlayingInfoAudioFormat *)self bitrate])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPNowPlayingInfoAudioFormat *)self debugBitRateDescription];
    v9 = [v7 stringWithFormat:@"bitrate: %@", v8];
    [v3 addObject:v9];
  }

  v10 = [(MPNowPlayingInfoAudioFormat *)self groupID];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(MPNowPlayingInfoAudioFormat *)self groupID];
    v13 = [v11 stringWithFormat:@"groupID: %@", v12];
    [v3 addObject:v13];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self bitDepth])
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(MPNowPlayingInfoAudioFormat *)self debugBitDepthDescription];
    v16 = [v14 stringWithFormat:@"bitDepth: %@", v15];
    [v3 addObject:v16];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self sampleRate])
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(MPNowPlayingInfoAudioFormat *)self debugSampleRateDescription];
    v19 = [v17 stringWithFormat:@"sampleRate: %@", v18];
    [v3 addObject:v19];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self codec])
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [(MPNowPlayingInfoAudioFormat *)self debugCodecDescription];
    v22 = [v20 stringWithFormat:@"codec: %@", v21];
    [v3 addObject:v22];
  }

  if ([(MPNowPlayingInfoAudioFormat *)self channelLayout]&& [(MPNowPlayingInfoAudioFormat *)self channelLayout]!= -65536)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(MPNowPlayingInfoAudioFormat *)self debugChannelCountDescription];
    v25 = [v23 stringWithFormat:@"channels: %@", v24];
    [v3 addObject:v25];
  }

  v26 = [(MPNowPlayingInfoAudioFormat *)self audioChannelLayoutDescription];

  if (v26)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [(MPNowPlayingInfoAudioFormat *)self debugChannelLayoutDescription];
    v29 = [v27 stringWithFormat:@"layout: %@", v28];
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
    v31 = [(MPNowPlayingInfoAudioFormat *)self debugRenderingModeDescription];
    v32 = [v30 stringWithFormat:@"renderingMode: %@", v31];
    [v3 addObject:v32];
  }

  v33 = MEMORY[0x1E696AEC0];
  v34 = [(MPNowPlayingInfoAudioFormat *)self debugBadgingDescription];
  v35 = [v33 stringWithFormat:@"badging: %@", v34];
  [v3 addObject:v35];

  v36 = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];

  if (v36)
  {
    v37 = MEMORY[0x1E696AEC0];
    v38 = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];
    v39 = [v37 stringWithFormat:@"stableVariantID: %@", v38];
    [v3 addObject:v39];
  }

  v40 = [v3 componentsJoinedByString:@" "];;

  return v40;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPNowPlayingInfoAudioFormat *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[MPNowPlayingInfoAudioFormat tier](self, "tier")}];
  [v5 encodeObject:v6 forKey:@"nptier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat bitrate](self, "bitrate")}];
  [v5 encodeObject:v7 forKey:@"npbr"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat sampleRate](self, "sampleRate")}];
  [v5 encodeObject:v8 forKey:@"npsr"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPNowPlayingInfoAudioFormat bitDepth](self, "bitDepth")}];
  [v5 encodeObject:v9 forKey:@"npbd"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPNowPlayingInfoAudioFormat codec](self, "codec")}];
  [v5 encodeObject:v10 forKey:@"npcodec"];

  v11 = [(MPNowPlayingInfoAudioFormat *)self groupID];
  [v5 encodeObject:v11 forKey:@"npgrp"];

  v12 = [(MPNowPlayingInfoAudioFormat *)self stableVariantID];
  [v5 encodeObject:v12 forKey:@"npvar"];

  [v5 encodeBool:-[MPNowPlayingInfoAudioFormat isSpatialized](self forKey:{"isSpatialized"), @"npspz"}];
  [v5 encodeBool:-[MPNowPlayingInfoAudioFormat isMultiChannel](self forKey:{"isMultiChannel"), @"npmul"}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MPNowPlayingInfoAudioFormat channelLayout](self, "channelLayout")}];
  [v5 encodeObject:v13 forKey:@"npchlay"];

  v14 = [(MPNowPlayingInfoAudioFormat *)self audioChannelLayoutDescription];
  [v5 encodeObject:v14 forKey:@"npchlayd"];
}

- (MPNowPlayingInfoAudioFormat)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MPNowPlayingInfoAudioFormat;
  v5 = [(MPNowPlayingInfoAudioFormat *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B09F8]);
    mediaRemoteAudioFormat = v5->_mediaRemoteAudioFormat;
    v5->_mediaRemoteAudioFormat = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nptier"];
    -[MPNowPlayingInfoAudioFormat setTier:](v5, "setTier:", [v8 integerValue]);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npbr"];
    -[MPNowPlayingInfoAudioFormat setBitrate:](v5, "setBitrate:", [v9 integerValue]);

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npsr"];
    -[MPNowPlayingInfoAudioFormat setSampleRate:](v5, "setSampleRate:", [v10 integerValue]);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npbd"];
    -[MPNowPlayingInfoAudioFormat setBitDepth:](v5, "setBitDepth:", [v11 integerValue]);

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npcodec"];
    -[MPNowPlayingInfoAudioFormat setCodec:](v5, "setCodec:", [v12 unsignedIntValue]);

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npgrp"];
    [(MPNowPlayingInfoAudioFormat *)v5 setGroupID:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npvar"];
    [(MPNowPlayingInfoAudioFormat *)v5 setStableVariantID:v14];

    -[MPNowPlayingInfoAudioFormat setSpatialized:](v5, "setSpatialized:", [v4 decodeBoolForKey:@"npspz"]);
    -[MPNowPlayingInfoAudioFormat setMultiChannel:](v5, "setMultiChannel:", [v4 decodeBoolForKey:@"npmul"]);
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npchlay"];
    -[MPNowPlayingInfoAudioFormat setChannelLayout:](v5, "setChannelLayout:", [v15 unsignedIntValue]);

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"npchlayd"];
    [(MPNowPlayingInfoAudioFormat *)v5 setAudioChannelLayoutDescription:v16];
  }

  return v5;
}

- (int64_t)badging
{
  v3 = [(MPNowPlayingInfoAudioFormat *)self renderingMode];
  if (v3 > 3)
  {
    if (v3 == 5)
    {
      return 1;
    }

    if (v3 == 4)
    {
      return 2;
    }
  }

  else if (v3 == 1)
  {
    v5 = [(MPNowPlayingInfoAudioFormat *)self tier];
    if (v5 < 5)
    {
      return qword_1A2741A40[v5];
    }
  }

  else if (v3 == 3)
  {
    return 5;
  }

  v6 = [(MPNowPlayingInfoAudioFormat *)self tier];
  if (v6 == 2)
  {
    return 3;
  }

  if (v6 == 3)
  {
    return 4;
  }

  if (v6 != 4)
  {
    return 0;
  }

  if ([(MPNowPlayingInfoAudioFormat *)self isSpatialized])
  {
    return 1;
  }

  return 2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MRContentItemMetadataAudioFormat *)self->_mediaRemoteAudioFormat isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAudioChannelLayoutDescription:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v5 setAudioChannelLayoutDescription:v4];
}

- (NSString)audioChannelLayoutDescription
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 audioChannelLayoutDescription];

  return v3;
}

- (void)setChannelLayout:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setChannelLayout:v3];
}

- (unsigned)channelLayout
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 channelLayout];

  return v3;
}

- (void)setRenderingMode:(int64_t)a3
{
  if ((a3 - 1) >= 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setRenderingMode:v3];
}

- (int64_t)renderingMode
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 renderingMode];
  if ((v3 - 1) >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)setMultiChannel:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setMultiChannel:v3];
}

- (BOOL)isMultiChannel
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 isMultiChannel];

  return v3;
}

- (void)setSpatialized:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setSpatialized:v3];
}

- (BOOL)isSpatialized
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 isSpatialized];

  return v3;
}

- (void)setStableVariantID:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v5 setStableVariantID:v4];
}

- (NSString)stableVariantID
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 stableVariantID];

  return v3;
}

- (void)setGroupID:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v5 setGroupID:v4];
}

- (NSString)groupID
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 groupID];

  return v3;
}

- (void)setCodec:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setCodec:v3];
}

- (unsigned)codec
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 codec];

  return v3;
}

- (void)setBitDepth:(int64_t)a3
{
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setBitDepth:a3];
}

- (int64_t)bitDepth
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 bitDepth];

  return v3;
}

- (void)setSampleRate:(int64_t)a3
{
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setSampleRate:a3];
}

- (int64_t)sampleRate
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 sampleRate];

  return v3;
}

- (void)setBitrate:(int64_t)a3
{
  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setBitrate:a3];
}

- (int64_t)bitrate
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 bitrate];

  return v3;
}

- (void)setTier:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  [v4 setTier:v3];
}

- (int64_t)tier
{
  v2 = [(MPNowPlayingInfoAudioFormat *)self mediaRemoteAudioFormat];
  v3 = [v2 tier];
  if ((v3 - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (MPNowPlayingInfoAudioFormat)initWithMediaRemoteAudioFormat:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MPNowPlayingInfoAudioFormat;
    v6 = [(MPNowPlayingInfoAudioFormat *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mediaRemoteAudioFormat, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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