@interface SNKShotFeaturizer
+ (id)featurizeFiles:(id)files hallucinatorModelURL:(id)l queue:(id)queue completionHandler:(id)handler;
+ (id)featurizeFiles:(id)files hallucinatorModelURL:(id)l queue:(id)queue resultHandler:(id)handler completionHandler:(id)completionHandler;
+ (id)performSegmentationRequest:(id)request error:(id *)error;
@end

@implementation SNKShotFeaturizer

+ (id)featurizeFiles:(id)files hallucinatorModelURL:(id)l queue:(id)queue completionHandler:(id)handler
{
  v8 = sub_1C9A91558();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  sub_1C9A92798();
  sub_1C9A914F8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  queueCopy = queue;
  static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:completionHandler:)(queueCopy, sub_1C97BD248, v13, v17);

  (*(v9 + 8))(v11, v8);
  sub_1C97A5A8C(v17, v17[3]);
  v15 = sub_1C9A93B08();
  sub_1C97BD200(v17);

  return v15;
}

+ (id)featurizeFiles:(id)files hallucinatorModelURL:(id)l queue:(id)queue resultHandler:(id)handler completionHandler:(id)completionHandler
{
  v10 = sub_1C9A91558();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  v15 = _Block_copy(completionHandler);
  sub_1C9A92798();
  sub_1C9A914F8();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  queueCopy = queue;
  static SNKShotFeaturizer.featurizeFiles(_:hallucinatorModelURL:queue:resultHandler:completionHandler:)(queueCopy, sub_1C97BD1EC, v16, sub_1C97BDEE4, v17, v21);

  (*(v11 + 8))(v13, v10);
  sub_1C97A5A8C(v21, v21[3]);
  v19 = sub_1C9A93B08();
  sub_1C97BD200(v21);

  return v19;
}

+ (id)performSegmentationRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v5 = static SNKShotFeaturizer.performSegmentationRequest(_:)(requestCopy);

  return v5;
}

@end