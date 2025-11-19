@interface ATXDocumentPredictionResponse
- (ATXDocumentPredictionResponse)initWithDocuments:(id)a3;
- (NSArray)urls;
@end

@implementation ATXDocumentPredictionResponse

- (ATXDocumentPredictionResponse)initWithDocuments:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v10.receiver = self;
  v10.super_class = ATXDocumentPredictionResponse;
  v6 = [(ATXPredictionResponse *)&v10 initWithUUID:v5];

  if (v6)
  {
    v7 = [v4 copy];
    predictedDocumentIdentities = v6->_predictedDocumentIdentities;
    v6->_predictedDocumentIdentities = v7;
  }

  return v6;
}

- (NSArray)urls
{
  v2 = [(ATXDocumentPredictionResponse *)self predictedDocumentIdentities];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_30];

  return v3;
}

@end