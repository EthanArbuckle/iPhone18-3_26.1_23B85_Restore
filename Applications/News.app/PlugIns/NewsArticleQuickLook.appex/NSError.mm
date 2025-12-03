@interface NSError
+ (id)naq_errorFailedUnexpectedArticleLoadedWithIdentifier:(id)identifier expectedIdentifier:(id)expectedIdentifier;
+ (id)naq_errorFailedValidationForIdentifier:(id)identifier;
@end

@implementation NSError

+ (id)naq_errorFailedValidationForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = &stru_1000041A8;
  }

  v10 = @"identifier";
  v11 = identifierCopy;
  v5 = identifierCopy;
  identifierCopy2 = identifier;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSError errorWithDomain:@"NAQNewsPreviewErrorDomain" code:1 userInfo:v7];

  return v8;
}

+ (id)naq_errorFailedUnexpectedArticleLoadedWithIdentifier:(id)identifier expectedIdentifier:(id)expectedIdentifier
{
  if (identifier)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = &stru_1000041A8;
  }

  v15[0] = @"identifier";
  v15[1] = @"expectedIdentifier";
  if (expectedIdentifier)
  {
    expectedIdentifierCopy = expectedIdentifier;
  }

  else
  {
    expectedIdentifierCopy = &stru_1000041A8;
  }

  v16[0] = identifierCopy;
  v16[1] = expectedIdentifierCopy;
  v8 = expectedIdentifierCopy;
  v9 = identifierCopy;
  expectedIdentifierCopy2 = expectedIdentifier;
  identifierCopy2 = identifier;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [NSError errorWithDomain:@"NAQNewsPreviewErrorDomain" code:2 userInfo:v12];

  return v13;
}

@end