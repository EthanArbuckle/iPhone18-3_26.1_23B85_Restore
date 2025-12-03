@interface RAPImageResponseStorage
+ (id)baseFilePathWithSubmissionIdentifier:(id)identifier;
+ (void)enumerateOverResponseFilePathsForSubmissionIdentifier:(id)identifier usingBlock:(id)block;
- (BOOL)removeImageUploadObjectsForSubmissionIdentifier:(id)identifier;
- (BOOL)saveResponseData:(id)data forSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier;
- (id)fetchImageUploadObjectsForSubmissionIdentifier:(id)identifier;
@end

@implementation RAPImageResponseStorage

- (BOOL)removeImageUploadObjectsForSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009F7F5C;
  v6[3] = &unk_101631998;
  v6[4] = &v7;
  [RAPImageResponseStorage enumerateOverResponseFilePathsForSubmissionIdentifier:identifierCopy usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)fetchImageUploadObjectsForSubmissionIdentifier:(id)identifier
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1009F8084;
  v10 = &unk_101631970;
  identifierCopy = identifier;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  v4 = identifierCopy;
  [RAPImageResponseStorage enumerateOverResponseFilePathsForSubmissionIdentifier:v4 usingBlock:&v7];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)saveResponseData:(id)data forSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier
{
  imageIdentifierCopy = imageIdentifier;
  dataCopy = data;
  v9 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:identifier];
  v10 = [RAPFileManager saveData:dataCopy toDirectory:v9 filename:imageIdentifierCopy];

  return v10;
}

+ (void)enumerateOverResponseFilePathsForSubmissionIdentifier:(id)identifier usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v7 = +[NSFileManager defaultManager];
  v8 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:identifierCopy];
  path = [v8 path];
  v24 = 0;
  v10 = [v7 contentsOfDirectoryAtPath:path error:&v24];
  v19 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:identifierCopy, v19];
        v18 = [v17 URLByAppendingPathComponent:v16];

        blockCopy[2](blockCopy, v16, v18);
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }
}

+ (id)baseFilePathWithSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[RAPFileManager baseSubmissionFilePath];
  v5 = [v4 URLByAppendingPathComponent:@"rap_image_responses" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v6;
}

@end