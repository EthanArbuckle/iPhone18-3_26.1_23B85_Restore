@interface AAUID2DEncryptionFlowContext
+ (id)contextWithType:(unint64_t)type;
+ (id)contextWithType:(unint64_t)type altDSID:(id)d;
- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)type;
- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)type altDSID:(id)d;
- (int64_t)deviceToDeviceEncryptionUpgradeUIStyle;
@end

@implementation AAUID2DEncryptionFlowContext

- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)type altDSID:(id)d
{
  v8.receiver = self;
  v8.super_class = AAUID2DEncryptionFlowContext;
  v5 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)&v8 initWithAltDSID:d];
  v6 = v5;
  if (v5)
  {
    [(AAUID2DEncryptionFlowContext *)v5 setContextType:type];
  }

  return v6;
}

- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)type
{
  mEMORY[0x1E69977E0] = [MEMORY[0x1E69977E0] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x1E69977E0] primaryAccountAltDSID];
  v7 = [(AAUID2DEncryptionFlowContext *)self initWithType:type altDSID:primaryAccountAltDSID];

  return v7;
}

+ (id)contextWithType:(unint64_t)type
{
  v3 = [[self alloc] initWithType:type];

  return v3;
}

+ (id)contextWithType:(unint64_t)type altDSID:(id)d
{
  dCopy = d;
  v7 = [[self alloc] initWithType:type altDSID:dCopy];

  return v7;
}

- (int64_t)deviceToDeviceEncryptionUpgradeUIStyle
{
  contextType = [(AAUID2DEncryptionFlowContext *)self contextType];
  if (contextType - 2 > 5)
  {
    return 1;
  }

  else
  {
    return qword_1C55AD6C8[contextType - 2];
  }
}

@end