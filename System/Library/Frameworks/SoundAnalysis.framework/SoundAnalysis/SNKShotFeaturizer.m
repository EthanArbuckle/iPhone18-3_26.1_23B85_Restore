@interface SNKShotFeaturizer
+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 completionHandler:(id)a6;
+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7;
+ (id)performSegmentationRequest:(id)a3 error:(id *)a4;
@end

@implementation SNKShotFeaturizer

+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v8 = sub_1C9A91558();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a6);
  sub_1C9A92798();
  sub_1C9A914F8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a5;
  static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:completionHandler:)(v14, sub_1C97BD248, v13, v17);

  (*(v9 + 8))(v11, v8);
  sub_1C97A5A8C(v17, v17[3]);
  v15 = sub_1C9A93B08();
  sub_1C97BD200(v17);

  return v15;
}

+ (id)featurizeFiles:(id)a3 hallucinatorModelURL:(id)a4 queue:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7
{
  v10 = sub_1C9A91558();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  v15 = _Block_copy(a7);
  sub_1C9A92798();
  sub_1C9A914F8();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = a5;
  static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:resultHandler:completionHandler:)(v18, sub_1C97BD1EC, v16, sub_1C97BDEE4, v17, v21);

  (*(v11 + 8))(v13, v10);
  sub_1C97A5A8C(v21, v21[3]);
  v19 = sub_1C9A93B08();
  sub_1C97BD200(v21);

  return v19;
}

+ (id)performSegmentationRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = static SNKShotFeaturizer.performSegmentationRequest(_:)(v4);

  return v5;
}

@end