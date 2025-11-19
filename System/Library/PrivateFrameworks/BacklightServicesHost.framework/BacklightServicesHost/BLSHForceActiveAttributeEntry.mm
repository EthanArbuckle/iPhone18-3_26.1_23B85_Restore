@interface BLSHForceActiveAttributeEntry
+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
@end

@implementation BLSHForceActiveAttributeEntry

+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v8 = MEMORY[0x277CF0880];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  v13 = objc_alloc(MEMORY[0x277CF0890]);
  v14 = MEMORY[0x277CCACA8];
  v15 = [v10 descriptor];
  v16 = [v15 explanation];
  v17 = [v10 identifier];
  v18 = [v14 stringWithFormat:@"%@ (clientPid:%d) - force active", v16, objc_msgSend(v17, "clientPid")];
  v19 = [v13 initWithRequestedActivityState:1 explanation:v18 timestamp:mach_continuous_time() sourceEvent:11 sourceEventMetadata:0];
  v20 = [v12 performChangeRequest:v19];

  v21 = [objc_alloc(objc_opt_class()) initForAttribute:v11 fromAssertion:v10 forService:v9];

  return v21;
}

- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BLSHForceActiveAttributeEntry;
  v11 = [(BLSHForceActiveAttributeEntry *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_attribute, v8);
    objc_storeWeak(p_isa + 2, v9);
    objc_storeWeak(p_isa + 3, v10);
  }

  return p_isa;
}

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

- (BLSAssertionServiceResponding)assertion
{
  WeakRetained = objc_loadWeakRetained(&self->_assertion);

  return WeakRetained;
}

- (BLSHAssertionAttributeHandlerService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end