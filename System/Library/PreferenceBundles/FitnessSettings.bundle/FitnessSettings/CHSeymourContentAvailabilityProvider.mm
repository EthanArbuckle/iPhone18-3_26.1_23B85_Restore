@interface CHSeymourContentAvailabilityProvider
- (CHSeymourContentAvailabilityProvider)init;
- (void)queryStorefrontContentAvailabilityWithCompletion:(id)completion;
@end

@implementation CHSeymourContentAvailabilityProvider

- (CHSeymourContentAvailabilityProvider)init
{
  sub_1F7A0();
  sub_9B84();
  sub_200A0();
  *(&self->super.isa + OBJC_IVAR___CHSeymourContentAvailabilityProvider_client) = sub_1F790();
  v4.receiver = self;
  v4.super_class = type metadata accessor for SeymourContentAvailabilityProvider();
  return [(CHSeymourContentAvailabilityProvider *)&v4 init];
}

- (void)queryStorefrontContentAvailabilityWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  SeymourContentAvailabilityProvider.queryStorefrontContentAvailability(completion:)(sub_13720, v5);
}

@end