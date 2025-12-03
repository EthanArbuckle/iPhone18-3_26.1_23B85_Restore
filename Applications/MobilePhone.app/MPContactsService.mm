@interface MPContactsService
- (MPContactsService)init;
- (MPContactsService)initWithDataProvider:(id)provider;
@end

@implementation MPContactsService

- (MPContactsService)initWithDataProvider:(id)provider
{
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();

  return specialized ContactsService.init(dataProvider:)(v4, self);
}

- (MPContactsService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end