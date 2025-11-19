@interface ATXUserNotification
@end

@implementation ATXUserNotification

id __91__ATXUserNotification_RawIdentifiers__setRawIdentifiersWithContactRepresentationDataStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v3 stringValue];
  if ([v4 length])
  {
    v5 = [v2 value];
    v6 = [v5 stringValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __91__ATXUserNotification_RawIdentifiers__setRawIdentifiersWithContactRepresentationDataStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  if ([v3 length])
  {
    v4 = [v2 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end