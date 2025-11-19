@interface PHASESharedListenerDebugInfo
- (BOOL)isEqual:(id)a3;
- (PHASESharedListenerDebugInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHASESharedListenerDebugInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PHASESharedListenerDebugInfo;
  if ([(PHASESharedEntityDebugInfo *)&v10 isEqual:v4])
  {
    [(PHASESharedListenerDebugInfo *)self gain];
    v6 = v5;
    [v4 gain];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PHASESharedListenerDebugInfo;
  [(PHASESharedEntityDebugInfo *)&v6 encodeWithCoder:v4];
  *&v5 = self->_gain;
  [v4 encodeFloat:@"gain" forKey:v5];
}

- (PHASESharedListenerDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHASESharedListenerDebugInfo;
  v5 = [(PHASESharedEntityDebugInfo *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"gain"];
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