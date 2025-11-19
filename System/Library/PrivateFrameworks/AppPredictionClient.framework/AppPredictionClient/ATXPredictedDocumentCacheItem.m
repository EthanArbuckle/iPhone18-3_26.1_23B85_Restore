@interface ATXPredictedDocumentCacheItem
- (ATXPredictedDocumentCacheItem)initWithCoder:(id)a3;
- (ATXPredictedDocumentCacheItem)initWithPredictedDocuments:(id)a3 associatedAppBundleID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPredictedDocumentCacheItem

- (ATXPredictedDocumentCacheItem)initWithPredictedDocuments:(id)a3 associatedAppBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXPredictedDocumentCacheItem;
  v8 = [(ATXPredictedDocumentCacheItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    predictedDocuments = v8->_predictedDocuments;
    v8->_predictedDocuments = v9;

    v11 = [v7 copy];
    associatedAppBundleID = v8->_associatedAppBundleID;
    v8->_associatedAppBundleID = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPredictedDocumentCacheItem *)self predictedDocuments];
  [v4 encodeObject:v5 forKey:@"predictedDocuments"];

  v6 = [(ATXPredictedDocumentCacheItem *)self associatedAppBundleID];
  [v4 encodeObject:v6 forKey:@"associatedAppBundleID"];
}

- (ATXPredictedDocumentCacheItem)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_screen_entities();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"predictedDocuments" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.atx.screenEntities" errorCode:-1 logHandle:{v9, v15[0]}];

  v11 = [v4 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleID"];
    self = [(ATXPredictedDocumentCacheItem *)self initWithPredictedDocuments:v10 associatedAppBundleID:v13];

    v12 = self;
  }

  return v12;
}

@end