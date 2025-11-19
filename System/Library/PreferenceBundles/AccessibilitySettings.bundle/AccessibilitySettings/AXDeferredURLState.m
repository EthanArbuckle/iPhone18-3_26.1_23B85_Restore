@interface AXDeferredURLState
- (AXDeferredURLState)init;
- (NSDictionary)resourcesDictionary;
- (void)setResourcesDictionary:(id)a3;
@end

@implementation AXDeferredURLState

- (NSDictionary)resourcesDictionary
{
  v3 = OBJC_IVAR___AXDeferredURLState_resourcesDictionary;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4.super.isa = sub_19BF64().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setResourcesDictionary:(id)a3
{
  if (a3)
  {
    v4 = sub_19BF74();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___AXDeferredURLState_resourcesDictionary;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (AXDeferredURLState)init
{
  *(self + OBJC_IVAR___AXDeferredURLState_resourcesDictionary) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeferredURLState();
  return [(AXDeferredURLState *)&v3 init];
}

@end