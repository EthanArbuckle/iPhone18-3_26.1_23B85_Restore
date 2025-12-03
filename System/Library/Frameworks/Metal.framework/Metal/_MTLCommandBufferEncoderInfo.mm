@interface _MTLCommandBufferEncoderInfo
- (NSString)description;
- (void)dealloc;
@end

@implementation _MTLCommandBufferEncoderInfo

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  errorState = [(_MTLCommandBufferEncoderInfo *)self errorState];
  if (errorState > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = *(&off_1E6EED450 + errorState);
  }

  return [v3 stringWithFormat:@"<errorState: %@, label: %@, debugSignposts: %@>", v5, -[_MTLCommandBufferEncoderInfo label](self, "label"), -[_MTLCommandBufferEncoderInfo debugSignposts](self, "debugSignposts")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLCommandBufferEncoderInfo;
  [(_MTLCommandBufferEncoderInfo *)&v3 dealloc];
}

@end