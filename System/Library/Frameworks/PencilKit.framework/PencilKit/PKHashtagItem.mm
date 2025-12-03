@interface PKHashtagItem
+ (id)hashtagItemWithQueryItem:(id)item sessionManager:(id)manager;
- (BOOL)active;
- (BOOL)isEqual:(id)equal;
- (NSString)hashtagResult;
- (id)_actionNameForActivation:(BOOL)activation;
- (id)_baselinePath;
- (id)description;
- (id)setActive:(BOOL)active;
- (unint64_t)hash;
- (void)clearActiveInDrawing:(id)drawing;
@end

@implementation PKHashtagItem

+ (id)hashtagItemWithQueryItem:(id)item sessionManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  strokeIdentifiers = [itemCopy strokeIdentifiers];
  drawing = [(PKRecognitionSessionManager *)managerCopy drawing];
  valid = HasValidInkForDetectionItem(strokeIdentifiers, drawing);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKHashtagItem alloc] initWithSessionManager:managerCopy];
    [(PKDetectionItem *)v10 setQueryItem:itemCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_baselinePath
{
  queryItem = [(PKDetectionItem *)self queryItem];
  baselinePath = [queryItem baselinePath];

  return baselinePath;
}

- (NSString)hashtagResult
{
  queryItem = [(PKDetectionItem *)self queryItem];
  hashtagResult = [queryItem hashtagResult];

  return hashtagResult;
}

- (id)setActive:(BOOL)active
{
  if (active)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = [(PKDetectionItem *)self setUUID:uUID];
  }

  else
  {
    v5 = [(PKDetectionItem *)self setUUID:0];
  }

  return v5;
}

- (BOOL)active
{
  uUID = [(PKDetectionItem *)self UUID];
  v3 = uUID != 0;

  return v3;
}

- (void)clearActiveInDrawing:(id)drawing
{
  drawingCopy = drawing;
  queryItem = [(PKDetectionItem *)self queryItem];
  strokeIdentifiers = [queryItem strokeIdentifiers];
  allObjects = [strokeIdentifiers allObjects];
  v7 = [drawingCopy strokesForCHStrokeIdentifiers:allObjects];
  [drawingCopy setStrokes:v7 groupID:0];
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

- (id)_actionNameForActivation:(BOOL)activation
{
  activationCopy = activation;
  v4 = _PencilKitBundle();
  v5 = v4;
  if (activationCopy)
  {
    [v4 localizedStringForKey:@"Activate Hashtag" value:@"Activate Hashtag" table:@"Localizable"];
  }

  else
  {
    [v4 localizedStringForKey:@"Deactivate Hashtag" value:@"Deactivate Hashtag" table:@"Localizable"];
  }
  v6 = ;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  hashtagResult = [(PKHashtagItem *)self hashtagResult];
  hashtagUUID = [(PKHashtagItem *)self hashtagUUID];
  queryItem = [(PKDetectionItem *)self queryItem];
  strokeIdentifiers = [queryItem strokeIdentifiers];
  v9 = [v3 stringWithFormat:@"%@:%p, %@, %@, strokes:%lu", v4, self, hashtagResult, hashtagUUID, objc_msgSend(strokeIdentifiers, "count")];

  return v9;
}

@end