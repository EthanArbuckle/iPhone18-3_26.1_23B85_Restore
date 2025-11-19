@interface CDDCloudKitMessage
- (CDDCloudKitMessage)init;
- (CDDCloudKitMessage)initWithCoder:(id)a3;
- (void)dealloc;
@end

@implementation CDDCloudKitMessage

- (CDDCloudKitMessage)init
{
  v4.receiver = self;
  v4.super_class = CDDCloudKitMessage;
  v2 = [(CDDCloudKitMessage *)&v4 init];
  if (v2)
  {
    v2->_identifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CDDCloudKitMessage;
  [(CDDCloudKitMessage *)&v3 dealloc];
}

- (CDDCloudKitMessage)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDDCloudKitMessage;
  v4 = [(CDDCloudKitMessage *)&v6 init];
  if (v4)
  {
    v4->_identifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  }

  return v4;
}

@end