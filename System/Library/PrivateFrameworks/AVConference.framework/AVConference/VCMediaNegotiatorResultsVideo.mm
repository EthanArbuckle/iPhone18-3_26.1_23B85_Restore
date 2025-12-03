@interface VCMediaNegotiatorResultsVideo
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiatorResultsVideo)init;
- (void)addFeatureString:(id)string payload:(int)payload;
- (void)addParameterSet:(id)set payload:(int)payload;
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

- (void)addFeatureString:(id)string payload:(int)payload
{
  featureStrings = self->_featureStrings;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  [(NSMutableDictionary *)featureStrings setObject:string forKeyedSubscript:v6];
}

- (void)addParameterSet:(id)set payload:(int)payload
{
  parameterSets = self->_parameterSets;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&payload];

  [(NSMutableDictionary *)parameterSets setObject:set forKeyedSubscript:v6];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_isSupported != [equal isSupported] || objc_msgSend(equal, "remoteSSRC") != self->_remoteSSRC || self->_isRTCPFBEnabled != objc_msgSend(equal, "isRTCPFBEnabled") || objc_msgSend(equal, "customVideoWidth") != self->_customVideoWidth || objc_msgSend(equal, "customVideoHeight") != self->_customVideoHeight || objc_msgSend(equal, "tilesPerFrame") != self->_tilesPerFrame || self->_ltrpEnabled != objc_msgSend(equal, "ltrpEnabled") || self->_fecEnabled != objc_msgSend(equal, "fecEnabled") || self->_rtxEnabled != objc_msgSend(equal, "rtxEnabled") || self->_blackFrameOnClearScreenEnabled != objc_msgSend(equal, "blackFrameOnClearScreenEnabled") || objc_msgSend(equal, "cipherSuite") != self->_cipherSuite || self->_enableInterleavedEncoding != objc_msgSend(equal, "enableInterleavedEncoding") || !-[NSMutableDictionary isEqualToDictionary:](self->_featureStrings, "isEqualToDictionary:", objc_msgSend(equal, "featureStrings")) || !-[NSMutableDictionary isEqualToDictionary:](self->_parameterSets, "isEqualToDictionary:", objc_msgSend(equal, "parameterSets")) || !-[NSMutableSet isEqualToSet:](self->_pixelFormats, "isEqualToSet:", objc_msgSend(equal, "pixelFormats")) || !-[NSMutableSet isEqualToSet:](self->_hdrModesNegotiated, "isEqualToSet:", objc_msgSend(equal, "hdrModesNegotiated")))
  {
    return 0;
  }

  videoRuleCollections = self->_videoRuleCollections;
  videoRuleCollections = [equal videoRuleCollections];

  return [(VCVideoRuleCollections *)videoRuleCollections isEqual:videoRuleCollections];
}

@end