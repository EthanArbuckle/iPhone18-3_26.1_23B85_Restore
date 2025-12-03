@interface PHASESharedListenerDebugInfo
- (BOOL)isEqual:(id)equal;
- (PHASESharedListenerDebugInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHASESharedListenerDebugInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = PHASESharedListenerDebugInfo;
  if ([(PHASESharedEntityDebugInfo *)&v10 isEqual:equalCopy])
  {
    [(PHASESharedListenerDebugInfo *)self gain];
    v6 = v5;
    [equalCopy gain];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PHASESharedListenerDebugInfo;
  [(PHASESharedEntityDebugInfo *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_gain;
  [coderCopy encodeFloat:@"gain" forKey:v5];
}

- (PHASESharedListenerDebugInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PHASESharedListenerDebugInfo;
  v5 = [(PHASESharedEntityDebugInfo *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"gain"];
    v5->_gain = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(PHASESharedEntityDebugInfo *)self transform];
  v5 = v4;
  [(PHASESharedEntityDebugInfo *)self transform];
  v7 = v6;
  [(PHASESharedEntityDebugInfo *)self transform];
  return [v3 stringWithFormat:@"<PHASESharedListenerDebugInfo:%p position=[%0.1f, %0.1f, %0.1f], referenceCount=%d, gain=%0.1f>", self, *&v5, *&v7, v8, -[PHASESharedEntityDebugInfo referenceCount](self, "referenceCount"), self->_gain];
}

@end