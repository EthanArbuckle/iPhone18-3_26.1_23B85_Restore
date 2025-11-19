@interface THDocumentNavigator
- (BOOL)canNavigateByBookDirection:(int)a3 bookGranularity:(int)a4;
- (BOOL)canNavigateByHistoryDirection:(int)a3;
- (BOOL)followAnchor:(id)a3 pulse:(BOOL)a4;
- (BOOL)followLink:(id)a3 animated:(BOOL)a4;
- (BOOL)isPageLocationValid:(id)a3;
- (BOOL)jumpToPageLocation:(id)a3 touchHistory:(BOOL)a4 minor:(BOOL)a5;
- (BOOL)p_followDocumentAnchor:(id)a3 pulse:(BOOL)a4;
- (BOOL)restorePlaceholderWithOverrideLocation:(id)a3;
- (CGRect)rectForFlowAnchor;
- (THDocumentNavigator)initWithDocumentRoot:(id)a3 interactiveCanvasController:(id)a4;
- (_NSRange)bodyRangeForStorageAnchorInFlow:(id)a3 sectionController:(id)a4;
- (_NSRange)currentAbsolutePageIndexRange;
- (_NSRange)p_bodyRangeForPossiblyAttachedInfo:(id)a3 body:(id)a4;
- (_NSRange)p_bodyRangeForStorageAnchorInFlow:(id)a3;
- (_NSRange)p_flowPivotRangeForBodyAnchor:(id)a3;
- (id)currentBookspotLocation;
- (id)currentContentNode;
- (id)currentPageInfo;
- (id)currentPageInfoForBookmarksUsingViewCenter:(BOOL)a3;
- (id)currentPageInfoForEndOfVisibleCanvas;
- (id)currentPageLocation;
- (id)currentPageLocationForCenterOfVisibleRectInInteractiveCanvasController;
- (id)linkForURL:(id)a3 inContentNode:(id)a4;
- (id)linkForURL:(id)a3 inStorage:(id)a4;
- (id)p_anchorForLink:(id)a3;
- (id)p_bodyStorageAnchorForAbsolutePageIndex:(unint64_t)a3;
- (id)p_bodyStorageAnchorForFlow;
- (id)p_bodyStorageAnchorForFlowInRect:(CGRect)a3;
- (id)pageLocationForAbsolutePageIndex:(unint64_t)a3;
- (id)pageNumberStringForLink:(id)a3;
- (id)readingProgressAllowSample:(BOOL)a3;
- (id)storageAnchorForAbsolutePageIndex:(unint64_t)a3;
- (id)storageAnchorForBookmarksUsingViewCenter:(BOOL)a3;
- (id)storageAnchorForCurrentPage;
- (unint64_t)absolutePageIndexForBeginningOfSection;
- (unint64_t)absolutePageIndexForEndOfPreviousSection;
- (unint64_t)absolutePageIndexForEndOfSection;
- (unint64_t)absolutePageIndexForLink:(id)a3;
- (unint64_t)absolutePageIndexForNextSection;
- (unint64_t)absolutePageIndexForPreviousSection;
- (unint64_t)currentAbsolutePageIndex;
- (unint64_t)currentAbsolutePageIndexForBeginningOfVisibleCanvas;
- (unint64_t)currentAbsolutePageIndexForBookmarksUsingViewCenter:(BOOL)a3;
- (unint64_t)currentAbsolutePageIndexForEndOfVisibleCanvas;
- (unint64_t)currentChapterIndex;
- (unint64_t)currentNavigationUnitRelativePageIndex;
- (unint64_t)lastAbsolutePageIndex;
- (unint64_t)nextVisibleAbsolutePageNumber;
- (unint64_t)previousVisibleAbsolutePageNumber;
- (unint64_t)relativePageIndexForLink:(id)a3;
- (void)dealloc;
- (void)navigateByBookDirection:(int)a3 bookGranularity:(int)a4;
- (void)navigateByHistoryDirection:(int)a3;
- (void)p_jumpToAnnotationAnchor:(id)a3 pulse:(BOOL)a4;
- (void)p_jumpToContentNodeAnchor:(id)a3;
- (void)p_jumpToPageAnchor:(id)a3;
- (void)p_jumpToStorageAnchor:(id)a3 pulse:(BOOL)a4;
- (void)p_jumpWithBlock:(id)a3 andPulseStorageAnchor:(id)a4;
- (void)p_jumpWithBlock:(id)a3 annotation:(id)a4 noteSelectionRange:(_NSRange)a5;
- (void)p_pulseStorageAnchor:(id)a3;
- (void)p_resolveLink:(id)a3 andCallBlock:(id)a4;
- (void)p_scrollToAbsolutePageIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)savePlaceholder;
- (void)scrollToNextSection;
- (void)scrollToPreviousSection;
- (void)setDocumentRoot:(id)a3;
- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)a3;
- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation THDocumentNavigator

- (THDocumentNavigator)initWithDocumentRoot:(id)a3 interactiveCanvasController:(id)a4
{
  v9.receiver = self;
  v9.super_class = THDocumentNavigator;
  v6 = [(THDocumentNavigator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THDocumentNavigator *)v6 setDocumentRoot:a3];
    v7->_interactiveCanvasController = a4;
    [(THBookspotHistoryStack *)[(THDocumentRoot *)v7->_documentRoot bookspotHistoryStack] setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  if ([(THBookspotHistoryStack *)[(THDocumentRoot *)self->_documentRoot bookspotHistoryStack] delegate]== self)
  {
    [(THBookspotHistoryStack *)[(THDocumentRoot *)self->_documentRoot bookspotHistoryStack] setDelegate:0];
  }

  v3.receiver = self;
  v3.super_class = THDocumentNavigator;
  [(THDocumentNavigator *)&v3 dealloc];
}

- (void)setDocumentRoot:(id)a3
{
  documentRoot = self->_documentRoot;
  if (documentRoot != a3)
  {

    self->_documentRoot = a3;
    self->_documentLinkResolver = [[THDocumentLinkResolver alloc] initWithDocumentRoot:a3];
  }
}

- (void)p_resolveLink:(id)a3 andCallBlock:(id)a4
{
  v5 = a3;
  if (([a3 isPageLink] & 1) != 0 || (objc_msgSend(v5, "isChapterGuidLink") & 1) != 0 || objc_msgSend(v5, "isChapterLink"))
  {
    v7 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] absolutePageNumberFromCustomLink:v5 presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v8 = v7;
    v9 = [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] rootNode] contentNodeForRelativePageIndex:v7 forPresentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
    v10 = *(a4 + 2);
    v11 = a4;
    v12 = v8;
    goto LABEL_7;
  }

  v13 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] absoluteLink:v5 withContentNode:[(THDocumentNavigator *)self currentContentNode]];
  if (v13)
  {
    v5 = v13;
    v14 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] contentNodeFromLink:v13];
    if (v14)
    {
      v15 = v14;
      if ([v14 nodeBodyExists])
      {
        [THContentLinkResolver navigableAnchorFromLink:v5 withContentNode:v15 presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
        objc_opt_class();
        v16 = TSUDynamicCast();
        v17 = v16 ? [(THDocumentRoot *)self->_documentRoot absolutePageIndexForStorageAnchor:v16]: [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] absolutePageIndexForContentNodeRelativePageIndex:0 inContentNode:v15 forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]]];
        v12 = v17;
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = *(a4 + 2);
          v11 = a4;
          v9 = v15;
LABEL_7:

          v10(v11, v12, v9, v5);
        }
      }
    }
  }
}

- (unint64_t)absolutePageIndexForLink:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B9458;
  v5[3] = &unk_45E9A0;
  v5[4] = &v6;
  [(THDocumentNavigator *)self p_resolveLink:a3 andCallBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)pageNumberStringForLink:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1B9548;
  v10 = sub_1B9558;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1B9564;
  v5[3] = &unk_45E9C8;
  v5[4] = self;
  v5[5] = &v6;
  [(THDocumentNavigator *)self p_resolveLink:a3 andCallBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)followLink:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([a3 isRelative])
  {
    v7 = [(THDocumentNavigator *)self p_anchorForLink:a3];
  }

  else
  {
    v7 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] anchorFromAbsoluteLink:a3 presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
  }

  v8 = v7;
  if (v7)
  {
    v9 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:v4];
    v10 = [(THDocumentNavigator *)self followAnchor:v8 pulse:1];
    [UIView setAnimationsEnabled:v9];
    return v10;
  }

  else
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self failedToFollowLink:a3];
    }

    return 0;
  }
}

- (BOOL)followAnchor:(id)a3 pulse:(BOOL)a4
{
  v4 = a4;
  [(THDocumentNavigator *)self setFollowingAnchor:1];
  if ([a3 contentNode])
  {
    v7 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
    v8 = [(NSArray *)[(THDocumentNavigationModel *)v7 navigationUnits] indexOfObject:[(THDocumentNavigationModel *)v7 navigationUnitContainingContentNode:[(THDocumentNavigator *)self currentContentNode]]];
    v9 = -[NSArray indexOfObject:](-[THDocumentNavigationModel navigationUnits](v7, "navigationUnits"), "indexOfObject:", -[THDocumentNavigationModel navigationUnitContainingContentNode:](v7, "navigationUnitContainingContentNode:", [a3 contentNode]));
    v10 = v9;
    v11 = v8 == 0x7FFFFFFFFFFFFFFFLL || v8 == v9;
    v12 = !v11;
    if (v11)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [(THDocumentNavigator *)self p_followDocumentAnchor:a3 pulse:v4];
        goto LABEL_23;
      }
    }

    else
    {
      [(THDocumentNavigator *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willChangeFromChapterAtIndex:v8 toChapterAtIndex:v10];
      }
    }

    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      -[THDocumentNavigatorDelegate documentNavigator:willChangeFromContentNode:toContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willChangeFromContentNode:toContentNode:", self, -[THDocumentNavigator currentContentNode](self, "currentContentNode"), [a3 contentNode]);
    }

    v13 = [(THDocumentNavigator *)self p_followDocumentAnchor:a3 pulse:v4];
    if (v12)
    {
      [(THDocumentNavigator *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didChangeFromChapterAtIndex:v8 toChapterAtIndex:v10];
      }
    }

    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      -[THDocumentNavigatorDelegate documentNavigator:didChangeFromContentNode:toContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:didChangeFromContentNode:toContentNode:", self, -[THDocumentNavigator currentContentNode](self, "currentContentNode"), [a3 contentNode]);
    }
  }

  else
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self failedToFollowAnchor:a3 pulse:v4];
    }

    v13 = 0;
  }

LABEL_23:
  [(THDocumentNavigator *)self setFollowingAnchor:0];

  self->_cachedFlowAnchorForRect = 0;
  return v13;
}

- (BOOL)p_followDocumentAnchor:(id)a3 pulse:(BOOL)a4
{
  v4 = a4;
  if (![a3 contentNode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![a3 contentNode])
  {
    return 0;
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (v8)
    {
      [(THDocumentNavigator *)self p_jumpToAnnotationAnchor:v8 pulse:v4];
      goto LABEL_12;
    }

    objc_opt_class();
    v9 = TSUDynamicCast();
    if (v9)
    {
      [(THDocumentNavigator *)self p_jumpToPageAnchor:v9];
      goto LABEL_12;
    }

    objc_opt_class();
    v10 = TSUDynamicCast();
    if (v10)
    {
      [(THDocumentNavigator *)self p_jumpToContentNodeAnchor:v10];
      goto LABEL_12;
    }

    return 0;
  }

  [(THDocumentNavigator *)self p_jumpToStorageAnchor:v7 pulse:v4];
LABEL_12:
  v11 = 1;
  [(THDocumentNavigator *)self setVisitedPagesAfterOpening:1];
  return v11;
}

- (void)p_scrollToAbsolutePageIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  v8 = [(THDocumentNavigationModel *)v7 contentNodeForAbsolutePageIndex:a3];
  [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willNavigateToAbsolutePageIndex:a3 inContentNode:v8];
  v9 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  if (v8)
  {
    v10 = v9;
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      v11 = [(THDocumentNavigationModel *)v7 navigationUnitRelativePageIndexForAbsolutePageIndex:a3 forPresentationType:v10];
      [(THDocumentNavigator *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigatorIsInTwoPageMode:self];
        v13 = a3 - 1;
        v14 = v11 - 1;
        if ((v11 & 1) == 0)
        {
          v14 = v11;
          v13 = a3;
        }

        if (v12)
        {
          v11 = v14;
          a3 = v13;
        }
      }

      [(THSectionController *)[(THDocumentNavigator *)self sectionController] canvasRectForRelativePageIndex:v11];
    }

    else
    {
      v23 = [v8 storageAnchorForNodeRelativePageIndex:{objc_msgSend(v8, "relativePageIndexForAbsolutePageIndex:forPresentationType:", a3, v10)}];
      [v23 setAbsolutePageIndex:a3];
      [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForBodyAnchor:v23];
    }

    x = v15;
    y = v16;
    width = v17;
    height = v18;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v24 = [(THDocumentNavigator *)self delegate];

  [(THDocumentNavigatorDelegate *)v24 documentNavigator:self scrollToAbsolutePageIndex:a3 specificUnscaledCanvasRect:v4 animated:0 willPulse:x, y, width, height];
}

- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {

    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:a3 animated:1];
  }

  else
  {
    +[CATransaction begin];
    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:a3 animated:0];

    +[CATransaction commit];
  }
}

- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)a3
{
  [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:a3 animated:0];

  [(THDocumentNavigator *)self setVisitedPagesAfterOpening:1];
}

- (unint64_t)relativePageIndexForLink:(id)a3
{
  [(THDocumentNavigator *)self p_anchorForLink:?];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    v7 = [(THDocumentNavigator *)self sectionController];

    return [(THSectionController *)v7 relativePageIndexForBodyStorageAnchor:v6];
  }

  else
  {
    v9 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] contentNodeFromLink:a3];
    if (v9)
    {
      v10 = v9;
      if ([(THDocumentNavigator *)self sectionController])
      {
        v11 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType];
      }

      else
      {
        v11 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      }

      v12 = v11;
      v13 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];

      return [(THDocumentNavigationModel *)v13 navigationUnitRelativePageIndexForContentNodeRelativePageIndex:0 inContentNode:v10 forPresentationType:v12];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (id)currentContentNode
{
  v3 = [(THDocumentNavigator *)self currentNavigationUnitRelativePageIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v3;
  v6 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] currentNavigationUnit];
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return [(THNavigationUnit *)v6 contentNodeForRelativePageIndex:v5 forPresentationType:v7];
}

- (unint64_t)currentAbsolutePageIndexForBeginningOfVisibleCanvas
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v3 = [(THDocumentNavigator *)self sectionController];
    v4 = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)v3 absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:v4];
  }

  v6 = [(THDocumentNavigator *)self currentPageLocation];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v6 absolutePhysicalPageIndex];
}

- (unint64_t)currentAbsolutePageIndexForEndOfVisibleCanvas
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v3 = [(THDocumentNavigator *)self sectionController];
    v4 = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)v3 absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:v4];
  }

  v6 = [(THDocumentNavigator *)self currentPageLocation];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v6 absolutePhysicalPageIndex];
}

- (unint64_t)currentAbsolutePageIndex
{
  if (![(THDocumentNavigator *)self visitedPagesAfterOpening]|| ![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v3 = [(THDocumentNavigator *)self sectionController];
    v4 = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)v3 absolutePageIndexForCenterOfVisibleRectInInteractiveCanvasController:v4];
  }

  v6 = [-[THInteractiveCanvasController canvasView](-[THDocumentNavigator interactiveCanvasController](self "interactiveCanvasController")];
  [v6 contentOffset];
  v8 = v7;
  [v6 contentSize];
  v10 = v9;
  [v6 frame];
  if (v8 >= 25.0)
  {
    if (v8 < v10 - v11 + -25.0)
    {
      goto LABEL_15;
    }

    v12 = [objc_msgSend(-[NSArray lastObject](-[THNavigationUnit contentNodes](-[THSectionController currentNavigationUnit](-[THDocumentNavigator sectionController](self "sectionController")];
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = [objc_msgSend(-[NSArray firstObject](-[THNavigationUnit contentNodes](-[THSectionController currentNavigationUnit](-[THDocumentNavigator sectionController](self "sectionController")];
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v13 = [v12 absolutePageIndex];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v13;
  }

LABEL_15:
  v14 = [(THDocumentNavigator *)self currentPageLocation];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v14)
  {
    return v5;
  }

  v15 = v14;
  v13 = [v14 absolutePhysicalPageIndex];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v13;
  }

  v16 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForPageLocation:v15];
  if (!v16)
  {
    return v5;
  }

  v17 = [THModelStorageAnchor storageAnchorWithContentNode:v16 pageLocation:v15];
  v18 = [(THDocumentNavigator *)self documentRoot];

  return [(THDocumentRoot *)v18 absolutePageIndexForStorageAnchor:v17];
}

- (id)currentPageInfoForEndOfVisibleCanvas
{
  result = [(THDocumentNavigator *)self sectionController];
  if (result)
  {
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      v4 = [(THDocumentNavigator *)self sectionController];
      v5 = [(THDocumentNavigator *)self interactiveCanvasController];

      return [(THSectionController *)v4 pageInfoForSecondQuadrantOfVisibleRectInInteractiveCanvasController:v5];
    }

    else
    {
      v6 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      v7 = [(THDocumentNavigator *)self currentContentNode];

      return [v7 pageAtRelativeIndex:0 forPresentationType:v6];
    }
  }

  return result;
}

- (id)currentPageInfo
{
  if (![(THDocumentNavigator *)self visitedPagesAfterOpening]|| ![(THDocumentNavigator *)self sectionController])
  {
    return 0;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v3 = [(THDocumentNavigator *)self sectionController];
    v4 = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)v3 pageInfoForCenterOfVisibleRectInInteractiveCanvasController:v4];
  }

  else
  {
    v5 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
    v6 = [(THDocumentNavigator *)self currentContentNode];

    return [v6 pageAtRelativeIndex:0 forPresentationType:v5];
  }
}

- (id)currentBookspotLocation
{
  v3 = [(THDocumentNavigator *)self storageAnchorForCurrentPage];
  if (v3)
  {
    v4 = [THPageLocation pageLocationWithStorageAnchor:v3];
    if ([(THPageLocation *)v4 absolutePhysicalPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THPageLocation *)v4 setAbsolutePhysicalPageIndex:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] absolutePageIndexForStorageAnchor:v3]];
    }

    return v4;
  }

  else
  {
    v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];

    return v6;
  }
}

- (_NSRange)currentAbsolutePageIndexRange
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    goto LABEL_6;
  }

  if (![(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v5 = [(THDocumentNavigator *)self currentPageLocation];
    if (v5)
    {
      v3 = [v5 absolutePhysicalPageIndex];
LABEL_7:
      v4 = (&dword_0 + 1);
      goto LABEL_8;
    }

LABEL_6:
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v3 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:[(THDocumentNavigator *)self interactiveCanvasController]];
  v4 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:[(THDocumentNavigator *)self interactiveCanvasController]]- v3 + 1;
LABEL_8:
  v6 = v3;
  result.length = v4;
  result.location = v6;
  return result;
}

- (BOOL)jumpToPageLocation:(id)a3 touchHistory:(BOOL)a4 minor:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a4)
  {
    [(THBookspotHistoryStack *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack] recordCurrentLocationInHistory];
  }

  v9 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForPageLocation:a3];
  if (v9)
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToPageLocation:a3];
    }

    if ([a3 storageUID])
    {
      v10 = [[THModelStorageAnchor alloc] initWithContentNode:v9 pageLocation:a3];
      if ([(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = [a3 absolutePhysicalPageIndex];
      }

      [(THModelStorageAnchor *)v10 setAbsolutePageIndex:v11];
      [(THDocumentNavigator *)self followAnchor:v10 pulse:0];
    }

    else
    {
      v12 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] rootNode] context]];
      -[THDocumentNavigator followAnchor:pulse:](self, "followAnchor:pulse:", -[THModelPageAnchor initWithContentNode:relativePageIndex:presentationType:]([THModelPageAnchor alloc], "initWithContentNode:relativePageIndex:presentationType:", v9, [v9 relativePageIndexForAbsolutePageIndex:objc_msgSend(a3 forPresentationType:{"absolutePhysicalPageIndex"), v12}], v12), 0);
    }

    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didJumpToPageLocation:a3];
    }

    if (v6)
    {
      [(THBookspotHistoryStack *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack] gotoBookspot:a3 minor:v5];
    }

    v13 = [a3 copy];
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = THNavigationHistoryDidChangeNotification;
    v17[0] = @"pageLocation";
    v17[1] = @"minor";
    v18[0] = v13;
    v18[1] = [NSNumber numberWithBool:v5];
    [(NSNotificationCenter *)v14 postNotificationName:v15 object:[NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2]];
  }

  return v9 != 0;
}

- (unint64_t)currentAbsolutePageIndexForBookmarksUsingViewCenter:(BOOL)a3
{
  if (a3)
  {
    return [(THDocumentNavigator *)self currentAbsolutePageIndex];
  }

  else
  {
    return [(THDocumentNavigator *)self currentAbsolutePageIndexForEndOfVisibleCanvas];
  }
}

- (id)currentPageInfoForBookmarksUsingViewCenter:(BOOL)a3
{
  v3 = a3;
  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated]|| ![(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
  {
    if (v3)
    {

      return [(THDocumentNavigator *)self currentPageInfo];
    }

    else
    {

      return [(THDocumentNavigator *)self currentPageInfoForEndOfVisibleCanvas];
    }
  }

  else
  {
    result = [(THSectionController *)[(THDocumentNavigator *)self sectionController] currentNavigationUnit];
    if (result)
    {
      v6 = [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
      [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      v7 = [v6 contentNode];

      return [v7 pageInfoForStorageAnchor:? forPresentationType:?];
    }
  }

  return result;
}

- (unint64_t)currentChapterIndex
{
  v3 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  v4 = [(THDocumentNavigator *)self currentContentNode];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(THDocumentNavigationModel *)v3 navigationUnits];
  v7 = [(THDocumentNavigationModel *)v3 navigationUnitContainingContentNode:v5];

  return [(NSArray *)v6 indexOfObject:v7];
}

- (id)p_bodyStorageAnchorForAbsolutePageIndex:(unint64_t)a3
{
  v5 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForAbsolutePageIndex:a3];
  v6 = [v5 relativePageIndexForAbsolutePageIndex:a3 forPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
  v7 = [v5 storageAnchorForNodeRelativePageIndex:v6];
  [v7 setNodeRelativePageIndex:v6];
  return v7;
}

- (id)p_bodyStorageAnchorForFlow
{
  [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] visibleUnscaledRect];

  return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlowInRect:?];
}

- (id)p_bodyStorageAnchorForFlowInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(THDocumentNavigator *)self rectForFlowAnchor];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!CGRectEqualToRect(v18, v19) || ![(THDocumentNavigator *)self cachedFlowAnchorForRect]|| [(THDocumentNavigator *)self followingAnchor])
  {
    v8 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] bodyAnchorForCanvasRect:x, y, width, height];
    v9 = [(THDocumentNavigator *)self p_flowPivotRangeForBodyAnchor:v8];
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v12 = [v8 contentNode];
    v13 = [v12 relativePageIndexForBodyCharacterIndex:v9];

    self->_cachedFlowAnchorForRect = 0;
    v14 = +[THModelStorageAnchor storageAnchorWithContentNode:storageUID:range:](THModelStorageAnchor, "storageAnchorWithContentNode:storageUID:range:", v12, [v8 storageUID], v9, v11);
    self->_cachedFlowAnchorForRect = v14;
    [(THModelStorageAnchor *)v14 setNodeRelativePageIndex:v13];
    [(THDocumentNavigator *)self setRectForFlowAnchor:x, y, width, height];
  }

  v15 = [(THDocumentNavigator *)self cachedFlowAnchorForRect];

  return v15;
}

- (id)storageAnchorForCurrentPage
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v3 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForAbsolutePageIndex:v3];
  }

  else
  {

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
  }
}

- (id)storageAnchorForAbsolutePageIndex:(unint64_t)a3
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForAbsolutePageIndex:a3];
  }

  else
  {

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
  }
}

- (id)storageAnchorForBookmarksUsingViewCenter:(BOOL)a3
{
  v3 = a3;
  result = [(THDocumentNavigator *)self sectionController];
  if (result)
  {
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      v6 = [(THDocumentNavigator *)self currentAbsolutePageIndexForBookmarksUsingViewCenter:v3];

      return [(THDocumentNavigator *)self p_bodyStorageAnchorForAbsolutePageIndex:v6];
    }

    else
    {

      return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
    }
  }

  return result;
}

- (id)currentPageLocationForCenterOfVisibleRectInInteractiveCanvasController
{
  [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] visibleUnscaledRect];
  v3 = [(THDocumentNavigator *)self p_bodyStorageAnchorForFlowInRect:?];
  if (v3)
  {

    return [THPageLocation pageLocationWithStorageAnchor:v3];
  }

  else
  {
    v5 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:v5];

      return v6;
    }
  }
}

- (id)currentPageLocation
{
  v3 = [(THDocumentNavigator *)self storageAnchorForCurrentPage];
  if (v3)
  {

    return [THPageLocation pageLocationWithStorageAnchor:v3];
  }

  else
  {
    v5 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:v5];

      return v6;
    }
  }
}

- (id)pageLocationForAbsolutePageIndex:(unint64_t)a3
{
  v4 = [(THDocumentNavigator *)self storageAnchorForAbsolutePageIndex:?];
  if (v4)
  {

    return [THPageLocation pageLocationWithStorageAnchor:v4];
  }

  else if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:a3];

    return v6;
  }
}

- (id)readingProgressAllowSample:(BOOL)a3
{
  if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] reflowablePaginationController]&& ![(THReflowablePaginationController *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] reflowablePaginationController] paginationComplete])
  {
    return 0;
  }

  result = [(THDocumentNavigator *)self currentPageLocation];
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (!a3 && [(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isSample])
  {
    return 0;
  }

  v7 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] pageCount];
  if (!v7)
  {
    return &off_49CFF0;
  }

  *&v8 = [v6 absolutePhysicalPageIndex] / v7;

  return [NSNumber numberWithFloat:v8];
}

- (id)linkForURL:(id)a3 inStorage:(id)a4
{
  v6 = [(THNavigationUnit *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] currentNavigationUnit] contentNodeForInfo:a4];

  return [(THDocumentNavigator *)self linkForURL:a3 inContentNode:v6];
}

- (id)linkForURL:(id)a3 inContentNode:(id)a4
{
  v7 = [a3 absoluteString];
  if (![a3 scheme])
  {
    if ([(NSString *)v7 hasPrefix:@"OPS/"])
    {
      v7 = [(NSString *)v7 substringFromIndex:4];
    }

    if (a4)
    {
      v8 = [@"apub:///0/0/0/" stringByAppendingString:{objc_msgSend(a4, "applePubRelativePath")}];
      if ([(NSString *)v7 characterAtIndex:0]!= 35)
      {
        v8 = [[[NSURL URLWithString:?]] absoluteString];
      }

      v7 = [(NSString *)v8 stringByAppendingString:v7];
    }
  }

  v9 = [[THModelLink alloc] initWithTarget:v7 context:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return v9;
}

- (_NSRange)p_flowPivotRangeForBodyAnchor:(id)a3
{
  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [a3 range];
  v7 = v6;
  if (![(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    v8 = [(THDocumentNavigator *)self sectionController];
    [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] visibleUnscaledRect];
    v9 = [(THSectionController *)v8 firstLineInRect:a3 forBodyAnchor:?];
    v11 = v9 + v10 - 1;
    if (!v10)
    {
      v11 = v9;
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v10 != 0;
      v5 = v11;
    }
  }

  v12 = v5;
  v13 = v7;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)currentNavigationUnitRelativePageIndex
{
  v3 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v3;
  v6 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return [(THDocumentNavigationModel *)v6 navigationUnitRelativePageIndexForAbsolutePageIndex:v5 forPresentationType:v7];
}

- (void)p_jumpToContentNodeAnchor:(id)a3
{
  if (a3)
  {
    v5 = [objc_msgSend(a3 "contentNode")];
    -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, v5, [a3 contentNode]);
    if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] isCorrupt])
    {
      v6 = [(THDocumentNavigator *)self delegate];

      [(THDocumentNavigatorDelegate *)v6 documentNavigatorBookIsCorrupt:self, v7, v8, v9, v10, v11, v12, v13];
    }

    else
    {
      v14 = [objc_msgSend(a3 "contentNode")];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      [(THSectionController *)[(THDocumentNavigator *)self sectionController] ensureLayoutThroughRelativePageRange:0, v15];
      -[THSectionController sectionOriginForContentNode:](-[THDocumentNavigator sectionController](self, "sectionController"), "sectionOriginForContentNode:", [a3 contentNode]);
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v16;
        v19 = v17;
        -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, v5, [a3 contentNode]);
        v20 = [(THDocumentNavigator *)self delegate];

        [(THDocumentNavigatorDelegate *)v20 documentNavigator:self scrollToAbsolutePageIndex:v5 specificUnscaledCanvasRect:0 animated:0 willPulse:v18, v19, 1.0, 1.0];
      }
    }
  }
}

- (void)p_jumpToPageAnchor:(id)a3
{
  if (a3)
  {
    v4 = [a3 absolutePageIndex];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:v4 animated:1];
  }
}

- (id)p_anchorForLink:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1B9548;
  v10 = sub_1B9558;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1BB670;
  v5[3] = &unk_45E9F0;
  v5[5] = a3;
  v5[6] = &v6;
  v5[4] = self;
  [(THDocumentNavigator *)self p_resolveLink:a3 andCallBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)p_jumpToStorageAnchor:(id)a3 pulse:(BOOL)a4
{
  if (!a3)
  {
    return;
  }

  v4 = a4;
  v7 = [a3 contentNode];
  if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] isCorrupt])
  {
    v8 = [(THDocumentNavigator *)self delegate];

    [(THDocumentNavigatorDelegate *)v8 documentNavigatorBookIsCorrupt:self];
    return;
  }

  if (-[THPresentationType isPaginated](-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType"), "isPaginated") && [a3 absolutePageIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [a3 absolutePageIndex];

    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:v32 animated:0];
  }

  else
  {
    v9 = [v7 bodyStorageForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (!v9)
    {
      v9 = [v7 bodyStorageForPresentationType:{+[THPresentationType flowPresentationTypeInContext:](THPresentationType, "flowPresentationTypeInContext:", -[THDocumentRoot context](-[THDocumentNavigator documentRoot](self, "documentRoot"), "context"))}];
    }

    if ([objc_msgSend(v7 nodeUniqueIDForInfo:{v9), "isEqual:", objc_msgSend(a3, "storageUID")}])
    {
      if ([(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
      {
        v10 = 0;
      }

      else
      {
        v10 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForBodyStorageAnchor:a3];
      }

      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willNavigateToAbsolutePageIndex:v10 inContentNode:v7];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1BBF30;
      v56[3] = &unk_45CEE0;
      v56[4] = self;
      v56[5] = a3;
      v57 = v4;
      if (v4)
      {
        v33 = a3;
      }

      else
      {
        v33 = 0;
      }

      v34 = v56;
LABEL_34:
      v35 = self;
LABEL_35:
      [(THDocumentNavigator *)v35 p_jumpWithBlock:v34 andPulseStorageAnchor:v33];
      return;
    }

    v11 = [v7 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID"), -[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v13 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType];
    if ([(THPresentationType *)v13 isFlow])
    {
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v17 = [v7 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID"), -[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
      v18 = height;
      v19 = width;
      v20 = y;
      x = CGRectZero.origin.x;
      if (v17)
      {
        v22 = v17;
        v23 = 0;
        do
        {
          objc_opt_class();
          v24 = TSUClassAndProtocolCast();
          v22 = [v22 parentInfo];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }
        }

        while (v22);
        v18 = height;
        v19 = width;
        v20 = y;
        x = CGRectZero.origin.x;
        if (v24)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v23)
          {
            v52 = 0;
            v53 = &v52;
            v54 = 0x2020000000;
            v55 = 0x7FFFFFFFFFFFFFFFLL;
            v25 = objc_opt_class();
            v26 = [v24 range];
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_1BBFCC;
            v51[3] = &unk_45EA18;
            v51[4] = v23;
            v51[5] = &v52;
            [v24 enumerateAttachmentsOfClass:v25 inTextRange:v26 usingBlock:{v27, v51}];
            v18 = height;
            v19 = width;
            v20 = y;
            x = CGRectZero.origin.x;
            if (v53[3] != 0x7FFFFFFFFFFFFFFFLL)
            {
              -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [a3 absolutePageIndex], objc_msgSend(a3, "contentNode"));
              [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForBodyAnchor:[THModelStorageAnchor storageAnchorWithContentNode:v7 storageUID:0 range:v53[3], 1]];
              x = v28;
              v20 = v29;
              v19 = v30;
              v18 = v31;
            }

            _Block_object_dispose(&v52, 8);
          }

          else
          {
            -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [a3 absolutePageIndex], objc_msgSend(a3, "contentNode"));
            [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForContentNode:v7 layout:[(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] validatedLayoutForInfo:v24]];
            x = v37;
            v20 = v38;
            v19 = v39;
            v18 = v40;
          }
        }
      }

      v59.origin.x = x;
      v59.origin.y = v20;
      v59.size.width = v19;
      v59.size.height = v18;
      v61.origin.x = CGRectZero.origin.x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      if (CGRectEqualToRect(v59, v61))
      {
        v41 = [(THDocumentNavigator *)self p_bodyRangeForStorageAnchorInFlow:a3];
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        else
        {
          v43 = [THModelStorageAnchor storageAnchorWithContentNode:v7 storageUID:0 range:v41, v42];
          -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [a3 absolutePageIndex], objc_msgSend(a3, "contentNode"));
          [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForBodyAnchor:v43];
          x = v44;
          v20 = v45;
          v19 = v46;
          v18 = v47;
        }
      }

      v60.origin.x = x;
      v60.origin.y = v20;
      v60.size.width = v19;
      v60.size.height = v18;
      v62.origin.x = CGRectZero.origin.x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      if (!CGRectEqualToRect(v60, v62))
      {
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1BC024;
        v49[3] = &unk_45EA40;
        v49[4] = self;
        v49[5] = a3;
        *&v49[6] = x;
        *&v49[7] = v20;
        *&v49[8] = v19;
        *&v49[9] = v18;
        v50 = v4;
        v34 = v49;
        v35 = self;
        v33 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] reflowablePaginationController])
      {
        v36 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] absolutePageIndexForStorageAnchor:a3];
      }

      else
      {
        v36 = [v7 absolutePageIndexForRelativePageIndex:objc_msgSend(v7 forPresentationType:{"relativePageIndexForInfo:forPresentationType:", v12, v13), v13}];
      }

      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1BC08C;
        v48[3] = &unk_45B298;
        v48[4] = self;
        v48[5] = v36;
        if (v4)
        {
          v33 = a3;
        }

        else
        {
          v33 = 0;
        }

        v34 = v48;
        goto LABEL_34;
      }
    }
  }
}

- (void)p_jumpToAnnotationAnchor:(id)a3 pulse:(BOOL)a4
{
  if (a3)
  {
    v6 = [a3 annotation];
    v7 = [a3 noteRange];
    [(THDocumentNavigator *)self p_jumpWithBlock:&v9 annotation:v6 noteSelectionRange:v7, v8];
  }
}

- (void)p_jumpWithBlock:(id)a3 andPulseStorageAnchor:(id)a4
{
  if (a3)
  {
    v7 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToStorageAnchor:a4];
    (*(a3 + 2))(a3);
    if (a4)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1BC2EC;
      v11[3] = &unk_45AE58;
      v11[4] = self;
      v11[5] = a4;
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] performBlockAfterNextLayout:v11];
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutInvalidated];
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutIfNeeded];
      if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isFlow])
      {
        (*(a3 + 2))(a3);
      }
    }

    [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didJumpToStorageAnchor:a4 withWillJumpReturn:v7];
  }

  else
  {
    v8 = [TSUAssertionHandler currentHandler:0];
    v9 = [NSString stringWithUTF8String:"[THDocumentNavigator p_jumpWithBlock:andPulseStorageAnchor:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1299 description:@"Requested a jump without providing jump instructions."];
  }
}

- (void)p_jumpWithBlock:(id)a3 annotation:(id)a4 noteSelectionRange:(_NSRange)a5
{
  if (a3)
  {
    length = a5.length;
    location = a5.location;
    v10 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToStorageAnchor:0];
    (*(a3 + 2))(a3);
    if (a4)
    {
      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15[0] = 0;
        v15[1] = v15;
        v15[2] = 0x3052000000;
        v15[3] = sub_1B9548;
        v15[4] = sub_1B9558;
        v15[5] = self;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1BC4EC;
        v14[3] = &unk_45EA68;
        v14[4] = self;
        v14[5] = a4;
        v14[6] = v15;
        v14[7] = location;
        v14[8] = length;
        [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] performBlockAfterNextLayout:v14];
        [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutInvalidated];
        [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutIfNeeded];
        _Block_object_dispose(v15, 8);
      }
    }

    [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didJumpToStorageAnchor:0 withWillJumpReturn:v10];
  }

  else
  {
    v11 = [TSUAssertionHandler currentHandler:0];
    v12 = [NSString stringWithUTF8String:"[THDocumentNavigator p_jumpWithBlock:annotation:noteSelectionRange:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];

    [v11 handleFailureInFunction:v12 file:v13 lineNumber:1362 description:@"Requested a jump without providing jump instructions."];
  }
}

- (void)p_pulseStorageAnchor:(id)a3
{
  [objc_msgSend(a3 "contentNode")];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    v7 = [(THDocumentNavigator *)self interactiveCanvasController];
    v9 = [a3 range];

    [(THInteractiveCanvasController *)v7 pulseStorage:v6 range:v9, v8];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (_NSRange)p_bodyRangeForStorageAnchorInFlow:(id)a3
{
  v5 = [(THDocumentNavigator *)self sectionController];

  v6 = [(THDocumentNavigator *)self bodyRangeForStorageAnchorInFlow:a3 sectionController:v5];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)bodyRangeForStorageAnchorInFlow:(id)a3 sectionController:(id)a4
{
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  v8 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  v9 = [a3 contentNode];
  [v9 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID"), v7}];
  objc_opt_class();
  v10 = TSUClassAndProtocolCast();
  if (!v10)
  {
    [v9 infoForNodeUniqueID:objc_msgSend(a3 forPresentationType:{"storageUID", &OBJC_PROTOCOL___TSDInfo), v8}];
    objc_opt_class();
    v10 = TSUClassAndProtocolCast();
  }

  v11 = -[THDocumentNavigator p_bodyRangeForPossiblyAttachedInfo:body:](self, "p_bodyRangeForPossiblyAttachedInfo:body:", v10, [objc_msgSend(a3 contentNode]);
  v13 = v12;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [objc_msgSend(a3 "contentNode")];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [objc_msgSend(a3 "contentNode")];
      v16 = v15;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL && v10)
      {
        v17 = [objc_msgSend(a3 contentNode];
        if (v17 && TSDTopmostInfoFromInfo() == v17)
        {
          v16 = 0;
          goto LABEL_13;
        }

LABEL_12:
        v16 = [a3 nodeRelativePageIndex];
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = v14;
    }

LABEL_13:
    v18 = [v9 storageAnchorForNodeRelativePageIndex:v16];
    if (v18)
    {
      v11 = [v18 range];
      v13 = v19;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_16:
  v20 = v13;
  result.length = v20;
  result.location = v11;
  return result;
}

- (_NSRange)p_bodyRangeForPossiblyAttachedInfo:(id)a3 body:(id)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = "";
  v20 = xmmword_34A730;
  objc_opt_class();
  TSDTopmostOwningAttachmentFromInfo();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [v5 findCharIndex];
    v7 = v17;
    v8 = 1;
    v17[4] = v6;
    v7[5] = 1;
  }

  else
  {
    v9 = TSDTopmostInfoFromInfo();
    v10 = objc_opt_class();
    v11 = [a4 range];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1BCA28;
    v15[3] = &unk_45EA18;
    v15[4] = v9;
    v15[5] = &v16;
    [a4 enumerateAttachmentsOfClass:v10 inTextRange:v11 usingBlock:{v12, v15}];
    v6 = v17[4];
    v8 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  v13 = v6;
  v14 = v8;
  result.length = v14;
  result.location = v13;
  return result;
}

- (unint64_t)lastAbsolutePageIndex
{
  objc_opt_class();
  [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] rootNode];
  v3 = [objc_msgSend(TSUDynamicCast() "childNodes")];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [v3 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (&v4[v5])
  {
    return &v4[v5 - 1];
  }

  return 0;
}

- (unint64_t)absolutePageIndexForPreviousSection
{
  v3 = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [v3 parent];
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      if (v6 < [(THDocumentNavigator *)self currentAbsolutePageIndexForBeginningOfVisibleCanvas])
      {
        return v7;
      }

      objc_opt_class();
      [v5 previousSibling];
      v9 = TSUDynamicCast();
      if (v9)
      {
        return [v9 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)absolutePageIndexForEndOfPreviousSection
{
  v3 = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [v3 parent];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v4;
  objc_opt_class();
  [v5 previousSibling];
  v6 = TSUDynamicCast();
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v8 = [v6 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0)
    {
      return v8 + v9 - 1;
    }
  }

  return v7;
}

- (unint64_t)absolutePageIndexForNextSection
{
  v3 = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [v3 parent];
  v4 = TSUDynamicCast();
  objc_opt_class();
  [v4 nextSibling];
  v5 = TSUDynamicCast();
  if (v5)
  {
    return [v5 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)nextVisibleAbsolutePageNumber
{
  [(THDocumentNavigator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] visiblePageCountForDocumentNavigator:self];
  }

  else
  {
    v3 = (&dword_0 + 1);
  }

  v4 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  if (&v3[v4] <= [(THDocumentNavigator *)self lastAbsolutePageIndex])
  {
    return &v3[v4];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)previousVisibleAbsolutePageNumber
{
  [(THDocumentNavigator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] visiblePageCountForDocumentNavigator:self];
  }

  else
  {
    v3 = &dword_0 + 1;
  }

  v4 = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  v5 = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v6;
  }

  if (v4 > v5)
  {
    v6 = v5;
    if (v4 < v3 + v5)
    {
      return v6;
    }
  }

  if (v4 != v5)
  {
    v6 = v4 - v3;
    if (v4 < v3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return v6;
  }

  return [(THDocumentNavigator *)self absolutePageIndexForEndOfPreviousSection];
}

- (unint64_t)absolutePageIndexForBeginningOfSection
{
  v3 = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [v3 parent];
  v4 = TSUDynamicCast();
  if (v4)
  {
    return [v4 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)absolutePageIndexForEndOfSection
{
  v3 = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [v3 parent];
  v4 = TSUDynamicCast();
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = [v4 absolutePageRangeForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
    {
      return v6 + v7 - 1;
    }
  }

  return v5;
}

- (BOOL)canNavigateByBookDirection:(int)a3 bookGranularity:(int)a4
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (a3 == 2)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v8 = [(THDocumentNavigator *)self absolutePageIndexForEndOfSection];
        return v8 != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (a4 == 3)
      {
        v8 = [(THDocumentNavigator *)self absolutePageIndexForPreviousSection];
        return v8 != 0x7FFFFFFFFFFFFFFFLL;
      }

      return a4 == 4;
    }

    if (!a4)
    {
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [NSString stringWithUTF8String:"[THDocumentNavigator canNavigateByBookDirection:bookGranularity:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];
      v13 = v16;
      v14 = v17;
      v15 = 1738;
LABEL_24:
      [v13 handleFailureInFunction:v14 file:v12 lineNumber:v15 description:@"Not implemented."];
      return 0;
    }

    if (a4 == 1)
    {
      v8 = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];
      return v8 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (a3 == 1)
  {
    v7 = [(THDocumentNavigator *)self lastAbsolutePageIndex];
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v8 = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
        return v8 != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (a4 == 3)
      {
        v8 = [(THDocumentNavigator *)self absolutePageIndexForNextSection];
        return v8 != 0x7FFFFFFFFFFFFFFFLL;
      }

      return a4 == 4;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        return [(THDocumentNavigator *)self nextVisibleAbsolutePageNumber]<= v7;
      }

      return 0;
    }

    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THDocumentNavigator canNavigateByBookDirection:bookGranularity:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];
    v13 = v10;
    v14 = v11;
    v15 = 1697;
    goto LABEL_24;
  }

  return 0;
}

- (void)scrollToNextSection
{
  [(THDocumentNavigator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THDocumentNavigator *)self setIsScrollingAcrossSections:1];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1BD290;
    v4[3] = &unk_45B298;
    v4[4] = self;
    v4[5] = [(THDocumentNavigator *)self absolutePageIndexForNextSection];
    [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigatorWillScrollToNextSection:self completionBlock:v4];
  }

  else
  {
    v3 = [(THDocumentNavigator *)self absolutePageIndexForNextSection];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:v3];
  }
}

- (void)scrollToPreviousSection
{
  [(THDocumentNavigator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THDocumentNavigator *)self setIsScrollingAcrossSections:1];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1BD3B4;
    v4[3] = &unk_45B298;
    v4[4] = self;
    v4[5] = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];
    [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigatorWillScrollToPreviousSection:self completionBlock:v4];
  }

  else
  {
    v3 = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:v3];
  }
}

- (BOOL)canNavigateByHistoryDirection:(int)a3
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      return [(THBookspotHistoryStack *)v5 hasNextBookspot];
    }

    return 0;
  }

  v7 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

  return [(THBookspotHistoryStack *)v7 hasPrevBookspot];
}

- (void)navigateByHistoryDirection:(int)a3
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 == 2)
    {
      v6 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      [(THBookspotHistoryStack *)v6 gotoPrevBookspot];
    }

    else if (a3 == 1)
    {
      v5 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      [(THBookspotHistoryStack *)v5 gotoNextBookspot];
    }
  }
}

- (void)navigateByBookDirection:(int)a3 bookGranularity:(int)a4
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    if (a4 > 1)
    {
      switch(a4)
      {
        case 2:
          v7 = [(THDocumentNavigator *)self absolutePageIndexForEndOfSection];
          break;
        case 3:
          v7 = [(THDocumentNavigator *)self absolutePageIndexForNextSection];
          break;
        case 4:
          v7 = [(THDocumentNavigator *)self lastAbsolutePageIndex];
LABEL_34:
          v9 = v7;
          v8 = self;
LABEL_35:

          [(THDocumentNavigator *)v8 setVisibleAbsolutePhysicalPageIndex:v9 animated:1];
          return;
        default:
          return;
      }

LABEL_32:
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      goto LABEL_34;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        return;
      }

      v10 = [(THDocumentNavigator *)self lastAbsolutePageIndex];
      v11 = [(THDocumentNavigator *)self nextVisibleAbsolutePageNumber];
      if (v11 > v10)
      {
        return;
      }

      v12 = v11;
      if (v11 > [(THDocumentNavigator *)self absolutePageIndexForEndOfSection])
      {

        [(THDocumentNavigator *)self scrollToNextSection];
        return;
      }

LABEL_43:
      v8 = self;
      v9 = v12;
      goto LABEL_35;
    }

    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[THDocumentNavigator navigateByBookDirection:bookGranularity:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];
    v17 = v14;
    v18 = v15;
    v19 = 1878;
    goto LABEL_40;
  }

  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v7 = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
        break;
      case 3:
        v7 = [(THDocumentNavigator *)self absolutePageIndexForPreviousSection];
        break;
      case 4:
        v8 = self;
        v9 = 0;
        goto LABEL_35;
      default:
        return;
    }

    goto LABEL_32;
  }

  if (!a4)
  {
    v20 = +[TSUAssertionHandler currentHandler];
    v21 = [NSString stringWithUTF8String:"[THDocumentNavigator navigateByBookDirection:bookGranularity:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];
    v17 = v20;
    v18 = v21;
    v19 = 1933;
LABEL_40:

    [v17 handleFailureInFunction:v18 file:v16 lineNumber:v19 description:@"Not implemented."];
    return;
  }

  if (a4 != 1)
  {
    return;
  }

  v13 = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v12 = v13;
  if (v13 >= [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection])
  {
    goto LABEL_43;
  }

  [(THDocumentNavigator *)self scrollToPreviousSection];
}

- (BOOL)isPageLocationValid:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 absolutePhysicalPageIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [a3 absolutePhysicalPageIndex];
  return v6 < [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] pageCount];
}

- (BOOL)restorePlaceholderWithOverrideLocation:(id)a3
{
  if (![(THDocumentNavigator *)self documentRoot])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9 = 0;
  v10 = 0;
  [(THAnnotationStorageController *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] annotationController] getPlaceholder:&v10 andPageHistory:&v9];
  v5 = [(THDocumentNavigator *)self isPageLocationValid:v10];
  if (v5 && v9)
  {
    v6 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];
    [(THBookspotHistoryStack *)v6 resetWithDictionaryRepresentation:v9];
  }

  if (!a3 || (v7 = 1, ![(THDocumentNavigator *)self followAnchor:a3 pulse:1]))
  {
    if (v5)
    {
      return [(THDocumentNavigator *)self jumpToPageLocation:v10 touchHistory:v9 == 0 minor:1];
    }

    else
    {
      [(THDocumentNavigator *)self setVisitedPagesAfterOpening:0];
      return 0;
    }
  }

  return v7;
}

- (void)savePlaceholder
{
  if (![(THDocumentNavigator *)self documentRoot])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] annotationController];
  if (-[THDocumentRoot isCorrupt](-[THDocumentNavigator documentRoot](self, "documentRoot"), "isCorrupt") || (v4 = -[THDocumentNavigator currentPageLocation](self, "currentPageLocation"), v5 = -[THDocumentNavigator storageAnchorForCurrentPage](self, "storageAnchorForCurrentPage"), v6 = -[THBookspotHistoryStack dictionaryRepresentation](-[THDocumentRoot bookspotHistoryStack](-[THDocumentNavigator documentRoot](self, "documentRoot"), "bookspotHistoryStack"), "dictionaryRepresentation"), ![v4 absolutePhysicalPageIndex]))
  {
    v8 = v3;
    v9 = 0;
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v7 = [v5 contentNode];
    v8 = v3;
    v9 = v4;
    v10 = v6;
  }

  [(THAnnotationStorageController *)v8 setPlaceholder:v9 pageHistoryDictionary:v10 withContentNode:v7];
}

- (CGRect)rectForFlowAnchor
{
  x = self->_rectForFlowAnchor.origin.x;
  y = self->_rectForFlowAnchor.origin.y;
  width = self->_rectForFlowAnchor.size.width;
  height = self->_rectForFlowAnchor.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end