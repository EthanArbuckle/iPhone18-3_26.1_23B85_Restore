@interface CADSPRealTimeError
- (BOOL)isEqual:(id)equal;
- (CADSPRealTimeError)initWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info;
- (NSNumber)errorSourceLine;
- (NSString)errorSourceFile;
- (id)description;
@end

@implementation CADSPRealTimeError

- (id)description
{
  v2 = CADSPRealTimeErrorCopyDescription(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    v5 = CFEqual(self, equalCopy) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)errorSourceLine
{
  v2 = CADSPRealTimeErrorCopySourceLine(self);

  return v2;
}

- (NSString)errorSourceFile
{
  v2 = CADSPRealTimeErrorCopySourceFile(self);

  return v2;
}

- (CADSPRealTimeError)initWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info
{
  v5 = _CADSPRealTimeErrorCreate(*MEMORY[0x1E695E4A8], code, info);

  return v5;
}

@end