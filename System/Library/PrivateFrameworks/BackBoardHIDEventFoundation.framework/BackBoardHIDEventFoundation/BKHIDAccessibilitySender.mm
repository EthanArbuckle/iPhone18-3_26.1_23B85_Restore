@interface BKHIDAccessibilitySender
+ (id)accessibilityHIDServices;
- (BKHIDAccessibilitySender)initWithSenderID:(unint64_t)a3;
@end

@implementation BKHIDAccessibilitySender

- (BKHIDAccessibilitySender)initWithSenderID:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = BKHIDAccessibilitySender;
  v4 = [(BKHIDAccessibilitySender *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_senderID = a3;
    v6 = [MEMORY[0x277CF06D0] wildcard];
    senderDescriptor = v5->_senderDescriptor;
    v5->_senderDescriptor = v6;
  }

  return v5;
}

+ (id)accessibilityHIDServices
{
  v13[8] = *MEMORY[0x277D85DE8];
  v2 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319371];
  v3 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319372];
  v4 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319373];
  v5 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319374];
  v6 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319375];
  v7 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319376];
  v8 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319379];
  v9 = [[BKHIDAccessibilitySender alloc] initWithSenderID:0x8000000817319378];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end