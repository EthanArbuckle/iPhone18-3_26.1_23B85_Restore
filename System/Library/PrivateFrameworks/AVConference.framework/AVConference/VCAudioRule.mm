@interface VCAudioRule
- (BOOL)isEqual:(id)equal;
- (VCAudioRule)initWithPayload:(int)payload isSecondary:(BOOL)secondary sbr:(BOOL)sbr samplesPerBlock:(unsigned int)block;
- (id)description;
@end

@implementation VCAudioRule

- (VCAudioRule)initWithPayload:(int)payload isSecondary:(BOOL)secondary sbr:(BOOL)sbr samplesPerBlock:(unsigned int)block
{
  sbrCopy = sbr;
  secondaryCopy = secondary;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCAudioRule;
  result = [(VCAudioRule *)&v13 init];
  if (result)
  {
    result->_payload = payload;
    result->_isSecondary = secondaryCopy;
    result->_sbr = sbrCopy;
    result->_samplesPerBlock = block;
    if (sbrCopy)
    {
      v11 = 0x10000;
    }

    else
    {
      v11 = 0;
    }

    if (secondaryCopy)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = 0;
    }

    result->_hash = v12 & 0xFFFF0000 | payload | v11 | (block << 18);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    payload = self->_payload;
    if (payload == [equal payload] && (isSecondary = self->_isSecondary, isSecondary == objc_msgSend(equal, "isSecondary")) && (sbr = self->_sbr, sbr == objc_msgSend(equal, "sbr")))
    {
      samplesPerBlock = self->_samplesPerBlock;
      LOBYTE(v5) = samplesPerBlock == [equal samplesPerBlock];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = "no";
  if (self->_isSecondary)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (self->_sbr)
  {
    v6 = "yes";
  }

  return [v3 stringWithFormat:@"%@: payload=%u secondary=%s sbr=%s samplesPerBlock=%u", v5, self->_payload, v7, v6, self->_samplesPerBlock];
}

@end