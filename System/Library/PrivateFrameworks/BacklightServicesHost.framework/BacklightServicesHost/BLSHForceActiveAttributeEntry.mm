@interface BLSHForceActiveAttributeEntry
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
@end

@implementation BLSHForceActiveAttributeEntry

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  v8 = MEMORY[0x277CF0880];
  serviceCopy = service;
  assertionCopy = assertion;
  attributeCopy = attribute;
  v12 = objc_alloc_init(v8);
  v13 = objc_alloc(MEMORY[0x277CF0890]);
  v14 = MEMORY[0x277CCACA8];
  descriptor = [assertionCopy descriptor];
  explanation = [descriptor explanation];
  identifier = [assertionCopy identifier];
  v18 = [v14 stringWithFormat:@"%@ (clientPid:%d) - force active", explanation, objc_msgSend(identifier, "clientPid")];
  v19 = [v13 initWithRequestedActivityState:1 explanation:v18 timestamp:mach_continuous_time() sourceEvent:11 sourceEventMetadata:0];
  v20 = [v12 performChangeRequest:v19];

  v21 = [objc_alloc(objc_opt_class()) initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];

  return v21;
}

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = BLSHForceActiveAttributeEntry;
  v11 = [(BLSHForceActiveAttributeEntry *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_attribute, attributeCopy);
    objc_storeWeak(p_isa + 2, assertionCopy);
    objc_storeWeak(p_isa + 3, serviceCopy);
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