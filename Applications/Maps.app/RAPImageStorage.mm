@interface RAPImageStorage
+ (BOOL)removeImageWithImageIdentifier:(id)identifier directory:(id)directory;
+ (id)baseFilePath;
+ (id)filePathForSubmissionIdentifier:(id)identifier;
+ (id)filePathForSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier;
- (BOOL)removeImageForSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier;
- (BOOL)saveImageWithSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier imageData:(id)data;
- (RAPImageStorage)initWithDelegate:(id)delegate;
@end

@implementation RAPImageStorage

- (BOOL)removeImageForSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier
{
  identifierCopy = identifier;
  v7 = [RAPImageStorage filePathForSubmissionIdentifier:identifierCopy imageIdentifier:imageIdentifier];
  if (v7)
  {
    v8 = [RAPFileManager removeItemAtFilePath:v7];
    v9 = [RAPImageStorage filePathForSubmissionIdentifier:identifierCopy];
    v10 = [RAPFileManager numberOfItemsInDirectory:v9];

    if (!v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained imageStorage:self didFinishRemovingAllImagesForClientSubmissionIdentifier:identifierCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)saveImageWithSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier imageData:(id)data
{
  dataCopy = data;
  imageIdentifierCopy = imageIdentifier;
  v9 = [RAPImageStorage filePathForSubmissionIdentifier:identifier];
  v10 = [RAPFileManager saveData:dataCopy toDirectory:v9 filename:imageIdentifierCopy];

  return v10;
}

- (RAPImageStorage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = RAPImageStorage;
  v5 = [(RAPImageStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

+ (BOOL)removeImageWithImageIdentifier:(id)identifier directory:(id)directory
{
  v4 = [directory URLByAppendingPathComponent:identifier];
  v5 = [RAPFileManager removeItemAtFilePath:v4];

  return v5;
}

+ (id)baseFilePath
{
  v2 = +[RAPFileManager baseSubmissionFilePath];
  v3 = [v2 URLByAppendingPathComponent:@"rap_images" isDirectory:1];

  return v3;
}

+ (id)filePathForSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[RAPImageStorage baseFilePath];
  v5 = [v4 URLByAppendingPathComponent:identifierCopy];

  return v5;
}

+ (id)filePathForSubmissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier
{
  imageIdentifierCopy = imageIdentifier;
  v6 = [RAPImageStorage filePathForSubmissionIdentifier:identifier];
  v7 = [v6 URLByAppendingPathComponent:imageIdentifierCopy];

  return v7;
}

@end