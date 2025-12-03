@interface PKProofreadingItem
+ (id)proofreadingItemWithQueryItem:(id)item sessionManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (NSArray)chStrokeIdentifiers;
- (NSArray)replacementStrings;
- (id)_baselinePath;
- (id)drawing;
- (int)resultType;
- (unint64_t)hash;
@end

@implementation PKProofreadingItem

+ (id)proofreadingItemWithQueryItem:(id)item sessionManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  strokeIdentifiers = [itemCopy strokeIdentifiers];
  drawing = [(PKRecognitionSessionManager *)managerCopy drawing];
  valid = HasValidInkForDetectionItem(strokeIdentifiers, drawing);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKProofreadingItem alloc] initWithSessionManager:managerCopy];
    [(PKDetectionItem *)v10 setQueryItem:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)drawing
{
  sessionManager = [(PKDetectionItem *)self sessionManager];
  drawing = [(PKRecognitionSessionManager *)sessionManager drawing];

  return drawing;
}

- (id)_baselinePath
{
  queryItem = [(PKDetectionItem *)self queryItem];
  baselinePath = [queryItem baselinePath];

  return baselinePath;
}

- (NSArray)chStrokeIdentifiers
{
  queryItem = [(PKDetectionItem *)self queryItem];
  strokeIdentifiers = [queryItem strokeIdentifiers];
  allObjects = [strokeIdentifiers allObjects];

  return allObjects;
}

- (NSArray)replacementStrings
{
  queryItem = [(PKDetectionItem *)self queryItem];
  replacementStrings = [queryItem replacementStrings];

  return replacementStrings;
}

- (int)resultType
{
  queryItem = [(PKDetectionItem *)self queryItem];
  resultType = [queryItem resultType];

  return resultType;
}

- (unint64_t)hash
{
  queryItem = [(PKDetectionItem *)self queryItem];
  v3 = [queryItem hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      queryItem = [(PKDetectionItem *)self queryItem];
      queryItem2 = [(PKDetectionItem *)equalCopy queryItem];
      v7 = [queryItem isEqual:queryItem2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end