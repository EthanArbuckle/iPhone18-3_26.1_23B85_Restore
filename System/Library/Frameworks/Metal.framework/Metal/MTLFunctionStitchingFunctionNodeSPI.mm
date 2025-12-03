@interface MTLFunctionStitchingFunctionNodeSPI
- (BOOL)isEqual:(id)equal;
- (MTLFunctionStitchingFunctionNodeSPI)initWithName:(id)name arguments:(id)arguments controlDependencies:(id)dependencies isEarlyReturn:(BOOL)return;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MTLFunctionStitchingFunctionNodeSPI

- (MTLFunctionStitchingFunctionNodeSPI)initWithName:(id)name arguments:(id)arguments controlDependencies:(id)dependencies isEarlyReturn:(BOOL)return
{
  v8.receiver = self;
  v8.super_class = MTLFunctionStitchingFunctionNodeSPI;
  result = [(MTLFunctionStitchingFunctionNode *)&v8 initWithName:name arguments:arguments controlDependencies:dependencies];
  result->_isEarlyReturn = return;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLFunctionStitchingFunctionNodeSPI;
  v4 = [(MTLFunctionStitchingFunctionNode *)&v6 copyWithZone:zone];
  [v4 setIsEarlyReturn:self->_isEarlyReturn];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      v11.receiver = self;
      v11.super_class = MTLFunctionStitchingFunctionNodeSPI;
      v8 = [(MTLFunctionStitchingFunctionNode *)&v11 isEqual:equal];
      if (v8)
      {
        isEarlyReturn = [(MTLFunctionStitchingFunctionNodeSPI *)self isEarlyReturn];
        LOBYTE(v8) = isEarlyReturn ^ [equal isEarlyReturn] ^ 1;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v7, 0x10uLL);
  v6.receiver = self;
  v6.super_class = MTLFunctionStitchingFunctionNodeSPI;
  v3 = [(MTLFunctionStitchingFunctionNode *)&v6 hash];
  isEarlyReturn = self->_isEarlyReturn;
  v7[0] = v3;
  v7[1] = isEarlyReturn;
  return _MTLHashState(v7, 0x10uLL);
}

@end