@interface AMSBagCachedValueUpdateHandlers
- (unint64_t)addHandlerWithKeys:(id)a3 initialValues:(id)a4 handler:(id)a5;
- (unint64_t)addHandlerWithKeys:(id)a3 initialValues:(id)a4 metricsTracker:(id)a5 handler:(id)a6;
- (void)callHandlersUsingNewBagDictionary:(id)a3 changedKeys:(id)a4;
- (void)removeHandlerWithToken:(unint64_t)a3;
@end

@implementation AMSBagCachedValueUpdateHandlers

- (void)removeHandlerWithToken:(unint64_t)a3
{
  v4 = self;
  BagCachedValueUpdateHandlers.removeHandler(token:)(a3);
}

- (unint64_t)addHandlerWithKeys:(id)a3 initialValues:(id)a4 metricsTracker:(id)a5 handler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_192F96DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  sub_192F9669C();
  *(swift_allocObject() + 16) = v8;
  v10 = a5;
  v11 = self;
  v12 = BagCachedValueUpdateHandlers.addHandler(keys:initialValues:metricsTracker:handler:)(v9);

  return v12;
}

- (void)callHandlersUsingNewBagDictionary:(id)a3 changedKeys:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  v5 = sub_192F9669C();
  v6 = sub_192F96DAC();
  v7 = self;
  BagCachedValueUpdateHandlers.callUpdateHandlers(newBagDictionary:changedKeys:)(v5, v6);
}

- (unint64_t)addHandlerWithKeys:(id)a3 initialValues:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_192F96DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142D0);
  sub_192F9669C();
  *(swift_allocObject() + 16) = v6;
  v8 = self;
  v9 = BagCachedValueUpdateHandlers.addHandler(keys:initialValues:handler:)(v7);

  return v9;
}

@end