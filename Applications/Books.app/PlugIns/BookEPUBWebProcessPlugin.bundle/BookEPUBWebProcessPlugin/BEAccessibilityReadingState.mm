@interface BEAccessibilityReadingState
+ (id)currentReadingState;
+ (void)registerBookContentElement:(id)element;
+ (void)registerBookContentWrapper:(id)wrapper;
- (BEAccessibilityReadingState)init;
- (CGRect)primaryVisibleContentRect;
- (CGRect)secondaryVisibleContentRect;
- (_NSRange)currentPage;
- (id)description;
- (void)documentChanged;
- (void)invalidateCaches;
- (void)setCurrentPageLocation:(int64_t)location;
- (void)setCurrentPageNumber:(int64_t)number;
- (void)setIsPaginated:(BOOL)paginated;
- (void)setScreenHeight:(int64_t)height;
- (void)setScreenWidth:(int64_t)width;
@end

@implementation BEAccessibilityReadingState

+ (id)currentReadingState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FAA4;
  block[3] = &unk_208C0;
  block[4] = self;
  if (qword_26DA0 != -1)
  {
    dispatch_once(&qword_26DA0, block);
  }

  v2 = qword_26DA8;

  return v2;
}

- (BEAccessibilityReadingState)init
{
  v6.receiver = self;
  v6.super_class = BEAccessibilityReadingState;
  v2 = [(BEAccessibilityReadingState *)&v6 init];
  if (v2)
  {
    v3 = [[NSPointerArray alloc] initWithOptions:5];
    knownBookContentElements = v2->_knownBookContentElements;
    v2->_knownBookContentElements = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [NSNumber numberWithInteger:[(BEAccessibilityReadingState *)self currentPageLocation]];
  v5 = [NSNumber numberWithInteger:[(BEAccessibilityReadingState *)self currentPageLength]];
  v6 = [NSNumber numberWithUnsignedInteger:[(BEAccessibilityReadingState *)self pageCount]];
  visibleAnnotations = [(BEAccessibilityReadingState *)self visibleAnnotations];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [visibleAnnotations count]);
  v9 = [NSNumber numberWithBool:[(BEAccessibilityReadingState *)self isVisiblePageBookmarked]];
  v10 = [NSNumber numberWithUnsignedInteger:[(BEAccessibilityReadingState *)self bookLayout]];
  v11 = [NSNumber numberWithBool:[(BEAccessibilityReadingState *)self isFixedLayoutBook]];
  v12 = [NSString stringWithFormat:@"<%@ %p currentPageLocation=%@ currentPageLength=%@ totalPages=%@ annotations=%@ bookmarked=%@ bookLayout=%@ fixedLayout=%@>", v3, self, v4, v5, v6, v8, v9, v10, v11];

  return v12;
}

- (_NSRange)currentPage
{
  currentPageLocation = [(BEAccessibilityReadingState *)self currentPageLocation];
  currentPageLength = [(BEAccessibilityReadingState *)self currentPageLength];
  v5 = currentPageLocation;
  result.length = currentPageLength;
  result.location = v5;
  return result;
}

- (void)setCurrentPageLocation:(int64_t)location
{
  if (self->_currentPageLocation != location)
  {
    self->_currentPageLocation = location;
  }
}

- (void)setCurrentPageNumber:(int64_t)number
{
  if (self->_currentPageNumber != number)
  {
    self->_currentPageNumber = number;
  }
}

- (void)setScreenHeight:(int64_t)height
{
  if (self->_screenHeight != height)
  {
    self->_screenHeight = height;
  }
}

- (void)setScreenWidth:(int64_t)width
{
  if (self->_screenWidth != width)
  {
    self->_screenWidth = width;
  }
}

- (void)setIsPaginated:(BOOL)paginated
{
  if (self->_isPaginated != paginated)
  {
    self->_isPaginated = paginated;
    [(BEAccessibilityReadingState *)self documentChanged];
  }
}

- (void)documentChanged
{
  knownBookContentElements = [(BEAccessibilityReadingState *)self knownBookContentElements];
  allObjects = [knownBookContentElements allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 baxInvalidateLineInfos];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v9 baxInvalidateCaches];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)invalidateCaches
{
  knownBookContentElements = [(BEAccessibilityReadingState *)self knownBookContentElements];
  allObjects = [knownBookContentElements allObjects];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allObjects;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) baxInvalidateCaches];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)registerBookContentElement:(id)element
{
  elementCopy = element;
  currentReadingState = [self currentReadingState];
  knownBookContentElements = [currentReadingState knownBookContentElements];

  allObjects = [knownBookContentElements allObjects];
  v7 = [allObjects containsObject:elementCopy];

  if ((v7 & 1) == 0)
  {
    [knownBookContentElements addPointer:elementCopy];
  }
}

+ (void)registerBookContentWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  currentReadingState = [self currentReadingState];
  knownBookContentElements = [currentReadingState knownBookContentElements];

  allObjects = [knownBookContentElements allObjects];
  v7 = [allObjects containsObject:wrapperCopy];

  if ((v7 & 1) == 0)
  {
    [knownBookContentElements addPointer:wrapperCopy];
  }
}

- (CGRect)primaryVisibleContentRect
{
  x = self->_primaryVisibleContentRect.origin.x;
  y = self->_primaryVisibleContentRect.origin.y;
  width = self->_primaryVisibleContentRect.size.width;
  height = self->_primaryVisibleContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondaryVisibleContentRect
{
  x = self->_secondaryVisibleContentRect.origin.x;
  y = self->_secondaryVisibleContentRect.origin.y;
  width = self->_secondaryVisibleContentRect.size.width;
  height = self->_secondaryVisibleContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end