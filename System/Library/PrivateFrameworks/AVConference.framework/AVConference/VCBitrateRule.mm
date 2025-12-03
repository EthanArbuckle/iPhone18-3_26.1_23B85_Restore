@interface VCBitrateRule
- (VCBitrateRule)initWithBitrate:(unsigned int)bitrate connectionType:(int)type limitingRule:(id)rule;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation VCBitrateRule

- (VCBitrateRule)initWithBitrate:(unsigned int)bitrate connectionType:(int)type limitingRule:(id)rule
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCBitrateRule;
  v8 = [(VCBitrateRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_bitrate = bitrate;
    v8->_connectionType = type;
    v8->limitingRule = rule;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  bitrate = [(VCBitrateRule *)self bitrate];
  if (bitrate > [compare bitrate])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCBitrateRule;
  [(VCBitrateRule *)&v3 dealloc];
}

@end