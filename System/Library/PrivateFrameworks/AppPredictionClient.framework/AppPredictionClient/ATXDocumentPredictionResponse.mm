@interface ATXDocumentPredictionResponse
- (ATXDocumentPredictionResponse)initWithDocuments:(id)documents;
- (NSArray)urls;
@end

@implementation ATXDocumentPredictionResponse

- (ATXDocumentPredictionResponse)initWithDocuments:(id)documents
{
  documentsCopy = documents;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v10.receiver = self;
  v10.super_class = ATXDocumentPredictionResponse;
  v6 = [(ATXPredictionResponse *)&v10 initWithUUID:uUID];

  if (v6)
  {
    v7 = [documentsCopy copy];
    predictedDocumentIdentities = v6->_predictedDocumentIdentities;
    v6->_predictedDocumentIdentities = v7;
  }

  return v6;
}

- (NSArray)urls
{
  predictedDocumentIdentities = [(ATXDocumentPredictionResponse *)self predictedDocumentIdentities];
  v3 = [predictedDocumentIdentities _pas_mappedArrayWithTransform:&__block_literal_global_30];

  return v3;
}

@end