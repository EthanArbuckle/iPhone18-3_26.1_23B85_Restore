@interface THFlowPageLayout
- (BOOL)p_isGutterInfoAssigned:(id)a3;
- (CGPoint)originOfCharacterIndex:(unint64_t)a3;
- (CGRect)bodyRectForChildLayout:(id)a3;
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (THFlowPageLayout)initWithInfo:(id)a3;
- (THModelBodyTextInfo)bodyInfo;
- (_NSRange)firstLineInRect:(CGRect)a3 fromCharIndex:(unint64_t)a4;
- (double)p_heightOfGutterDrawablesForBodyLayout:(id)a3;
- (double)p_placeCompactGutterDrawableLayout:(id)a3 forBody:(id)a4 atOffset:(double)a5;
- (id)adjustImageGeometry:(id)a3 withLayoutGeometry:(id)a4 forLayout:(id)a5;
- (id)adjustLayoutGeometry:(id)a3 forLayout:(id)a4;
- (id)computeLayoutGeometry;
- (id)gutterDrawableStorage;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)sortedGutterDrawables;
- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3;
- (void)canvasDidScroll;
- (void)dealloc;
- (void)layoutContentAtBodyIndex:(unint64_t)a3 offsetFromTop:(double)a4 padAbove:(double *)a5 padBelow:(double *)a6;
- (void)layoutContentFromBottom:(double *)a3;
- (void)layoutContentFromTop:(double *)a3;
- (void)p_assignGutterInfo:(id)a3 toBodyLayout:(id)a4;
- (void)p_layoutBodyLayout:(id)a3;
- (void)p_layoutContentDownwardFromBodyIndex:(unint64_t)a3 amount:(double *)a4;
- (void)p_layoutContentUpwardFromBodyIndex:(unint64_t)a3 amount:(double *)a4;
- (void)p_layoutGutterDrawables;
- (void)p_layoutGutterDrawablesForBodyLayout:(id)a3;
- (void)p_layoutNextBodyLayout;
- (void)p_placeGutterDrawableLayout:(id)a3 withPositioning:(id)a4 inColumn:(id)a5 inBody:(id)a6;
- (void)validate;
- (void)wasAddedToLayoutController:(id)a3;
- (void)willBeRemovedFromLayoutController:(id)a3;
@end

@implementation THFlowPageLayout

- (THFlowPageLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = THFlowPageLayout;
  v3 = [(THPageLayout *)&v6 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    if (([-[THFlowPageLayout info](v3 "info")] & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v4->mLayoutManager = [[TSWPLayoutManager alloc] initWithStorage:objc_msgSend(-[THFlowPageLayout info](v4 owner:{"info"), "bodyStorage"), v4}];
    v4->mFirstBodyIndexNeedingGutterLayout = 0x7FFFFFFFFFFFFFFFLL;
    v4->_assignedGutterLayouts = objc_alloc_init(TSUPointerKeyDictionary);
  }

  return v4;
}

- (void)dealloc
{
  if (self->mLayoutTimer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mLayoutManager = 0;
  self->mSortedGutterDrawables = 0;

  self->_assignedGutterLayouts = 0;
  v3.receiver = self;
  v3.super_class = THFlowPageLayout;
  [(THPageLayout *)&v3 dealloc];
}

- (THModelBodyTextInfo)bodyInfo
{
  v2 = [-[THFlowPageLayout info](self "info")];
  if ([v2 count] != &dword_0 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  [v2 lastObject];

  return TSUCheckedDynamicCast();
}

- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(THPageLayout *)self bodyLayouts];
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) firstCharacterIndexOverlappingPageRect:{x, y, width, height}];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v13;
        }
      }

      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (CGRect)bodyRectForChildLayout:(id)a3
{
  v4 = [(THPageLayout *)self pageController];
  v5 = [a3 bodyIndex];

  [(THPageController *)v4 i_rectForBodyIndex:v5];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGPoint)originOfCharacterIndex:(unint64_t)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mBodyLayouts = self->super.mBodyLayouts;
  v8 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(mBodyLayouts);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = -[THPageController i_textRangeForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_textRangeForBodyIndex:", [v12 bodyIndex]);
        if (a3 >= v13 && a3 - v13 < v14)
        {
          [(THFlowPageLayout *)self p_layoutBodyLayout:v12];
          [(THFlowPageLayout *)self p_layoutGutterDrawables];
          [v12 pageOriginOfCharacterIndex:a3];
          x = v16;
          y = v17;
          goto LABEL_13;
        }
      }

      v9 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

LABEL_13:
  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)layoutContentAtBodyIndex:(unint64_t)a3 offsetFromTop:(double)a4 padAbove:(double *)a5 padBelow:(double *)a6
{
  if (![(NSMutableArray *)self->super.mBodyLayouts count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableArray *)self->super.mBodyLayouts count]<= a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableArray *)self->super.mBodyLayouts count]> a3)
  {
    v11 = [(NSMutableArray *)self->super.mBodyLayouts objectAtIndex:a3];
    [(THFlowPageLayout *)self p_layoutBodyLayout:v11];
    *a5 = *a5 - a4;
    [v11 textHeight];
    *a6 = *a6 - (v12 - a4);
    if (a3)
    {
      [(THFlowPageLayout *)self p_layoutContentUpwardFromBodyIndex:a3 - 1 amount:a5];
    }

    v13 = *a5;
    if (*a5 > 0.0)
    {
      [(THPageController *)[(THPageLayout *)self pageController] bodyOffset];
      v13 = *a5 - v14;
      *a5 = v13;
    }

    v15 = a3 + 1;
    if (v15 < [(NSMutableArray *)self->super.mBodyLayouts count])
    {
      [(THFlowPageLayout *)self p_layoutContentDownwardFromBodyIndex:v15 amount:a6];
    }
  }

  [(THFlowPageLayout *)self p_layoutGutterDrawables];
  [(THPageController *)[(THPageLayout *)self pageController] i_gutterOverhang];
  *a6 = *a6 - v16;
}

- (void)layoutContentFromBottom:(double *)a3
{
  if (![(NSMutableArray *)self->super.mBodyLayouts count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableArray *)self->super.mBodyLayouts count])
  {
    [(THFlowPageLayout *)self p_layoutContentUpwardFromBodyIndex:[(NSMutableArray *)self->super.mBodyLayouts count]- 1 amount:a3];
    if (*a3 > 0.0)
    {
      [(THPageController *)[(THPageLayout *)self pageController] bodyOffset];
      *a3 = *a3 - v5;
    }
  }
}

- (void)layoutContentFromTop:(double *)a3
{
  if (![(NSMutableArray *)self->super.mBodyLayouts count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(NSMutableArray *)self->super.mBodyLayouts count])
  {
    [(THPageController *)[(THPageLayout *)self pageController] bodyOffset];
    *a3 = *a3 - v5;

    [(THFlowPageLayout *)self p_layoutContentDownwardFromBodyIndex:0 amount:a3];
  }
}

- (_NSRange)firstLineInRect:(CGRect)a3 fromCharIndex:(unint64_t)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(NSMutableArray *)self->super.mBodyLayouts count])
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"[THFlowPageLayout firstLineInRect:fromCharIndex:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageLayout.mm"];
    v13 = v11;
    v4 = a4;
    [v10 handleFailureInFunction:v13 file:v12 lineNumber:232 description:@"must have body layouts to lookup line ranges"];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = [(NSMutableArray *)self->super.mBodyLayouts copy];
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v54 count:16];
  v44 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v40 = 0;
    goto LABEL_27;
  }

  v16 = v15;
  v45 = 0;
  v46 = v14;
  v17 = *v51;
  v48 = *v51;
  while (2)
  {
    v18 = 0;
    v49 = v16;
    do
    {
      if (*v51 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v50 + 1) + 8 * v18);
      -[THPageController i_rectForBodyIndex:](-[THPageLayout pageController](self, "pageController", v44), "i_rectForBodyIndex:", [v19 bodyIndex]);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = -[THPageController i_textRangeForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_textRangeForBodyIndex:", [v19 bodyIndex]);
      if (v28 + v29 > v4)
      {
        v56.origin.x = v21;
        v56.origin.y = v23;
        v56.size.width = v25;
        v56.size.height = v27;
        MaxY = CGRectGetMaxY(v56);
        v57.origin.x = x;
        v57.origin.y = y;
        v57.size.width = width;
        v57.size.height = height;
        if (MaxY > CGRectGetMinY(v57))
        {
          if ([v19 isLaidOut])
          {
            v31 = [objc_msgSend(v19 "columns")];
            if (v31)
            {
              v32 = v31;
              v33 = [v31 range];
              v34 = v4;
              if (v33 >= v4)
              {
                v34 = [v32 range];
              }

              v35 = [v32 lineIndexForCharIndex:v34 eol:1];
              v36 = [v32 countLines];
              if (v35 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_19;
              }

              v37 = v36;
              if (v35 >= v36)
              {
LABEL_18:
                v14 = v46;
                v4 = a4;
                v16 = v49;
LABEL_19:
                v17 = v48;
                goto LABEL_22;
              }

              while (1)
              {
                v38 = [v32 rangeOfLineFragmentAtIndex:v35];
                v40 = v39;
                +[TSWPColumn rectForSelection:withColumns:](TSWPColumn, "rectForSelection:withColumns:", +[TSWPSelection selectionWithRange:](TSWPSelection, "selectionWithRange:", v38, v39), [v19 columns]);
                [v19 rectInParent:?];
                MidY = CGRectGetMidY(v58);
                v59.origin.x = x;
                v59.origin.y = y;
                v59.size.width = width;
                v59.size.height = height;
                if (MidY > CGRectGetMinY(v59))
                {
                  break;
                }

                if (v37 == ++v35)
                {
                  goto LABEL_18;
                }
              }

              v14 = v46;
              v17 = v48;
              v16 = v49;
              if (v38 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v44 = v38;
                goto LABEL_27;
              }

              v45 = v40;
              v4 = a4;
            }
          }
        }
      }

LABEL_22:
      v18 = v18 + 1;
    }

    while (v18 != v16);
    v16 = [v14 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v44 = 0x7FFFFFFFFFFFFFFFLL;
  v40 = v45;
LABEL_27:
  v42 = v44;
  v43 = v40;
  result.length = v43;
  result.location = v42;
  return result;
}

- (void)canvasDidScroll
{
  [-[THFlowPageLayout interactiveCanvasController](self "interactiveCanvasController")];
  rect[0] = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  memset(&rect[1], 0, 32);
  v23 = 0u;
  v24 = 0u;
  mBodyLayouts = self->super.mBodyLayouts;
  v11 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&rect[1] objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *rect[3];
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*rect[3] != v13)
      {
        objc_enumerationMutation(mBodyLayouts);
      }

      v15 = *(rect[2] + 8 * v14);
      [v15 frameInRoot];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      MinY = CGRectGetMinY(v26);
      *&v27.origin.x = rect[0];
      v27.origin.y = v5;
      v27.size.width = v7;
      v27.size.height = v9;
      if (MinY > CGRectGetMaxY(v27))
      {
        break;
      }

      if (([v15 isLaidOut] & 1) == 0)
      {
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        MaxY = CGRectGetMaxY(v28);
        *&v29.origin.x = rect[0];
        v29.origin.y = v5;
        v29.size.width = v7;
        v29.size.height = v9;
        if (MaxY >= CGRectGetMinY(v29))
        {
          [-[THFlowPageLayout interactiveCanvasController](self "interactiveCanvasController")];
          return;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&rect[1] objects:v25 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (void)validate
{
  if (self->mFirstBodyIndexNeedingGutterLayout != 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = THFlowPageLayout;
  [(THPageLayout *)&v9 validate];
  mBodyLayouts = self->super.mBodyLayouts;
  if (!mBodyLayouts)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mBodyLayouts = self->super.mBodyLayouts;
  }

  if (![(NSMutableArray *)mBodyLayouts count])
  {
    v4 = [(THPageController *)[(THPageLayout *)self pageController] i_bodyCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(THPageController *)[(THPageLayout *)self pageController] i_infoForBodyIndex:i];
        v8 = [objc_alloc(objc_msgSend(v7 "layoutClass"))];
        [v8 setBodyIndex:i];
        [(NSMutableArray *)self->super.mBodyLayouts addObject:v8];
        [(THFlowPageLayout *)self addChild:v8];
      }
    }
  }

  [-[THFlowPageLayout layoutController](self "layoutController")];
}

- (id)computeLayoutGeometry
{
  [(THPageController *)[(THPageLayout *)self pageController] i_rectForPageLayout];
  v6 = [[TSDLayoutGeometry alloc] initWithFrame:{v2, v3, v4, v5}];

  return v6;
}

- (void)wasAddedToLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THFlowPageLayout;
  [(THPageLayout *)&v4 wasAddedToLayoutController:a3];
  if (([-[THFlowPageLayout layoutController](self "layoutController")] & 1) == 0)
  {
    if (self->mLayoutTimer)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    self->mLayoutTimer = [NSTimer timerWithTimeInterval:self target:"p_layoutNextBodyLayout" selector:0 userInfo:1 repeats:0.25];
    [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:self->mLayoutTimer, NSDefaultRunLoopMode];
  }
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  v4.receiver = self;
  v4.super_class = THFlowPageLayout;
  [(THPageLayout *)&v4 willBeRemovedFromLayoutController:a3];
  if (([-[THFlowPageLayout layoutController](self "layoutController")] & 1) == 0)
  {
    [(NSTimer *)self->mLayoutTimer invalidate];

    self->mLayoutTimer = 0;
  }
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = [objc_msgSend(-[THFlowPageLayout info](self "info")];
  if ([v4 definesProperty:91] && objc_msgSend(v4, "intValueForProperty:", 91))
  {
    v5 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:{91, 0, 0, 0}];
    v4 = [objc_msgSend(v4 "stylesheet")];
  }

  return v4;
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  v5.receiver = self;
  v5.super_class = THFlowPageLayout;
  [(THFlowPageLayout *)&v5 maximumFrameSizeForChild:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)adjustLayoutGeometry:(id)a3 forLayout:(id)a4
{
  [-[THPageController pagePositionController](-[THPageLayout pageController](self "pageController")];
  v8 = v7;
  if ([-[THPageController delegate](-[THPageLayout pageController](self "pageController")] && v8 != 768.0 && -[NSArray containsObject:](-[THPageLayout floatingDrawableLayouts](self, "floatingDrawableLayouts"), "containsObject:", a4))
  {
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v8 / 768.0, v8 / 768.0);
    if (a3)
    {
      [a3 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v11 = v14;
    CGAffineTransformConcat(&v13, &t1, &v11);
    v14 = v13;
    v9 = [TSDLayoutGeometry alloc];
    [a3 size];
    v13 = v14;
    return [v9 initWithSize:&v13 transform:?];
  }

  return a3;
}

- (id)adjustImageGeometry:(id)a3 withLayoutGeometry:(id)a4 forLayout:(id)a5
{
  v6 = a3;
  if ([-[THPageController delegate](-[THPageLayout pageController](self pageController])
  {
    if ([(NSArray *)[(THPageLayout *)self floatingDrawableLayouts] containsObject:a5])
    {
      [-[THPageController pagePositionController](-[THPageLayout pageController](self "pageController")];
      if (v8 != 768.0)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeScale(&v14, v8 / 768.0, v8 / 768.0);
        if (v6)
        {
          [v6 transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        v11 = v14;
        CGAffineTransformConcat(&v13, &t1, &v11);
        v14 = v13;
        v9 = [TSDLayoutGeometry alloc];
        [v6 size];
        v13 = v14;
        return [v9 initWithSize:&v13 transform:?];
      }
    }
  }

  return v6;
}

- (void)p_assignGutterInfo:(id)a3 toBodyLayout:(id)a4
{
  if (![(THFlowPageLayout *)self p_isGutterInfoAssigned:?])
  {
    v7 = [(THFlowPageLayout *)self assignedGutterLayouts];

    [(TSUPointerKeyDictionary *)v7 setObject:a4 forUncopiedKey:a3];
  }
}

- (BOOL)p_isGutterInfoAssigned:(id)a3
{
  v4 = [(TSUPointerKeyDictionary *)[(THFlowPageLayout *)self assignedGutterLayouts] allKeys];

  return [v4 tsu_containsObjectIdenticalTo:a3];
}

- (double)p_heightOfGutterDrawablesForBodyLayout:(id)a3
{
  v5 = [(THFlowPageLayout *)self gutterDrawableStorage];
  v6 = [(THFlowPageLayout *)self sortedGutterDrawables];
  v7 = -[THPageController i_textRangeForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_textRangeForBodyIndex:", [a3 bodyIndex]);
  v9 = v8;
  v10 = 0.0;
  if ([-[THFlowPageLayout info](self "info")])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v11 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = &v7[v9];
      v14 = *v32;
      do
      {
        v15 = 0;
        v16 = obj;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v16);
          }

          v17 = *(*(&v31 + 1) + 8 * v15);
          v18 = [v5 positioningOfDrawable:v17];
          if (v18)
          {
            v19 = [v18 bodyCharIndex];
            v20 = v7 <= v19 && v13 >= v19;
            if (v20 || v19 == 0x7FFFFFFFFFFFFFFFLL && (v21 = [a3 bodyIndex], v22 = -[NSMutableArray count](self->super.mBodyLayouts, "count") - 1 == v21, v16 = obj, v22))
            {
              if (![(THFlowPageLayout *)self p_isGutterInfoAssigned:v17]|| [(THFlowPageLayout *)self p_isGutterInfo:v17 assgnedToBodyLayout:a3])
              {
                v23 = [(THPageLayout *)self insertValidatedChildLayoutForInfo:v17];
                if (v23)
                {
                  [(THFlowPageLayout *)self p_offsetForGutterDrawableLayout:v23 forBody:a3 atOffset:v10];
                  v10 = v24;
                  [(THFlowPageLayout *)self p_assignGutterInfo:v17 toBodyLayout:a3];
                }

                else
                {
                  v25 = +[TSUAssertionHandler currentHandler];
                  v26 = [NSString stringWithUTF8String:"[THFlowPageLayout p_heightOfGutterDrawablesForBodyLayout:]"];
                  v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THFlowPageLayout.mm"];
                  v28 = v25;
                  v16 = obj;
                  [v28 handleFailureInFunction:v26 file:v27 lineNumber:536 description:{@"invalid nil value for '%s'", "gutterLayout"}];
                }
              }
            }
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }
  }

  return v10;
}

- (void)p_layoutBodyLayout:(id)a3
{
  v5 = [a3 isLaidOut];
  v6 = -[THPageController i_textRangeForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_textRangeForBodyIndex:", [a3 bodyIndex]);
  v8 = v7;
  v20.location = [(TSWPLayoutManager *)self->mLayoutManager dirtyRange];
  v21.location = v6;
  v21.length = v8;
  if (NSIntersectionRange(v20, v21).length || (v5 & 1) == 0)
  {
    [a3 layoutWithLayoutManager:self->mLayoutManager range:{v6, v8}];
    if ((v5 & 1) == 0)
    {
      v9 = 0.0;
      if ([-[THPageController delegate](-[THPageLayout pageController](self "pageController")])
      {
        [(THFlowPageLayout *)self p_heightOfGutterDrawablesForBodyLayout:a3];
        v9 = v10;
      }

      v11 = [(THPageLayout *)self pageController];
      [a3 textHeight];
      -[THPageController i_setHeight:forBodyIndex:](v11, "i_setHeight:forBodyIndex:", [a3 bodyIndex], v9 + v12);
      LODWORD(v13) = [a3 bodyIndex];
      v14 = [(NSMutableArray *)self->super.mBodyLayouts count];
      if (v14 > v13)
      {
        v15 = v14;
        v13 = v13;
        do
        {
          [-[NSMutableArray objectAtIndex:](self->super.mBodyLayouts objectAtIndex:{v13++), "invalidatePosition"}];
        }

        while (v15 != v13);
      }

      mFirstBodyIndexNeedingGutterLayout = self->mFirstBodyIndexNeedingGutterLayout;
      if (mFirstBodyIndexNeedingGutterLayout >= [a3 bodyIndex])
      {
        v17 = [a3 bodyIndex];
      }

      else
      {
        v17 = self->mFirstBodyIndexNeedingGutterLayout;
      }

      self->mFirstBodyIndexNeedingGutterLayout = v17;
    }

    [(THFlowPageLayout *)self invalidateFrame];
    v18 = [(THFlowPageLayout *)self parent];

    [v18 invalidateFrame];
  }
}

- (void)p_layoutNextBodyLayout
{
  if (-[NSMutableArray count](self->super.mBodyLayouts, "count") && ([-[THFlowPageLayout interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
  {
    [-[THFlowPageLayout interactiveCanvasController](self "interactiveCanvasController")];
    TSDCenterOfRect();
    v4 = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    mBodyLayouts = self->super.mBodyLayouts;
    v6 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      v10 = 1.79769313e308;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(mBodyLayouts);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if (([v12 isLaidOut] & 1) == 0)
          {
            [v12 frameInRoot];
            x = v24.origin.x;
            y = v24.origin.y;
            width = v24.size.width;
            height = v24.size.height;
            if (CGRectGetMaxY(v24) > v4)
            {
              v26.origin.x = x;
              v26.origin.y = y;
              v26.size.width = width;
              v26.size.height = height;
              v17 = CGRectGetMinY(v26) - v4;
              goto LABEL_16;
            }

            v25.origin.x = x;
            v25.origin.y = y;
            v25.size.width = width;
            v25.size.height = height;
            v10 = v4 - CGRectGetMaxY(v25);
            v8 = v12;
          }
        }

        v7 = [(NSMutableArray *)mBodyLayouts countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v12 = 0;
      v17 = 1.79769313e308;
    }

    else
    {
      v12 = 0;
      v8 = 0;
      v17 = 1.79769313e308;
      v10 = 1.79769313e308;
    }

LABEL_16:
    if (v10 >= v17)
    {
      v18 = v12;
    }

    else
    {
      v18 = v8;
    }

    if (v18)
    {
      [(THFlowPageLayout *)self p_layoutBodyLayout:?];
      [(THFlowPageLayout *)self p_layoutGutterDrawables];
    }

    else
    {
      [(NSTimer *)self->mLayoutTimer invalidate];

      self->mLayoutTimer = 0;
    }
  }
}

- (void)p_layoutContentUpwardFromBodyIndex:(unint64_t)a3 amount:(double *)a4
{
  if (a3 != -1)
  {
    v6 = a3;
    v7 = *a4;
    do
    {
      if (v7 <= 0.0)
      {
        break;
      }

      v8 = [(NSMutableArray *)self->super.mBodyLayouts objectAtIndex:v6];
      [(THFlowPageLayout *)self p_layoutBodyLayout:v8];
      [v8 textHeight];
      v7 = *a4 - v9;
      *a4 = v7;
      --v6;
    }

    while (v6 != -1);
  }

  [(THFlowPageLayout *)self p_layoutGutterDrawables];
  [(THPageController *)[(THPageLayout *)self pageController] i_gutterOverhang];
  *a4 = *a4 - v10;
}

- (void)p_layoutContentDownwardFromBodyIndex:(unint64_t)a3 amount:(double *)a4
{
  v7 = [(NSMutableArray *)self->super.mBodyLayouts count];
  if (v7 > a3)
  {
    v8 = v7;
    v9 = *a4;
    do
    {
      if (v9 <= 0.0)
      {
        break;
      }

      v10 = [(NSMutableArray *)self->super.mBodyLayouts objectAtIndex:a3];
      [(THFlowPageLayout *)self p_layoutBodyLayout:v10];
      [v10 textHeight];
      v9 = *a4 - v11;
      *a4 = v9;
      ++a3;
    }

    while (v8 != a3);
  }

  [(THFlowPageLayout *)self p_layoutGutterDrawables];
  [(THPageController *)[(THPageLayout *)self pageController] i_gutterOverhang];
  *a4 = *a4 - v12;
}

- (id)gutterDrawableStorage
{
  v3 = [-[THFlowPageLayout info](self "info")];
  v4 = [(THPageController *)[(THPageLayout *)self pageController] presentationType];

  return [v3 gutterStorageForPresentationType:v4];
}

- (id)sortedGutterDrawables
{
  result = self->mSortedGutterDrawables;
  if (!result)
  {
    result = [-[THFlowPageLayout gutterDrawableStorage](self "gutterDrawableStorage")];
    self->mSortedGutterDrawables = result;
  }

  return result;
}

- (void)p_placeGutterDrawableLayout:(id)a3 withPositioning:(id)a4 inColumn:(id)a5 inBody:(id)a6
{
  v11 = [a4 bodyCharIndex];
  if (a5)
  {
    [a5 topOfLineAtCharIndex:v11];
  }

  v12 = [a3 geometry];
  [a4 offset];
  [v12 frame];
  v14 = v13;
  -[THPageController i_rectForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_rectForBodyIndex:", [a6 bodyIndex]);
  [a6 bodyIndex];
  TSURound();

  [a3 offsetGeometryBy:{0.0, v15 - v14}];
}

- (double)p_placeCompactGutterDrawableLayout:(id)a3 forBody:(id)a4 atOffset:(double)a5
{
  [objc_msgSend(a3 "geometry")];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  -[THPageController i_rectForBodyIndex:](-[THPageLayout pageController](self, "pageController"), "i_rectForBodyIndex:", [a4 bodyIndex]);
  v16 = v15;
  [a4 textHeight];
  v18 = [[TSDLayoutGeometry alloc] initWithFrame:{v10, v17 + v16 + a5, v12, v14}];
  [a3 setGeometry:v18];

  return v14 + a5 + 24.0;
}

- (void)p_layoutGutterDrawablesForBodyLayout:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(THFlowPageLayout *)self sortedGutterDrawables];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(THFlowPageLayout *)self p_isGutterInfo:v11 assgnedToBodyLayout:a3])
        {
          v12 = [(THPageLayout *)self insertValidatedChildLayoutForInfo:v11];
          if (v12)
          {
            [(THFlowPageLayout *)self p_placeCompactGutterDrawableLayout:v12 forBody:a3 atOffset:v9];
            v9 = v13;
          }

          else
          {
            [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)p_layoutGutterDrawables
{
  if ([-[THFlowPageLayout info](self "info")])
  {
    if (self->mFirstBodyIndexNeedingGutterLayout == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    if ([-[THPageController delegate](-[THPageLayout pageController](self "pageController")])
    {
      mFirstBodyIndexNeedingGutterLayout = self->mFirstBodyIndexNeedingGutterLayout;
      v4 = [(NSMutableArray *)self->super.mBodyLayouts count];
      if (mFirstBodyIndexNeedingGutterLayout < v4)
      {
        v5 = v4;
        do
        {
          v6 = [(NSMutableArray *)self->super.mBodyLayouts objectAtIndex:mFirstBodyIndexNeedingGutterLayout];
          if ([v6 isLaidOut])
          {
            [(THFlowPageLayout *)self p_layoutGutterDrawablesForBodyLayout:v6];
          }

          ++mFirstBodyIndexNeedingGutterLayout;
        }

        while (v5 != mFirstBodyIndexNeedingGutterLayout);
      }
    }

    else
    {
      v7 = [(THFlowPageLayout *)self layoutController];
      v8 = [(THFlowPageLayout *)self gutterDrawableStorage];
      v9 = [(THFlowPageLayout *)self sortedGutterDrawables];
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      v73 = v9;
      v74 = [v9 count];
      v14 = self->mFirstBodyIndexNeedingGutterLayout;
      v72 = [(NSMutableArray *)self->super.mBodyLayouts count];
      if (v14 < v72)
      {
        v15 = 0;
        rect_16 = v8;
        rect_24 = v7;
        do
        {
          v16 = [(NSMutableArray *)self->super.mBodyLayouts objectAtIndex:v14];
          v70 = [v16 isLaidOut];
          v17 = (v14 + 1);
          v18 = [(THPageController *)[(THPageLayout *)self pageController] i_textRangeForBodyIndex:v14];
          if (v15 < v74)
          {
            v20 = v18;
            v64 = v14;
            v68 = &v18[v19];
            v69 = v14 + 1;
            do
            {
              v21 = [v73 objectAtIndex:v15];
              v22 = [v8 positioningOfDrawable:v21];
              v23 = [v22 bodyCharIndex];
              if (v23 >= v20)
              {
                v29 = v23;
                if (v17 != v72 && v23 >= v68)
                {
                  goto LABEL_35;
                }

                if (v70)
                {
                  if ([objc_msgSend(v16 "columns")] != &dword_0 + 1)
                  {
                    v17 = v69;
                    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
                  }

                  v30 = [objc_msgSend(v16 "columns")];
                  v31 = [v30 range];
                  if (v29 < v31 || v29 - v31 >= v32)
                  {
                    if (v17 != v72 || (v33 = [v30 range], v29 != &v33[v34]))
                    {
                      v17 = v69;
                      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
                    }
                  }

                  v35 = [(THPageLayout *)self insertValidatedChildLayoutForInfo:v21];
                  if (!v35)
                  {
                    v17 = v69;
                    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
                  }

                  [(THFlowPageLayout *)self p_placeGutterDrawableLayout:v35 withPositioning:v22 inColumn:v30 inBody:v16];
                  v75.origin.x = x;
                  v75.origin.y = y;
                  v75.size.width = width;
                  v75.size.height = height;
                  if (!CGRectIsNull(v75))
                  {
                    [v35 frame];
                    v37 = v36;
                    rect_8 = v38;
                    v40 = v39;
                    v42 = v41;
                    v76.origin.x = x;
                    v76.origin.y = y;
                    v76.size.width = width;
                    v76.size.height = height;
                    v43 = height;
                    v44 = width;
                    v45 = y;
                    v46 = x;
                    v47 = CGRectGetMaxY(v76) + 24.0;
                    v77.origin.x = v37;
                    v77.origin.y = rect_8;
                    v77.size.width = v40;
                    v77.size.height = v42;
                    if (v47 > CGRectGetMinY(v77))
                    {
                      v78.origin.x = v46;
                      v78.origin.y = v45;
                      v78.size.width = v44;
                      v78.size.height = v43;
                      v48 = CGRectGetMaxY(v78) + 24.0;
                      v79.origin.x = v37;
                      v79.origin.y = rect_8;
                      v79.size.width = v40;
                      v79.size.height = v42;
                      [v35 offsetGeometryBy:{0.0, v48 - CGRectGetMinY(v79)}];
                    }
                  }

                  [v35 frame];
                  x = v49;
                  y = v50;
                  width = v51;
                  height = v52;
                  v8 = rect_16;
                  v7 = rect_24;
                }
              }

              else
              {
                v24 = [v7 layoutForInfo:v21 childOfLayout:self];
                if (v24)
                {
                  [v24 frame];
                  x = v25;
                  y = v26;
                  width = v27;
                  height = v28;
                }
              }

              ++v15;
            }

            while (v74 != v15);
            v15 = v74;
LABEL_35:
            v14 = v64;
          }

          v53 = v70 ^ 1;
          if (v17 != v72)
          {
            v53 = 1;
          }

          if ((v53 & 1) == 0)
          {
            [(THPageController *)[(THPageLayout *)self pageController] i_rectForBodyIndex:v14];
            v71 = v54;
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v80.origin.x = x;
            v80.origin.y = y;
            v80.size.width = width;
            v80.size.height = height;
            if (!CGRectIsNull(v80))
            {
              v81.origin.x = x;
              v81.origin.y = y;
              v81.size.width = width;
              v81.size.height = height;
              MaxY = CGRectGetMaxY(v81);
              v82.origin.x = v71;
              v82.origin.y = v56;
              v82.size.width = v58;
              v82.size.height = v60;
              if (MaxY > CGRectGetMaxY(v82))
              {
                v62 = [(THPageLayout *)self pageController];
                v83.origin.x = x;
                v83.origin.y = y;
                v83.size.width = width;
                v83.size.height = height;
                v63 = CGRectGetMaxY(v83);
                v84.origin.x = v71;
                v84.origin.y = v56;
                v84.size.width = v58;
                v84.size.height = v60;
                [(THPageController *)v62 i_setGutterOverhang:v63 - CGRectGetMaxY(v84)];
              }
            }
          }

          v14 = v17;
        }

        while (v17 != v72);
      }
    }
  }

  self->mFirstBodyIndexNeedingGutterLayout = 0x7FFFFFFFFFFFFFFFLL;
}

@end