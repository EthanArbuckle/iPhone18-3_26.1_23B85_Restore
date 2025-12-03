@interface MercuryPosterUpdater
- (_TtC22MercuryPosterExtension20MercuryPosterUpdater)init;
- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion;
@end

@implementation MercuryPosterUpdater

- (_TtC22MercuryPosterExtension20MercuryPosterUpdater)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MercuryPosterUpdater();
  return [(MercuryPosterUpdater *)&v3 init];
}

- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_1000250A8();
  v8 = sub_1000E98A4();
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_100025694(v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end