@interface ATXPredictedDocumentCacheItem
- (ATXPredictedDocumentCacheItem)initWithCoder:(id)coder;
- (ATXPredictedDocumentCacheItem)initWithPredictedDocuments:(id)documents associatedAppBundleID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPredictedDocumentCacheItem

- (ATXPredictedDocumentCacheItem)initWithPredictedDocuments:(id)documents associatedAppBundleID:(id)d
{
  documentsCopy = documents;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ATXPredictedDocumentCacheItem;
  v8 = [(ATXPredictedDocumentCacheItem *)&v14 init];
  if (v8)
  {
    v9 = [documentsCopy copy];
    predictedDocuments = v8->_predictedDocuments;
    v8->_predictedDocuments = v9;

    v11 = [dCopy copy];
    associatedAppBundleID = v8->_associatedAppBundleID;
    v8->_associatedAppBundleID = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predictedDocuments = [(ATXPredictedDocumentCacheItem *)self predictedDocuments];
  [coderCopy encodeObject:predictedDocuments forKey:@"predictedDocuments"];

  associatedAppBundleID = [(ATXPredictedDocumentCacheItem *)self associatedAppBundleID];
  [coderCopy encodeObject:associatedAppBundleID forKey:@"associatedAppBundleID"];
}

- (ATXPredictedDocumentCacheItem)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_screen_entities();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"predictedDocuments" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.atx.screenEntities" errorCode:-1 logHandle:{v9, v15[0]}];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleID"];
    self = [(ATXPredictedDocumentCacheItem *)self initWithPredictedDocuments:v10 associatedAppBundleID:v13];

    selfCopy = self;
  }

  return selfCopy;
}

@end