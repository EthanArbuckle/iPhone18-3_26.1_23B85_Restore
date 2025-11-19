@interface INRetrieveParkingLocationIntent
- (INRetrieveParkingLocationIntent)init;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
@end

@implementation INRetrieveParkingLocationIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = [(INRetrieveParkingLocationIntent *)self _typedBackingStore:a3];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (INRetrieveParkingLocationIntent)init
{
  v3.receiver = self;
  v3.super_class = INRetrieveParkingLocationIntent;
  return [(INIntent *)&v3 init];
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INRetrieveParkingLocationIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INRetrieveParkingLocationIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end