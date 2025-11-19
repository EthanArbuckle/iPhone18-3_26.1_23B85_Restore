@interface MercuryPosterUpdater
- (_TtC22MercuryPosterExtension20MercuryPosterUpdater)init;
- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
@end

@implementation MercuryPosterUpdater

- (_TtC22MercuryPosterExtension20MercuryPosterUpdater)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MercuryPosterUpdater();
  return [(MercuryPosterUpdater *)&v3 init];
}

- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1000250A8();
  v8 = sub_1000E98A4();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_100025694(v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end