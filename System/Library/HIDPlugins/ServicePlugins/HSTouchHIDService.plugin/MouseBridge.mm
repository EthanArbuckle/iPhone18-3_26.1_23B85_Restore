@interface MouseBridge
- (MouseBridge)initWithService:(unsigned int)a3;
- (void)handleGetPropertyEvent:(id)a3;
@end

@implementation MouseBridge

- (MouseBridge)initWithService:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PointerSettings *)[MouseSettings alloc] initWithService:*&a3];
  v8.receiver = self;
  v8.super_class = MouseBridge;
  v6 = [(PointerBridge *)&v8 initWithService:v3 settings:v5];

  return v6;
}

- (void)handleGetPropertyEvent:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithUTF8String:?];
  if ([v5 isEqualToString:@"DeviceTypeHint"])
  {
    v6 = @"Mouse";
LABEL_5:
    v7 = v4[5];
    v4[5] = v6;

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"SupportedGestures"])
  {
    v6 = &off_112BE0;
    goto LABEL_5;
  }

LABEL_6:
  v8.receiver = self;
  v8.super_class = MouseBridge;
  [(PointerBridge *)&v8 handleGetPropertyEvent:v4];
}

@end