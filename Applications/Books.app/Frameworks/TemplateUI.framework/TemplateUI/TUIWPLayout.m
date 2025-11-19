@interface TUIWPLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (BOOL)_isEmptyLine:(unint64_t)a3 column:(unint64_t)a4;
- (BOOL)_isTruncatedLine:(unint64_t)a3 column:(unint64_t)a4;
- (BOOL)_isWhitespaceLine:(unint64_t)a3 column:(unint64_t)a4;
- (BOOL)expandableContentIsTruncated;
- (CGRect)computedErasableBoundsPrimitive;
- (CGSize)_contentSizeForColumns:(id)a3;
- (CGSize)_layoutSizeForColumns:(id)a3 withInsets:(UIEdgeInsets *)a4;
- (NSString)description;
- (TUIWPLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (TUIWPStorage)storage;
- (double)_bottomBaselineForColumns:(id)a3;
- (double)_maxHeight;
- (double)_topAligmentOffsetForColumns:(id)a3;
- (double)computedScale;
- (double)expandableMoreXOffset;
- (id)_columnStyle;
- (id)_newWPTextForIntrinsic:(BOOL)a3;
- (id)debugContentDescription;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_computeIntrinsicContentSize;
- (void)_wpText:(id)a3 scaleFactorDidChange:(double)a4;
- (void)computeLayout;
- (void)onComputedScaleDidChange;
- (void)onInvalidateIntrinsicSize;
@end

@implementation TUIWPLayout

- (TUIWPLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v12.receiver = self;
  v12.super_class = TUIWPLayout;
  v5 = [(TUILayout *)&v12 initWithModel:a3 parent:a4 controller:a5];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 specifiedWidth];
    if ((v7 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v6 setSpecifiedWidthComputeInherited:1];
    }

    v6->_scale = 1.0;
    v6->_cachedSingleLineTypographicMax = NAN;
    v8 = [(TUILayout *)v6 box];
    v9 = [v8 storage];
    v10 = [v9 paragraphStyleAtParIndex:0 effectiveRange:0];

    v6->_flags.isFirstParagraphCentered = [v10 intValueForProperty:86] == 2;
  }

  return v6;
}

- (TUIWPStorage)storage
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 storage];

  return v3;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  [(TUIWPLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  if (width <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (width < 3.40282347e38)
    {
      *&v5 = width;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  [(TUIWPLayout *)self _computeIntrinsicContentSize];
  height = self->_intrinsicContentSize.height;
  if (height <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (height < 3.40282347e38)
    {
      *&v5 = height;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (void)_wpText:(id)a3 scaleFactorDidChange:(double)a4
{
  self->_scale = a4;
  [(TUILayout *)self notifyChildrenScaleDidChange];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(TUILayout *)self children];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) validateLayout];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (double)computedScale
{
  v5.receiver = self;
  v5.super_class = TUIWPLayout;
  [(TUILayout *)&v5 computedScale];
  return v3 * self->_scale;
}

- (void)computeLayout
{
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v3 = [(TUILayout *)self children];
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v77;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v77 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v76 + 1) + 8 * i);
        [(TUILayout *)self containingWidth];
        [v8 setContainingWidth:?];
        [(TUILayout *)self containingHeight];
        [v8 setContainingHeight:?];
        [v8 validateLayout];
      }

      v5 = [v3 countByEnumeratingWithState:&v76 objects:v80 count:16];
    }

    while (v5);
  }

  self->_scale = 1.0;
  v9 = [(TUIWPLayout *)self _newWPTextForIntrinsic:0];
  [(TUILayout *)self computeWidth];
  v11 = fmax(v10, 1.0);
  [(TUIWPLayout *)self _maxHeight];
  v13 = v12;
  if (v12 == 1.79769313e308)
  {
    v14 = 4294967300.0;
  }

  else
  {
    v14 = v12;
  }

  if (v12 != 1.79769313e308)
  {
    v15 = [(TUIWPLayout *)self storage];
    v16 = [v9 layoutMultiColumnTextStorage:v15 minSize:0x7FFFFFFFFFFFFFFFLL maxSize:0x7FFFFFFFFFFFFFFFLL anchor:4099 pageNumber:CGSizeZero.width pageCount:CGSizeZero.height flags:{v11, 4294967300.0, CGPointZero.x, CGPointZero.y}];

    v17 = *&UIEdgeInsetsZero.bottom;
    v75[0] = *&UIEdgeInsetsZero.top;
    v75[1] = v17;
    [(TUIWPLayout *)self _layoutSizeForColumns:v16 withInsets:v75];
    if (*v75 < 0.0)
    {
      v14 = v14 - *v75;
    }
  }

  if (!self->_wpColumns || v13 != 1.79769313e308 || self->_cachedSingleLineTypographicMax >= v11)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [(TUIWPLayout *)self storage];
    v20 = [v9 layoutMultiColumnTextStorage:v19 minSize:0x7FFFFFFFFFFFFFFFLL maxSize:0x7FFFFFFFFFFFFFFFLL anchor:4099 pageNumber:CGSizeZero.width pageCount:CGSizeZero.height flags:{v11, v14, CGPointZero.x, CGPointZero.y}];
    wpColumns = self->_wpColumns;
    self->_wpColumns = v20;

    v22 = [(NSArray *)self->_wpColumns lastObject];
    v23 = [v22 logicalLineCount];
    v24 = [(TUILayout *)self controller];
    v25 = [v24 instantiateContext];
    v26 = [v25 environment];
    v27 = [v26 layoutDirection];

    if (v23 == &dword_0 + 1)
    {
      v28 = [v22 lineFragmentRangeForLogicalLineIndex:0];
      MaxX = NAN;
      if (v29 && v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = v28 + v29 - 1;
        if ([v22 isTruncatedLineFragmentAtIndex:{v31, NAN}])
        {
          MaxX = NAN;
        }

        else
        {
          MaxX = NAN;
          if (!self->_flags.isFirstParagraphCentered && v27 != &dword_0 + 2)
          {
            [v22 typographicBoundsOfLineFragmentAtIndex:{v31, NAN}];
            MaxX = CGRectGetMaxX(v81);
            if (v11 < MaxX)
            {
              MaxX = NAN;
            }
          }
        }
      }
    }

    else
    {
      MaxX = NAN;
    }

    self->_cachedSingleLineTypographicMax = MaxX;

    objc_autoreleasePoolPop(v18);
  }

  v32 = [(TUIWPLayout *)self _columnStyle];
  v33 = [v32 columnCount];

  v34 = [v9 maxLineCount];
  v35 = v34;
  if (v34 >= 2)
  {
    v36 = v33 - 1;
    if ([(TUIWPLayout *)self _isTruncatedLine:(v34 - 1) column:v36])
    {
      v35 = v35;
      while (1)
      {
        v37 = v35 - 1;
        if (![(TUIWPLayout *)self _isEmptyLine:v35 - 1 column:v36]&& ![(TUIWPLayout *)self _isWhitespaceLine:v35 - 1 column:v36])
        {
          break;
        }

        --v35;
        if (v37 <= 1)
        {
          v35 = 1;
          break;
        }
      }
    }
  }

  if (v35 != [v9 maxLineCount])
  {
    [v9 setMaxLineCount:v35];
    v38 = objc_autoreleasePoolPush();
    v39 = [(TUIWPLayout *)self storage];
    v40 = [v9 layoutMultiColumnTextStorage:v39 minSize:0x7FFFFFFFFFFFFFFFLL maxSize:0x7FFFFFFFFFFFFFFFLL anchor:4099 pageNumber:CGSizeZero.width pageCount:CGSizeZero.height flags:{v11, v14, CGPointZero.x, CGPointZero.y}];
    v41 = self->_wpColumns;
    self->_wpColumns = v40;

    self->_cachedSingleLineTypographicMax = NAN;
    objc_autoreleasePoolPop(v38);
  }

  [(TUIWPLayout *)self _layoutSizeForColumns:self->_wpColumns withInsets:&self->_layoutFrameInsets];
  v43 = v42;
  [(TUIWPLayout *)self _topAligmentOffsetForColumns:self->_wpColumns];
  v45 = v44;
  v46 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:0];
  [v46 erasableBounds:0];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v55 = v50 - v45;
  v56 = *&UIEdgeInsetsZero.bottom;
  *&self->_renderingInsets.top = *&UIEdgeInsetsZero.top;
  *&self->_renderingInsets.bottom = v56;
  self->_renderingInsets.top = fmin(v50 - v45, 0.0);
  v57 = v48;
  *&v56 = v52;
  v58 = v54;
  self->_renderingInsets.bottom = fmin(v43 - CGRectGetMaxY(*(&v55 - 1)), 0.0);
  LODWORD(v59) = [(TUILayout *)self specifiedHeight];
  self->_renderingInsets.bottom = fmin(self->_renderingInsets.bottom - (v43 - COERCE_FLOAT([(TUILayout *)self specifiedHeight])), 0.0);
  v60 = COERCE_FLOAT([(TUILayout *)self specifiedHeight]);
  v61 = [(TUILayout *)self box];
  v62 = [v61 allowHangingPunctuation];

  if (v62)
  {
    v63 = [(TUIWPLayout *)self storage];
    v64 = [v63 fontMetricsAtCharacterIndex:0];

    [v64 pointSize];
    self->_renderingInsets.left = -v65;
    [v64 pointSize];
    self->_renderingInsets.right = -v66;
  }

  v67 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:0];
  v68 = [v67 logicalLineCount];
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  if (v68)
  {
    v70 = [v67 lineFragmentRangeForLogicalLineIndex:v68 - 1];
  }

  else
  {
    v71 = 0;
    v70 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v70 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v71)
    {
      v72 = v71 + v70 - 1;
      if (v71 + v70 != 0x8000000000000000)
      {
        v69 = [v67 truncatedCharIndexForLineFragmentAtIndex:v72];
        if (v69 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v73 = [v67 rangeOfLineFragmentAtIndex:v72];
          if (v73 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v69 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v73 + v74;
          }
        }
      }
    }
  }

  [v9 positionAttachmentLayoutsWithOffset:v69 truncatedCharIndex:{0.0, -v45}];
  [(TUILayout *)self setComputedNaturalSize:v11, v60];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  [v5 contentsScale];
  v7 = v6;
  v8.i64[0] = *&self->_renderingInsets.top;
  v9 = *TUIInsetsExtendedForScale(v8, self->_renderingInsets.left, self->_renderingInsets.bottom, self->_renderingInsets.right, v7).i64;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = TUIFloatRoundedForScale(v9 - self->_layoutFrameInsets.top, v7);
  v17 = [_TUIWPDraw alloc];
  wpColumns = self->_wpColumns;
  v19 = [(TUILayout *)self box];
  v20 = [v19 blendMode];
  v21 = [(_TUIWPDraw *)v17 initWithColumns:wpColumns yOffset:v20 compositingFilterType:v16];

  v22 = [[TUIRenderModelDraw alloc] initWithDraw:v21 erasableInsets:v9, v11, v13, v15];
  [(TUILayout *)self renderModelSizeWithContext:v5];
  v24 = v23;
  v26 = v25;

  [(TUIRenderModelDraw *)v22 setSize:v24, v26];
  v27 = [(TUILayout *)self box];
  v28 = [v27 identifier];
  [(TUIRenderModelDraw *)v22 setIdentifier:v28];

  return v22;
}

- (CGRect)computedErasableBoundsPrimitive
{
  v13.receiver = self;
  v13.super_class = TUIWPLayout;
  [(TUILayout *)&v13 computedErasableBoundsPrimitive];
  top = self->_renderingInsets.top;
  left = self->_renderingInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_renderingInsets.right);
  v12 = v11 - (top + self->_renderingInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (id)_newWPTextForIntrinsic:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIWPLayout *)self _columnStyle];
  v6 = [(TUILayout *)self controller];
  v7 = [v6 instantiateContext];
  v8 = [v7 environment];
  v9 = [v8 layoutDirection] == &dword_0 + 2;

  v10 = [[_TUIWPText alloc] initWithParagraphStyle:0 columnStyle:v5 alignmentForNaturalAlignment:v9 naturalDirection:v9];
  [(_TUIWPText *)v10 setComputingIntrinsic:v3];
  v11 = [(TUILayout *)self children];
  [(_TUIWPText *)v10 updateWithAttachmentLayouts:v11];

  v12 = [(TUILayout *)self box];
  -[_TUIWPText setMaxLineCount:](v10, "setMaxLineCount:", [v12 maxLines]);

  v13 = [(TUILayout *)self box];
  -[_TUIWPText setAllowsLastLineTruncation:](v10, "setAllowsLastLineTruncation:", [v13 hideEllipses] ^ 1);

  [(TUIWPLayout *)self expandableMoreWidth];
  [(_TUIWPText *)v10 setReservedWidthWhenTruncating:?];
  v14 = [(TUILayout *)self box];
  -[_TUIWPText setUseShrinkToFit:](v10, "setUseShrinkToFit:", [v14 allowShrinkToFit]);

  v15 = [(TUILayout *)self box];
  v16 = [v15 allowShrinkToFit];
  v17 = 1.0;
  if ((v16 & 1) == 0)
  {
    v19.receiver = self;
    v19.super_class = TUIWPLayout;
    [(TUILayout *)&v19 computedScale];
  }

  [(_TUIWPText *)v10 setTextScaleFactor:v17];

  [(_TUIWPText *)v10 setLayout:self];
  return v10;
}

- (id)_columnStyle
{
  v3 = [[TSWPColumns alloc] initWithEqualColumnCount:1 gapFraction:0.0500000007];
  v4 = [TSSPropertyMap propertyMapWithPropertiesAndValues:148, v3, 0];
  v5 = [(TUIWPLayout *)self storage];
  v6 = [v5 stylesheet];
  v7 = [(TUIWPLayout *)self storage];
  v8 = [v7 stylesheet];
  v9 = [v8 defaultColumnStyle];
  v10 = [v6 variationOfStyle:v9 propertyMap:v4];

  return v10;
}

- (double)_maxHeight
{
  [(TUILayout *)self specifiedHeight];
  [(TUILayout *)self flexedHeight];

  [(TUILayout *)self flexedHeight];
  return result;
}

- (double)_topAligmentOffsetForColumns:(id)a3
{
  v3 = [a3 firstObject];
  if ([v3 logicalLineCount])
  {
    [v3 topOfCapForLogicalLineIndex:0];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)_bottomBaselineForColumns:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 logicalLineCount];
  v5 = 0.0;
  if (v4)
  {
    v6 = [v3 lineFragmentRangeForLogicalLineIndex:v4 - 1];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
    {
      [v3 baselineOfLineFragmentAtIndex:&v6[v7 - 1]];
      v5 = v9;
    }
  }

  return v5;
}

- (CGSize)_contentSizeForColumns:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  [v4 frameBounds];
  v6 = v5;
  v8 = v7;

  v9 = [v3 lastObject];

  [v9 frameBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  v18 = CGRectGetMaxX(v21) - v6;
  v19 = v8;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_layoutSizeForColumns:(id)a3 withInsets:(UIEdgeInsets *)a4
{
  v6 = a3;
  [(TUIWPLayout *)self _topAligmentOffsetForColumns:v6];
  v8 = v7;
  [(TUIWPLayout *)self _bottomBaselineForColumns:v6];
  v10 = v9;
  [(TUIWPLayout *)self _contentSizeForColumns:v6];
  v12 = v11;
  v14 = v13;

  v15 = fmin(-v8, 0.0);
  v16 = fmin(v10 - v14, 0.0);
  if (a4)
  {
    a4->top = v15;
    a4->left = 0.0;
    a4->bottom = v16;
    a4->right = 0.0;
  }

  v17 = v15 + v14 + v16;
  v18 = v12;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)_computeIntrinsicContentSize
{
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  height = CGSizeZero.height;
  if (self->_intrinsicContentSize.width == CGSizeZero.width && self->_intrinsicContentSize.height == height)
  {
    v10 = [(TUIWPLayout *)self _newWPTextForIntrinsic:1];
    v6 = [(TUIWPLayout *)self storage];
    v7 = [v10 layoutMultiColumnTextStorage:v6 minSize:0x7FFFFFFFFFFFFFFFLL maxSize:0x7FFFFFFFFFFFFFFFLL anchor:4111 pageNumber:CGSizeZero.width pageCount:height flags:{4294967300.0, 4294967300.0, CGPointZero.x, CGPointZero.y}];

    [(TUIWPLayout *)self _layoutSizeForColumns:v7 withInsets:0];
    p_intrinsicContentSize->width = v8;
    p_intrinsicContentSize->height = v9;
  }
}

- (BOOL)_isTruncatedLine:(unint64_t)a3 column:(unint64_t)a4
{
  if ([(NSArray *)self->_wpColumns count]<= a4)
  {
    return 0;
  }

  v7 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:a4];
  v8 = [v7 lineFragmentRangeForLogicalLineIndex:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 isTruncatedLineFragmentAtIndex:&v8[v9 - 1]];
  }

  return v11;
}

- (BOOL)_isEmptyLine:(unint64_t)a3 column:(unint64_t)a4
{
  if ([(NSArray *)self->_wpColumns count]<= a4)
  {
    return 0;
  }

  v7 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:a4];
  v8 = [v7 lineFragmentRangeForLogicalLineIndex:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v7 isEmptyLineFragmentAtIndex:&v8[v9 - 1]];
  }

  return v11;
}

- (BOOL)_isWhitespaceLine:(unint64_t)a3 column:(unint64_t)a4
{
  if ([(NSArray *)self->_wpColumns count]<= a4)
  {
    return 0;
  }

  v7 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:a4];
  v8 = [v7 lineFragmentRangeForLogicalLineIndex:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v14 = 1;
    do
    {
      v15 = [v7 rangeOfLineFragmentAtIndex:&v12[v14 - 1]];
      v17 = v16;
      v18 = [(TUIWPLayout *)self storage];
      v19 = [v18 substringWithRange:{v15, v17}];

      v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v21 = [v19 stringByTrimmingCharactersInSet:v20];

      v22 = [v21 length];
      v11 = v22 == 0;

      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v14 >= v13;
      }

      ++v14;
    }

    while (!v23);
  }

  return v11;
}

- (void)onComputedScaleDidChange
{
  v3.receiver = self;
  v3.super_class = TUIWPLayout;
  [(TUILayout *)&v3 onComputedScaleDidChange];
  [(TUILayout *)self invalidateLayout];
  [(TUILayout *)self invalidateIntrinsicSize];
}

- (void)onInvalidateIntrinsicSize
{
  v3.receiver = self;
  v3.super_class = TUIWPLayout;
  [(TUILayout *)&v3 onInvalidateIntrinsicSize];
  self->_intrinsicContentSize = CGSizeZero;
}

- (double)expandableMoreXOffset
{
  MaxX = 0.0;
  if ([(NSArray *)self->_wpColumns count])
  {
    v4 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:0];
    v5 = [v4 countLines];

    if (v5)
    {
      v6 = [(NSArray *)self->_wpColumns objectAtIndexedSubscript:[(NSArray *)self->_wpColumns count]- 1];
      if ([v6 countLines])
      {
        v7 = [v6 countLines] - 1;
        v8 = [v6 rangeOfLineFragmentAtIndex:v7];
        v10 = v9;
        v11 = [(TUIWPLayout *)self storage];
        LODWORD(v8) = [v11 writingDirectionForParagraphAtCharIndex:&v8[v10]];

        [v6 typographicBoundsOfLineFragmentAtIndex:v7];
        if (v8 == 1)
        {
          MinX = CGRectGetMinX(*&v12);
          [(TUIWPLayout *)self expandableMoreWidth];
          MaxX = MinX - v17;
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v12);
        }
      }
    }
  }

  return MaxX;
}

- (BOOL)expandableContentIsTruncated
{
  v2 = self;
  v3 = [(NSArray *)self->_wpColumns lastObject];
  LOBYTE(v2) = -[TUIWPLayout _isTruncatedLine:column:](v2, "_isTruncatedLine:column:", [v3 countLines] - 1, -[NSArray count](v2->_wpColumns, "count") - 1);

  return v2;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = TUIWPLayout;
  v3 = [(TUILayout *)&v10 description];
  v4 = [v3 mutableCopy];

  v5 = [v4 length] - 1;
  v6 = [(TUILayout *)self box];
  v7 = [v6 string];
  v8 = [NSString stringWithFormat:@" string='%@'>", v7];
  [v4 replaceCharactersInRange:v5 withString:{1, v8}];

  return v4;
}

- (id)debugContentDescription
{
  v2 = [(TUILayout *)self box];
  v3 = [v2 storage];
  v4 = [v3 string];
  v5 = [NSString stringWithFormat:@"'%@'", v4];

  return v5;
}

@end