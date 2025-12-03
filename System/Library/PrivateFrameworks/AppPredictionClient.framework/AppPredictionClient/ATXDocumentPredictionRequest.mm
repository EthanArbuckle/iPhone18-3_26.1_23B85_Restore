@interface ATXDocumentPredictionRequest
- (ATXDocumentPredictionRequest)initWithLimit:(unint64_t)limit documentScope:(id)scope;
- (void)setLimit:(unint64_t)limit forCategory:(unint64_t)category;
@end

@implementation ATXDocumentPredictionRequest

- (ATXDocumentPredictionRequest)initWithLimit:(unint64_t)limit documentScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = ATXDocumentPredictionRequest;
  v4 = [(ATXPredictionRequest *)&v7 initWithLimit:limit scope:scope];
  v5 = objc_opt_new();
  [(ATXDocumentPredictionRequest *)v4 setCategoryWithLimit:v5];

  return v4;
}

- (void)setLimit:(unint64_t)limit forCategory:(unint64_t)category
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  categoryWithLimit = [(ATXDocumentPredictionRequest *)self categoryWithLimit];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  [categoryWithLimit setObject:v8 forKeyedSubscript:v7];
}

@end