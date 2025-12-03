@interface THDocumentNavigator
- (BOOL)canNavigateByBookDirection:(int)direction bookGranularity:(int)granularity;
- (BOOL)canNavigateByHistoryDirection:(int)direction;
- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse;
- (BOOL)followLink:(id)link animated:(BOOL)animated;
- (BOOL)isPageLocationValid:(id)valid;
- (BOOL)jumpToPageLocation:(id)location touchHistory:(BOOL)history minor:(BOOL)minor;
- (BOOL)p_followDocumentAnchor:(id)anchor pulse:(BOOL)pulse;
- (BOOL)restorePlaceholderWithOverrideLocation:(id)location;
- (CGRect)rectForFlowAnchor;
- (THDocumentNavigator)initWithDocumentRoot:(id)root interactiveCanvasController:(id)controller;
- (_NSRange)bodyRangeForStorageAnchorInFlow:(id)flow sectionController:(id)controller;
- (_NSRange)currentAbsolutePageIndexRange;
- (_NSRange)p_bodyRangeForPossiblyAttachedInfo:(id)info body:(id)body;
- (_NSRange)p_bodyRangeForStorageAnchorInFlow:(id)flow;
- (_NSRange)p_flowPivotRangeForBodyAnchor:(id)anchor;
- (id)currentBookspotLocation;
- (id)currentContentNode;
- (id)currentPageInfo;
- (id)currentPageInfoForBookmarksUsingViewCenter:(BOOL)center;
- (id)currentPageInfoForEndOfVisibleCanvas;
- (id)currentPageLocation;
- (id)currentPageLocationForCenterOfVisibleRectInInteractiveCanvasController;
- (id)linkForURL:(id)l inContentNode:(id)node;
- (id)linkForURL:(id)l inStorage:(id)storage;
- (id)p_anchorForLink:(id)link;
- (id)p_bodyStorageAnchorForAbsolutePageIndex:(unint64_t)index;
- (id)p_bodyStorageAnchorForFlow;
- (id)p_bodyStorageAnchorForFlowInRect:(CGRect)rect;
- (id)pageLocationForAbsolutePageIndex:(unint64_t)index;
- (id)pageNumberStringForLink:(id)link;
- (id)readingProgressAllowSample:(BOOL)sample;
- (id)storageAnchorForAbsolutePageIndex:(unint64_t)index;
- (id)storageAnchorForBookmarksUsingViewCenter:(BOOL)center;
- (id)storageAnchorForCurrentPage;
- (unint64_t)absolutePageIndexForBeginningOfSection;
- (unint64_t)absolutePageIndexForEndOfPreviousSection;
- (unint64_t)absolutePageIndexForEndOfSection;
- (unint64_t)absolutePageIndexForLink:(id)link;
- (unint64_t)absolutePageIndexForNextSection;
- (unint64_t)absolutePageIndexForPreviousSection;
- (unint64_t)currentAbsolutePageIndex;
- (unint64_t)currentAbsolutePageIndexForBeginningOfVisibleCanvas;
- (unint64_t)currentAbsolutePageIndexForBookmarksUsingViewCenter:(BOOL)center;
- (unint64_t)currentAbsolutePageIndexForEndOfVisibleCanvas;
- (unint64_t)currentChapterIndex;
- (unint64_t)currentNavigationUnitRelativePageIndex;
- (unint64_t)lastAbsolutePageIndex;
- (unint64_t)nextVisibleAbsolutePageNumber;
- (unint64_t)previousVisibleAbsolutePageNumber;
- (unint64_t)relativePageIndexForLink:(id)link;
- (void)dealloc;
- (void)navigateByBookDirection:(int)direction bookGranularity:(int)granularity;
- (void)navigateByHistoryDirection:(int)direction;
- (void)p_jumpToAnnotationAnchor:(id)anchor pulse:(BOOL)pulse;
- (void)p_jumpToContentNodeAnchor:(id)anchor;
- (void)p_jumpToPageAnchor:(id)anchor;
- (void)p_jumpToStorageAnchor:(id)anchor pulse:(BOOL)pulse;
- (void)p_jumpWithBlock:(id)block andPulseStorageAnchor:(id)anchor;
- (void)p_jumpWithBlock:(id)block annotation:(id)annotation noteSelectionRange:(_NSRange)range;
- (void)p_pulseStorageAnchor:(id)anchor;
- (void)p_resolveLink:(id)link andCallBlock:(id)block;
- (void)p_scrollToAbsolutePageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)savePlaceholder;
- (void)scrollToNextSection;
- (void)scrollToPreviousSection;
- (void)setDocumentRoot:(id)root;
- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)index;
- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)index animated:(BOOL)animated;
@end

@implementation THDocumentNavigator

- (THDocumentNavigator)initWithDocumentRoot:(id)root interactiveCanvasController:(id)controller
{
  v9.receiver = self;
  v9.super_class = THDocumentNavigator;
  v6 = [(THDocumentNavigator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(THDocumentNavigator *)v6 setDocumentRoot:root];
    v7->_interactiveCanvasController = controller;
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

- (void)setDocumentRoot:(id)root
{
  documentRoot = self->_documentRoot;
  if (documentRoot != root)
  {

    self->_documentRoot = root;
    self->_documentLinkResolver = [[THDocumentLinkResolver alloc] initWithDocumentRoot:root];
  }
}

- (void)p_resolveLink:(id)link andCallBlock:(id)block
{
  linkCopy = link;
  if (([link isPageLink] & 1) != 0 || (objc_msgSend(linkCopy, "isChapterGuidLink") & 1) != 0 || objc_msgSend(linkCopy, "isChapterLink"))
  {
    v7 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] absolutePageNumberFromCustomLink:linkCopy presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    v8 = v7;
    v9 = [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] rootNode] contentNodeForRelativePageIndex:v7 forPresentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
    v10 = *(block + 2);
    blockCopy2 = block;
    v12 = v8;
    goto LABEL_7;
  }

  v13 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] absoluteLink:linkCopy withContentNode:[(THDocumentNavigator *)self currentContentNode]];
  if (v13)
  {
    linkCopy = v13;
    v14 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] contentNodeFromLink:v13];
    if (v14)
    {
      v15 = v14;
      if ([v14 nodeBodyExists])
      {
        [THContentLinkResolver navigableAnchorFromLink:linkCopy withContentNode:v15 presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
        objc_opt_class();
        v16 = TSUDynamicCast();
        v17 = v16 ? [(THDocumentRoot *)self->_documentRoot absolutePageIndexForStorageAnchor:v16]: [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] absolutePageIndexForContentNodeRelativePageIndex:0 inContentNode:v15 forPresentationType:[THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]]];
        v12 = v17;
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = *(block + 2);
          blockCopy2 = block;
          v9 = v15;
LABEL_7:

          v10(blockCopy2, v12, v9, linkCopy);
        }
      }
    }
  }
}

- (unint64_t)absolutePageIndexForLink:(id)link
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
  [(THDocumentNavigator *)self p_resolveLink:link andCallBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)pageNumberStringForLink:(id)link
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
  [(THDocumentNavigator *)self p_resolveLink:link andCallBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)followLink:(id)link animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([link isRelative])
  {
    v7 = [(THDocumentNavigator *)self p_anchorForLink:link];
  }

  else
  {
    v7 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] anchorFromAbsoluteLink:link presentationType:[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType]];
  }

  v8 = v7;
  if (v7)
  {
    v9 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:animatedCopy];
    v10 = [(THDocumentNavigator *)self followAnchor:v8 pulse:1];
    [UIView setAnimationsEnabled:v9];
    return v10;
  }

  else
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self failedToFollowLink:link];
    }

    return 0;
  }
}

- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse
{
  pulseCopy = pulse;
  [(THDocumentNavigator *)self setFollowingAnchor:1];
  if ([anchor contentNode])
  {
    navigationModel = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
    v8 = [(NSArray *)[(THDocumentNavigationModel *)navigationModel navigationUnits] indexOfObject:[(THDocumentNavigationModel *)navigationModel navigationUnitContainingContentNode:[(THDocumentNavigator *)self currentContentNode]]];
    v9 = -[NSArray indexOfObject:](-[THDocumentNavigationModel navigationUnits](navigationModel, "navigationUnits"), "indexOfObject:", -[THDocumentNavigationModel navigationUnitContainingContentNode:](navigationModel, "navigationUnitContainingContentNode:", [anchor contentNode]));
    v10 = v9;
    v11 = v8 == 0x7FFFFFFFFFFFFFFFLL || v8 == v9;
    v12 = !v11;
    if (v11)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [(THDocumentNavigator *)self p_followDocumentAnchor:anchor pulse:pulseCopy];
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
      -[THDocumentNavigatorDelegate documentNavigator:willChangeFromContentNode:toContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willChangeFromContentNode:toContentNode:", self, -[THDocumentNavigator currentContentNode](self, "currentContentNode"), [anchor contentNode]);
    }

    v13 = [(THDocumentNavigator *)self p_followDocumentAnchor:anchor pulse:pulseCopy];
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
      -[THDocumentNavigatorDelegate documentNavigator:didChangeFromContentNode:toContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:didChangeFromContentNode:toContentNode:", self, -[THDocumentNavigator currentContentNode](self, "currentContentNode"), [anchor contentNode]);
    }
  }

  else
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self failedToFollowAnchor:anchor pulse:pulseCopy];
    }

    v13 = 0;
  }

LABEL_23:
  [(THDocumentNavigator *)self setFollowingAnchor:0];

  self->_cachedFlowAnchorForRect = 0;
  return v13;
}

- (BOOL)p_followDocumentAnchor:(id)anchor pulse:(BOOL)pulse
{
  pulseCopy = pulse;
  if (![anchor contentNode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![anchor contentNode])
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
      [(THDocumentNavigator *)self p_jumpToAnnotationAnchor:v8 pulse:pulseCopy];
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

  [(THDocumentNavigator *)self p_jumpToStorageAnchor:v7 pulse:pulseCopy];
LABEL_12:
  v11 = 1;
  [(THDocumentNavigator *)self setVisitedPagesAfterOpening:1];
  return v11;
}

- (void)p_scrollToAbsolutePageIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  navigationModel = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  v8 = [(THDocumentNavigationModel *)navigationModel contentNodeForAbsolutePageIndex:index];
  [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willNavigateToAbsolutePageIndex:index inContentNode:v8];
  v9 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  if (v8)
  {
    v10 = v9;
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      v11 = [(THDocumentNavigationModel *)navigationModel navigationUnitRelativePageIndexForAbsolutePageIndex:index forPresentationType:v10];
      [(THDocumentNavigator *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigatorIsInTwoPageMode:self];
        indexCopy = index - 1;
        v14 = v11 - 1;
        if ((v11 & 1) == 0)
        {
          v14 = v11;
          indexCopy = index;
        }

        if (v12)
        {
          v11 = v14;
          index = indexCopy;
        }
      }

      [(THSectionController *)[(THDocumentNavigator *)self sectionController] canvasRectForRelativePageIndex:v11];
    }

    else
    {
      v23 = [v8 storageAnchorForNodeRelativePageIndex:{objc_msgSend(v8, "relativePageIndexForAbsolutePageIndex:forPresentationType:", index, v10)}];
      [v23 setAbsolutePageIndex:index];
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

  delegate = [(THDocumentNavigator *)self delegate];

  [(THDocumentNavigatorDelegate *)delegate documentNavigator:self scrollToAbsolutePageIndex:index specificUnscaledCanvasRect:animatedCopy animated:0 willPulse:x, y, width, height];
}

- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)index animated:(BOOL)animated
{
  if (animated)
  {

    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:index animated:1];
  }

  else
  {
    +[CATransaction begin];
    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:index animated:0];

    +[CATransaction commit];
  }
}

- (void)setVisibleAbsolutePhysicalPageIndex:(unint64_t)index
{
  [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:index animated:0];

  [(THDocumentNavigator *)self setVisitedPagesAfterOpening:1];
}

- (unint64_t)relativePageIndexForLink:(id)link
{
  [(THDocumentNavigator *)self p_anchorForLink:?];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    sectionController = [(THDocumentNavigator *)self sectionController];

    return [(THSectionController *)sectionController relativePageIndexForBodyStorageAnchor:v6];
  }

  else
  {
    v9 = [(THDocumentLinkResolver *)[(THDocumentNavigator *)self documentLinkResolver] contentNodeFromLink:link];
    if (v9)
    {
      v10 = v9;
      if ([(THDocumentNavigator *)self sectionController])
      {
        presentationType = [(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType];
      }

      else
      {
        presentationType = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      }

      v12 = presentationType;
      navigationModel = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];

      return [(THDocumentNavigationModel *)navigationModel navigationUnitRelativePageIndexForContentNodeRelativePageIndex:0 inContentNode:v10 forPresentationType:v12];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (id)currentContentNode
{
  currentNavigationUnitRelativePageIndex = [(THDocumentNavigator *)self currentNavigationUnitRelativePageIndex];
  if (currentNavigationUnitRelativePageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = currentNavigationUnitRelativePageIndex;
  currentNavigationUnit = [(THSectionController *)[(THDocumentNavigator *)self sectionController] currentNavigationUnit];
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return [(THNavigationUnit *)currentNavigationUnit contentNodeForRelativePageIndex:v5 forPresentationType:v7];
}

- (unint64_t)currentAbsolutePageIndexForBeginningOfVisibleCanvas
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    sectionController = [(THDocumentNavigator *)self sectionController];
    interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)sectionController absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:interactiveCanvasController];
  }

  currentPageLocation = [(THDocumentNavigator *)self currentPageLocation];
  if (!currentPageLocation)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [currentPageLocation absolutePhysicalPageIndex];
}

- (unint64_t)currentAbsolutePageIndexForEndOfVisibleCanvas
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    sectionController = [(THDocumentNavigator *)self sectionController];
    interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)sectionController absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:interactiveCanvasController];
  }

  currentPageLocation = [(THDocumentNavigator *)self currentPageLocation];
  if (!currentPageLocation)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [currentPageLocation absolutePhysicalPageIndex];
}

- (unint64_t)currentAbsolutePageIndex
{
  if (![(THDocumentNavigator *)self visitedPagesAfterOpening]|| ![(THDocumentNavigator *)self sectionController])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    sectionController = [(THDocumentNavigator *)self sectionController];
    interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)sectionController absolutePageIndexForCenterOfVisibleRectInInteractiveCanvasController:interactiveCanvasController];
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

  absolutePageIndex = [v12 absolutePageIndex];
  if (absolutePageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    return absolutePageIndex;
  }

LABEL_15:
  currentPageLocation = [(THDocumentNavigator *)self currentPageLocation];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (!currentPageLocation)
  {
    return v5;
  }

  v15 = currentPageLocation;
  absolutePageIndex = [currentPageLocation absolutePhysicalPageIndex];
  if (absolutePageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    return absolutePageIndex;
  }

  v16 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForPageLocation:v15];
  if (!v16)
  {
    return v5;
  }

  v17 = [THModelStorageAnchor storageAnchorWithContentNode:v16 pageLocation:v15];
  documentRoot = [(THDocumentNavigator *)self documentRoot];

  return [(THDocumentRoot *)documentRoot absolutePageIndexForStorageAnchor:v17];
}

- (id)currentPageInfoForEndOfVisibleCanvas
{
  result = [(THDocumentNavigator *)self sectionController];
  if (result)
  {
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      sectionController = [(THDocumentNavigator *)self sectionController];
      interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];

      return [(THSectionController *)sectionController pageInfoForSecondQuadrantOfVisibleRectInInteractiveCanvasController:interactiveCanvasController];
    }

    else
    {
      v6 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      currentContentNode = [(THDocumentNavigator *)self currentContentNode];

      return [currentContentNode pageAtRelativeIndex:0 forPresentationType:v6];
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
    sectionController = [(THDocumentNavigator *)self sectionController];
    interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];

    return [(THSectionController *)sectionController pageInfoForCenterOfVisibleRectInInteractiveCanvasController:interactiveCanvasController];
  }

  else
  {
    v5 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
    currentContentNode = [(THDocumentNavigator *)self currentContentNode];

    return [currentContentNode pageAtRelativeIndex:0 forPresentationType:v5];
  }
}

- (id)currentBookspotLocation
{
  storageAnchorForCurrentPage = [(THDocumentNavigator *)self storageAnchorForCurrentPage];
  if (storageAnchorForCurrentPage)
  {
    v4 = [THPageLocation pageLocationWithStorageAnchor:storageAnchorForCurrentPage];
    if ([(THPageLocation *)v4 absolutePhysicalPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THPageLocation *)v4 setAbsolutePhysicalPageIndex:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] absolutePageIndexForStorageAnchor:storageAnchorForCurrentPage]];
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
    currentPageLocation = [(THDocumentNavigator *)self currentPageLocation];
    if (currentPageLocation)
    {
      absolutePhysicalPageIndex = [currentPageLocation absolutePhysicalPageIndex];
LABEL_7:
      v4 = (&dword_0 + 1);
      goto LABEL_8;
    }

LABEL_6:
    absolutePhysicalPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  absolutePhysicalPageIndex = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForFirstQuadrantOfVisibleRectInInteractiveCanvasController:[(THDocumentNavigator *)self interactiveCanvasController]];
  v4 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForSecondQuadrantOfVisibleRectInInteractiveCanvasController:[(THDocumentNavigator *)self interactiveCanvasController]]- absolutePhysicalPageIndex + 1;
LABEL_8:
  v6 = absolutePhysicalPageIndex;
  result.length = v4;
  result.location = v6;
  return result;
}

- (BOOL)jumpToPageLocation:(id)location touchHistory:(BOOL)history minor:(BOOL)minor
{
  minorCopy = minor;
  historyCopy = history;
  if (history)
  {
    [(THBookspotHistoryStack *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack] recordCurrentLocationInHistory];
  }

  v9 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForPageLocation:location];
  if (v9)
  {
    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToPageLocation:location];
    }

    if ([location storageUID])
    {
      v10 = [[THModelStorageAnchor alloc] initWithContentNode:v9 pageLocation:location];
      if ([(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
      {
        absolutePhysicalPageIndex = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        absolutePhysicalPageIndex = [location absolutePhysicalPageIndex];
      }

      [(THModelStorageAnchor *)v10 setAbsolutePageIndex:absolutePhysicalPageIndex];
      [(THDocumentNavigator *)self followAnchor:v10 pulse:0];
    }

    else
    {
      v12 = [THPresentationType paginatedPresentationTypeInContext:[(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] rootNode] context]];
      -[THDocumentNavigator followAnchor:pulse:](self, "followAnchor:pulse:", -[THModelPageAnchor initWithContentNode:relativePageIndex:presentationType:]([THModelPageAnchor alloc], "initWithContentNode:relativePageIndex:presentationType:", v9, [v9 relativePageIndexForAbsolutePageIndex:objc_msgSend(location forPresentationType:{"absolutePhysicalPageIndex"), v12}], v12), 0);
    }

    [(THDocumentNavigator *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didJumpToPageLocation:location];
    }

    if (historyCopy)
    {
      [(THBookspotHistoryStack *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack] gotoBookspot:location minor:minorCopy];
    }

    v13 = [location copy];
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = THNavigationHistoryDidChangeNotification;
    v17[0] = @"pageLocation";
    v17[1] = @"minor";
    v18[0] = v13;
    v18[1] = [NSNumber numberWithBool:minorCopy];
    [(NSNotificationCenter *)v14 postNotificationName:v15 object:[NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2]];
  }

  return v9 != 0;
}

- (unint64_t)currentAbsolutePageIndexForBookmarksUsingViewCenter:(BOOL)center
{
  if (center)
  {
    return [(THDocumentNavigator *)self currentAbsolutePageIndex];
  }

  else
  {
    return [(THDocumentNavigator *)self currentAbsolutePageIndexForEndOfVisibleCanvas];
  }
}

- (id)currentPageInfoForBookmarksUsingViewCenter:(BOOL)center
{
  centerCopy = center;
  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated]|| ![(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
  {
    if (centerCopy)
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
      p_bodyStorageAnchorForFlow = [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
      [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
      contentNode = [p_bodyStorageAnchorForFlow contentNode];

      return [contentNode pageInfoForStorageAnchor:? forPresentationType:?];
    }
  }

  return result;
}

- (unint64_t)currentChapterIndex
{
  navigationModel = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  if (!navigationModel)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = currentContentNode;
  if (!currentContentNode)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  navigationUnits = [(THDocumentNavigationModel *)navigationModel navigationUnits];
  v7 = [(THDocumentNavigationModel *)navigationModel navigationUnitContainingContentNode:v5];

  return [(NSArray *)navigationUnits indexOfObject:v7];
}

- (id)p_bodyStorageAnchorForAbsolutePageIndex:(unint64_t)index
{
  v5 = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] contentNodeForAbsolutePageIndex:index];
  v6 = [v5 relativePageIndexForAbsolutePageIndex:index forPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
  v7 = [v5 storageAnchorForNodeRelativePageIndex:v6];
  [v7 setNodeRelativePageIndex:v6];
  return v7;
}

- (id)p_bodyStorageAnchorForFlow
{
  [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] visibleUnscaledRect];

  return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlowInRect:?];
}

- (id)p_bodyStorageAnchorForFlowInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(THDocumentNavigator *)self rectForFlowAnchor];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!CGRectEqualToRect(v18, v19) || ![(THDocumentNavigator *)self cachedFlowAnchorForRect]|| [(THDocumentNavigator *)self followingAnchor])
  {
    height = [(THSectionController *)[(THDocumentNavigator *)self sectionController] bodyAnchorForCanvasRect:x, y, width, height];
    v9 = [(THDocumentNavigator *)self p_flowPivotRangeForBodyAnchor:height];
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    contentNode = [height contentNode];
    v13 = [contentNode relativePageIndexForBodyCharacterIndex:v9];

    self->_cachedFlowAnchorForRect = 0;
    v14 = +[THModelStorageAnchor storageAnchorWithContentNode:storageUID:range:](THModelStorageAnchor, "storageAnchorWithContentNode:storageUID:range:", contentNode, [height storageUID], v9, v11);
    self->_cachedFlowAnchorForRect = v14;
    [(THModelStorageAnchor *)v14 setNodeRelativePageIndex:v13];
    [(THDocumentNavigator *)self setRectForFlowAnchor:x, y, width, height];
  }

  cachedFlowAnchorForRect = [(THDocumentNavigator *)self cachedFlowAnchorForRect];

  return cachedFlowAnchorForRect;
}

- (id)storageAnchorForCurrentPage
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForAbsolutePageIndex:currentAbsolutePageIndex];
  }

  else
  {

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
  }
}

- (id)storageAnchorForAbsolutePageIndex:(unint64_t)index
{
  if (![(THDocumentNavigator *)self sectionController])
  {
    return 0;
  }

  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForAbsolutePageIndex:index];
  }

  else
  {

    return [(THDocumentNavigator *)self p_bodyStorageAnchorForFlow];
  }
}

- (id)storageAnchorForBookmarksUsingViewCenter:(BOOL)center
{
  centerCopy = center;
  result = [(THDocumentNavigator *)self sectionController];
  if (result)
  {
    if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
    {
      v6 = [(THDocumentNavigator *)self currentAbsolutePageIndexForBookmarksUsingViewCenter:centerCopy];

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
    currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:currentAbsolutePageIndex];

      return v6;
    }
  }
}

- (id)currentPageLocation
{
  storageAnchorForCurrentPage = [(THDocumentNavigator *)self storageAnchorForCurrentPage];
  if (storageAnchorForCurrentPage)
  {

    return [THPageLocation pageLocationWithStorageAnchor:storageAnchorForCurrentPage];
  }

  else
  {
    currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
    if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:currentAbsolutePageIndex];

      return v6;
    }
  }
}

- (id)pageLocationForAbsolutePageIndex:(unint64_t)index
{
  v4 = [(THDocumentNavigator *)self storageAnchorForAbsolutePageIndex:?];
  if (v4)
  {

    return [THPageLocation pageLocationWithStorageAnchor:v4];
  }

  else if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:index];

    return v6;
  }
}

- (id)readingProgressAllowSample:(BOOL)sample
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
  if (!sample && [(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isSample])
  {
    return 0;
  }

  pageCount = [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] pageCount];
  if (!pageCount)
  {
    return &off_49CFF0;
  }

  *&v8 = [v6 absolutePhysicalPageIndex] / pageCount;

  return [NSNumber numberWithFloat:v8];
}

- (id)linkForURL:(id)l inStorage:(id)storage
{
  v6 = [(THNavigationUnit *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] currentNavigationUnit] contentNodeForInfo:storage];

  return [(THDocumentNavigator *)self linkForURL:l inContentNode:v6];
}

- (id)linkForURL:(id)l inContentNode:(id)node
{
  absoluteString = [l absoluteString];
  if (![l scheme])
  {
    if ([(NSString *)absoluteString hasPrefix:@"OPS/"])
    {
      absoluteString = [(NSString *)absoluteString substringFromIndex:4];
    }

    if (node)
    {
      absoluteString2 = [@"apub:///0/0/0/" stringByAppendingString:{objc_msgSend(node, "applePubRelativePath")}];
      if ([(NSString *)absoluteString characterAtIndex:0]!= 35)
      {
        absoluteString2 = [[[NSURL URLWithString:?]] absoluteString];
      }

      absoluteString = [(NSString *)absoluteString2 stringByAppendingString:absoluteString];
    }
  }

  v9 = [[THModelLink alloc] initWithTarget:absoluteString context:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return v9;
}

- (_NSRange)p_flowPivotRangeForBodyAnchor:(id)anchor
{
  if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  range = [anchor range];
  v7 = v6;
  if (![(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isPaginated])
  {
    sectionController = [(THDocumentNavigator *)self sectionController];
    [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] visibleUnscaledRect];
    v9 = [(THSectionController *)sectionController firstLineInRect:anchor forBodyAnchor:?];
    v11 = v9 + v10 - 1;
    if (!v10)
    {
      v11 = v9;
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v10 != 0;
      range = v11;
    }
  }

  v12 = range;
  v13 = v7;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)currentNavigationUnitRelativePageIndex
{
  currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  if (currentAbsolutePageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = currentAbsolutePageIndex;
  navigationModel = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel];
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];

  return [(THDocumentNavigationModel *)navigationModel navigationUnitRelativePageIndexForAbsolutePageIndex:v5 forPresentationType:v7];
}

- (void)p_jumpToContentNodeAnchor:(id)anchor
{
  if (anchor)
  {
    v5 = [objc_msgSend(anchor "contentNode")];
    -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, v5, [anchor contentNode]);
    if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] isCorrupt])
    {
      delegate = [(THDocumentNavigator *)self delegate];

      [(THDocumentNavigatorDelegate *)delegate documentNavigatorBookIsCorrupt:self, v7, v8, v9, v10, v11, v12, v13];
    }

    else
    {
      v14 = [objc_msgSend(anchor "contentNode")];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      [(THSectionController *)[(THDocumentNavigator *)self sectionController] ensureLayoutThroughRelativePageRange:0, v15];
      -[THSectionController sectionOriginForContentNode:](-[THDocumentNavigator sectionController](self, "sectionController"), "sectionOriginForContentNode:", [anchor contentNode]);
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v16;
        v19 = v17;
        -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, v5, [anchor contentNode]);
        delegate2 = [(THDocumentNavigator *)self delegate];

        [(THDocumentNavigatorDelegate *)delegate2 documentNavigator:self scrollToAbsolutePageIndex:v5 specificUnscaledCanvasRect:0 animated:0 willPulse:v18, v19, 1.0, 1.0];
      }
    }
  }
}

- (void)p_jumpToPageAnchor:(id)anchor
{
  if (anchor)
  {
    absolutePageIndex = [anchor absolutePageIndex];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:absolutePageIndex animated:1];
  }
}

- (id)p_anchorForLink:(id)link
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
  v5[5] = link;
  v5[6] = &v6;
  v5[4] = self;
  [(THDocumentNavigator *)self p_resolveLink:link andCallBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)p_jumpToStorageAnchor:(id)anchor pulse:(BOOL)pulse
{
  if (!anchor)
  {
    return;
  }

  pulseCopy = pulse;
  contentNode = [anchor contentNode];
  if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] isCorrupt])
  {
    delegate = [(THDocumentNavigator *)self delegate];

    [(THDocumentNavigatorDelegate *)delegate documentNavigatorBookIsCorrupt:self];
    return;
  }

  if (-[THPresentationType isPaginated](-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType"), "isPaginated") && [anchor absolutePageIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    absolutePageIndex = [anchor absolutePageIndex];

    [(THDocumentNavigator *)self p_scrollToAbsolutePageIndex:absolutePageIndex animated:0];
  }

  else
  {
    v9 = [contentNode bodyStorageForPresentationType:{-[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (!v9)
    {
      v9 = [contentNode bodyStorageForPresentationType:{+[THPresentationType flowPresentationTypeInContext:](THPresentationType, "flowPresentationTypeInContext:", -[THDocumentRoot context](-[THDocumentNavigator documentRoot](self, "documentRoot"), "context"))}];
    }

    if ([objc_msgSend(contentNode nodeUniqueIDForInfo:{v9), "isEqual:", objc_msgSend(anchor, "storageUID")}])
    {
      if ([(THBookDescription *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookDescription] isEpub])
      {
        v10 = 0;
      }

      else
      {
        v10 = [(THSectionController *)[(THDocumentNavigator *)self sectionController] absolutePageIndexForBodyStorageAnchor:anchor];
      }

      [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willNavigateToAbsolutePageIndex:v10 inContentNode:contentNode];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1BBF30;
      v56[3] = &unk_45CEE0;
      v56[4] = self;
      v56[5] = anchor;
      v57 = pulseCopy;
      if (pulseCopy)
      {
        anchorCopy2 = anchor;
      }

      else
      {
        anchorCopy2 = 0;
      }

      v34 = v56;
LABEL_34:
      selfCopy2 = self;
LABEL_35:
      [(THDocumentNavigator *)selfCopy2 p_jumpWithBlock:v34 andPulseStorageAnchor:anchorCopy2];
      return;
    }

    v11 = [contentNode infoForNodeUniqueID:objc_msgSend(anchor forPresentationType:{"storageUID"), -[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    presentationType = [(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType];
    if ([(THPresentationType *)presentationType isFlow])
    {
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v17 = [contentNode infoForNodeUniqueID:objc_msgSend(anchor forPresentationType:{"storageUID"), -[THSectionController presentationType](-[THDocumentNavigator sectionController](self, "sectionController"), "presentationType")}];
      v18 = height;
      v19 = width;
      v20 = y;
      x = CGRectZero.origin.x;
      if (v17)
      {
        parentInfo = v17;
        v23 = 0;
        do
        {
          objc_opt_class();
          v24 = TSUClassAndProtocolCast();
          parentInfo = [parentInfo parentInfo];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = parentInfo;
          }
        }

        while (parentInfo);
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
            range = [v24 range];
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_1BBFCC;
            v51[3] = &unk_45EA18;
            v51[4] = v23;
            v51[5] = &v52;
            [v24 enumerateAttachmentsOfClass:v25 inTextRange:range usingBlock:{v27, v51}];
            v18 = height;
            v19 = width;
            v20 = y;
            x = CGRectZero.origin.x;
            if (v53[3] != 0x7FFFFFFFFFFFFFFFLL)
            {
              -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [anchor absolutePageIndex], objc_msgSend(anchor, "contentNode"));
              [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForBodyAnchor:[THModelStorageAnchor storageAnchorWithContentNode:contentNode storageUID:0 range:v53[3], 1]];
              x = v28;
              v20 = v29;
              v19 = v30;
              v18 = v31;
            }

            _Block_object_dispose(&v52, 8);
          }

          else
          {
            -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [anchor absolutePageIndex], objc_msgSend(anchor, "contentNode"));
            [(THSectionController *)[(THDocumentNavigator *)self sectionController] rectForContentNode:contentNode layout:[(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] validatedLayoutForInfo:v24]];
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
        v41 = [(THDocumentNavigator *)self p_bodyRangeForStorageAnchorInFlow:anchor];
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        else
        {
          v43 = [THModelStorageAnchor storageAnchorWithContentNode:contentNode storageUID:0 range:v41, v42];
          -[THDocumentNavigatorDelegate documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:](-[THDocumentNavigator delegate](self, "delegate"), "documentNavigator:willNavigateToAbsolutePageIndex:inContentNode:", self, [anchor absolutePageIndex], objc_msgSend(anchor, "contentNode"));
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
        v49[5] = anchor;
        *&v49[6] = x;
        *&v49[7] = v20;
        *&v49[8] = v19;
        *&v49[9] = v18;
        v50 = pulseCopy;
        v34 = v49;
        selfCopy2 = self;
        anchorCopy2 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      if ([(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] reflowablePaginationController])
      {
        v36 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] absolutePageIndexForStorageAnchor:anchor];
      }

      else
      {
        v36 = [contentNode absolutePageIndexForRelativePageIndex:objc_msgSend(contentNode forPresentationType:{"relativePageIndexForInfo:forPresentationType:", v12, presentationType), presentationType}];
      }

      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1BC08C;
        v48[3] = &unk_45B298;
        v48[4] = self;
        v48[5] = v36;
        if (pulseCopy)
        {
          anchorCopy2 = anchor;
        }

        else
        {
          anchorCopy2 = 0;
        }

        v34 = v48;
        goto LABEL_34;
      }
    }
  }
}

- (void)p_jumpToAnnotationAnchor:(id)anchor pulse:(BOOL)pulse
{
  if (anchor)
  {
    annotation = [anchor annotation];
    noteRange = [anchor noteRange];
    [(THDocumentNavigator *)self p_jumpWithBlock:&v9 annotation:annotation noteSelectionRange:noteRange, v8];
  }
}

- (void)p_jumpWithBlock:(id)block andPulseStorageAnchor:(id)anchor
{
  if (block)
  {
    v7 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToStorageAnchor:anchor];
    (*(block + 2))(block);
    if (anchor)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1BC2EC;
      v11[3] = &unk_45AE58;
      v11[4] = self;
      v11[5] = anchor;
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] performBlockAfterNextLayout:v11];
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutInvalidated];
      [(THInteractiveCanvasController *)[(THDocumentNavigator *)self interactiveCanvasController] layoutIfNeeded];
      if ([(THPresentationType *)[(THSectionController *)[(THDocumentNavigator *)self sectionController] presentationType] isFlow])
      {
        (*(block + 2))(block);
      }
    }

    [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self didJumpToStorageAnchor:anchor withWillJumpReturn:v7];
  }

  else
  {
    v8 = [TSUAssertionHandler currentHandler:0];
    v9 = [NSString stringWithUTF8String:"[THDocumentNavigator p_jumpWithBlock:andPulseStorageAnchor:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigator.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1299 description:@"Requested a jump without providing jump instructions."];
  }
}

- (void)p_jumpWithBlock:(id)block annotation:(id)annotation noteSelectionRange:(_NSRange)range
{
  if (block)
  {
    length = range.length;
    location = range.location;
    v10 = [(THDocumentNavigatorDelegate *)[(THDocumentNavigator *)self delegate] documentNavigator:self willJumpToStorageAnchor:0];
    (*(block + 2))(block);
    if (annotation)
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
        v14[5] = annotation;
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

- (void)p_pulseStorageAnchor:(id)anchor
{
  [objc_msgSend(anchor "contentNode")];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    interactiveCanvasController = [(THDocumentNavigator *)self interactiveCanvasController];
    range = [anchor range];

    [(THInteractiveCanvasController *)interactiveCanvasController pulseStorage:v6 range:range, v8];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (_NSRange)p_bodyRangeForStorageAnchorInFlow:(id)flow
{
  sectionController = [(THDocumentNavigator *)self sectionController];

  v6 = [(THDocumentNavigator *)self bodyRangeForStorageAnchorInFlow:flow sectionController:sectionController];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)bodyRangeForStorageAnchorInFlow:(id)flow sectionController:(id)controller
{
  v7 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  v8 = [THPresentationType flowPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] context]];
  contentNode = [flow contentNode];
  [contentNode infoForNodeUniqueID:objc_msgSend(flow forPresentationType:{"storageUID"), v7}];
  objc_opt_class();
  v10 = TSUClassAndProtocolCast();
  if (!v10)
  {
    [contentNode infoForNodeUniqueID:objc_msgSend(flow forPresentationType:{"storageUID", &OBJC_PROTOCOL___TSDInfo), v8}];
    objc_opt_class();
    v10 = TSUClassAndProtocolCast();
  }

  range = -[THDocumentNavigator p_bodyRangeForPossiblyAttachedInfo:body:](self, "p_bodyRangeForPossiblyAttachedInfo:body:", v10, [objc_msgSend(flow contentNode]);
  v13 = v12;
  if (range == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [objc_msgSend(flow "contentNode")];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [objc_msgSend(flow "contentNode")];
      nodeRelativePageIndex = v15;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL && v10)
      {
        contentNode2 = [objc_msgSend(flow contentNode];
        if (contentNode2 && TSDTopmostInfoFromInfo() == contentNode2)
        {
          nodeRelativePageIndex = 0;
          goto LABEL_13;
        }

LABEL_12:
        nodeRelativePageIndex = [flow nodeRelativePageIndex];
        range = 0x7FFFFFFFFFFFFFFFLL;
        if (nodeRelativePageIndex == 0x7FFFFFFFFFFFFFFFLL)
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
      nodeRelativePageIndex = v14;
    }

LABEL_13:
    v18 = [contentNode storageAnchorForNodeRelativePageIndex:nodeRelativePageIndex];
    if (v18)
    {
      range = [v18 range];
      v13 = v19;
    }

    else
    {
      range = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_16:
  v20 = v13;
  result.length = v20;
  result.location = range;
  return result;
}

- (_NSRange)p_bodyRangeForPossiblyAttachedInfo:(id)info body:(id)body
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
    findCharIndex = [v5 findCharIndex];
    v7 = v17;
    v8 = 1;
    v17[4] = findCharIndex;
    v7[5] = 1;
  }

  else
  {
    v9 = TSDTopmostInfoFromInfo();
    v10 = objc_opt_class();
    range = [body range];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1BCA28;
    v15[3] = &unk_45EA18;
    v15[4] = v9;
    v15[5] = &v16;
    [body enumerateAttachmentsOfClass:v10 inTextRange:range usingBlock:{v12, v15}];
    findCharIndex = v17[4];
    v8 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  v13 = findCharIndex;
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
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [currentContentNode parent];
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
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [currentContentNode parent];
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
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [currentContentNode parent];
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

  currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  if (&v3[currentAbsolutePageIndex] <= [(THDocumentNavigator *)self lastAbsolutePageIndex])
  {
    return &v3[currentAbsolutePageIndex];
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

  currentAbsolutePageIndex = [(THDocumentNavigator *)self currentAbsolutePageIndex];
  absolutePageIndexForBeginningOfSection = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (absolutePageIndexForBeginningOfSection == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v6;
  }

  if (currentAbsolutePageIndex > absolutePageIndexForBeginningOfSection)
  {
    v6 = absolutePageIndexForBeginningOfSection;
    if (currentAbsolutePageIndex < v3 + absolutePageIndexForBeginningOfSection)
    {
      return v6;
    }
  }

  if (currentAbsolutePageIndex != absolutePageIndexForBeginningOfSection)
  {
    v6 = currentAbsolutePageIndex - v3;
    if (currentAbsolutePageIndex < v3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return v6;
  }

  return [(THDocumentNavigator *)self absolutePageIndexForEndOfPreviousSection];
}

- (unint64_t)absolutePageIndexForBeginningOfSection
{
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [currentContentNode parent];
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
  currentContentNode = [(THDocumentNavigator *)self currentContentNode];
  objc_opt_class();
  [currentContentNode parent];
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

- (BOOL)canNavigateByBookDirection:(int)direction bookGranularity:(int)granularity
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (direction == 2)
  {
    if (granularity > 1)
    {
      if (granularity == 2)
      {
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForEndOfSection];
        return absolutePageIndexForEndOfSection != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (granularity == 3)
      {
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForPreviousSection];
        return absolutePageIndexForEndOfSection != 0x7FFFFFFFFFFFFFFFLL;
      }

      return granularity == 4;
    }

    if (!granularity)
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

    if (granularity == 1)
    {
      absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];
      return absolutePageIndexForEndOfSection != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (direction == 1)
  {
    lastAbsolutePageIndex = [(THDocumentNavigator *)self lastAbsolutePageIndex];
    if (granularity > 1)
    {
      if (granularity == 2)
      {
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
        return absolutePageIndexForEndOfSection != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (granularity == 3)
      {
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForNextSection];
        return absolutePageIndexForEndOfSection != 0x7FFFFFFFFFFFFFFFLL;
      }

      return granularity == 4;
    }

    if (granularity)
    {
      if (granularity == 1)
      {
        return [(THDocumentNavigator *)self nextVisibleAbsolutePageNumber]<= lastAbsolutePageIndex;
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
    absolutePageIndexForNextSection = [(THDocumentNavigator *)self absolutePageIndexForNextSection];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:absolutePageIndexForNextSection];
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
    previousVisibleAbsolutePageNumber = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];

    [(THDocumentNavigator *)self setVisibleAbsolutePhysicalPageIndex:previousVisibleAbsolutePageNumber];
  }
}

- (BOOL)canNavigateByHistoryDirection:(int)direction
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (direction != 2)
  {
    if (direction == 1)
    {
      bookspotHistoryStack = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      return [(THBookspotHistoryStack *)bookspotHistoryStack hasNextBookspot];
    }

    return 0;
  }

  bookspotHistoryStack2 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

  return [(THBookspotHistoryStack *)bookspotHistoryStack2 hasPrevBookspot];
}

- (void)navigateByHistoryDirection:(int)direction
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    if (direction == 2)
    {
      bookspotHistoryStack = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      [(THBookspotHistoryStack *)bookspotHistoryStack gotoPrevBookspot];
    }

    else if (direction == 1)
    {
      bookspotHistoryStack2 = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];

      [(THBookspotHistoryStack *)bookspotHistoryStack2 gotoNextBookspot];
    }
  }
}

- (void)navigateByBookDirection:(int)direction bookGranularity:(int)granularity
{
  if ([(THDocumentNavigator *)self currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  if (direction != 2)
  {
    if (direction != 1)
    {
      return;
    }

    if (granularity > 1)
    {
      switch(granularity)
      {
        case 2:
          absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForEndOfSection];
          break;
        case 3:
          absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForNextSection];
          break;
        case 4:
          absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self lastAbsolutePageIndex];
LABEL_34:
          v9 = absolutePageIndexForEndOfSection;
          selfCopy3 = self;
LABEL_35:

          [(THDocumentNavigator *)selfCopy3 setVisibleAbsolutePhysicalPageIndex:v9 animated:1];
          return;
        default:
          return;
      }

LABEL_32:
      if (absolutePageIndexForEndOfSection == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      goto LABEL_34;
    }

    if (granularity)
    {
      if (granularity != 1)
      {
        return;
      }

      lastAbsolutePageIndex = [(THDocumentNavigator *)self lastAbsolutePageIndex];
      nextVisibleAbsolutePageNumber = [(THDocumentNavigator *)self nextVisibleAbsolutePageNumber];
      if (nextVisibleAbsolutePageNumber > lastAbsolutePageIndex)
      {
        return;
      }

      v12 = nextVisibleAbsolutePageNumber;
      if (nextVisibleAbsolutePageNumber > [(THDocumentNavigator *)self absolutePageIndexForEndOfSection])
      {

        [(THDocumentNavigator *)self scrollToNextSection];
        return;
      }

LABEL_43:
      selfCopy3 = self;
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

  if (granularity > 1)
  {
    switch(granularity)
    {
      case 2:
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection];
        break;
      case 3:
        absolutePageIndexForEndOfSection = [(THDocumentNavigator *)self absolutePageIndexForPreviousSection];
        break;
      case 4:
        selfCopy3 = self;
        v9 = 0;
        goto LABEL_35;
      default:
        return;
    }

    goto LABEL_32;
  }

  if (!granularity)
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

  if (granularity != 1)
  {
    return;
  }

  previousVisibleAbsolutePageNumber = [(THDocumentNavigator *)self previousVisibleAbsolutePageNumber];
  if (previousVisibleAbsolutePageNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v12 = previousVisibleAbsolutePageNumber;
  if (previousVisibleAbsolutePageNumber >= [(THDocumentNavigator *)self absolutePageIndexForBeginningOfSection])
  {
    goto LABEL_43;
  }

  [(THDocumentNavigator *)self scrollToPreviousSection];
}

- (BOOL)isPageLocationValid:(id)valid
{
  if (!valid)
  {
    return 0;
  }

  if ([valid absolutePhysicalPageIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  absolutePhysicalPageIndex = [valid absolutePhysicalPageIndex];
  return absolutePhysicalPageIndex < [(THDocumentNavigationModel *)[(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] navigationModel] pageCount];
}

- (BOOL)restorePlaceholderWithOverrideLocation:(id)location
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
    bookspotHistoryStack = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] bookspotHistoryStack];
    [(THBookspotHistoryStack *)bookspotHistoryStack resetWithDictionaryRepresentation:v9];
  }

  if (!location || (v7 = 1, ![(THDocumentNavigator *)self followAnchor:location pulse:1]))
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

  annotationController = [(THDocumentRoot *)[(THDocumentNavigator *)self documentRoot] annotationController];
  if (-[THDocumentRoot isCorrupt](-[THDocumentNavigator documentRoot](self, "documentRoot"), "isCorrupt") || (v4 = -[THDocumentNavigator currentPageLocation](self, "currentPageLocation"), v5 = -[THDocumentNavigator storageAnchorForCurrentPage](self, "storageAnchorForCurrentPage"), v6 = -[THBookspotHistoryStack dictionaryRepresentation](-[THDocumentRoot bookspotHistoryStack](-[THDocumentNavigator documentRoot](self, "documentRoot"), "bookspotHistoryStack"), "dictionaryRepresentation"), ![v4 absolutePhysicalPageIndex]))
  {
    v8 = annotationController;
    v9 = 0;
    v10 = 0;
    contentNode = 0;
  }

  else
  {
    contentNode = [v5 contentNode];
    v8 = annotationController;
    v9 = v4;
    v10 = v6;
  }

  [(THAnnotationStorageController *)v8 setPlaceholder:v9 pageHistoryDictionary:v10 withContentNode:contentNode];
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