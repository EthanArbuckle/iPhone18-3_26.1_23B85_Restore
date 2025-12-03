@interface AXScribbleManager
- (AXScribbleManager)init;
- (BOOL)isUniqueElement:(id)element;
- (id)searchPointToNSString:(int64_t)string;
- (int64_t)nextSearchPoint:(BOOL)point;
- (int64_t)nsStringToSearchPoint:(id)point;
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

- (BOOL)isUniqueElement:(id)element
{
  elementCopy = element;
  lastFetchedElement = self->_lastFetchedElement;
  if (!lastFetchedElement)
  {
    goto LABEL_6;
  }

  renderedText = [(AXScribbleElement *)lastFetchedElement renderedText];
  renderedText2 = [elementCopy renderedText];
  if (![renderedText isEqualToString:renderedText2])
  {

    goto LABEL_6;
  }

  [(AXScribbleElement *)self->_lastFetchedElement geometry];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [elementCopy geometry];
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

- (id)searchPointToNSString:(int64_t)string
{
  if ((string - 1) > 3)
  {
    return @"AXScribbleSearchPointCenter";
  }

  else
  {
    return off_1E80D4008[string - 1];
  }
}

- (int64_t)nsStringToSearchPoint:(id)point
{
  pointCopy = point;
  if ([pointCopy isEqualToString:@"AXScribbleSearchPointTopLeft"])
  {
    v4 = 1;
  }

  else if ([pointCopy isEqualToString:@"AXScribbleSearchPointTopRight"])
  {
    v4 = 2;
  }

  else if ([pointCopy isEqualToString:@"AXScribbleSearchPointBottomLeft"])
  {
    v4 = 3;
  }

  else if ([pointCopy isEqualToString:@"AXScribbleSerachPointBottomRight"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)nextSearchPoint:(BOOL)point
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

  if (point)
  {
    v5 = v4;
  }

  self->_lastSearchPoint = v5;
  return v5;
}

@end