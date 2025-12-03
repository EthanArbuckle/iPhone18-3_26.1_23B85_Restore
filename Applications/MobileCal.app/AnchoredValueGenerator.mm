@interface AnchoredValueGenerator
- (AnchoredValueGenerator)init;
- (double)_interpolatedValueForSize:(double)size;
- (double)_nearestValueForSize:(double)size;
- (double)_roundValue:(double)value;
- (double)valueForSize:(double)size;
- (double)valueForWindowSizeHeight:(unint64_t)height;
- (double)valueForWindowSizeWidth:(unint64_t)width;
- (void)_findBoundsForSize:(double)size outLowerBound:(id *)bound outUpperBound:(id *)upperBound outExactMatchValue:(double *)value outFoundExactMatch:(BOOL *)match;
- (void)addAnchoredValue:(double)value forSize:(double)size layoutShift:(BOOL)shift;
- (void)addAnchoredValue:(double)value forWindowSizeHeight:(unint64_t)height layoutShift:(BOOL)shift;
- (void)addAnchoredValue:(double)value forWindowSizeWidth:(unint64_t)width layoutShift:(BOOL)shift;
@end

@implementation AnchoredValueGenerator

- (AnchoredValueGenerator)init
{
  v3.receiver = self;
  v3.super_class = AnchoredValueGenerator;
  result = [(AnchoredValueGenerator *)&v3 init];
  if (result)
  {
    *&result->_calculationType = 0;
  }

  return result;
}

- (void)addAnchoredValue:(double)value forSize:(double)size layoutShift:(BOOL)shift
{
  shiftCopy = shift;
  self->_needsSorting = 1;
  cachedLastResult = self->_cachedLastResult;
  self->_cachedLastResult = 0;

  pairs = self->_pairs;
  if (!pairs)
  {
    v11 = objc_opt_new();
    v12 = self->_pairs;
    self->_pairs = v11;

    pairs = self->_pairs;
  }

  v13 = [AnchoredValuePair pairWithValue:shiftCopy size:value layoutShift:size];
  [(NSMutableArray *)pairs addObject:v13];
}

- (void)addAnchoredValue:(double)value forWindowSizeWidth:(unint64_t)width layoutShift:(BOOL)shift
{
  shiftCopy = shift;
  EKUIWidthForWindowSizeParadigm();

  [(AnchoredValueGenerator *)self addAnchoredValue:shiftCopy forSize:value layoutShift:v8];
}

- (void)addAnchoredValue:(double)value forWindowSizeHeight:(unint64_t)height layoutShift:(BOOL)shift
{
  shiftCopy = shift;
  EKUIHeightForWindowSizeParadigm();

  [(AnchoredValueGenerator *)self addAnchoredValue:shiftCopy forSize:value layoutShift:v8];
}

- (double)valueForSize:(double)size
{
  if (!self->_pairs)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"AnchoredValueGenerator.m" lineNumber:125 description:@"Anchored value: attempt to use without adding anchors"];

    return 0.0;
  }

  if (self->_needsSorting)
  {
    [(AnchoredValueGenerator *)self _sort];
  }

  cachedLastResult = self->_cachedLastResult;
  if (!cachedLastResult)
  {
    goto LABEL_11;
  }

  [(AnchoredValuePair *)cachedLastResult size];
  v7 = v6 - size;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  if (v7 >= 0.00001)
  {
LABEL_11:
    calculationType = [(AnchoredValueGenerator *)self calculationType];
    if (calculationType - 1 >= 3)
    {
      if (calculationType && calculationType != 4)
      {
        v23 = 0.0;
        v22 = 0;
        v20 = 0;
        v21 = 0;
        [(AnchoredValueGenerator *)self _findBoundsForSize:&v21 outLowerBound:&v20 outUpperBound:&v23 outExactMatchValue:&v22 outFoundExactMatch:size];
        v19 = v21;
        if (v22)
        {
          v15 = v23;
        }

        else
        {
          v15 = 0.0;
        }

        goto LABEL_18;
      }

      [(AnchoredValueGenerator *)self _interpolatedValueForSize:size];
    }

    else
    {
      [(AnchoredValueGenerator *)self _nearestValueForSize:size];
    }

    v15 = v11;
LABEL_18:
    [(AnchoredValueGenerator *)self _roundValue:v15];
    v14 = v16;
    v17 = [AnchoredValuePair pairWithValue:"pairWithValue:size:layoutShift:" size:0 layoutShift:?];
    v18 = self->_cachedLastResult;
    self->_cachedLastResult = v17;

    return v14;
  }

  v8 = self->_cachedLastResult;

  [(AnchoredValuePair *)v8 value];
  return result;
}

- (double)valueForWindowSizeWidth:(unint64_t)width
{
  EKUIWidthForWindowSizeParadigm();

  [(AnchoredValueGenerator *)self valueForSize:?];
  return result;
}

- (double)valueForWindowSizeHeight:(unint64_t)height
{
  EKUIHeightForWindowSizeParadigm();

  [(AnchoredValueGenerator *)self valueForSize:?];
  return result;
}

- (void)_findBoundsForSize:(double)size outLowerBound:(id *)bound outUpperBound:(id *)upperBound outExactMatchValue:(double *)value outFoundExactMatch:(BOOL *)match
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_pairs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v36;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        [v18 size];
        v20 = v19 - size;
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if (v20 < 0.00001)
        {
          if (upperBound)
          {
            *upperBound = 0;
          }

          if (bound)
          {
            *bound = 0;
          }

          if (value)
          {
            [v18 value];
            *value = v31;
          }

          if (match)
          {
            *match = 1;
          }

          goto LABEL_40;
        }

        [v18 size];
        if (v21 >= size)
        {
          [v18 size];
          if (v26 > size)
          {
            if (v14)
            {
              [v14 size];
              v28 = v27;
              [v18 size];
              if (v28 > v29)
              {
                v30 = v18;

                v14 = v30;
              }
            }

            else
            {
              v14 = v18;
            }
          }
        }

        else if (v15)
        {
          [v15 size];
          v23 = v22;
          [v18 size];
          if (v23 < v24)
          {
            v25 = v18;

            v15 = v25;
          }
        }

        else
        {
          v15 = v18;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (upperBound)
  {
    v32 = v14;
    *upperBound = v14;
  }

  if (bound)
  {
    v33 = v15;
    *bound = v15;
  }

  if (value)
  {
    *value = 0.0;
  }

  if (match)
  {
    *match = 0;
  }

LABEL_40:
}

- (double)_interpolatedValueForSize:(double)size
{
  v37 = 0.0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  [(AnchoredValueGenerator *)self _findBoundsForSize:&v35 outLowerBound:&v34 outUpperBound:&v37 outExactMatchValue:&v36 outFoundExactMatch:?];
  v6 = v35;
  v7 = v34;
  if (v36 != 1)
  {
    if (-[AnchoredValueGenerator calculationType](self, "calculationType") == 4 && ([v6 value], v10 = v9, objc_msgSend(v7, "value"), v10 > v11))
    {
      if ([v6 layoutShift])
      {
        layoutShift = 1;
      }

      else
      {
        layoutShift = [v7 layoutShift];
      }
    }

    else
    {
      layoutShift = 0;
    }

    layoutShift2 = v7 == 0;
    if (!(v7 | v6))
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"AnchoredValueGenerator.m" lineNumber:259 description:@"Anchored value: unable to find interpolated value"];

      v8 = 0.0;
      goto LABEL_28;
    }

    if (v7)
    {
      v15 = v6 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (((v16 | layoutShift) & 1) == 0)
    {
      [v6 size];
      v20 = size - v19;
      [v7 size];
      v22 = v21;
      [v6 size];
      v24 = v20 / (v22 - v23);
      [v7 value];
      v26 = v25;
      [v6 value];
      v28 = v26 - v27;
      [v6 value];
      v8 = v29 + v24 * v28;
      goto LABEL_28;
    }

    if ((v16 & 1) == 0)
    {
      if (!layoutShift)
      {
        v18 = 0;
LABEL_27:
        [v18 value];
        v31 = v30;
        [v18 size];
        v8 = v31 / v32 * size;

        goto LABEL_28;
      }

      layoutShift2 = [v7 layoutShift];
    }

    if (layoutShift2)
    {
      v17 = v6;
    }

    else
    {
      v17 = v7;
    }

    v18 = v17;
    goto LABEL_27;
  }

  v8 = v37;
LABEL_28:

  return v8;
}

- (double)_nearestValueForSize:(double)size
{
  v21 = 0.0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  [(AnchoredValueGenerator *)self _findBoundsForSize:&v19 outLowerBound:&v18 outUpperBound:&v21 outExactMatchValue:&v20 outFoundExactMatch:?];
  v6 = v19;
  v7 = v18;
  if (v20 != 1)
  {
    if ([(AnchoredValueGenerator *)self calculationType]== 3 && v7)
    {
      goto LABEL_5;
    }

    if ([(AnchoredValueGenerator *)self calculationType]!= 2 || !v6)
    {
      if (!(v7 | v6))
      {
        v17 = +[NSAssertionHandler currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"AnchoredValueGenerator.m" lineNumber:313 description:@"Anchored value: unable to find nearest value."];

        v8 = 0.0;
        goto LABEL_10;
      }

      if (v7 && v6)
      {
        [v7 size];
        v13 = v12 - size;
        if (v13 >= 0.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = -v13;
        }

        [v6 size];
        v16 = v15 - size;
        if (v16 < 0.0)
        {
          v16 = -v16;
        }

        if (v14 < v16)
        {
          goto LABEL_5;
        }
      }

      else if (v7)
      {
LABEL_5:
        v9 = v7;
LABEL_9:
        [v9 value];
        v8 = v10;
        goto LABEL_10;
      }
    }

    v9 = v6;
    goto LABEL_9;
  }

  v8 = v21;
LABEL_10:

  return v8;
}

- (double)_roundValue:(double)value
{
  roundingType = [(AnchoredValueGenerator *)self roundingType];
  if (roundingType > 2)
  {
    switch(roundingType)
    {
      case 3:
        return round(value);
      case 4:
        return floor(value);
      case 5:
        return ceil(value);
    }

    goto LABEL_16;
  }

  if (roundingType == 1)
  {

    CalFloorToScreenScale();
  }

  else
  {
    if (roundingType != 2)
    {
LABEL_16:

      CalRoundToScreenScale();
      return result;
    }

    CalCeilToScreenScale();
  }

  return result;
}

@end