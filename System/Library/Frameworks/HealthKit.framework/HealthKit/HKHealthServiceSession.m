@interface HKHealthServiceSession
- (HKHealthServiceSession)initWithService:(id)a3;
@end

@implementation HKHealthServiceSession

- (HKHealthServiceSession)initWithService:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKHealthServiceSession;
  v6 = [(HKHealthServiceSession *)&v11 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"*** HKHealthService required."];
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
  propertyLock = v6->_propertyLock;
  v6->_propertyLock = v7;

  objc_storeStrong(&v6->_service, a3);
  v6->_sessionIdentifier = 0;
  v9 = v6;
LABEL_6:

  return v9;
}

@end