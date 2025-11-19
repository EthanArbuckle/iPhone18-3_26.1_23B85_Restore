@interface EventID:
- (void)EventType;
@end

@implementation EventID:

- (void)EventType
{
  if (!lazy cache variable for type metadata for Attribute<[EventID : EventType]>)
  {
    type metadata accessor for [EventID : EventType]();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<[EventID : EventType]>);
    }
  }
}

@end