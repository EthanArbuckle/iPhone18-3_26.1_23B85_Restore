@interface VCMediaNegotiatorBandwidthConfiguration
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiatorBandwidthConfiguration)initWithArbiterMode:(unsigned __int8)mode connectionType:(int)type maxBandwidth:(unsigned int)bandwidth;
- (VCMediaNegotiatorBandwidthConfiguration)initWithConnectionType:(int)type maxBandwidth:(unsigned int)bandwidth;
@end

@implementation VCMediaNegotiatorBandwidthConfiguration

- (VCMediaNegotiatorBandwidthConfiguration)initWithConnectionType:(int)type maxBandwidth:(unsigned int)bandwidth
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiatorBandwidthConfiguration;
  result = [(VCMediaNegotiatorBandwidthConfiguration *)&v7 init];
  if (result)
  {
    result->_arbiterMode = 0;
    result->_isDefaultMode = 1;
    result->_connectionType = type;
    result->_maxBandwidth = bandwidth;
  }

  return result;
}

- (VCMediaNegotiatorBandwidthConfiguration)initWithArbiterMode:(unsigned __int8)mode connectionType:(int)type maxBandwidth:(unsigned int)bandwidth
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaNegotiatorBandwidthConfiguration;
  result = [(VCMediaNegotiatorBandwidthConfiguration *)&v9 init];
  if (result)
  {
    result->_arbiterMode = mode;
    result->_connectionType = type;
    result->_maxBandwidth = bandwidth;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  arbiterMode = self->_arbiterMode;
  if (arbiterMode != [equal mode])
  {
    return 0;
  }

  maxBandwidth = self->_maxBandwidth;
  if (maxBandwidth != [equal maxBandwidth])
  {
    return 0;
  }

  connectionType = self->_connectionType;
  if (connectionType != [equal connectionType])
  {
    return 0;
  }

  isDefaultMode = self->_isDefaultMode;
  return isDefaultMode == [equal isDefaultMode];
}

@end