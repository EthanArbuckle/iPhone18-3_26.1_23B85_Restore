@interface MapsInsightsExtensionModel
- (void)encodedStylingInfoFor:(XPCMapsStyleAttributesInput *)for completionHandler:(id)handler;
- (void)fetchHeroImageDetailsWithMuid:(unint64_t)muid resultProviderID:(NSNumber *)d entity:(XPCMapsHeroImageResultEntity *)entity completionHandler:(id)handler;
- (void)mapsInsightsFor:(NSArray *)for completionHandler:(id)handler;
@end

@implementation MapsInsightsExtensionModel

- (void)mapsInsightsFor:(NSArray *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B78344C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780BB90;
  v14[5] = v13;
  forCopy = for;

  sub_1B77E494C(0, 0, v9, &unk_1B780BB98, v14);
}

- (void)fetchHeroImageDetailsWithMuid:(unint64_t)muid resultProviderID:(NSNumber *)d entity:(XPCMapsHeroImageResultEntity *)entity completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = muid;
  v15[3] = d;
  v15[4] = entity;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B7800DF8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B7834498;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B78344A0;
  v18[5] = v17;
  dCopy = d;
  entityCopy = entity;

  sub_1B77E494C(0, 0, v13, &unk_1B78344A8, v18);
}

- (void)encodedStylingInfoFor:(XPCMapsStyleAttributesInput *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B7800DF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B7834488;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B780BB50;
  v14[5] = v13;
  forCopy = for;

  sub_1B77E494C(0, 0, v9, &unk_1B780D8F0, v14);
}

@end