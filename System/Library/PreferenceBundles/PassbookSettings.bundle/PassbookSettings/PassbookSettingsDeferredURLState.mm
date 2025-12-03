@interface PassbookSettingsDeferredURLState
- (NSDictionary)resourceDictionary;
- (_TtC16PassbookSettings32PassbookSettingsDeferredURLState)init;
- (void)setResourceDictionary:(id)dictionary;
@end

@implementation PassbookSettingsDeferredURLState

- (NSDictionary)resourceDictionary
{
  if (*(self + OBJC_IVAR____TtC16PassbookSettings32PassbookSettingsDeferredURLState_resourceDictionary))
  {
    v2 = *(self + OBJC_IVAR____TtC16PassbookSettings32PassbookSettingsDeferredURLState_resourceDictionary);

    v3.super.isa = sub_A814().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (void)setResourceDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = sub_A824();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC16PassbookSettings32PassbookSettingsDeferredURLState_resourceDictionary);
  *(self + OBJC_IVAR____TtC16PassbookSettings32PassbookSettingsDeferredURLState_resourceDictionary) = v4;
}

- (_TtC16PassbookSettings32PassbookSettingsDeferredURLState)init
{
  *(self + OBJC_IVAR____TtC16PassbookSettings32PassbookSettingsDeferredURLState_resourceDictionary) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PassbookSettingsDeferredURLState();
  return [(PassbookSettingsDeferredURLState *)&v3 init];
}

@end