@interface ASTUploadItem
- (ASTUploadItem)initWithDestinationUrl:(id)url andSourceData:(id)data andTask:(id)task;
- (ASTUploadItem)initWithDestinationUrl:(id)url andSourceUrl:(id)sourceUrl andTask:(id)task;
- (NSURLSessionUploadTask)task;
@end

@implementation ASTUploadItem

- (ASTUploadItem)initWithDestinationUrl:(id)url andSourceUrl:(id)sourceUrl andTask:(id)task
{
  urlCopy = url;
  sourceUrlCopy = sourceUrl;
  taskCopy = task;
  v17.receiver = self;
  v17.super_class = ASTUploadItem;
  v12 = [(ASTUploadItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationUrl, url);
    objc_storeStrong(&v13->_dataObject, sourceUrl);
    objc_storeWeak(&v13->_task, taskCopy);
    *&v13->_isComplete = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metaInfo = v13->_metaInfo;
    v13->_metaInfo = dictionary;
  }

  return v13;
}

- (ASTUploadItem)initWithDestinationUrl:(id)url andSourceData:(id)data andTask:(id)task
{
  urlCopy = url;
  dataCopy = data;
  taskCopy = task;
  v17.receiver = self;
  v17.super_class = ASTUploadItem;
  v12 = [(ASTUploadItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationUrl, url);
    objc_storeStrong(&v13->_dataObject, data);
    objc_storeWeak(&v13->_task, taskCopy);
    *&v13->_isComplete = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metaInfo = v13->_metaInfo;
    v13->_metaInfo = dictionary;
  }

  return v13;
}

- (NSURLSessionUploadTask)task
{
  WeakRetained = objc_loadWeakRetained(&self->_task);

  return WeakRetained;
}

@end