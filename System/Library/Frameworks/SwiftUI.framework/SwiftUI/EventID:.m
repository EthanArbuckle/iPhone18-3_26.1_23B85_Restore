@interface EventID:
- (uint64_t)A;
- (uint64_t)PanEvent;
- (uint64_t)TouchEvent;
- (void)EventType;
- (void)PanEvent;
- (void)TouchEvent;
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

- (uint64_t)PanEvent
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

- (void)PanEvent
{
  if (!lazy cache variable for type metadata for [EventID : PanEvent])
  {
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [EventID : PanEvent]);
    }
  }
}

- (uint64_t)A
{
  if (a2 <= 2u)
  {
  }

  return result;
}

- (void)TouchEvent
{
  if (!lazy cache variable for type metadata for MapGesture<[EventID : TouchEvent], SpatialEventCollection>)
  {
    type metadata accessor for [EventID : TouchEvent]();
    v0 = type metadata accessor for MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MapGesture<[EventID : TouchEvent], SpatialEventCollection>);
    }
  }
}

- (uint64_t)TouchEvent
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end