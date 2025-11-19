@interface ASCRelatedOriginFetcher
- (_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher)init;
- (void)isOrigin:(NSString *)a3 relatedToRelyingPartyIdentifier:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation ASCRelatedOriginFetcher

- (void)isOrigin:(NSString *)a3 relatedToRelyingPartyIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1C2170BE4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1C21810A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1C21799C0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1C2166D88(0, 0, v12, &unk_1C21768B0, v17);
}

- (_TtC26AuthenticationServicesCore23ASCRelatedOriginFetcher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return [(ASCRelatedOriginFetcher *)&v3 init];
}

@end