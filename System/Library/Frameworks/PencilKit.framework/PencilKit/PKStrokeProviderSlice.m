@interface PKStrokeProviderSlice
- (BOOL)isEqual:(id)a3;
- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)a3 t:(double)a4 transform:(CGAffineTransform *)a5;
- (CGPoint)_splineControlPoint:(int64_t)a3 transform:(CGAffineTransform *)a4;
- (CGRect)bounds;
- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier;
- (NSString)description;
- (PKStrokeProviderSlice)initWithIdentifier:(id)a3;
- (PKStrokeProviderSlice)initWithStroke:(id)a3 tStart:(double)a4 tEnd:(double)a5;
- (double)_interpolatedTimeForSplineSegment:(int64_t)a3 t:(double)a4;
- (double)_lengthOfSplineSegment:(unint64_t)a3 transform:(CGAffineTransform *)a4;
- (double)_strokeLength;
- (double)endTimestamp;
- (double)startTimestamp;
- (int64_t)_firstPointIndex;
- (int64_t)_lastPointIndex;
- (int64_t)compareTo:(id)a3;
- (unint64_t)hash;
- (unint64_t)strokeAttributes;
- (void)enumeratePointsWithDataStep:(double)a3 usingBlock:(id)a4;
- (void)enumeratePointsWithDistanceStep:(double)a3 usingBlock:(id)a4;
- (void)enumeratePointsWithTimestep:(double)a3 usingBlock:(id)a4;
@end

@implementation PKStrokeProviderSlice

- (PKStrokeProviderSlice)initWithStroke:(id)a3 tStart:(double)a4 tEnd:(double)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = PKStrokeProviderSlice;
  v10 = [(PKStrokeProviderSlice *)&v15 init];
  v11 = *(MEMORY[0x1E695F050] + 16);
  v10->_bounds.origin = *MEMORY[0x1E695F050];
  v10->_bounds.size = v11;
  objc_storeStrong(&v10->_stroke, a3);
  v12 = [v9 sliceIdentifierForTStart:a4 tEnd:a5];
  identifier = v10->_identifier;
  v10->_identifier = v12;

  return v10;
}

- (PKStrokeProviderSlice)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSlice;
  v5 = [(PKStrokeProviderSlice *)&v9 init];
  v6 = *(MEMORY[0x1E695F050] + 16);
  v5->_bounds.origin = *MEMORY[0x1E695F050];
  v5->_bounds.size = v6;
  identifier = v5->_identifier;
  v5->_identifier = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKStrokeProviderSlice *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PKStrokeProviderSlice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  encodedStrokeIdentifier = v2->_encodedStrokeIdentifier;
  if (!encodedStrokeIdentifier)
  {
    v4 = MEMORY[0x1E696ACC8];
    v5 = [(PKStrokeProviderSlice *)v2 strokeIdentifier];
    v12 = 0;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E6997B58]) initWithData:v6];
      v9 = v2->_encodedStrokeIdentifier;
      v2->_encodedStrokeIdentifier = v8;
    }

    encodedStrokeIdentifier = v2->_encodedStrokeIdentifier;
  }

  v10 = encodedStrokeIdentifier;
  objc_sync_exit(v2);

  return v10;
}

- (CGRect)bounds
{
  v2 = self;
  objc_sync_enter(v2);
  if (CGRectIsNull(v2->_bounds) && (-[PKStrokeProviderSlice stroke](v2, "stroke"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _pointsCount], v3, v4))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0x7FEFFFFFFFFFFFFFLL;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0xFFEFFFFFFFFFFFFFLL;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0x7FEFFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0xFFEFFFFFFFFFFFFFLL;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __31__PKStrokeProviderSlice_bounds__block_invoke;
    v13[3] = &unk_1E82D70F8;
    v13[4] = &v26;
    v13[5] = &v22;
    v13[6] = &v18;
    v13[7] = &v14;
    [(PKStrokeProviderSlice *)v2 enumeratePointsWithDataStep:v13 usingBlock:0.25];
    *&v30.origin.x = v27[3];
    *&v30.origin.y = v19[3];
    v30.size.width = v23[3] - v30.origin.x;
    v30.size.height = v15[3] - v30.origin.y;
    v31 = CGRectInset(v30, -1.0, -1.0);
    v32 = CGRectIntegral(v31);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v2->_bounds = v32;
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    x = v2->_bounds.origin.x;
    y = v2->_bounds.origin.y;
    width = v2->_bounds.size.width;
    height = v2->_bounds.size.height;
  }

  objc_sync_exit(v2);

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void *__31__PKStrokeProviderSlice_bounds__block_invoke(void *result, double a2, double a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  *(v3 + 24) = v4;
  v5 = *(result[5] + 8);
  if (*(v5 + 24) >= a2)
  {
    a2 = *(v5 + 24);
  }

  *(v5 + 24) = a2;
  v6 = *(result[6] + 8);
  v7 = *(v6 + 24);
  if (v7 >= a3)
  {
    v7 = a3;
  }

  *(v6 + 24) = v7;
  v8 = *(result[7] + 8);
  v9 = *(v8 + 24);
  if (v9 < a3)
  {
    v9 = a3;
  }

  *(v8 + 24) = v9;
  return result;
}

- (double)startTimestamp
{
  v3 = [(PKStrokeProviderSlice *)self stroke];
  v4 = [v3 path];
  v5 = [v4 creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(PKStrokeProviderSlice *)self stroke];
  v9 = [v8 path];
  v10 = [(PKStrokeProviderSlice *)self identifier];
  [v10 tStart];
  [v9 interpolatedTimeoffsetAt:?];
  v12 = v7 + v11;

  return v12;
}

- (double)endTimestamp
{
  v3 = [(PKStrokeProviderSlice *)self stroke];
  v4 = [v3 path];
  v5 = [v4 creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(PKStrokeProviderSlice *)self stroke];
  v9 = [v8 _strokeData];
  v10 = [(PKStrokeProviderSlice *)self identifier];
  [v10 tEnd];
  [v9 interpolatedTimeoffsetAt:?];
  v12 = v7 + v11;

  return v12;
}

- (unint64_t)strokeAttributes
{
  v3 = [(PKStrokeProviderSlice *)self stroke];
  v4 = [v3 _shapeType];

  v5 = [(PKStrokeProviderSlice *)self stroke];
  v6 = [v5 _isSynthesizedInk];

  v7 = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v7 _inputType];

  v9 = [(PKStrokeProviderSlice *)self stroke];
  if ([v9 _isSynthesizedInk])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(PKStrokeProviderSlice *)self stroke];
    if ([v11 _isPastedStroke])
    {
      v10 = 1;
    }

    else
    {
      v12 = [(PKStrokeProviderSlice *)self stroke];
      v10 = [v12 _isSharedStroke];
    }
  }

  v13 = [(PKStrokeProviderSlice *)self stroke];
  v14 = [v13 _isSafeForStyleInventory];

  v15 = [(PKStrokeProviderSlice *)self stroke];
  v16 = [v15 _isPastedStroke];

  v17 = [(PKStrokeProviderSlice *)self stroke];
  v18 = [v17 _isSharedStroke];
  if (v6)
  {
    v19 = (2 * (v4 != 0)) | 4;
  }

  else
  {
    v19 = 2 * (v4 != 0);
  }

  if (!v8)
  {
    v19 |= 8uLL;
  }

  if ((v14 | v10))
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 | 0x40;
  }

  if (v16)
  {
    v21 = v20 | 0x10;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 | 0x20;
  if (!v18)
  {
    v22 = v21;
  }

  if (v22 <= 1)
  {
    return 1;
  }

  else
  {
    return v22;
  }
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProviderSlice *)self stroke];
  v6 = [v4 stroke];
  v7 = [v5 compareToStroke:v6];

  if (!v7)
  {
    v8 = [(PKStrokeProviderSlice *)self identifier];
    [v8 tStart];
    v10 = v9;
    v11 = [v4 identifier];
    [v11 tStart];
    v13 = v12;

    if (v10 >= v13)
    {
      v14 = [(PKStrokeProviderSlice *)self identifier];
      [v14 tStart];
      v16 = v15;
      v17 = [v4 identifier];
      [v17 tStart];
      v19 = v18;

      v7 = v16 > v19;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (CGPoint)_splineControlPoint:(int64_t)a3 transform:(CGAffineTransform *)a4
{
  v7 = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v7 _strokeData];

  v9 = [(PKStrokeProviderSlice *)self stroke];
  v10 = [v9 _pointsCount];

  if (a3 < 0)
  {
    [v8 locationAtIndex:0];
    v30 = v14;
    v32 = v13;
    v27 = *&a4->c;
    v28 = *&a4->tx;
    v29 = *&a4->a;
    [v8 locationAtIndex:1];
LABEL_6:
    v19 = vnegq_f64(vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v16), *&a4->a, v15)));
    __asm { FMOV            V0.2D, #2.0 }

    v31 = vmlaq_f64(v19, _Q0, vaddq_f64(v28, vmlaq_n_f64(vmulq_n_f64(v27, v30), v29, v32)));
    goto LABEL_7;
  }

  if (v10 <= a3)
  {
    [v8 locationAtIndex:v10 - 1];
    v30 = v18;
    v32 = v17;
    v27 = *&a4->c;
    v28 = *&a4->tx;
    v29 = *&a4->a;
    [v8 locationAtIndex:v10 - 2];
    goto LABEL_6;
  }

  [v8 locationAtIndex:a3];
  v31 = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v11), *&a4->a, v12));
LABEL_7:

  v26 = v31.f64[1];
  v25 = v31.f64[0];
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)a3 t:(double)a4 transform:(CGAffineTransform *)a5
{
  v9 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = a3 - 1;
  v11 = 0.0;
  v12 = -2;
  v13 = 4;
  do
  {
    v14 = *&a5->c;
    v22[0] = *&a5->a;
    v22[1] = v14;
    v22[2] = *&a5->tx;
    [(PKStrokeProviderSlice *)self _splineControlPoint:v10 transform:v22];
    v16 = v15;
    v18 = v17;
    v19 = b(v12, a4);
    v9 = v9 + v19 * v16;
    v8 = v8 + v19 * v18;
    v11 = v11 + v19;
    ++v12;
    ++v10;
    --v13;
  }

  while (v13);
  v20 = v9 / v11;
  v21 = v8 / v11;
  result.y = v21;
  result.x = v20;
  return result;
}

- (double)_interpolatedTimeForSplineSegment:(int64_t)a3 t:(double)a4
{
  v6 = [(PKStrokeProviderSlice *)self stroke];
  v7 = [v6 _strokeData];
  [v7 timestampAtIndex:a3];
  v9 = v8;

  v10 = [(PKStrokeProviderSlice *)self stroke];
  v11 = [v10 _strokeData];
  [v11 timestampAtIndex:a3 + 1];
  v13 = v12;

  return v9 + (v13 - v9) * a3;
}

- (double)_lengthOfSplineSegment:(unint64_t)a3 transform:(CGAffineTransform *)a4
{
  v7 = *&a4->c;
  v26 = *&a4->a;
  v27 = v7;
  v28 = *&a4->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:a3 - 1 transform:&v26];
  v9 = v8;
  v11 = v10;
  v12 = *&a4->c;
  v26 = *&a4->a;
  v27 = v12;
  v28 = *&a4->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:a3 transform:&v26];
  v14 = v13;
  v16 = v15;
  v17 = *&a4->c;
  v26 = *&a4->a;
  v27 = v17;
  v28 = *&a4->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:a3 + 1 transform:&v26];
  v19 = v18;
  v21 = v20;
  v22 = *&a4->c;
  v26 = *&a4->a;
  v27 = v22;
  v28 = *&a4->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:a3 + 2 transform:&v26];
  return approximateSplineLength(v9, v11, v14, v16, v19, v21, v23, v24);
}

- (int64_t)_firstPointIndex
{
  v2 = [(PKStrokeProviderSlice *)self identifier];
  [v2 tStart];
  v4 = v3;

  return v4;
}

- (int64_t)_lastPointIndex
{
  v3 = [(PKStrokeProviderSlice *)self _firstPointIndex];
  v4 = [(PKStrokeProviderSlice *)self identifier];
  [v4 tEnd];
  v6 = v5;

  v7 = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v7 _pointsCount] - 1;

  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= v3)
  {
    return v3;
  }

  else
  {
    return v9;
  }
}

- (double)_strokeLength
{
  v3 = [(PKStrokeProviderSlice *)self stroke];
  v4 = [v3 _pointsCount];

  v5 = 0.0;
  if (v4 != 1)
  {
    v6 = [(PKStrokeProviderSlice *)self _lastPointIndex];
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v7 = [(PKStrokeProviderSlice *)self stroke];
    v8 = v7;
    if (v7)
    {
      [v7 transform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v9 = [(PKStrokeProviderSlice *)self _firstPointIndex];
    if (v9 < v6)
    {
      v10 = v9;
      do
      {
        v13[0] = v14;
        v13[1] = v15;
        v13[2] = v16;
        [(PKStrokeProviderSlice *)self _lengthOfSplineSegment:v10 transform:v13];
        v5 = v5 + v11;
        ++v10;
      }

      while (v6 != v10);
    }
  }

  return v5;
}

- (void)enumeratePointsWithTimestep:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(PKStrokeProviderSlice *)self stroke];
    v8 = [v7 _strokeData];

    v9 = [(PKStrokeProviderSlice *)self stroke];
    v10 = [v9 _pointsCount];

    v11 = [(PKStrokeProviderSlice *)self _firstPointIndex];
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v12 = [(PKStrokeProviderSlice *)self stroke];
    v13 = v12;
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
    }

    [v8 timestampAtIndex:v11];
    v15 = v14;
    v16 = v10 - 1;
    if (v10 == 1)
    {
      LOBYTE(v41[0]) = 0;
      [v8 locationAtIndex:v11];
      v19 = vaddq_f64(v44, vmlaq_n_f64(vmulq_n_f64(v43, v17), v42, v18));
      v20 = v19.f64[1];
      v40 = v19;
      v6[2](v6, v41);
      if ((v41[0] & 1) == 0)
      {
        (v6[2])(v6, v41, v40, v20, v15);
      }
    }

    else
    {
      v21 = [(PKStrokeProviderSlice *)self stroke];
      v22 = [v21 _strokeData];
      v23 = [v22 hasValidPointTimestampData];

      if (v23)
      {
        v24 = [(PKStrokeProviderSlice *)self _lastPointIndex];
        [v8 timestampAtIndex:v11];
        v26 = v25;
        [v8 timestampAtIndex:v24];
        v28 = v27;
        v29 = [(PKStrokeProviderSlice *)self _firstPointIndex];
        while (v15 < v28)
        {
          if (v29 >= v16)
          {
            v36 = v15 - v26;
            v35 = 0.0;
          }

          else
          {
            while (1)
            {
              [v8 timestampAtIndex:v29];
              v26 = v30;
              v31 = v29 + 1;
              [v8 timestampAtIndex:v29 + 1];
              v33 = v32;
              [v8 timestampAtIndex:v29];
              v35 = v33 - v34;
              v36 = v15 - v26;
              if (v15 - v26 < v35)
              {
                break;
              }

              ++v29;
              if (v16 == v31)
              {
                v29 = v16;
                break;
              }
            }
          }

          v41[0] = v42;
          v41[1] = v43;
          v41[2] = v44;
          [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:v29 t:v41 transform:v36 / v35];
          LOBYTE(v41[0]) = 0;
          v6[2](v6, v41);
          v15 = v15 + a3;
          if (v41[0])
          {
            goto LABEL_20;
          }
        }

        LOBYTE(v41[0]) = 0;
        [v8 locationAtIndex:v24];
        v39 = vaddq_f64(v44, vmlaq_n_f64(vmulq_n_f64(v43, v37), v42, v38));
        (v6[2])(v6, v41, v39, v39.n128_f64[1], v28);
      }

      else
      {
        [(PKStrokeProviderSlice *)self enumeratePointsWithDistanceStep:v6 usingBlock:a3 * 240.0];
      }
    }

LABEL_20:
  }
}

- (void)enumeratePointsWithDistanceStep:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(PKStrokeProviderSlice *)self stroke];
    v8 = [v7 _strokeData];

    v9 = [(PKStrokeProviderSlice *)self stroke];
    v10 = [v9 _pointsCount];

    v11 = [(PKStrokeProviderSlice *)self _firstPointIndex];
    v12 = [(PKStrokeProviderSlice *)self _lastPointIndex];
    [(PKStrokeProviderSlice *)self _strokeLength];
    v14 = v13;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v15 = [(PKStrokeProviderSlice *)self stroke];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
    }

    v17 = v10 - 1;
    if (!v17 || v14 == 0.0)
    {
      LOBYTE(v43) = 0;
      [v8 locationAtIndex:{v11, v43}];
      v28 = v27;
      v30 = v29;
      v31 = v46;
      v32 = v47;
      v33 = v48;
      [v8 timestampAtIndex:v11];
      v6[2](v6, &v43, *&v33 + v30 * *&v32 + *&v31 * v28, *(&v33 + 1) + v30 * *(&v32 + 1) + *(&v31 + 1) * v28, v34);
      if (v43)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v18 = 0.0;
      v19 = 0.0;
      while (v18 < v14)
      {
        v20 = 0.0;
        if (v11 < v17)
        {
          while (1)
          {
            v43 = v46;
            v44 = v47;
            v45 = v48;
            [(PKStrokeProviderSlice *)self _lengthOfSplineSegment:v11 transform:&v43];
            if (v18 - v19 < v20)
            {
              break;
            }

            v19 = v19 + v20;
            if (v17 == ++v11)
            {
              v11 = v17;
              break;
            }
          }
        }

        v43 = v46;
        v44 = v47;
        v45 = v48;
        v21 = (v18 - v19) / v20;
        [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:v11 t:&v43 transform:v21];
        v23 = v22;
        v25 = v24;
        [(PKStrokeProviderSlice *)self _interpolatedTimeForSplineSegment:v11 t:v21];
        LOBYTE(v43) = 0;
        v6[2](v6, &v43, v23, v25, v26);
        v18 = v18 + a3;
        if (v43)
        {
          goto LABEL_17;
        }
      }
    }

    LOBYTE(v43) = 0;
    [v8 locationAtIndex:{v12, v43}];
    v36 = v35;
    v38 = v37;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    [v8 timestampAtIndex:v12];
    v6[2](v6, &v43, *&v41 + v38 * *&v40 + *&v39 * v36, *(&v41 + 1) + v38 * *(&v40 + 1) + *(&v39 + 1) * v36, v42);
    goto LABEL_17;
  }

LABEL_18:
}

- (void)enumeratePointsWithDataStep:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v7 _pointsCount];

  if (v6)
  {
    v9 = [(PKStrokeProviderSlice *)self stroke];
    v10 = [v9 _strokeData];

    v11 = [(PKStrokeProviderSlice *)self _firstPointIndex];
    v12 = [(PKStrokeProviderSlice *)self _lastPointIndex];
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v13 = [(PKStrokeProviderSlice *)self stroke];
    v14 = v13;
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    if (v8 == 1)
    {
      [v10 locationAtIndex:v11];
      v17 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v15), v23, v16));
      v6[2](v6, v17, v17.n128_f64[1]);
    }

    else
    {
      for (i = v11; i < v12; i = i + a3)
      {
        v22[0] = v23;
        v22[1] = v24;
        v22[2] = v25;
        [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:i t:v22 transform:i - i];
        (v6[2])(v6);
      }
    }

    [v10 locationAtIndex:v12];
    v21 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v19), v23, v20));
    v6[2](v6, v21, v21.n128_f64[1]);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKStrokeProviderSlice *)self identifier];
  v7 = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v3 stringWithFormat:@"<%@: %p id=%@ stroke=%@>", v5, self, v6, v7];

  return v8;
}

@end