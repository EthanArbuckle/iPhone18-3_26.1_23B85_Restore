@interface BCCloudGlobalMetadataManager
+ (void)fetchMetadataBoolForKey:(id)key completion:(id)completion;
+ (void)fetchMetadataStringForKey:(id)key completion:(id)completion;
+ (void)updateMetadataBool:(BOOL)bool forKey:(id)key completion:(id)completion;
+ (void)updateMetadataString:(id)string forKey:(id)key completion:(id)completion;
@end

@implementation BCCloudGlobalMetadataManager

+ (void)fetchMetadataBoolForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v7 = +[BDSCloudGlobalMetadataManager sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3DB58;
  v9[3] = &unk_2C9600;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 metadataValueForKey:keyCopy completion:v9];
}

+ (void)fetchMetadataStringForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v7 = +[BDSCloudGlobalMetadataManager sharedManager];
  [v7 metadataValueForKey:keyCopy completion:completionCopy];
}

+ (void)updateMetadataBool:(BOOL)bool forKey:(id)key completion:(id)completion
{
  v7 = @"N";
  if (bool)
  {
    v7 = @"Y";
  }

  v8 = v7;
  completionCopy = completion;
  keyCopy = key;
  v11 = +[BDSCloudGlobalMetadataManager sharedManager];
  [v11 setMetadataValue:v8 forKey:keyCopy completion:completionCopy];
}

+ (void)updateMetadataString:(id)string forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  stringCopy = string;
  v10 = +[BDSCloudGlobalMetadataManager sharedManager];
  [v10 setMetadataValue:stringCopy forKey:keyCopy completion:completionCopy];
}

@end