@interface CADSPRealTimeError
- (BOOL)isEqual:(id)a3;
- (CADSPRealTimeError)initWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CFEqual(self, v4) != 0;
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

- (CADSPRealTimeError)initWithCode:(int64_t)a3 userInfo:(const CADSPErrorUserInfo *)a4
{
  v5 = _CADSPRealTimeErrorCreate(*MEMORY[0x1E695E4A8], a3, a4);

  return v5;
}

@end