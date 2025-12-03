@interface AMSBagCachedValueUpdateHandlers
- (unint64_t)addHandlerWithKeys:(id)keys initialValues:(id)values handler:(id)handler;
- (unint64_t)addHandlerWithKeys:(id)keys initialValues:(id)values metricsTracker:(id)tracker handler:(id)handler;
- (void)callHandlersUsingNewBagDictionary:(id)dictionary changedKeys:(id)keys;
- (void)removeHandlerWithToken:(unint64_t)token;
@end

@implementation AMSBagCachedValueUpdateHandlers

- (void)removeHandlerWithToken:(unint64_t)token
{
  selfCopy = self;
  BagCachedValueUpdateHandlers.removeHandler(token:)(token);
}

- (unint64_t)addHandlerWithKeys:(id)keys initialValues:(id)values metricsTracker:(id)tracker handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_192F96DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  sub_192F9669C();
  *(swift_allocObject() + 16) = v8;
  trackerCopy = tracker;
  selfCopy = self;
  v12 = BagCachedValueUpdateHandlers.addHandler(keys:initialValues:metricsTracker:handler:)(v9);

  return v12;
}

- (void)callHandlersUsingNewBagDictionary:(id)dictionary changedKeys:(id)keys
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  v5 = sub_192F9669C();
  v6 = sub_192F96DAC();
  selfCopy = self;
  BagCachedValueUpdateHandlers.callUpdateHandlers(newBagDictionary:changedKeys:)(v5, v6);
}

- (unint64_t)addHandlerWithKeys:(id)keys initialValues:(id)values handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_192F96DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  sub_192F9669C();
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  v9 = BagCachedValueUpdateHandlers.addHandler(keys:initialValues:handler:)(v7);

  return v9;
}

@end