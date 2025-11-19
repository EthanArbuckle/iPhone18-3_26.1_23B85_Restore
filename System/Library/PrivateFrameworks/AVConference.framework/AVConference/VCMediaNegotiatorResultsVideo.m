@interface VCMediaNegotiatorResultsVideo
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorResultsVideo)init;
- (void)addFeatureString:(id)a3 payload:(int)a4;
- (void)addParameterSet:(id)a3 payload:(int)a4;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorResultsVideo

- (VCMediaNegotiatorResultsVideo)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaNegotiatorResultsVideo;
  v2 = [(VCMediaNegotiatorResultsVideo *)&v4 init];
  if (v2)
  {
    v2->_videoRuleCollections = objc_alloc_init(VCVideoRuleCollections);
    v2->_featureStrings = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_parameterSets = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_pixelFormats = objc_opt_new();
    v2->_hdrModesNegotiated = objc_opt_new();
    v2->_cipherSuite = 3;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorResultsVideo;
  [(VCMediaNegotiatorResultsVideo *)&v3 dealloc];
}

- (void)addFeatureString:(id)a3 payload:(int)a4
{
  featureStrings = self->_featureStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4];

  [(NSMutableDictionary *)featureStrings setObject:a3 forKeyedSubscript:v6];
}

- (void)addParameterSet:(id)a3 payload:(int)a4
{
  parameterSets = self->_parameterSets;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a4];

  [(NSMutableDictionary *)parameterSets setObject:a3 forKeyedSubscript:v6];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_isSupported != [a3 isSupported] || objc_msgSend(a3, "remoteSSRC") != self->_remoteSSRC || self->_isRTCPFBEnabled != objc_msgSend(a3, "isRTCPFBEnabled") || objc_msgSend(a3, "customVideoWidth") != self->_customVideoWidth || objc_msgSend(a3, "customVideoHeight") != self->_customVideoHeight || objc_msgSend(a3, "tilesPerFrame") != self->_tilesPerFrame || self->_ltrpEnabled != objc_msgSend(a3, "ltrpEnabled") || self->_fecEnabled != objc_msgSend(a3, "fecEnabled") || self->_rtxEnabled != objc_msgSend(a3, "rtxEnabled") || self->_blackFrameOnClearScreenEnabled != objc_msgSend(a3, "blackFrameOnClearScreenEnabled") || objc_msgSend(a3, "cipherSuite") != self->_cipherSuite || self->_enableInterleavedEncoding != objc_msgSend(a3, "enableInterleavedEncoding") || !-[NSMutableDictionary isEqualToDictionary:](self->_featureStrings, "isEqualToDictionary:", objc_msgSend(a3, "featureStrings")) || !-[NSMutableDictionary isEqualToDictionary:](self->_parameterSets, "isEqualToDictionary:", objc_msgSend(a3, "parameterSets")) || !-[NSMutableSet isEqualToSet:](self->_pixelFormats, "isEqualToSet:", objc_msgSend(a3, "pixelFormats")) || !-[NSMutableSet isEqualToSet:](self->_hdrModesNegotiated, "isEqualToSet:", objc_msgSend(a3, "hdrModesNegotiated")))
  {
    return 0;
  }

  videoRuleCollections = self->_videoRuleCollections;
  v6 = [a3 videoRuleCollections];

  return [(VCVideoRuleCollections *)videoRuleCollections isEqual:v6];
}

@end