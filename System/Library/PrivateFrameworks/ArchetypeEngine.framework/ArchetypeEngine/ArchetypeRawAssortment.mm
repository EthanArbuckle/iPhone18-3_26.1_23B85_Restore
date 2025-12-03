@interface ArchetypeRawAssortment
- (_TtC15ArchetypeEngine22ArchetypeRawAssortment)init;
- (id)textOnScreen;
- (void)spotlightItemsWithContentType:(id)type completionHandler:(id)handler;
@end

@implementation ArchetypeRawAssortment

- (id)textOnScreen
{
  _s15ArchetypeEngine0A13RawAssortmentC12textOnScreenSSyF_0();
  v2 = sub_240FD448C();

  return v2;
}

- (void)spotlightItemsWithContentType:(id)type completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_240FD449C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  _s15ArchetypeEngine0A13RawAssortmentC14spotlightItems11contentType17completionHandlerySS_ySaySSGctF_0(v6, v8, sub_240FCF2DC, v9);
}

- (_TtC15ArchetypeEngine22ArchetypeRawAssortment)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArchetypeRawAssortment();
  return [(ArchetypeRawAssortment *)&v3 init];
}

@end