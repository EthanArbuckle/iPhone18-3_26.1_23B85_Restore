@interface BEAXLineInfo
+ (CGPoint)addOffsetForPoint:(CGPoint)a3;
+ (CGPoint)subtractOffsetForPoint:(CGPoint)a3;
+ (id)chapterLineInfosForElement:(id)a3;
+ (id)lineRectsForElement:(id)a3;
+ (id)linkElementsForElement:(id)a3;
+ (id)textForElement:(id)a3;
- (BEAXLineInfo)initWithRange:(_NSRange)a3 frame:(CGRect)a4 attributedText:(id)a5 element:(id)a6;
- (CGPoint)frameCenterPoint;
- (CGRect)frameInScreenCoordinates;
- (_NSRange)rangeInChapter;
- (id)description;
@end

@implementation BEAXLineInfo

- (BEAXLineInfo)initWithRange:(_NSRange)a3 frame:(CGRect)a4 attributedText:(id)a5 element:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  length = a3.length;
  location = a3.location;
  v15 = a5;
  v16 = a6;
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
    objc_storeStrong(&v18->_attributedText, a5);
    objc_storeStrong(&v18->_objectWrapperElement, a6);
  }

  return v18;
}

+ (CGPoint)addOffsetForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  +[BEAXWebContentUtilities offset];
  v6 = x + v5;
  v8 = y + v7;
  result.y = v8;
  result.x = v6;
  return result;
}

+ (CGPoint)subtractOffsetForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  +[BEAXWebContentUtilities offset];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

+ (id)chapterLineInfosForElement:(id)a3
{
  v3 = [a3 baxBookContentElement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 baxStoredLineInfos];

    if (!v5)
    {
      v9 = [v4 elementTextRange];
      v6 = +[NSMutableArray array];
      sub_DE90(v4, &v9, v6);
      [v4 baxSetStoredLineInfos:v6];
    }
  }

  v7 = [v4 baxStoredLineInfos];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v11.location = [(BEAXLineInfo *)self rangeInChapter];
  v4 = NSStringFromRange(v11);
  [(BEAXLineInfo *)self frameInScreenCoordinates];
  v5 = NSStringFromRect(v12);
  v6 = [(BEAXLineInfo *)self attributedText];
  v7 = [v6 string];
  v8 = [NSString stringWithFormat:@"<%@ %p range=%@ frame=%@ text='%@'>", v3, self, v4, v5, v7];

  return v8;
}

+ (id)linkElementsForElement:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if ([v3 accessibilityElementCount] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v3 accessibilityElementAtIndex:v6];
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 < [v3 accessibilityElementCount]);
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

+ (id)lineRectsForElement:(id)a3
{
  v3 = [a3 lineRectsAndText];
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
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

+ (id)textForElement:(id)a3
{
  v3 = a3;
  v4 = [v3 textMarkerRange];
  v5 = [v3 stringForTextMarkers:v4];

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