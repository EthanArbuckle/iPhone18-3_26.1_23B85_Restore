@interface ATXPredictedDocumentIdentity
+ (id)stringForDocumentSuggestionType:(unint64_t)type;
+ (unint64_t)documentSuggestionTypeFromString:(id)string;
- (ATXPredictedDocumentIdentity)initWithCoder:(id)coder;
- (ATXPredictedDocumentIdentity)initWithDocumentURL:(id)l predictionScore:(id)score bookmarkData:(id)data type:(unint64_t)type;
- (NSURL)resolvedURL;
- (void)encodeWithCoder:(id)coder;
- (void)resolvedURL;
@end

@implementation ATXPredictedDocumentIdentity

- (ATXPredictedDocumentIdentity)initWithDocumentURL:(id)l predictionScore:(id)score bookmarkData:(id)data type:(unint64_t)type
{
  lCopy = l;
  scoreCopy = score;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = ATXPredictedDocumentIdentity;
  v13 = [(ATXPredictedDocumentIdentity *)&v17 init];
  if (v13)
  {
    v14 = [lCopy copy];
    documentURL = v13->_documentURL;
    v13->_documentURL = v14;

    objc_storeStrong(&v13->_predictionScore, score);
    v13->_type = type;
    objc_storeStrong(&v13->_bookmarkData, data);
  }

  return v13;
}

+ (id)stringForDocumentSuggestionType:(unint64_t)type
{
  v3 = @"Unknown";
  if (type == 1)
  {
    v3 = @"Behavioral";
  }

  if (type == 2)
  {
    return @"Semantic";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)documentSuggestionTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Behavioral"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Semantic"])
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
  bookmarkData = [(ATXPredictedDocumentIdentity *)self bookmarkData];

  if (bookmarkData)
  {
    v4 = [ATXFileIdentity alloc];
    documentURL = [(ATXPredictedDocumentIdentity *)self documentURL];
    bookmarkData2 = [(ATXPredictedDocumentIdentity *)self bookmarkData];
    defaultManager = [(ATXFileIdentity *)v4 initWithItemURL:documentURL bookmarkData:bookmarkData2];

    v14 = 0;
    documentURL3 = [(ATXFileIdentity *)defaultManager resolveItemURLWithError:&v14];
    documentURL2 = v14;
    if (documentURL3)
    {
      v10 = documentURL3;
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
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    documentURL2 = [(ATXPredictedDocumentIdentity *)self documentURL];
    path = [documentURL2 path];
    if ([(ATXFileIdentity *)defaultManager fileExistsAtPath:path])
    {
      documentURL3 = [(ATXPredictedDocumentIdentity *)self documentURL];
    }

    else
    {
      documentURL3 = 0;
    }
  }

  return documentURL3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  documentURL = [(ATXPredictedDocumentIdentity *)self documentURL];
  [coderCopy encodeObject:documentURL forKey:@"documentURL"];

  predictionScore = [(ATXPredictedDocumentIdentity *)self predictionScore];
  [coderCopy encodeObject:predictionScore forKey:@"predictionScore"];

  [coderCopy encodeInteger:-[ATXPredictedDocumentIdentity type](self forKey:{"type"), @"predictionType"}];
  bookmarkData = [(ATXPredictedDocumentIdentity *)self bookmarkData];
  [coderCopy encodeObject:bookmarkData forKey:@"bookmarkData"];
}

- (ATXPredictedDocumentIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionScore"];
  v7 = [coderCopy decodeIntegerForKey:@"predictionType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];

  v9 = [(ATXPredictedDocumentIdentity *)self initWithDocumentURL:v5 predictionScore:v6 bookmarkData:v8 type:v7];
  return v9;
}

- (void)resolvedURL
{
  v11 = *MEMORY[0x1E69E9840];
  documentURL = [self documentURL];
  path = [documentURL path];
  v7 = 138412546;
  v8 = path;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "Failed to resolve document at %@ : %@", &v7, 0x16u);
}

@end