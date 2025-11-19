@interface ATXPredictedDocumentIdentity
+ (id)stringForDocumentSuggestionType:(unint64_t)a3;
+ (unint64_t)documentSuggestionTypeFromString:(id)a3;
- (ATXPredictedDocumentIdentity)initWithCoder:(id)a3;
- (ATXPredictedDocumentIdentity)initWithDocumentURL:(id)a3 predictionScore:(id)a4 bookmarkData:(id)a5 type:(unint64_t)a6;
- (NSURL)resolvedURL;
- (void)encodeWithCoder:(id)a3;
- (void)resolvedURL;
@end

@implementation ATXPredictedDocumentIdentity

- (ATXPredictedDocumentIdentity)initWithDocumentURL:(id)a3 predictionScore:(id)a4 bookmarkData:(id)a5 type:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = ATXPredictedDocumentIdentity;
  v13 = [(ATXPredictedDocumentIdentity *)&v17 init];
  if (v13)
  {
    v14 = [v10 copy];
    documentURL = v13->_documentURL;
    v13->_documentURL = v14;

    objc_storeStrong(&v13->_predictionScore, a4);
    v13->_type = a6;
    objc_storeStrong(&v13->_bookmarkData, a5);
  }

  return v13;
}

+ (id)stringForDocumentSuggestionType:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Behavioral";
  }

  if (a3 == 2)
  {
    return @"Semantic";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)documentSuggestionTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Behavioral"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Semantic"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)resolvedURL
{
  v3 = [(ATXPredictedDocumentIdentity *)self bookmarkData];

  if (v3)
  {
    v4 = [ATXFileIdentity alloc];
    v5 = [(ATXPredictedDocumentIdentity *)self documentURL];
    v6 = [(ATXPredictedDocumentIdentity *)self bookmarkData];
    v7 = [(ATXFileIdentity *)v4 initWithItemURL:v5 bookmarkData:v6];

    v14 = 0;
    v8 = [(ATXFileIdentity *)v7 resolveItemURLWithError:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = __atxlog_handle_document_predictor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ATXPredictedDocumentIdentity *)self resolvedURL];
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(ATXPredictedDocumentIdentity *)self documentURL];
    v11 = [v9 path];
    if ([(ATXFileIdentity *)v7 fileExistsAtPath:v11])
    {
      v8 = [(ATXPredictedDocumentIdentity *)self documentURL];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPredictedDocumentIdentity *)self documentURL];
  [v4 encodeObject:v5 forKey:@"documentURL"];

  v6 = [(ATXPredictedDocumentIdentity *)self predictionScore];
  [v4 encodeObject:v6 forKey:@"predictionScore"];

  [v4 encodeInteger:-[ATXPredictedDocumentIdentity type](self forKey:{"type"), @"predictionType"}];
  v7 = [(ATXPredictedDocumentIdentity *)self bookmarkData];
  [v4 encodeObject:v7 forKey:@"bookmarkData"];
}

- (ATXPredictedDocumentIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionScore"];
  v7 = [v4 decodeIntegerForKey:@"predictionType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];

  v9 = [(ATXPredictedDocumentIdentity *)self initWithDocumentURL:v5 predictionScore:v6 bookmarkData:v8 type:v7];
  return v9;
}

- (void)resolvedURL
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 documentURL];
  v6 = [v5 path];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Failed to resolve document at %@ : %@", &v7, 0x16u);
}

@end