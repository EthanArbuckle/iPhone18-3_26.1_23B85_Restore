@interface PKStrokeProviderSlice
- (BOOL)isEqual:(id)equal;
- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)segment t:(double)t transform:(CGAffineTransform *)transform;
- (CGPoint)_splineControlPoint:(int64_t)point transform:(CGAffineTransform *)transform;
- (CGRect)bounds;
- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier;
- (NSString)description;
- (PKStrokeProviderSlice)initWithIdentifier:(id)identifier;
- (PKStrokeProviderSlice)initWithStroke:(id)stroke tStart:(double)start tEnd:(double)end;
- (double)_interpolatedTimeForSplineSegment:(int64_t)segment t:(double)t;
- (double)_lengthOfSplineSegment:(unint64_t)segment transform:(CGAffineTransform *)transform;
- (double)_strokeLength;
- (double)endTimestamp;
- (double)startTimestamp;
- (int64_t)_firstPointIndex;
- (int64_t)_lastPointIndex;
- (int64_t)compareTo:(id)to;
- (unint64_t)hash;
- (unint64_t)strokeAttributes;
- (void)enumeratePointsWithDataStep:(double)step usingBlock:(id)block;
- (void)enumeratePointsWithDistanceStep:(double)step usingBlock:(id)block;
- (void)enumeratePointsWithTimestep:(double)timestep usingBlock:(id)block;
@end

@implementation PKStrokeProviderSlice

- (PKStrokeProviderSlice)initWithStroke:(id)stroke tStart:(double)start tEnd:(double)end
{
  strokeCopy = stroke;
  v15.receiver = self;
  v15.super_class = PKStrokeProviderSlice;
  v10 = [(PKStrokeProviderSlice *)&v15 init];
  v11 = *(MEMORY[0x1E695F050] + 16);
  v10->_bounds.origin = *MEMORY[0x1E695F050];
  v10->_bounds.size = v11;
  objc_storeStrong(&v10->_stroke, stroke);
  v12 = [strokeCopy sliceIdentifierForTStart:start tEnd:end];
  identifier = v10->_identifier;
  v10->_identifier = v12;

  return v10;
}

- (PKStrokeProviderSlice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSlice;
  v5 = [(PKStrokeProviderSlice *)&v9 init];
  v6 = *(MEMORY[0x1E695F050] + 16);
  v5->_bounds.origin = *MEMORY[0x1E695F050];
  v5->_bounds.size = v6;
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(PKStrokeProviderSlice *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(PKStrokeProviderSlice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (CHEncodedStrokeIdentifier)encodedStrokeIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  encodedStrokeIdentifier = selfCopy->_encodedStrokeIdentifier;
  if (!encodedStrokeIdentifier)
  {
    v4 = MEMORY[0x1E696ACC8];
    strokeIdentifier = [(PKStrokeProviderSlice *)selfCopy strokeIdentifier];
    v12 = 0;
    v6 = [v4 archivedDataWithRootObject:strokeIdentifier requiringSecureCoding:1 error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = [objc_alloc(MEMORY[0x1E6997B58]) initWithData:v6];
      v9 = selfCopy->_encodedStrokeIdentifier;
      selfCopy->_encodedStrokeIdentifier = v8;
    }

    encodedStrokeIdentifier = selfCopy->_encodedStrokeIdentifier;
  }

  v10 = encodedStrokeIdentifier;
  objc_sync_exit(selfCopy);

  return v10;
}

- (CGRect)bounds
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (CGRectIsNull(selfCopy->_bounds) && (-[PKStrokeProviderSlice stroke](selfCopy, "stroke"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _pointsCount], v3, v4))
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
    [(PKStrokeProviderSlice *)selfCopy enumeratePointsWithDataStep:v13 usingBlock:0.25];
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
    selfCopy->_bounds = v32;
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    x = selfCopy->_bounds.origin.x;
    y = selfCopy->_bounds.origin.y;
    width = selfCopy->_bounds.size.width;
    height = selfCopy->_bounds.size.height;
  }

  objc_sync_exit(selfCopy);

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
  stroke = [(PKStrokeProviderSlice *)self stroke];
  path = [stroke path];
  creationDate = [path creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v7 = v6;
  stroke2 = [(PKStrokeProviderSlice *)self stroke];
  path2 = [stroke2 path];
  identifier = [(PKStrokeProviderSlice *)self identifier];
  [identifier tStart];
  [path2 interpolatedTimeoffsetAt:?];
  v12 = v7 + v11;

  return v12;
}

- (double)endTimestamp
{
  stroke = [(PKStrokeProviderSlice *)self stroke];
  path = [stroke path];
  creationDate = [path creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v7 = v6;
  stroke2 = [(PKStrokeProviderSlice *)self stroke];
  _strokeData = [stroke2 _strokeData];
  identifier = [(PKStrokeProviderSlice *)self identifier];
  [identifier tEnd];
  [_strokeData interpolatedTimeoffsetAt:?];
  v12 = v7 + v11;

  return v12;
}

- (unint64_t)strokeAttributes
{
  stroke = [(PKStrokeProviderSlice *)self stroke];
  _shapeType = [stroke _shapeType];

  stroke2 = [(PKStrokeProviderSlice *)self stroke];
  _isSynthesizedInk = [stroke2 _isSynthesizedInk];

  stroke3 = [(PKStrokeProviderSlice *)self stroke];
  _inputType = [stroke3 _inputType];

  stroke4 = [(PKStrokeProviderSlice *)self stroke];
  if ([stroke4 _isSynthesizedInk])
  {
    _isSharedStroke = 1;
  }

  else
  {
    stroke5 = [(PKStrokeProviderSlice *)self stroke];
    if ([stroke5 _isPastedStroke])
    {
      _isSharedStroke = 1;
    }

    else
    {
      stroke6 = [(PKStrokeProviderSlice *)self stroke];
      _isSharedStroke = [stroke6 _isSharedStroke];
    }
  }

  stroke7 = [(PKStrokeProviderSlice *)self stroke];
  _isSafeForStyleInventory = [stroke7 _isSafeForStyleInventory];

  stroke8 = [(PKStrokeProviderSlice *)self stroke];
  _isPastedStroke = [stroke8 _isPastedStroke];

  stroke9 = [(PKStrokeProviderSlice *)self stroke];
  _isSharedStroke2 = [stroke9 _isSharedStroke];
  if (_isSynthesizedInk)
  {
    v19 = (2 * (_shapeType != 0)) | 4;
  }

  else
  {
    v19 = 2 * (_shapeType != 0);
  }

  if (!_inputType)
  {
    v19 |= 8uLL;
  }

  if ((_isSafeForStyleInventory | _isSharedStroke))
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 | 0x40;
  }

  if (_isPastedStroke)
  {
    v21 = v20 | 0x10;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 | 0x20;
  if (!_isSharedStroke2)
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

- (int64_t)compareTo:(id)to
{
  toCopy = to;
  stroke = [(PKStrokeProviderSlice *)self stroke];
  stroke2 = [toCopy stroke];
  v7 = [stroke compareToStroke:stroke2];

  if (!v7)
  {
    identifier = [(PKStrokeProviderSlice *)self identifier];
    [identifier tStart];
    v10 = v9;
    identifier2 = [toCopy identifier];
    [identifier2 tStart];
    v13 = v12;

    if (v10 >= v13)
    {
      identifier3 = [(PKStrokeProviderSlice *)self identifier];
      [identifier3 tStart];
      v16 = v15;
      identifier4 = [toCopy identifier];
      [identifier4 tStart];
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

- (CGPoint)_splineControlPoint:(int64_t)point transform:(CGAffineTransform *)transform
{
  stroke = [(PKStrokeProviderSlice *)self stroke];
  _strokeData = [stroke _strokeData];

  stroke2 = [(PKStrokeProviderSlice *)self stroke];
  _pointsCount = [stroke2 _pointsCount];

  if (point < 0)
  {
    [_strokeData locationAtIndex:0];
    v30 = v14;
    v32 = v13;
    v27 = *&transform->c;
    v28 = *&transform->tx;
    v29 = *&transform->a;
    [_strokeData locationAtIndex:1];
LABEL_6:
    v19 = vnegq_f64(vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v16), *&transform->a, v15)));
    __asm { FMOV            V0.2D, #2.0 }

    v31 = vmlaq_f64(v19, _Q0, vaddq_f64(v28, vmlaq_n_f64(vmulq_n_f64(v27, v30), v29, v32)));
    goto LABEL_7;
  }

  if (_pointsCount <= point)
  {
    [_strokeData locationAtIndex:_pointsCount - 1];
    v30 = v18;
    v32 = v17;
    v27 = *&transform->c;
    v28 = *&transform->tx;
    v29 = *&transform->a;
    [_strokeData locationAtIndex:_pointsCount - 2];
    goto LABEL_6;
  }

  [_strokeData locationAtIndex:point];
  v31 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v11), *&transform->a, v12));
LABEL_7:

  v26 = v31.f64[1];
  v25 = v31.f64[0];
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)segment t:(double)t transform:(CGAffineTransform *)transform
{
  v9 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = segment - 1;
  v11 = 0.0;
  v12 = -2;
  v13 = 4;
  do
  {
    v14 = *&transform->c;
    v22[0] = *&transform->a;
    v22[1] = v14;
    v22[2] = *&transform->tx;
    [(PKStrokeProviderSlice *)self _splineControlPoint:v10 transform:v22];
    v16 = v15;
    v18 = v17;
    v19 = b(v12, t);
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

- (double)_interpolatedTimeForSplineSegment:(int64_t)segment t:(double)t
{
  stroke = [(PKStrokeProviderSlice *)self stroke];
  _strokeData = [stroke _strokeData];
  [_strokeData timestampAtIndex:segment];
  v9 = v8;

  stroke2 = [(PKStrokeProviderSlice *)self stroke];
  _strokeData2 = [stroke2 _strokeData];
  [_strokeData2 timestampAtIndex:segment + 1];
  v13 = v12;

  return v9 + (v13 - v9) * segment;
}

- (double)_lengthOfSplineSegment:(unint64_t)segment transform:(CGAffineTransform *)transform
{
  v7 = *&transform->c;
  v26 = *&transform->a;
  v27 = v7;
  v28 = *&transform->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:segment - 1 transform:&v26];
  v9 = v8;
  v11 = v10;
  v12 = *&transform->c;
  v26 = *&transform->a;
  v27 = v12;
  v28 = *&transform->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:segment transform:&v26];
  v14 = v13;
  v16 = v15;
  v17 = *&transform->c;
  v26 = *&transform->a;
  v27 = v17;
  v28 = *&transform->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:segment + 1 transform:&v26];
  v19 = v18;
  v21 = v20;
  v22 = *&transform->c;
  v26 = *&transform->a;
  v27 = v22;
  v28 = *&transform->tx;
  [(PKStrokeProviderSlice *)self _splineControlPoint:segment + 2 transform:&v26];
  return approximateSplineLength(v9, v11, v14, v16, v19, v21, v23, v24);
}

- (int64_t)_firstPointIndex
{
  identifier = [(PKStrokeProviderSlice *)self identifier];
  [identifier tStart];
  v4 = v3;

  return v4;
}

- (int64_t)_lastPointIndex
{
  _firstPointIndex = [(PKStrokeProviderSlice *)self _firstPointIndex];
  identifier = [(PKStrokeProviderSlice *)self identifier];
  [identifier tEnd];
  v6 = v5;

  stroke = [(PKStrokeProviderSlice *)self stroke];
  v8 = [stroke _pointsCount] - 1;

  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= _firstPointIndex)
  {
    return _firstPointIndex;
  }

  else
  {
    return v9;
  }
}

- (double)_strokeLength
{
  stroke = [(PKStrokeProviderSlice *)self stroke];
  _pointsCount = [stroke _pointsCount];

  v5 = 0.0;
  if (_pointsCount != 1)
  {
    _lastPointIndex = [(PKStrokeProviderSlice *)self _lastPointIndex];
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    stroke2 = [(PKStrokeProviderSlice *)self stroke];
    v8 = stroke2;
    if (stroke2)
    {
      [stroke2 transform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    _firstPointIndex = [(PKStrokeProviderSlice *)self _firstPointIndex];
    if (_firstPointIndex < _lastPointIndex)
    {
      v10 = _firstPointIndex;
      do
      {
        v13[0] = v14;
        v13[1] = v15;
        v13[2] = v16;
        [(PKStrokeProviderSlice *)self _lengthOfSplineSegment:v10 transform:v13];
        v5 = v5 + v11;
        ++v10;
      }

      while (_lastPointIndex != v10);
    }
  }

  return v5;
}

- (void)enumeratePointsWithTimestep:(double)timestep usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    stroke = [(PKStrokeProviderSlice *)self stroke];
    _strokeData = [stroke _strokeData];

    stroke2 = [(PKStrokeProviderSlice *)self stroke];
    _pointsCount = [stroke2 _pointsCount];

    _firstPointIndex = [(PKStrokeProviderSlice *)self _firstPointIndex];
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    stroke3 = [(PKStrokeProviderSlice *)self stroke];
    v13 = stroke3;
    if (stroke3)
    {
      [stroke3 transform];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
    }

    [_strokeData timestampAtIndex:_firstPointIndex];
    v15 = v14;
    v16 = _pointsCount - 1;
    if (_pointsCount == 1)
    {
      LOBYTE(v41[0]) = 0;
      [_strokeData locationAtIndex:_firstPointIndex];
      v19 = vaddq_f64(v44, vmlaq_n_f64(vmulq_n_f64(v43, v17), v42, v18));
      v20 = v19.f64[1];
      v40 = v19;
      blockCopy[2](blockCopy, v41);
      if ((v41[0] & 1) == 0)
      {
        (blockCopy[2])(blockCopy, v41, v40, v20, v15);
      }
    }

    else
    {
      stroke4 = [(PKStrokeProviderSlice *)self stroke];
      _strokeData2 = [stroke4 _strokeData];
      hasValidPointTimestampData = [_strokeData2 hasValidPointTimestampData];

      if (hasValidPointTimestampData)
      {
        _lastPointIndex = [(PKStrokeProviderSlice *)self _lastPointIndex];
        [_strokeData timestampAtIndex:_firstPointIndex];
        v26 = v25;
        [_strokeData timestampAtIndex:_lastPointIndex];
        v28 = v27;
        _firstPointIndex2 = [(PKStrokeProviderSlice *)self _firstPointIndex];
        while (v15 < v28)
        {
          if (_firstPointIndex2 >= v16)
          {
            v36 = v15 - v26;
            v35 = 0.0;
          }

          else
          {
            while (1)
            {
              [_strokeData timestampAtIndex:_firstPointIndex2];
              v26 = v30;
              v31 = _firstPointIndex2 + 1;
              [_strokeData timestampAtIndex:_firstPointIndex2 + 1];
              v33 = v32;
              [_strokeData timestampAtIndex:_firstPointIndex2];
              v35 = v33 - v34;
              v36 = v15 - v26;
              if (v15 - v26 < v35)
              {
                break;
              }

              ++_firstPointIndex2;
              if (v16 == v31)
              {
                _firstPointIndex2 = v16;
                break;
              }
            }
          }

          v41[0] = v42;
          v41[1] = v43;
          v41[2] = v44;
          [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:_firstPointIndex2 t:v41 transform:v36 / v35];
          LOBYTE(v41[0]) = 0;
          blockCopy[2](blockCopy, v41);
          v15 = v15 + timestep;
          if (v41[0])
          {
            goto LABEL_20;
          }
        }

        LOBYTE(v41[0]) = 0;
        [_strokeData locationAtIndex:_lastPointIndex];
        v39 = vaddq_f64(v44, vmlaq_n_f64(vmulq_n_f64(v43, v37), v42, v38));
        (blockCopy[2])(blockCopy, v41, v39, v39.n128_f64[1], v28);
      }

      else
      {
        [(PKStrokeProviderSlice *)self enumeratePointsWithDistanceStep:blockCopy usingBlock:timestep * 240.0];
      }
    }

LABEL_20:
  }
}

- (void)enumeratePointsWithDistanceStep:(double)step usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    stroke = [(PKStrokeProviderSlice *)self stroke];
    _strokeData = [stroke _strokeData];

    stroke2 = [(PKStrokeProviderSlice *)self stroke];
    _pointsCount = [stroke2 _pointsCount];

    _firstPointIndex = [(PKStrokeProviderSlice *)self _firstPointIndex];
    _lastPointIndex = [(PKStrokeProviderSlice *)self _lastPointIndex];
    [(PKStrokeProviderSlice *)self _strokeLength];
    v14 = v13;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    stroke3 = [(PKStrokeProviderSlice *)self stroke];
    v16 = stroke3;
    if (stroke3)
    {
      [stroke3 transform];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
    }

    v17 = _pointsCount - 1;
    if (!v17 || v14 == 0.0)
    {
      LOBYTE(v43) = 0;
      [_strokeData locationAtIndex:{_firstPointIndex, v43}];
      v28 = v27;
      v30 = v29;
      v31 = v46;
      v32 = v47;
      v33 = v48;
      [_strokeData timestampAtIndex:_firstPointIndex];
      blockCopy[2](blockCopy, &v43, *&v33 + v30 * *&v32 + *&v31 * v28, *(&v33 + 1) + v30 * *(&v32 + 1) + *(&v31 + 1) * v28, v34);
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
        if (_firstPointIndex < v17)
        {
          while (1)
          {
            v43 = v46;
            v44 = v47;
            v45 = v48;
            [(PKStrokeProviderSlice *)self _lengthOfSplineSegment:_firstPointIndex transform:&v43];
            if (v18 - v19 < v20)
            {
              break;
            }

            v19 = v19 + v20;
            if (v17 == ++_firstPointIndex)
            {
              _firstPointIndex = v17;
              break;
            }
          }
        }

        v43 = v46;
        v44 = v47;
        v45 = v48;
        v21 = (v18 - v19) / v20;
        [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:_firstPointIndex t:&v43 transform:v21];
        v23 = v22;
        v25 = v24;
        [(PKStrokeProviderSlice *)self _interpolatedTimeForSplineSegment:_firstPointIndex t:v21];
        LOBYTE(v43) = 0;
        blockCopy[2](blockCopy, &v43, v23, v25, v26);
        v18 = v18 + step;
        if (v43)
        {
          goto LABEL_17;
        }
      }
    }

    LOBYTE(v43) = 0;
    [_strokeData locationAtIndex:{_lastPointIndex, v43}];
    v36 = v35;
    v38 = v37;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    [_strokeData timestampAtIndex:_lastPointIndex];
    blockCopy[2](blockCopy, &v43, *&v41 + v38 * *&v40 + *&v39 * v36, *(&v41 + 1) + v38 * *(&v40 + 1) + *(&v39 + 1) * v36, v42);
    goto LABEL_17;
  }

LABEL_18:
}

- (void)enumeratePointsWithDataStep:(double)step usingBlock:(id)block
{
  blockCopy = block;
  stroke = [(PKStrokeProviderSlice *)self stroke];
  _pointsCount = [stroke _pointsCount];

  if (blockCopy)
  {
    stroke2 = [(PKStrokeProviderSlice *)self stroke];
    _strokeData = [stroke2 _strokeData];

    _firstPointIndex = [(PKStrokeProviderSlice *)self _firstPointIndex];
    _lastPointIndex = [(PKStrokeProviderSlice *)self _lastPointIndex];
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    stroke3 = [(PKStrokeProviderSlice *)self stroke];
    v14 = stroke3;
    if (stroke3)
    {
      [stroke3 transform];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    if (_pointsCount == 1)
    {
      [_strokeData locationAtIndex:_firstPointIndex];
      v17 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v15), v23, v16));
      blockCopy[2](blockCopy, v17, v17.n128_f64[1]);
    }

    else
    {
      for (i = _firstPointIndex; i < _lastPointIndex; i = i + step)
      {
        v22[0] = v23;
        v22[1] = v24;
        v22[2] = v25;
        [(PKStrokeProviderSlice *)self _interpolatedPointForSplineSegment:i t:v22 transform:i - i];
        (blockCopy[2])(blockCopy);
      }
    }

    [_strokeData locationAtIndex:_lastPointIndex];
    v21 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, v19), v23, v20));
    blockCopy[2](blockCopy, v21, v21.n128_f64[1]);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PKStrokeProviderSlice *)self identifier];
  stroke = [(PKStrokeProviderSlice *)self stroke];
  v8 = [v3 stringWithFormat:@"<%@: %p id=%@ stroke=%@>", v5, self, identifier, stroke];

  return v8;
}

@end