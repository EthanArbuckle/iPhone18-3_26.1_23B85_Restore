@interface VCBitrateRule
- (VCBitrateRule)initWithBitrate:(unsigned int)a3 connectionType:(int)a4 limitingRule:(id)a5;
- (int64_t)compare:(id)a3;
- (void)dealloc;
@end

@implementation VCBitrateRule

- (VCBitrateRule)initWithBitrate:(unsigned int)a3 connectionType:(int)a4 limitingRule:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCBitrateRule;
  v8 = [(VCBitrateRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_bitrate = a3;
    v8->_connectionType = a4;
    v8->limitingRule = a5;
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = [(VCBitrateRule *)self bitrate];
  if (v4 > [a3 bitrate])
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