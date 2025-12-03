@interface BLSValidWhenBacklightInactiveAttributeEntry
+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service;
@end

@implementation BLSValidWhenBacklightInactiveAttributeEntry

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

+ (id)activateForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service attributeHandler:(id)handler
{
  attributeCopy = attribute;
  serviceCopy = service;
  assertionCopy = assertion;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = &off_27841E058;
  if ((isKindOfClass & 1) == 0)
  {
    v12 = off_27841DE28;
  }

  v13 = [objc_alloc(*v12) initForAttribute:attributeCopy fromAssertion:assertionCopy forService:serviceCopy];

  return v13;
}

- (id)initForAttribute:(id)attribute fromAssertion:(id)assertion forService:(id)service
{
  attributeCopy = attribute;
  assertionCopy = assertion;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = BLSValidWhenBacklightInactiveAttributeEntry;
  v11 = [(BLSValidWhenBacklightInactiveAttributeEntry *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_attribute, attributeCopy);
    objc_storeWeak(p_isa + 2, assertionCopy);
    objc_storeWeak(p_isa + 3, serviceCopy);
  }

  return p_isa;
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