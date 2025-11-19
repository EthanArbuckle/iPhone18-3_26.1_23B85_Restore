@interface RAPImageStorage
+ (BOOL)removeImageWithImageIdentifier:(id)a3 directory:(id)a4;
+ (id)baseFilePath;
+ (id)filePathForSubmissionIdentifier:(id)a3;
+ (id)filePathForSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4;
- (BOOL)removeImageForSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4;
- (BOOL)saveImageWithSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4 imageData:(id)a5;
- (RAPImageStorage)initWithDelegate:(id)a3;
@end

@implementation RAPImageStorage

- (BOOL)removeImageForSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4
{
  v6 = a3;
  v7 = [RAPImageStorage filePathForSubmissionIdentifier:v6 imageIdentifier:a4];
  if (v7)
  {
    v8 = [RAPFileManager removeItemAtFilePath:v7];
    v9 = [RAPImageStorage filePathForSubmissionIdentifier:v6];
    v10 = [RAPFileManager numberOfItemsInDirectory:v9];

    if (!v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained imageStorage:self didFinishRemovingAllImagesForClientSubmissionIdentifier:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)saveImageWithSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4 imageData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [RAPImageStorage filePathForSubmissionIdentifier:a3];
  v10 = [RAPFileManager saveData:v7 toDirectory:v9 filename:v8];

  return v10;
}

- (RAPImageStorage)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RAPImageStorage;
  v5 = [(RAPImageStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

+ (BOOL)removeImageWithImageIdentifier:(id)a3 directory:(id)a4
{
  v4 = [a4 URLByAppendingPathComponent:a3];
  v5 = [RAPFileManager removeItemAtFilePath:v4];

  return v5;
}

+ (id)baseFilePath
{
  v2 = +[RAPFileManager baseSubmissionFilePath];
  v3 = [v2 URLByAppendingPathComponent:@"rap_images" isDirectory:1];

  return v3;
}

+ (id)filePathForSubmissionIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[RAPImageStorage baseFilePath];
  v5 = [v4 URLByAppendingPathComponent:v3];

  return v5;
}

+ (id)filePathForSubmissionIdentifier:(id)a3 imageIdentifier:(id)a4
{
  v5 = a4;
  v6 = [RAPImageStorage filePathForSubmissionIdentifier:a3];
  v7 = [v6 URLByAppendingPathComponent:v5];

  return v7;
}

@end