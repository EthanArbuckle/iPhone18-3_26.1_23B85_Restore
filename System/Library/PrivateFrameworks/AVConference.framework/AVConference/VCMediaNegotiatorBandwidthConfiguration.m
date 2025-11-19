@interface VCMediaNegotiatorBandwidthConfiguration
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorBandwidthConfiguration)initWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4 maxBandwidth:(unsigned int)a5;
- (VCMediaNegotiatorBandwidthConfiguration)initWithConnectionType:(int)a3 maxBandwidth:(unsigned int)a4;
@end

@implementation VCMediaNegotiatorBandwidthConfiguration

- (VCMediaNegotiatorBandwidthConfiguration)initWithConnectionType:(int)a3 maxBandwidth:(unsigned int)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiatorBandwidthConfiguration;
  result = [(VCMediaNegotiatorBandwidthConfiguration *)&v7 init];
  if (result)
  {
    result->_arbiterMode = 0;
    result->_isDefaultMode = 1;
    result->_connectionType = a3;
    result->_maxBandwidth = a4;
  }

  return result;
}

- (VCMediaNegotiatorBandwidthConfiguration)initWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4 maxBandwidth:(unsigned int)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCMediaNegotiatorBandwidthConfiguration;
  result = [(VCMediaNegotiatorBandwidthConfiguration *)&v9 init];
  if (result)
  {
    result->_arbiterMode = a3;
    result->_connectionType = a4;
    result->_maxBandwidth = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  arbiterMode = self->_arbiterMode;
  if (arbiterMode != [a3 mode])
  {
    return 0;
  }

  maxBandwidth = self->_maxBandwidth;
  if (maxBandwidth != [a3 maxBandwidth])
  {
    return 0;
  }

  connectionType = self->_connectionType;
  if (connectionType != [a3 connectionType])
  {
    return 0;
  }

  isDefaultMode = self->_isDefaultMode;
  return isDefaultMode == [a3 isDefaultMode];
}

@end