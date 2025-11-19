@interface PHASEExternalStreamDebugInfo
- (BOOL)isEqual:(id)a3;
- (PHASEExternalStreamDebugInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHASEExternalStreamDebugInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PHASEExternalStreamDebugInfo *)self clientFormat];
  v6 = [v4 clientFormat];
  if ([v5 isEqual:v6] && (v7 = -[PHASEExternalStreamDebugInfo isInput](self, "isInput"), v7 == objc_msgSend(v4, "isInput")))
  {
    v9 = [(PHASEExternalStreamDebugInfo *)self isStreamPaused];
    v8 = v9 ^ [v4 isStreamPaused] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_clientFormat forKey:@"clientFormat"];
  [v4 encodeBool:self->_input forKey:@"input"];
  [v4 encodeBool:self->_streamPaused forKey:@"streamPaused"];
}

- (PHASEExternalStreamDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHASEExternalStreamDebugInfo;
  v5 = [(PHASEExternalStreamDebugInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientFormat"];
    clientFormat = v5->_clientFormat;
    v5->_clientFormat = v6;

    v5->_input = [v4 decodeBoolForKey:@"input"];
    v5->_streamPaused = [v4 decodeBoolForKey:@"streamPaused"];
  }

  return v5;
}

@end