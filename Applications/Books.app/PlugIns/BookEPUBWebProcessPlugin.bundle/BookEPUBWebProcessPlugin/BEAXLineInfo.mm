@interface BEAXLineInfo
+ (CGPoint)addOffsetForPoint:(CGPoint)point;
+ (CGPoint)subtractOffsetForPoint:(CGPoint)point;
+ (id)chapterLineInfosForElement:(id)element;
+ (id)lineRectsForElement:(id)element;
+ (id)linkElementsForElement:(id)element;
+ (id)textForElement:(id)element;
- (BEAXLineInfo)initWithRange:(_NSRange)range frame:(CGRect)frame attributedText:(id)text element:(id)element;
- (CGPoint)frameCenterPoint;
- (CGRect)frameInScreenCoordinates;
- (_NSRange)rangeInChapter;
- (id)description;
@end

@implementation BEAXLineInfo

- (BEAXLineInfo)initWithRange:(_NSRange)range frame:(CGRect)frame attributedText:(id)text element:(id)element
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  length = range.length;
  location = range.location;
  textCopy = text;
  elementCopy = element;
  v22.receiver = self;
  v22.super_class = BEAXLineInfo;
  v17 = [(BEAXLineInfo *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_rangeInChapter.location = location;
    v17->_rangeInChapter.length = length;
    v17->_frameInScreenCoordinates.origin.x = x;
    v17->_frameInScreenCoordinates.origin.y = y;
    v17->_frameInScreenCoordinates.size.width = width;
    v17->_frameInScreenCoordinates.size.height = height;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    MidX = CGRectGetMidX(v23);
    MidY = CGRectGetMidY(v18->_frameInScreenCoordinates);
    v18->_frameCenterPoint.x = MidX;
    v18->_frameCenterPoint.y = MidY;
    objc_storeStrong(&v18->_attributedText, text);
    objc_storeStrong(&v18->_objectWrapperElement, element);
  }

  return v18;
}

+ (CGPoint)addOffsetForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  +[BEAXWebContentUtilities offset];
  v6 = x + v5;
  v8 = y + v7;
  result.y = v8;
  result.x = v6;
  return result;
}

+ (CGPoint)subtractOffsetForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  +[BEAXWebContentUtilities offset];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

+ (id)chapterLineInfosForElement:(id)element
{
  baxBookContentElement = [element baxBookContentElement];
  v4 = baxBookContentElement;
  if (baxBookContentElement)
  {
    baxStoredLineInfos = [baxBookContentElement baxStoredLineInfos];

    if (!baxStoredLineInfos)
    {
      elementTextRange = [v4 elementTextRange];
      v6 = +[NSMutableArray array];
      sub_DE90(v4, &elementTextRange, v6);
      [v4 baxSetStoredLineInfos:v6];
    }
  }

  baxStoredLineInfos2 = [v4 baxStoredLineInfos];

  return baxStoredLineInfos2;
}

- (id)description
{
  v3 = objc_opt_class();
  v11.location = [(BEAXLineInfo *)self rangeInChapter];
  v4 = NSStringFromRange(v11);
  [(BEAXLineInfo *)self frameInScreenCoordinates];
  v5 = NSStringFromRect(v12);
  attributedText = [(BEAXLineInfo *)self attributedText];
  string = [attributedText string];
  v8 = [NSString stringWithFormat:@"<%@ %p range=%@ frame=%@ text='%@'>", v3, self, v4, v5, string];

  return v8;
}

+ (id)linkElementsForElement:(id)element
{
  elementCopy = element;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if ([elementCopy accessibilityElementCount] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [elementCopy accessibilityElementAtIndex:v6];
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 < [elementCopy accessibilityElementCount]);
  }

  if ([v5 count])
  {
    v8 = UIAccessibilityTraitCausesPageTurn;
    v9 = UIAccessibilityTraitLink;
    do
    {
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = v8 | [v10 accessibilityTraits];
      [v10 setAccessibilityTraits:v11];
      [v5 removeObjectAtIndex:0];
      if ((v9 & ~v11) != 0)
      {
        if ([v10 accessibilityElementCount] >= 1)
        {
          v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v10 accessibilityElementCount]);
          v13 = +[NSMutableArray array];
          if ([v10 accessibilityElementCount] >= 1)
          {
            v14 = 0;
            do
            {
              v15 = [v10 accessibilityElementAtIndex:v14];
              [v13 addObject:v15];

              ++v14;
            }

            while (v14 < [v10 accessibilityElementCount]);
          }

          [v5 insertObjects:v13 atIndexes:v12];
        }
      }

      else
      {
        [v4 addObject:v10];
      }
    }

    while ([v5 count]);
  }

  v16 = [v4 copy];

  return v16;
}

+ (id)lineRectsForElement:(id)element
{
  lineRectsAndText = [element lineRectsAndText];
  if ([lineRectsAndText count])
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = lineRectsAndText;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) valueForKey:{@"rect", v13}];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)textForElement:(id)element
{
  elementCopy = element;
  textMarkerRange = [elementCopy textMarkerRange];
  v5 = [elementCopy stringForTextMarkers:textMarkerRange];

  return v5;
}

- (_NSRange)rangeInChapter
{
  length = self->_rangeInChapter.length;
  location = self->_rangeInChapter.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)frameInScreenCoordinates
{
  x = self->_frameInScreenCoordinates.origin.x;
  y = self->_frameInScreenCoordinates.origin.y;
  width = self->_frameInScreenCoordinates.size.width;
  height = self->_frameInScreenCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)frameCenterPoint
{
  x = self->_frameCenterPoint.x;
  y = self->_frameCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end