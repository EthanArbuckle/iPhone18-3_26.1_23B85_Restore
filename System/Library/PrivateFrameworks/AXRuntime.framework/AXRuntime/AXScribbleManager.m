@interface AXScribbleManager
- (AXScribbleManager)init;
- (BOOL)isUniqueElement:(id)a3;
- (id)searchPointToNSString:(int64_t)a3;
- (int64_t)nextSearchPoint:(BOOL)a3;
- (int64_t)nsStringToSearchPoint:(id)a3;
- (void)hideSelectedElement;
@end

@implementation AXScribbleManager

- (AXScribbleManager)init
{
  v6.receiver = self;
  v6.super_class = AXScribbleManager;
  v2 = [(AXScribbleManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    lastFetchedElement = v2->_lastFetchedElement;
    v2->_lastSearchPoint = 0;
    v2->_lastFetchedElement = 0;
  }

  return v3;
}

- (void)hideSelectedElement
{
  lastFetchedElement = self->_lastFetchedElement;
  self->_lastFetchedElement = 0;

  self->_lastSearchPoint = 0;
}

- (BOOL)isUniqueElement:(id)a3
{
  v4 = a3;
  lastFetchedElement = self->_lastFetchedElement;
  if (!lastFetchedElement)
  {
    goto LABEL_6;
  }

  v6 = [(AXScribbleElement *)lastFetchedElement renderedText];
  v7 = [v4 renderedText];
  if (![v6 isEqualToString:v7])
  {

    goto LABEL_6;
  }

  [(AXScribbleElement *)self->_lastFetchedElement geometry];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v4 geometry];
  v24.origin.x = v16;
  v24.origin.y = v17;
  v24.size.width = v18;
  v24.size.height = v19;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v20 = CGRectEqualToRect(v23, v24);

  if (!v20)
  {
LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  v21 = 0;
LABEL_7:

  return v21;
}

- (id)searchPointToNSString:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"AXScribbleSearchPointCenter";
  }

  else
  {
    return off_1E80D4008[a3 - 1];
  }
}

- (int64_t)nsStringToSearchPoint:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AXScribbleSearchPointTopLeft"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AXScribbleSearchPointTopRight"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AXScribbleSearchPointBottomLeft"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AXScribbleSerachPointBottomRight"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)nextSearchPoint:(BOOL)a3
{
  lastSearchPoint = self->_lastSearchPoint;
  v4 = lastSearchPoint - 1;
  if (lastSearchPoint <= 0)
  {
    v4 = 4;
  }

  if (lastSearchPoint < 4)
  {
    v5 = lastSearchPoint + 1;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v5 = v4;
  }

  self->_lastSearchPoint = v5;
  return v5;
}

@end