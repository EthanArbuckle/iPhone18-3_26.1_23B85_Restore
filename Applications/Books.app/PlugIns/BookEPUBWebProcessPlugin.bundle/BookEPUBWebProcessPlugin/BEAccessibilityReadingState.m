@interface BEAccessibilityReadingState
+ (id)currentReadingState;
+ (void)registerBookContentElement:(id)a3;
+ (void)registerBookContentWrapper:(id)a3;
- (BEAccessibilityReadingState)init;
- (CGRect)primaryVisibleContentRect;
- (CGRect)secondaryVisibleContentRect;
- (_NSRange)currentPage;
- (id)description;
- (void)documentChanged;
- (void)invalidateCaches;
- (void)setCurrentPageLocation:(int64_t)a3;
- (void)setCurrentPageNumber:(int64_t)a3;
- (void)setIsPaginated:(BOOL)a3;
- (void)setScreenHeight:(int64_t)a3;
- (void)setScreenWidth:(int64_t)a3;
@end

@implementation BEAccessibilityReadingState

+ (id)currentReadingState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FAA4;
  block[3] = &unk_208C0;
  block[4] = a1;
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
  v7 = [(BEAccessibilityReadingState *)self visibleAnnotations];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
  v9 = [NSNumber numberWithBool:[(BEAccessibilityReadingState *)self isVisiblePageBookmarked]];
  v10 = [NSNumber numberWithUnsignedInteger:[(BEAccessibilityReadingState *)self bookLayout]];
  v11 = [NSNumber numberWithBool:[(BEAccessibilityReadingState *)self isFixedLayoutBook]];
  v12 = [NSString stringWithFormat:@"<%@ %p currentPageLocation=%@ currentPageLength=%@ totalPages=%@ annotations=%@ bookmarked=%@ bookLayout=%@ fixedLayout=%@>", v3, self, v4, v5, v6, v8, v9, v10, v11];

  return v12;
}

- (_NSRange)currentPage
{
  v3 = [(BEAccessibilityReadingState *)self currentPageLocation];
  v4 = [(BEAccessibilityReadingState *)self currentPageLength];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (void)setCurrentPageLocation:(int64_t)a3
{
  if (self->_currentPageLocation != a3)
  {
    self->_currentPageLocation = a3;
  }
}

- (void)setCurrentPageNumber:(int64_t)a3
{
  if (self->_currentPageNumber != a3)
  {
    self->_currentPageNumber = a3;
  }
}

- (void)setScreenHeight:(int64_t)a3
{
  if (self->_screenHeight != a3)
  {
    self->_screenHeight = a3;
  }
}

- (void)setScreenWidth:(int64_t)a3
{
  if (self->_screenWidth != a3)
  {
    self->_screenWidth = a3;
  }
}

- (void)setIsPaginated:(BOOL)a3
{
  if (self->_isPaginated != a3)
  {
    self->_isPaginated = a3;
    [(BEAccessibilityReadingState *)self documentChanged];
  }
}

- (void)documentChanged
{
  v2 = [(BEAccessibilityReadingState *)self knownBookContentElements];
  v3 = [v2 allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
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
  v2 = [(BEAccessibilityReadingState *)self knownBookContentElements];
  v3 = [v2 allObjects];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
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

+ (void)registerBookContentElement:(id)a3
{
  v8 = a3;
  v4 = [a1 currentReadingState];
  v5 = [v4 knownBookContentElements];

  v6 = [v5 allObjects];
  v7 = [v6 containsObject:v8];

  if ((v7 & 1) == 0)
  {
    [v5 addPointer:v8];
  }
}

+ (void)registerBookContentWrapper:(id)a3
{
  v8 = a3;
  v4 = [a1 currentReadingState];
  v5 = [v4 knownBookContentElements];

  v6 = [v5 allObjects];
  v7 = [v6 containsObject:v8];

  if ((v7 & 1) == 0)
  {
    [v5 addPointer:v8];
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