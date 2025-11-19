@interface AAUID2DEncryptionFlowContext
+ (id)contextWithType:(unint64_t)a3;
+ (id)contextWithType:(unint64_t)a3 altDSID:(id)a4;
- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)a3;
- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)a3 altDSID:(id)a4;
- (int64_t)deviceToDeviceEncryptionUpgradeUIStyle;
@end

@implementation AAUID2DEncryptionFlowContext

- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)a3 altDSID:(id)a4
{
  v8.receiver = self;
  v8.super_class = AAUID2DEncryptionFlowContext;
  v5 = [(CDPUIDeviceToDeviceEncryptionFlowContext *)&v8 initWithAltDSID:a4];
  v6 = v5;
  if (v5)
  {
    [(AAUID2DEncryptionFlowContext *)v5 setContextType:a3];
  }

  return v6;
}

- (AAUID2DEncryptionFlowContext)initWithType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69977E0] sharedInstance];
  v6 = [v5 primaryAccountAltDSID];
  v7 = [(AAUID2DEncryptionFlowContext *)self initWithType:a3 altDSID:v6];

  return v7;
}

+ (id)contextWithType:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3];

  return v3;
}

+ (id)contextWithType:(unint64_t)a3 altDSID:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithType:a3 altDSID:v6];

  return v7;
}

- (int64_t)deviceToDeviceEncryptionUpgradeUIStyle
{
  v2 = [(AAUID2DEncryptionFlowContext *)self contextType];
  if (v2 - 2 > 5)
  {
    return 1;
  }

  else
  {
    return qword_1C55AD6C8[v2 - 2];
  }
}

@end