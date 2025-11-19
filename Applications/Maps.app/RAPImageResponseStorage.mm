@interface RAPImageResponseStorage
+ (id)baseFilePathWithSubmissionIdentifier:(id)a3;
+ (void)enumerateOverResponseFilePathsForSubmissionIdentifier:(id)a3 usingBlock:(id)a4;
- (BOOL)removeImageUploadObjectsForSubmissionIdentifier:(id)a3;
- (BOOL)saveResponseData:(id)a3 forSubmissionIdentifier:(id)a4 imageIdentifier:(id)a5;
- (id)fetchImageUploadObjectsForSubmissionIdentifier:(id)a3;
@end

@implementation RAPImageResponseStorage

- (BOOL)removeImageUploadObjectsForSubmissionIdentifier:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009F7F5C;
  v6[3] = &unk_101631998;
  v6[4] = &v7;
  [RAPImageResponseStorage enumerateOverResponseFilePathsForSubmissionIdentifier:v3 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)fetchImageUploadObjectsForSubmissionIdentifier:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1009F8084;
  v10 = &unk_101631970;
  v11 = a3;
  v12 = objc_alloc_init(NSMutableArray);
  v3 = v12;
  v4 = v11;
  [RAPImageResponseStorage enumerateOverResponseFilePathsForSubmissionIdentifier:v4 usingBlock:&v7];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)saveResponseData:(id)a3 forSubmissionIdentifier:(id)a4 imageIdentifier:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:a4];
  v10 = [RAPFileManager saveData:v8 toDirectory:v9 filename:v7];

  return v10;
}

+ (void)enumerateOverResponseFilePathsForSubmissionIdentifier:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:v5];
  v9 = [v8 path];
  v24 = 0;
  v10 = [v7 contentsOfDirectoryAtPath:v9 error:&v24];
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
        v17 = [RAPImageResponseStorage baseFilePathWithSubmissionIdentifier:v5, v19];
        v18 = [v17 URLByAppendingPathComponent:v16];

        v6[2](v6, v16, v18);
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }
}

+ (id)baseFilePathWithSubmissionIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[RAPFileManager baseSubmissionFilePath];
  v5 = [v4 URLByAppendingPathComponent:@"rap_image_responses" isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:v3 isDirectory:1];

  return v6;
}

@end