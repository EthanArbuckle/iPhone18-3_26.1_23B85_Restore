@interface BLSValidWhenBacklightInactiveAttributeEntry
+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6;
- (BLSAssertionServiceResponding)assertion;
- (BLSAttribute)attribute;
- (BLSHAssertionAttributeHandlerService)service;
- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
@end

@implementation BLSValidWhenBacklightInactiveAttributeEntry

- (BLSAttribute)attribute
{
  WeakRetained = objc_loadWeakRetained(&self->_attribute);

  return WeakRetained;
}

+ (id)activateForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5 attributeHandler:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = &off_27841E058;
  if ((isKindOfClass & 1) == 0)
  {
    v12 = off_27841DE28;
  }

  v13 = [objc_alloc(*v12) initForAttribute:v8 fromAssertion:v10 forService:v9];

  return v13;
}

- (id)initForAttribute:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BLSValidWhenBacklightInactiveAttributeEntry;
  v11 = [(BLSValidWhenBacklightInactiveAttributeEntry *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_attribute, v8);
    objc_storeWeak(p_isa + 2, v9);
    objc_storeWeak(p_isa + 3, v10);
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