@interface THWReviewLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isExpandedOnly;
- (BOOL)isReflowablePresentation;
- (BOOL)p_haveAnswersBeenCheckedForAllQuestions;
- (BOOL)p_useCompactPadding;
- (BOOL)usePhoneLayout;
- (CGPoint)stackedControlContainerOrigin:(id)a3;
- (CGRect)controlsFrame;
- (CGRect)p_expandedWidgetLayoutFrame;
- (CGRect)p_expandedWidgetStageFrame;
- (CGRect)stageFrame;
- (CGSize)controlsSizeWithPanelWidth:(double)a3;
- (CGSize)maximumContentSize;
- (CGSize)minimumContentSize;
- (CGSize)p_expandedSize;
- (CGSize)questionAnswersLayoutSize:(id)a3;
- (CGSize)questionLayoutSize:(id)a3;
- (THWReviewLayout)initWithInfo:(id)a3;
- (TSUColor)disabledPrimaryColor;
- (TSUColor)primaryColor;
- (UIEdgeInsets)stackedControlContainerInsets:(id)a3;
- (double)p_margin;
- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4;
- (id)additionalLayouts;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)controlContainerAdditionalChildLayouts:(id)a3;
- (id)controlContainerChildInfosForLayout:(id)a3;
- (id)infosForScrollablePage:(unint64_t)a3;
- (id)infosForStagePages:(_NSRange)a3;
- (id)layoutForQuestion:(id)a3;
- (id)layoutGeometryForLayout:(id)a3;
- (id)layoutGeometryFromProvider;
- (id)p_backgroundColorFill;
- (id)p_backgroundFill;
- (id)p_colorForStorage:(id)a3;
- (id)p_dataController;
- (id)p_dividerLayoutForPageIndex:(unint64_t)a3;
- (id)p_fallbackTextColorToContrastWidgetBackground;
- (id)p_labelColor;
- (id)p_paragraphStyleWithSize:(double)a3 bold:(BOOL)a4 indent:(double)a5;
- (id)p_questionAtPageIndex:(unint64_t)a3;
- (id)p_questionLayoutForPageIndex:(unint64_t)a3;
- (id)p_responseController;
- (id)questionNumberStorageAtPageIndex:(unint64_t)a3;
- (id)reviewSummaryContext;
- (id)stackedControlContainer:(id)a3 layoutGeometryForLayout:(id)a4;
- (id)summaryTitleStorage;
- (unint64_t)numberOfStagePages;
- (unint64_t)p_countCorrectAnswers;
- (unint64_t)p_initialQuestionIndex;
- (unint64_t)questionCount;
- (unint64_t)questionLayoutMode:(id)a3;
- (unint64_t)reviewSummaryQuestionCount;
- (void)dealloc;
- (void)invalidateQuestionLayouts;
- (void)invalidateSize;
- (void)p_invalidateExternal;
- (void)p_updatePageLayouts;
- (void)setQuestionIndex:(unint64_t)a3;
- (void)updateChildrenFromInfo;
- (void)wasAddedToLayoutController:(id)a3;
@end

@implementation THWReviewLayout

- (THWReviewLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWReviewLayout;
  result = [(THWReviewLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    result->_questionIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)p_invalidateExternal
{
  [(THWReviewLayout *)self invalidateFrame];

  [(THWReviewLayout *)self invalidateChildren];
}

- (void)wasAddedToLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THWReviewLayout;
  [(THWReviewLayout *)&v4 wasAddedToLayoutController:a3];
  [(THWReviewLayout *)self p_invalidateExternal];
}

- (BOOL)isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

- (BOOL)isCompactFlowPresentation
{
  v3 = [(THWReviewLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  v3 = [(THWReviewLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)v3 widgetLayoutIsReflowablePresentation:self];
}

- (CGRect)controlsFrame
{
  x = self->_stageFrame.origin.x;
  width = self->_stageFrame.size.width;
  v4 = self->_stageFrame.origin.y + self->_stageFrame.size.height + 10.0;
  v5 = 34.0;
  result.size.height = v5;
  result.size.width = width;
  result.origin.y = v4;
  result.origin.x = x;
  return result;
}

- (CGSize)controlsSizeWithPanelWidth:(double)a3
{
  v3 = a3 + -24.0;
  v4 = 34.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)p_colorForStorage:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_msgSend(a3 characterStyleAtCharIndex:0 effectiveRange:{0), "valueForProperty:", 18}];
  if (!v4)
  {
    v4 = [objc_msgSend(a3 paragraphStyleAtCharIndex:0 effectiveRange:{0), "valueForProperty:", 18}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }

  return v4;
}

- (id)p_labelColor
{
  result = [objc_msgSend(objc_msgSend(-[THWReviewLayout info](self "info")];
  if (result)
  {

    return [(THWReviewLayout *)self p_colorForStorage:result];
  }

  return result;
}

- (id)p_backgroundFill
{
  v3 = +[NSNull null];
  v4 = [objc_msgSend(-[THWReviewLayout info](self "info")];
  if (!v4)
  {
    return v3;
  }

  v5 = [v4 style];

  return [v5 valueForProperty:516];
}

- (id)p_backgroundColorFill
{
  v2 = [(THWReviewLayout *)self p_backgroundFill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  return +[TSDColorFill whiteColor];
}

- (id)p_fallbackTextColorToContrastWidgetBackground
{
  v3 = +[TSUColor blackColor];
  if (![objc_msgSend(-[THWReviewLayout info](self "info")])
  {
    return v3;
  }

  [-[THWReviewLayout p_backgroundColorFill](self "p_backgroundColorFill")];
  if (v4 >= 0.5)
  {
    return v3;
  }

  return +[TSUColor whiteColor];
}

- (TSUColor)primaryColor
{
  if ([(THWReviewLayout *)self isExpanded])
  {

    return +[TSUColor blackColor];
  }

  else
  {
    result = self->_primaryColor;
    if (!result)
    {
      v4 = [-[THWReviewLayout info](self "info")];
      self->_primaryColor = v4;
      if (!v4)
      {
        v4 = [(THWReviewLayout *)self p_labelColor];
        if (!v4)
        {
          v4 = [(THWReviewLayout *)self p_fallbackTextColorToContrastWidgetBackground];
        }

        self->_primaryColor = v4;
      }

      v5 = v4;
      return self->_primaryColor;
    }
  }

  return result;
}

- (TSUColor)disabledPrimaryColor
{
  if ([(THWReviewLayout *)self isExpanded])
  {

    return +[TSUColor grayColor];
  }

  else
  {
    if (!self->_disabledPrimaryColor)
    {
      v4 = [(THWReviewLayout *)self primaryColor];
      if (v4)
      {
        v5 = [(TSUColor *)v4 CGColor];
        Alpha = CGColorGetAlpha(v5);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(v5, Alpha * 0.4);
        self->_disabledPrimaryColor = [[TSUColor alloc] initWithCGColor:CopyWithAlpha];
        CGColorRelease(CopyWithAlpha);
      }
    }

    return self->_disabledPrimaryColor;
  }
}

- (CGSize)minimumContentSize
{
  objc_opt_class();
  [objc_msgSend(-[THWReviewLayout layoutController](self "layoutController")];
  [objc_msgSend(TSUDynamicCast() "bookDescription")];
  v3 = 768.0;
  v4 = 704.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maximumContentSize
{
  objc_opt_class();
  [objc_msgSend(-[THWReviewLayout layoutController](self "layoutController")];
  v3 = [objc_msgSend(TSUDynamicCast() "bookDescription")];
  v4 = 768.0;
  if (v3)
  {
    v4 = 1024.0;
  }

  v5 = 1004.0;
  if (v3)
  {
    v5 = 748.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)p_expandedSize
{
  [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
  v4 = v3;
  v6 = v5;
  [(THWReviewLayout *)self minimumContentSize];
  v8 = v7;
  [(THWReviewLayout *)self maximumContentSize];
  if (v4 < v9)
  {
    v9 = v4;
  }

  if (v8 >= v9)
  {
    v9 = v8;
  }

  if (v6 < v10)
  {
    v10 = v6;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)p_expandedWidgetLayoutFrame
{
  [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_expandedWidgetStageFrame
{
  [(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)layoutGeometryFromProvider
{
  if ([(THWReviewLayout *)self isExpanded])
  {
    v3 = [TSDLayoutGeometry alloc];
    [(THWReviewLayout *)self p_expandedWidgetLayoutFrame];
    v4 = [v3 initWithFrame:?];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = THWReviewLayout;
    return [(THWReviewLayout *)&v6 layoutGeometryFromProvider];
  }
}

- (void)updateChildrenFromInfo
{
  if (!self->_stageCanvasLayout)
  {
    self->_stageCanvasLayout = [(THWControlLayout *)[THWPagedCanvasControlLayout alloc] initWithTag:0];
  }

  if (!self->_controlsLayout)
  {
    v3 = [[THWReviewControlsLayout alloc] initWithDelegate:self];
    self->_controlsLayout = v3;
    [(THWReviewControlsLayout *)v3 setTag:1];
  }

  [(THWReviewLayout *)self p_updatePageLayouts];
  if (self->_questionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_questionIndex = [(THWReviewLayout *)self p_initialQuestionIndex];
  }

  v4.receiver = self;
  v4.super_class = THWReviewLayout;
  [(THWContainerLayout *)&v4 updateChildrenFromInfo];
}

- (BOOL)isExpandedOnly
{
  [-[THWReviewLayout info](self "info")];
  v2 = TSUProtocolCast();

  return [v2 isExpandedOnly];
}

- (unint64_t)questionLayoutMode:(id)a3
{
  if (![(THWReviewLayout *)self isExpanded])
  {
    return 0;
  }

  v4 = [-[THWReviewLayout layoutController](self "layoutController")];
  if ([-[THWReviewLayout layoutController](self "layoutController")])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (CGSize)questionLayoutSize:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  [v4 parent];
  v5 = TSUDynamicCast();
  [(THWReviewLayout *)self stackedControlContainerWidth:v5];
  v7 = v6;
  [(THWReviewLayout *)self stackedControlContainerMinHeight:v5];
  v9 = v8;
  [(THWReviewLayout *)self stackedControlContainerInsets:v5];
  v12 = v7 - v10 - v11;
  v15 = v9 - v13 - v14;
  v16 = v12;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGSize)questionAnswersLayoutSize:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  objc_opt_class();
  [v4 parent];
  v5 = TSUDynamicCast();
  [(THWReviewLayout *)self stackedControlContainerWidth:v5];
  v7 = v6;
  [(THWReviewLayout *)self stackedControlContainerInsets:v5];
  v9 = v8;
  v11 = v10;
  [v5 heightForFlexibleChildLayout:v4];
  v13 = v12;
  v14 = v7 - v9 - v11;
  result.height = v13;
  result.width = v14;
  return result;
}

- (BOOL)usePhoneLayout
{
  if ([(THWWidgetLayoutDelegate *)self->_delegate widgetLayoutMode:self]!= 1)
  {
    return 0;
  }

  if ([-[THWReviewLayout layoutController](self "layoutController")])
  {
    return 1;
  }

  v4 = [(THWReviewLayout *)self layoutController];

  return [v4 isCompactHeight];
}

- (id)controlContainerChildInfosForLayout:(id)a3
{
  if ([a3 tag] != &dword_4)
  {
    return 0;
  }

  v5 = +[NSMutableArray array];
  v6 = [a3 index];
  if (![(THWReviewLayout *)self usePhoneLayout])
  {
    v7 = [(THWReviewLayout *)self questionNumberStorageAtPageIndex:v6];
    if (v7)
    {
      [v5 addObject:v7];
    }
  }

  v8 = [-[THWReviewLayout p_questionAtPageIndex:](self p_questionAtPageIndex:{v6), "prompt"}];
  if (v8)
  {
    [v5 addObject:v8];
  }

  return v5;
}

- (id)controlContainerAdditionalChildLayouts:(id)a3
{
  if ([a3 tag] == &dword_4)
  {
    v5 = [a3 index];
    v6 = +[NSMutableArray array];
    v7 = [(THWReviewLayout *)self p_dividerLayoutForPageIndex:v5];
    if (v7)
    {
      [v6 addObject:v7];
    }

    v8 = [(THWReviewLayout *)self p_questionLayoutForPageIndex:v5];
    if (v8)
    {
      [v6 addObject:v8];
    }

    return v6;
  }

  if ([a3 tag] != &dword_4 + 1)
  {
    if ([a3 tag] == &dword_0 + 2)
    {
      v11 = [a3 index];
      if (v11 < [(NSArray *)self->_scrollableCanvasLayouts count])
      {
        v12 = [(NSArray *)self->_scrollableCanvasLayouts objectAtIndexedSubscript:v11];
        return [NSArray arrayWithObjects:&v12 count:1];
      }
    }

    return 0;
  }

  summaryLayout = self->_summaryLayout;
  if (!summaryLayout)
  {
    summaryLayout = [[THWReviewSummaryLayout alloc] initWithDelegate:self];
    self->_summaryLayout = summaryLayout;
    if (!summaryLayout)
    {
      return 0;
    }
  }

  return [NSArray arrayWithObject:summaryLayout];
}

- (CGPoint)stackedControlContainerOrigin:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)a3
{
  v3 = [(THWReviewLayout *)self p_useCompactPadding];
  v4 = 13.0;
  if (v3)
  {
    v4 = 7.0;
  }

  v5 = 15.0;
  v6 = 15.0;
  v7 = v4;
  result.right = v6;
  result.bottom = v7;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4
{
  v6 = [a3 index];
  objc_opt_class();
  [a4 info];
  v7 = TSUDynamicCast();
  if (!v7)
  {
    objc_opt_class();
    if (!TSUDynamicCast())
    {
      return 0.0;
    }

LABEL_6:
    v12 = ![(THWReviewLayout *)self p_useCompactPadding];
    result = 14.0;
    v13 = 7.0;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [-[THWReviewLayout info](self "info")];
  if ([(THWReviewLayout *)self questionNumberStorageAtPageIndex:v6]!= v8)
  {
    v10 = [v9 prompt];
    result = 0.0;
    if (v10 != v8)
    {
      return result;
    }

    goto LABEL_6;
  }

  v12 = ![(THWReviewLayout *)self usePhoneLayout];
  result = 5.0;
  v13 = 0.0;
LABEL_8:
  if (!v12)
  {
    return v13;
  }

  return result;
}

- (id)stackedControlContainer:(id)a3 layoutGeometryForLayout:(id)a4
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    [(THWReviewLayout *)self p_useCompactPadding];
    v6 = [TSDLayoutGeometry alloc];
    TSDRectWithSize();
    v7 = [v6 initWithFrame:?];

    return v7;
  }

  return result;
}

- (id)childInfosForLayout
{
  v3 = [-[THWReviewLayout info](self "info")];
  if (!-[THWReviewLayout isExpanded](self, "isExpanded") && [-[THWReviewLayout info](self "info")])
  {
    v3 = [objc_msgSend(-[THWReviewLayout info](self "info")];
  }

  if (v3)
  {
    return v3;
  }

  return +[NSArray array];
}

- (id)infosForStagePages:(_NSRange)a3
{
  stagePages = self->_stagePages;
  if (!stagePages)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(NSArray *)stagePages count])
  {
    return 0;
  }

  v8 = self->_stagePages;

  return [(NSArray *)v8 subarrayWithRange:location, length];
}

- (id)infosForScrollablePage:(unint64_t)a3
{
  if ([(NSArray *)self->_questionStackedContainers count]<= a3)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_questionStackedContainers objectAtIndexedSubscript:a3];
  return [NSArray arrayWithObjects:&v6 count:1];
}

- (id)layoutForQuestion:(id)a3
{
  v4 = [-[THWReviewLayout info](self "info")];

  return [(THWReviewLayout *)self p_questionLayoutForPageIndex:v4];
}

- (id)additionalLayouts
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_stageCanvasLayout)
  {
    [v3 addObject:?];
  }

  if (self->_controlsLayout && ![(THWReviewLayout *)self isExpanded])
  {
    [v4 addObject:self->_controlsLayout];
  }

  return v4;
}

- (id)computeLayoutGeometry
{
  v20.receiver = self;
  v20.super_class = THWReviewLayout;
  v3 = [(THWReviewLayout *)&v20 computeLayoutGeometry];
  if ([(THWReviewLayout *)self isExpanded])
  {
    [(THWReviewLayout *)self p_expandedWidgetStageFrame];
    self->_stageFrame.origin.x = v4;
    self->_stageFrame.origin.y = v5;
    self->_stageFrame.size.width = v6;
    self->_stageFrame.size.height = v7;
    self->_stageCornerRadius = 0.0;
    if ([(THWReviewLayout *)self isExpanded])
    {
      v8 = objc_opt_respondsToSelector();
      v9 = 0.0;
      v10 = 0.0;
      if (v8)
      {
        [(THWWidgetLayoutDelegate *)self->_delegate expandedHeightForPanel:0 allowDefault:1, 0.0];
        v10 = v11;
        [(THWWidgetLayoutDelegate *)self->_delegate expandedHeightForPanel:1 allowDefault:1];
        v9 = fmax(v12, 54.0);
      }

      self->_stageFrame.origin.y = v10 + self->_stageFrame.origin.y;
      self->_stageFrame.size.height = self->_stageFrame.size.height - (v9 + v10);
    }
  }

  else
  {
    v13 = [-[THWReviewLayout info](self "info")];
    [v13 frame];
    self->_stageFrame.origin.x = v14;
    self->_stageFrame.origin.y = v15;
    self->_stageFrame.size.width = v16;
    self->_stageFrame.size.height = v17;
    [v13 cornerRadius];
    self->_stageCornerRadius = v18;
  }

  return v3;
}

- (unint64_t)numberOfStagePages
{
  result = [objc_msgSend(-[THWReviewLayout info](self "info")];
  if (result > 1)
  {
    ++result;
  }

  return result;
}

- (void)setQuestionIndex:(unint64_t)a3
{
  if (self->_questionIndex != a3)
  {
    self->_questionIndex = a3;
    [(THWReviewLayout *)self invalidateChildren];
  }
}

- (unint64_t)questionCount
{
  v2 = [-[THWReviewLayout info](self "info")];

  return [v2 count];
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = THWReviewLayout;
  [(THWReviewLayout *)&v3 invalidateSize];
  [(THWReviewLayout *)self invalidateQuestionLayouts];
}

- (void)invalidateQuestionLayouts
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(TSUIntegerKeyDictionary *)self->_questionLayouts allValues];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7) invalidateSize];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(TSUIntegerKeyDictionary *)self->_dividerLayouts allValues];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) invalidateSize];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)layoutGeometryForLayout:(id)a3
{
  v5 = TSUProtocolCast();
  if (!v5)
  {
    if (self->_summaryLayout != a3)
    {
      return 0;
    }

    v14 = [TSDLayoutGeometry alloc];
    TSDRectWithSize();
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [v5 tag];
  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = [TSDLayoutGeometry alloc];
      x = self->_stageFrame.origin.x;
      y = self->_stageFrame.origin.y;
      width = self->_stageFrame.size.width;
      height = self->_stageFrame.size.height;
      goto LABEL_16;
    }

    if (v7 != &dword_0 + 1)
    {
      return 0;
    }

    v14 = [TSDLayoutGeometry alloc];
    [(THWReviewLayout *)self controlsFrame];
LABEL_13:
    v8 = v14;
    goto LABEL_16;
  }

  if (v7 == &dword_0 + 2)
  {
    v15 = [TSDLayoutGeometry alloc];
    v16 = [v6 index];
    p_stageFrame = &self->_stageFrame;
    x = CGRectGetWidth(*p_stageFrame) * v16;
    width = p_stageFrame->size.width;
    height = p_stageFrame->size.height;
    y = 0.0;
    v8 = v15;
    goto LABEL_16;
  }

  if (v7 != &dword_0 + 3 && v7 != &dword_4 + 1)
  {
    return 0;
  }

  v8 = [TSDLayoutGeometry alloc];
  width = self->_stageFrame.size.width;
  height = self->_stageFrame.size.height;
  x = 0.0;
  y = 0.0;
LABEL_16:
  v18 = [v8 initWithFrame:{x, y, width, height}];

  return v18;
}

- (unint64_t)reviewSummaryQuestionCount
{
  v2 = [-[THWReviewLayout info](self "info")];

  return [v2 count];
}

- (id)p_paragraphStyleWithSize:(double)a3 bold:(BOOL)a4 indent:(double)a5
{
  v6 = a4;
  v9 = objc_alloc_init(TSSPropertyMap);
  [v9 setBoolValue:v6 forProperty:19];
  *&v10 = a3;
  [v9 setFloatValue:17 forProperty:v10];
  [v9 setIntValue:2 forProperty:86];
  *&a5 = a5;
  LODWORD(v11) = LODWORD(a5);
  [v9 setFloatValue:81 forProperty:v11];
  LODWORD(v12) = LODWORD(a5);
  [v9 setFloatValue:80 forProperty:v12];
  [v9 setIntValue:0 forProperty:21];
  [v9 setIntValue:0 forProperty:22];
  [v9 setObject:+[TSWPLineSpacing lineSpacing](TSWPLineSpacing forProperty:{"lineSpacing"), 85}];
  v13 = [-[THWReviewLayout info](self "info")];
  v14 = [objc_msgSend(v13 "stylesheet")];

  return v14;
}

- (id)reviewSummaryContext
{
  v2 = [(THWReviewLayout *)self info];

  return [v2 context];
}

- (double)p_margin
{
  v2 = [(THWReviewLayout *)self info];

  [v2 contentPadding];
  return result;
}

- (BOOL)p_useCompactPadding
{
  if (!-[THWReviewLayout isExpanded](self, "isExpanded") || ![-[THWReviewLayout layoutController](self "layoutController")])
  {
    return 0;
  }

  v3 = [(THWReviewLayout *)self layoutController];

  return [v3 isCompactHeight];
}

- (id)p_questionAtPageIndex:(unint64_t)a3
{
  v4 = [(THWReviewLayout *)self info];

  return [v4 questionAtIndex:a3];
}

- (void)p_updatePageLayouts
{
  v3 = [(THWReviewLayout *)self numberOfStagePages];
  if ([(NSArray *)self->_stagePages count]!= v3)
  {

    self->_stagePages = 0;
    self->_scrollableCanvasLayouts = 0;

    self->_questionStackedContainers = 0;
    if (v3)
    {
      v4 = [[NSMutableArray alloc] initWithCapacity:v3];
      v5 = [[NSMutableArray alloc] initWithCapacity:v3];
      v15 = [[NSMutableArray alloc] initWithCapacity:v3];
      v6 = [objc_msgSend(-[THWReviewLayout info](self "info")];
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v9 = [[THWControlContainer alloc] initWithDelegate:self];
          [(THWControlContainer *)v9 setTag:2];
          [(THWControlContainer *)v9 setIndex:i];
          [v4 addObject:v9];

          v10 = objc_alloc_init(THWScrollableCanvasControlLayout);
          [(THWControlLayout *)v10 setTag:3];
          [(THWControlLayout *)v10 setIndex:i];
          [v5 addObject:v10];

          v11 = [[THWStackedControlContainer alloc] initWithDelegate:self];
          [(THWControlContainer *)v11 setTag:4];
          [(THWControlContainer *)v11 setIndex:i];
          [v15 addObject:v11];
        }

        if (v7 != &dword_0 + 1)
        {
          v12 = [[THWControlContainer alloc] initWithDelegate:self];
          [(THWControlContainer *)v12 setTag:2];
          [(THWControlContainer *)v12 setIndex:v7];
          [v4 addObject:v12];

          v13 = objc_alloc_init(THWScrollableCanvasControlLayout);
          [(THWControlLayout *)v13 setTag:3];
          [(THWControlLayout *)v13 setIndex:v7];
          [v5 addObject:v13];

          v14 = [[THWControlContainer alloc] initWithDelegate:self];
          [(THWControlContainer *)v14 setTag:5];
          [v15 addObject:v14];
        }
      }

      self->_stagePages = [v4 copy];
      self->_scrollableCanvasLayouts = [v5 copy];
      self->_questionStackedContainers = [v15 copy];
    }
  }
}

- (id)questionNumberStorageAtPageIndex:(unint64_t)a3
{
  v5 = [(THWReviewLayout *)self info];
  v6 = [objc_msgSend(v5 "questions")];
  if (v6 < 2)
  {
    return 0;
  }

  v7 = v6;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)self->_questionNumberStorages objectForKey:v8];
  if (!v9)
  {
    if (!self->_questionNumberStorages)
    {
      self->_questionNumberStorages = objc_alloc_init(NSMutableDictionary);
    }

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Question %lu of %lu" value:&stru_471858 table:0], a3 + 1, v7);
    v11 = [v5 questionNumberStyle];
    v12 = [v5 context];
    v13 = [[TSSStylesheet alloc] initWithContext:v12];
    v9 = [[THWPStorage alloc] initWithContext:v12 string:v10 kind:3 stylesheet:v13 paragraphStyle:v11 listStyle:[TSWPListStyle defaultStyleWithContext:?], 0, 0];

    [(NSMutableDictionary *)self->_questionNumberStorages setObject:v9 forKey:v8];
  }

  return v9;
}

- (id)summaryTitleStorage
{
  result = self->_summaryTitleStorage;
  if (!result)
  {
    result = -[THWReviewSummaryLayout storageWithStyle:string:](-[THWReviewLayout summaryLayout](self, "summaryLayout"), "storageWithStyle:string:", -[THWReviewSummaryLayoutDelegate reviewSummaryTitleParagraphStyle](-[THWReviewSummaryLayout delegate](-[THWReviewLayout summaryLayout](self, "summaryLayout"), "delegate"), "reviewSummaryTitleParagraphStyle"), [THBundle() localizedStringForKey:@"Summary" value:&stru_471858 table:0]);
    self->_summaryTitleStorage = result;
  }

  return result;
}

- (id)p_questionLayoutForPageIndex:(unint64_t)a3
{
  questionLayouts = self->_questionLayouts;
  if (questionLayouts)
  {
    v6 = [(TSUIntegerKeyDictionary *)questionLayouts objectForKey:a3];
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    self->_questionLayouts = objc_alloc_init(TSUIntegerKeyDictionary);
  }

  v7 = [(THWReviewLayout *)self p_questionAtPageIndex:a3];
  v8 = [v7 layoutClass];
  if (!v8)
  {
    return 0;
  }

  v6 = [[v8 alloc] initWithQuestion:v7 index:a3 delegate:self];
  if (v6)
  {
    [(TSUIntegerKeyDictionary *)self->_questionLayouts setObject:v6 forKey:a3];
  }

  return v6;
}

- (id)p_responseController
{
  objc_opt_class();
  [objc_msgSend(-[THWReviewLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (id)p_dataController
{
  objc_opt_class();
  [objc_msgSend(-[THWReviewLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (unint64_t)p_countCorrectAnswers
{
  v3 = [(THWReviewLayout *)self p_responseController];
  v4 = [v3 newTemporateReviewResponseMOC];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [-[THWReviewLayout info](self info];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v3 responseForQuestionID:objc_msgSend(v11 temporaryMOC:{"questionID"), v4), "userHasCheckedAnswer"}] && objc_msgSend(v11, "evaluateAnswerWithResponseController:updateScore:choiceBlock:", v3, 0, 0) == 6)
        {
          ++v8;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_haveAnswersBeenCheckedForAllQuestions
{
  v3 = [(THWReviewLayout *)self p_responseController];
  v4 = [v3 newTemporateReviewResponseMOC];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [-[THWReviewLayout info](self "info")];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 responseForQuestionID:objc_msgSend(v10 temporaryMOC:{"questionID"), v4}];
        if ([objc_msgSend(v11 "answerState")] && (objc_msgSend(v11, "userHasCheckedAnswer") & 1) == 0)
        {
          if ([v10 type] != 2)
          {
            goto LABEL_15;
          }

          objc_opt_class();
          [v11 answerState];
          v12 = TSUDynamicCast();
          if (!v12)
          {
            [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_15:
            v14 = 0;
            goto LABEL_16;
          }

          v13 = [v12 numSelectedTargets];
          if (v13 == [objc_msgSend(v10 "choices")])
          {
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (unint64_t)p_initialQuestionIndex
{
  v3 = [(THWReviewLayout *)self p_dataController];
  v4 = [v3 newTemporaryReviewDataMOC];
  v5 = [v3 reviewWidgetDataForWidgetID:objc_msgSend(-[THWReviewLayout info](self temporaryMOC:{"info"), "reviewID"), v4}];
  if (v5)
  {
    v6 = [v5 currentPage];
    if (v6 >= [(THWReviewLayout *)self numberOfStagePages])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)p_dividerLayoutForPageIndex:(unint64_t)a3
{
  dividerLayouts = self->_dividerLayouts;
  if (dividerLayouts)
  {
    v6 = [(TSUIntegerKeyDictionary *)dividerLayouts objectForKey:a3];
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    self->_dividerLayouts = objc_alloc_init(TSUIntegerKeyDictionary);
  }

  v6 = objc_alloc_init(THWReviewDividerLayout);
  if (v6)
  {
    [(TSUIntegerKeyDictionary *)self->_dividerLayouts setObject:v6 forKey:a3];
  }

  return v6;
}

- (CGRect)stageFrame
{
  x = self->_stageFrame.origin.x;
  y = self->_stageFrame.origin.y;
  width = self->_stageFrame.size.width;
  height = self->_stageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end