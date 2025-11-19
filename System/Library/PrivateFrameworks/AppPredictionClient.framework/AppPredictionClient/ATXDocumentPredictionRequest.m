@interface ATXDocumentPredictionRequest
- (ATXDocumentPredictionRequest)initWithLimit:(unint64_t)a3 documentScope:(id)a4;
- (void)setLimit:(unint64_t)a3 forCategory:(unint64_t)a4;
@end

@implementation ATXDocumentPredictionRequest

- (ATXDocumentPredictionRequest)initWithLimit:(unint64_t)a3 documentScope:(id)a4
{
  v7.receiver = self;
  v7.super_class = ATXDocumentPredictionRequest;
  v4 = [(ATXPredictionRequest *)&v7 initWithLimit:a3 scope:a4];
  v5 = objc_opt_new();
  [(ATXDocumentPredictionRequest *)v4 setCategoryWithLimit:v5];

  return v4;
}

- (void)setLimit:(unint64_t)a3 forCategory:(unint64_t)a4
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(ATXDocumentPredictionRequest *)self categoryWithLimit];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

@end