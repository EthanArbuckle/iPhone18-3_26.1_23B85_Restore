@interface PKProofreadingItem
+ (id)proofreadingItemWithQueryItem:(id)a3 sessionManager:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)chStrokeIdentifiers;
- (NSArray)replacementStrings;
- (id)_baselinePath;
- (id)drawing;
- (int)resultType;
- (unint64_t)hash;
@end

@implementation PKProofreadingItem

+ (id)proofreadingItemWithQueryItem:(id)a3 sessionManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 strokeIdentifiers];
  v8 = [(PKRecognitionSessionManager *)v6 drawing];
  valid = HasValidInkForDetectionItem(v7, v8);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKProofreadingItem alloc] initWithSessionManager:v6];
    [(PKDetectionItem *)v10 setQueryItem:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)drawing
{
  v2 = [(PKDetectionItem *)self sessionManager];
  v3 = [(PKRecognitionSessionManager *)v2 drawing];

  return v3;
}

- (id)_baselinePath
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 baselinePath];

  return v3;
}

- (NSArray)chStrokeIdentifiers
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 strokeIdentifiers];
  v4 = [v3 allObjects];

  return v4;
}

- (NSArray)replacementStrings
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 replacementStrings];

  return v3;
}

- (int)resultType
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 resultType];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKDetectionItem *)self queryItem];
      v6 = [(PKDetectionItem *)v4 queryItem];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end