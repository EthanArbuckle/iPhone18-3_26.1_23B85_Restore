@interface PKMentionItem
+ (id)mentionItemWithQueryItem:(id)a3 sessionManager:(id)a4;
- (BOOL)active;
- (BOOL)isEqual:(id)a3;
- (NSString)mentionResult;
- (id)_actionNameForActivation:(BOOL)a3;
- (id)_baselinePath;
- (id)description;
- (id)setActive:(BOOL)a3;
- (unint64_t)hash;
- (void)clearActiveInDrawing:(id)a3;
@end

@implementation PKMentionItem

+ (id)mentionItemWithQueryItem:(id)a3 sessionManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 strokeIdentifiers];
  v8 = [(PKRecognitionSessionManager *)v6 drawing];
  valid = HasValidInkForDetectionItem(v7, v8);

  if (valid)
  {
    v10 = [(PKDetectionItem *)[PKMentionItem alloc] initWithSessionManager:v6];
    [(PKDetectionItem *)v10 setQueryItem:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_baselinePath
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 baselinePath];

  return v3;
}

- (NSString)mentionResult
{
  v2 = [(PKDetectionItem *)self queryItem];
  v3 = [v2 mentionResult];

  return v3;
}

- (id)setActive:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [(PKDetectionItem *)self setUUID:v4];
  }

  else
  {
    v5 = [(PKDetectionItem *)self setUUID:0];
  }

  return v5;
}

- (BOOL)active
{
  v2 = [(PKDetectionItem *)self UUID];
  v3 = v2 != 0;

  return v3;
}

- (void)clearActiveInDrawing:(id)a3
{
  v8 = a3;
  v4 = [(PKDetectionItem *)self queryItem];
  v5 = [v4 strokeIdentifiers];
  v6 = [v5 allObjects];
  v7 = [v8 strokesForCHStrokeIdentifiers:v6];
  [v8 setStrokes:v7 groupID:0];
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

- (id)_actionNameForActivation:(BOOL)a3
{
  v3 = a3;
  v4 = _PencilKitBundle();
  v5 = v4;
  if (v3)
  {
    [v4 localizedStringForKey:@"Activate Mention" value:@"Activate Mention" table:@"Localizable"];
  }

  else
  {
    [v4 localizedStringForKey:@"Deactivate Mention" value:@"Deactivate Mention" table:@"Localizable"];
  }
  v6 = ;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKMentionItem *)self mentionResult];
  v6 = [(PKMentionItem *)self mentionUUID];
  v7 = [(PKDetectionItem *)self queryItem];
  v8 = [v7 strokeIdentifiers];
  v9 = [v3 stringWithFormat:@"%@:%p, %@, %@, strokes:%lu", v4, self, v5, v6, objc_msgSend(v8, "count")];

  return v9;
}

@end