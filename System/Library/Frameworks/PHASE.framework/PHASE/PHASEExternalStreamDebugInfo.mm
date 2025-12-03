@interface PHASEExternalStreamDebugInfo
- (BOOL)isEqual:(id)equal;
- (PHASEExternalStreamDebugInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHASEExternalStreamDebugInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  clientFormat = [(PHASEExternalStreamDebugInfo *)self clientFormat];
  clientFormat2 = [equalCopy clientFormat];
  if ([clientFormat isEqual:clientFormat2] && (v7 = -[PHASEExternalStreamDebugInfo isInput](self, "isInput"), v7 == objc_msgSend(equalCopy, "isInput")))
  {
    isStreamPaused = [(PHASEExternalStreamDebugInfo *)self isStreamPaused];
    v8 = isStreamPaused ^ [equalCopy isStreamPaused] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_clientFormat forKey:@"clientFormat"];
  [coderCopy encodeBool:self->_input forKey:@"input"];
  [coderCopy encodeBool:self->_streamPaused forKey:@"streamPaused"];
}

- (PHASEExternalStreamDebugInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PHASEExternalStreamDebugInfo;
  v5 = [(PHASEExternalStreamDebugInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientFormat"];
    clientFormat = v5->_clientFormat;
    v5->_clientFormat = v6;

    v5->_input = [coderCopy decodeBoolForKey:@"input"];
    v5->_streamPaused = [coderCopy decodeBoolForKey:@"streamPaused"];
  }

  return v5;
}

@end