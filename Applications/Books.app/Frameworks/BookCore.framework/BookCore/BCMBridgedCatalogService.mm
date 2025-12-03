@interface BCMBridgedCatalogService
+ (BCMBridgedCatalogService)sharedInstance;
- (BCMBridgedCatalogService)init;
- (BOOL)checkAvailabilityForStoreID:(id)d type:(int64_t)type metadata:(id)metadata;
- (void)fetchMixedAssetsWithBookIds:(NSArray *)ids audiobookIds:(NSArray *)audiobookIds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)self0;
- (void)fetchMixedSeriesWithBookSeriesIds:(NSArray *)ids audiobookSeriesIds:(NSArray *)seriesIds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)self0;
- (void)fetchResourcesWithAdamIDs:(NSArray *)ds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler;
- (void)fetchStoreURLForAdamID:(NSString *)d type:(int64_t)type metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler;
- (void)fetchStoreURLOfUnknownTypeForAdamID:(NSString *)d metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler;
@end

@implementation BCMBridgedCatalogService

+ (BCMBridgedCatalogService)sharedInstance
{
  if (qword_33F948 != -1)
  {
    swift_once();
  }

  v3 = qword_341670;

  return v3;
}

- (void)fetchStoreURLForAdamID:(NSString *)d type:(int64_t)type metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler
{
  v11 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = type;
  v15[4] = metadata;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1EF014();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2A6A68;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2A6A70;
  v18[5] = v17;
  dCopy = d;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1CE02C(0, 0, v13, &unk_2A6A78, v18);
}

- (void)fetchStoreURLOfUnknownTypeForAdamID:(NSString *)d metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler
{
  v9 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = metadata;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1EF014();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2A6A48;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2A6A50;
  v16[5] = v15;
  dCopy = d;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1CE02C(0, 0, v11, &unk_2A6A58, v16);
}

- (BOOL)checkAvailabilityForStoreID:(id)d type:(int64_t)type metadata:(id)metadata
{
  v21 = sub_1EE834();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1EE944();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1EEF04();
  v15 = v14;
  metadataCopy = metadata;
  sub_1EE934();

  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v17 = sub_1EE8C4();
  sub_19C418(v17, qword_341690);
  sub_1EE844();
  v18 = sub_1CCCB4(v13, v15, v8, v12);

  (*(v6 + 8))(v8, v21);
  (*(v10 + 8))(v12, v9);
  if (v18)
  {
  }

  return v18 != 0;
}

- (BCMBridgedCatalogService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MBridgedCatalogService();
  return [(BCMBridgedCatalogService *)&v3 init];
}

- (void)fetchMixedAssetsWithBookIds:(NSArray *)ids audiobookIds:(NSArray *)audiobookIds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)self0
{
  sizeCopy = size;
  idsCopy = ids;
  v16 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v16 - 8);
  v18 = &sizeCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = ids;
  v20[3] = audiobookIds;
  v20[4] = relationships;
  v20[5] = views;
  v21 = sizeCopy;
  v20[6] = parameters;
  v20[7] = v21;
  v20[8] = metadata;
  v20[9] = v19;
  v20[10] = self;
  v22 = sub_1EF014();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2A6A18;
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_2A6A20;
  v24[5] = v23;
  v25 = idsCopy;
  audiobookIdsCopy = audiobookIds;
  relationshipsCopy = relationships;
  viewsCopy = views;
  parametersCopy = parameters;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1CE02C(0, 0, v18, &unk_2A6A28, v24);
}

- (void)fetchMixedSeriesWithBookSeriesIds:(NSArray *)ids audiobookSeriesIds:(NSArray *)seriesIds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)self0
{
  sizeCopy = size;
  idsCopy = ids;
  v16 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v16 - 8);
  v18 = &sizeCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = ids;
  v20[3] = seriesIds;
  v20[4] = relationships;
  v20[5] = views;
  v21 = sizeCopy;
  v20[6] = parameters;
  v20[7] = v21;
  v20[8] = metadata;
  v20[9] = v19;
  v20[10] = self;
  v22 = sub_1EF014();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2A69E8;
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_2A69F0;
  v24[5] = v23;
  v25 = idsCopy;
  seriesIdsCopy = seriesIds;
  relationshipsCopy = relationships;
  viewsCopy = views;
  parametersCopy = parameters;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1CE02C(0, 0, v18, &unk_2A69F8, v24);
}

- (void)fetchResourcesWithAdamIDs:(NSArray *)ds relationships:(NSArray *)relationships views:(NSArray *)views additionalParameters:(NSDictionary *)parameters batchSize:(int64_t)size metadata:(BFMRequestMetadata *)metadata completionHandler:(id)handler
{
  v16 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = ds;
  v20[3] = relationships;
  v20[4] = views;
  v20[5] = parameters;
  v20[6] = size;
  v20[7] = metadata;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_1EF014();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2A6990;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_2A65D0;
  v23[5] = v22;
  dsCopy = ds;
  relationshipsCopy = relationships;
  viewsCopy = views;
  parametersCopy = parameters;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1CE02C(0, 0, v18, &unk_2A6880, v23);
}

@end