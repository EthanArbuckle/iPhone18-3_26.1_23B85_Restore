@interface ASTUploadItem
- (ASTUploadItem)initWithDestinationUrl:(id)a3 andSourceData:(id)a4 andTask:(id)a5;
- (ASTUploadItem)initWithDestinationUrl:(id)a3 andSourceUrl:(id)a4 andTask:(id)a5;
- (NSURLSessionUploadTask)task;
@end

@implementation ASTUploadItem

- (ASTUploadItem)initWithDestinationUrl:(id)a3 andSourceUrl:(id)a4 andTask:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ASTUploadItem;
  v12 = [(ASTUploadItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationUrl, a3);
    objc_storeStrong(&v13->_dataObject, a4);
    objc_storeWeak(&v13->_task, v11);
    *&v13->_isComplete = 0;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    metaInfo = v13->_metaInfo;
    v13->_metaInfo = v14;
  }

  return v13;
}

- (ASTUploadItem)initWithDestinationUrl:(id)a3 andSourceData:(id)a4 andTask:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ASTUploadItem;
  v12 = [(ASTUploadItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_destinationUrl, a3);
    objc_storeStrong(&v13->_dataObject, a4);
    objc_storeWeak(&v13->_task, v11);
    *&v13->_isComplete = 0;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    metaInfo = v13->_metaInfo;
    v13->_metaInfo = v14;
  }

  return v13;
}

- (NSURLSessionUploadTask)task
{
  WeakRetained = objc_loadWeakRetained(&self->_task);

  return WeakRetained;
}

@end