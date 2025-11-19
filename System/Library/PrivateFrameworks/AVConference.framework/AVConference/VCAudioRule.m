@interface VCAudioRule
- (BOOL)isEqual:(id)a3;
- (VCAudioRule)initWithPayload:(int)a3 isSecondary:(BOOL)a4 sbr:(BOOL)a5 samplesPerBlock:(unsigned int)a6;
- (id)description;
@end

@implementation VCAudioRule

- (VCAudioRule)initWithPayload:(int)a3 isSecondary:(BOOL)a4 sbr:(BOOL)a5 samplesPerBlock:(unsigned int)a6
{
  v7 = a5;
  v8 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCAudioRule;
  result = [(VCAudioRule *)&v13 init];
  if (result)
  {
    result->_payload = a3;
    result->_isSecondary = v8;
    result->_sbr = v7;
    result->_samplesPerBlock = a6;
    if (v7)
    {
      v11 = 0x10000;
    }

    else
    {
      v11 = 0;
    }

    if (v8)
    {
      v12 = 0x20000;
    }

    else
    {
      v12 = 0;
    }

    result->_hash = v12 & 0xFFFF0000 | a3 | v11 | (a6 << 18);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    payload = self->_payload;
    if (payload == [a3 payload] && (isSecondary = self->_isSecondary, isSecondary == objc_msgSend(a3, "isSecondary")) && (sbr = self->_sbr, sbr == objc_msgSend(a3, "sbr")))
    {
      samplesPerBlock = self->_samplesPerBlock;
      LOBYTE(v5) = samplesPerBlock == [a3 samplesPerBlock];
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