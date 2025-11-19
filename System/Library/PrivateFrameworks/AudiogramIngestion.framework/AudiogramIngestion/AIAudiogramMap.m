@interface AIAudiogramMap
- (AIAudiogramMap)initWithFrequencies:(id)a3 hearingLevels:(id)a4;
- (CGPoint)_adjustedPointForSlopeWithPoint:(CGPoint)a3;
- (CGPoint)_intersectionOfLinesWithSlope:(double)a3 intercept:(double)a4 slope2:(double)a5 intercept2:(double)a6;
- (id)_valueOfPoint:(CGPoint)a3 betweenObject:(id)a4 andObject:(id)a5 onAxis:(unint64_t)a6;
- (id)description;
- (id)frequencyAtPoint:(CGPoint)a3;
- (id)hearingLevelAtPoint:(CGPoint)a3;
- (void)_calculateAxisSlopeAndInterceptForAxisType:(unint64_t)a3;
@end

@implementation AIAudiogramMap

- (AIAudiogramMap)initWithFrequencies:(id)a3 hearingLevels:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AIAudiogramMap;
  v8 = [(AIAudiogramMap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AIAudiogramMap *)v8 setFrequencies:v6];
    [(AIAudiogramMap *)v9 setHearingLevels:v7];
    [(AIAudiogramMap *)v9 _calculateAxisSlopeAndInterceptForAxisType:0];
    [(AIAudiogramMap *)v9 _calculateAxisSlopeAndInterceptForAxisType:1];
  }

  return v9;
}

- (id)frequencyAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v51 = *MEMORY[0x277D85DE8];
  v6 = [(AIAudiogramMap *)self frequencies];
  v7 = [v6 values];
  v8 = [v7 count];

  if (v8 > 1)
  {
    [(AIAudiogramMap *)self _adjustedPointForSlopeWithPoint:x, y];
    v14 = v13;
    v15 = v12;
    if (v13 != x || v12 != y)
    {
      v16 = AXLogAudiogram();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v53.x = x;
        v53.y = y;
        v17 = NSStringFromCGPoint(v53);
        v54.x = v14;
        v54.y = v15;
        v18 = NSStringFromCGPoint(v54);
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "Point %@ was adjusted to %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__6;
    v49 = __Block_byref_object_dispose__6;
    v50 = 0;
    v19 = [(AIAudiogramMap *)self frequencies];
    v20 = [v19 values];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __35__AIAudiogramMap_frequencyAtPoint___block_invoke;
    v42[3] = &unk_278CECDB0;
    *&v42[6] = v14;
    *&v42[7] = v15;
    v42[4] = self;
    v42[5] = buf;
    [v20 enumerateObjectsUsingBlock:v42];

    v21 = *(*&buf[8] + 40);
    if (!v21)
    {
      v22 = AXLogAudiogram();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v55.x = v14;
        v55.y = v15;
        v23 = NSStringFromCGPoint(v55);
        v24 = [(AIAudiogramMap *)self frequencies];
        v25 = [v24 maxValue];
        *v43 = 138412546;
        v44 = v23;
        v45 = 2112;
        v46 = v25;
        _os_log_impl(&dword_24179B000, v22, OS_LOG_TYPE_INFO, "Point %@ was after end of frequency range %@", v43, 0x16u);
      }

      v26 = [(AIAudiogramMap *)self frequencies];
      v27 = [v26 values];
      v28 = [v27 objectAtIndex:(v8 - 1)];

      v29 = [(AIAudiogramMap *)self frequencies];
      v30 = [v29 values];
      v31 = [v30 objectAtIndex:(v8 - 2)];

      v32 = [(AIAudiogramMap *)self _valueOfPoint:v28 betweenObject:v31 andObject:0 onAxis:v14, v15];
      v33 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v32;

      v21 = *(*&buf[8] + 40);
    }

    v34 = MEMORY[0x277CCABB0];
    [v21 doubleValue];
    v36 = [v34 numberWithDouble:round(v35)];
    v37 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v36;

    v38 = AXLogAudiogram();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = *(*&buf[8] + 40);
      v56.x = v14;
      v56.y = v15;
      v40 = NSStringFromCGPoint(v56);
      *v43 = 138412546;
      v44 = v39;
      v45 = 2112;
      v46 = v40;
      _os_log_impl(&dword_24179B000, v38, OS_LOG_TYPE_INFO, "Returning frequency of %@ from point %@", v43, 0x16u);
    }

    v11 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = [(AIAudiogramMap *)self frequencies];
    v10 = [v9 minValue];
    v11 = [v10 numericalValue];
  }

  return v11;
}

void __35__AIAudiogramMap_frequencyAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 48);
  [v7 center];
  if (v8 <= v9)
  {
    *a4 = 1;
    if (a3)
    {
      v10 = [*(a1 + 32) frequencies];
      v11 = [v10 values];
      v12 = [v11 objectAtIndex:a3 - 1];
    }

    else
    {
      v13 = AXLogAudiogram();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromCGPoint(*(a1 + 48));
        v15 = [*(a1 + 32) frequencies];
        v16 = [v15 minValue];
        v23 = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "Point %@ was at or before start of frequency range %@", &v23, 0x16u);
      }

      v17 = [*(a1 + 32) frequencies];
      v18 = [v17 values];
      v19 = [v18 objectAtIndex:1];

      v12 = v7;
      v7 = v19;
    }

    v20 = [*(a1 + 32) _valueOfPoint:v7 betweenObject:v12 andObject:0 onAxis:{*(a1 + 48), *(a1 + 56)}];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

- (id)hearingLevelAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v52 = *MEMORY[0x277D85DE8];
  v6 = [(AIAudiogramMap *)self hearingLevels];
  v7 = [v6 values];
  v8 = [v7 count];

  if (v8 > 1)
  {
    [(AIAudiogramMap *)self _adjustedPointForSlopeWithPoint:x, y];
    v13 = v12;
    v15 = v14;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__6;
    v46 = __Block_byref_object_dispose__6;
    v47 = 0;
    v16 = [(AIAudiogramMap *)self hearingLevels];
    v17 = [v16 values];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __38__AIAudiogramMap_hearingLevelAtPoint___block_invoke;
    v41[3] = &unk_278CECDB0;
    *&v41[6] = v13;
    *&v41[7] = v15;
    v41[4] = self;
    v41[5] = &v42;
    [v17 enumerateObjectsUsingBlock:v41];

    if (!v43[5])
    {
      v18 = AXLogAudiogram();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v54.x = v13;
        v54.y = v15;
        v19 = NSStringFromCGPoint(v54);
        v20 = [(AIAudiogramMap *)self hearingLevels];
        v21 = [v20 maxValue];
        *buf = 138412546;
        v49 = v19;
        v50 = 2112;
        v51 = v21;
        _os_log_impl(&dword_24179B000, v18, OS_LOG_TYPE_INFO, "Point %@ was after end of hearing level range %@", buf, 0x16u);
      }

      v22 = [(AIAudiogramMap *)self hearingLevels];
      v23 = [v22 values];
      v24 = [v23 objectAtIndex:(v8 - 1)];

      v25 = [(AIAudiogramMap *)self hearingLevels];
      v26 = [v25 values];
      v27 = [v26 objectAtIndex:(v8 - 2)];

      v28 = [(AIAudiogramMap *)self _valueOfPoint:v24 betweenObject:v27 andObject:1 onAxis:v13, v15];
      v29 = v43[5];
      v43[5] = v28;
    }

    v30 = AXLogAudiogram();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = v43[5];
      v55.x = v13;
      v55.y = v15;
      v32 = NSStringFromCGPoint(v55);
      *buf = 138412546;
      v49 = v31;
      v50 = 2112;
      v51 = v32;
      _os_log_impl(&dword_24179B000, v30, OS_LOG_TYPE_INFO, "dB value before rounding is %@ from point %@", buf, 0x16u);
    }

    v33 = MEMORY[0x277CCABB0];
    [v43[5] doubleValue];
    v35 = [v33 numberWithDouble:round(v34 / 5.0) * 5.0];
    v36 = v43[5];
    v43[5] = v35;

    v37 = AXLogAudiogram();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = v43[5];
      v56.x = v13;
      v56.y = v15;
      v39 = NSStringFromCGPoint(v56);
      *buf = 138412546;
      v49 = v38;
      v50 = 2112;
      v51 = v39;
      _os_log_impl(&dword_24179B000, v37, OS_LOG_TYPE_INFO, "Returning hearing level of %@ from point %@", buf, 0x16u);
    }

    v11 = v43[5];
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v9 = [(AIAudiogramMap *)self hearingLevels];
    v10 = [v9 minValue];
    v11 = [v10 numericalValue];
  }

  return v11;
}

void __38__AIAudiogramMap_hearingLevelAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 56);
  [v7 center];
  if (v8 >= v9)
  {
    *a4 = 1;
    if (a3)
    {
      v10 = [*(a1 + 32) hearingLevels];
      v11 = [v10 values];
      v12 = [v11 objectAtIndex:a3 - 1];
    }

    else
    {
      v13 = AXLogAudiogram();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromCGPoint(*(a1 + 48));
        v15 = [*(a1 + 32) hearingLevels];
        v16 = [v15 minValue];
        v23 = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "Point %@ was at or before start of hearing level range %@", &v23, 0x16u);
      }

      v17 = [*(a1 + 32) hearingLevels];
      v18 = [v17 values];
      v19 = [v18 objectAtIndex:1];

      v12 = v7;
      v7 = v19;
    }

    v20 = [*(a1 + 32) _valueOfPoint:v7 betweenObject:v12 andObject:1 onAxis:{*(a1 + 48), *(a1 + 56)}];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

- (id)_valueOfPoint:(CGPoint)a3 betweenObject:(id)a4 andObject:(id)a5 onAxis:(unint64_t)a6
{
  y = a3.y;
  x = a3.x;
  v59 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (a6)
  {
    [v11 center];
    v14 = v13;
    [v10 center];
    v16 = v15;
    [v12 center];
    v18 = MEMORY[0x277CCABB0];
    v19 = (y - v14) / (v16 - v17);
    v20 = [v10 numericalValue];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v12 numericalValue];
    [v23 doubleValue];
    v25 = v22 - v24;
    v26 = [v12 numericalValue];
    [v26 doubleValue];
    v28 = [v18 numberWithDouble:v27 + v25 * v19];

LABEL_3:
    goto LABEL_15;
  }

  [v11 center];
  v30 = x - v29;
  [v10 center];
  v32 = v31;
  [v12 center];
  v34 = v30 / (v32 - v33);
  v35 = AXLogAudiogram();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [AIAudiogramMap _valueOfPoint:v35 betweenObject:v34 andObject:? onAxis:?];
  }

  if (v34 == 1.0)
  {
    goto LABEL_7;
  }

  if (v34 > 0.0 && v34 < 0.4)
  {
    v37 = AXLogAudiogram();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      v36 = v12;
      goto LABEL_14;
    }

    v38 = [v12 numericalValue];
    *v58 = 138412290;
    *&v58[4] = v38;
    v39 = "Snapped frequency value down to known value %@";
LABEL_12:
    _os_log_impl(&dword_24179B000, v37, OS_LOG_TYPE_INFO, v39, v58, 0xCu);

    goto LABEL_13;
  }

  if (v34 <= 0.6 || v34 >= 1.0)
  {
    if (v34 <= -0.4 || v34 >= 0.0)
    {
      v44 = vabdd_f64(v34, trunc(v34));
      v45 = AXLogAudiogram();
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
      if (v44 > 0.6 || v44 < 0.4)
      {
        if (v46)
        {
          *v58 = 0;
          _os_log_impl(&dword_24179B000, v45, OS_LOG_TYPE_INFO, "Snapped frequency value outside of known range", v58, 2u);
        }

        v34 = round(v34);
      }

      else
      {
        if (v46)
        {
          *v58 = 0;
          _os_log_impl(&dword_24179B000, v45, OS_LOG_TYPE_INFO, "Could not snap frequency as point was too far from expected marks", v58, 2u);
        }
      }

      v47 = [v10 numericalValue];
      [v47 doubleValue];
      v49 = v48;
      v50 = [v12 numericalValue];
      [v50 doubleValue];
      v52 = v49 / v51;

      v53 = MEMORY[0x277CCABB0];
      v54 = [v12 numericalValue];
      [v54 doubleValue];
      v28 = [v53 numberWithDouble:{(pow(v52, v34) * v55)}];

      v20 = snapToValidFrequency(v28);
      if (v20)
      {
        v56 = AXLogAudiogram();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *v58 = 138412546;
          *&v58[4] = v28;
          *&v58[12] = 2112;
          *&v58[14] = v20;
          _os_log_impl(&dword_24179B000, v56, OS_LOG_TYPE_INFO, "Snapped frequency value to further validate. %@ -> %@", v58, 0x16u);
        }

        v57 = v20;
        v28 = v57;
      }

      goto LABEL_3;
    }

    v37 = AXLogAudiogram();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v38 = [v10 numericalValue];
    *v58 = 138412290;
    *&v58[4] = v38;
    v39 = "Snapped frequency value up to known value %@";
    goto LABEL_12;
  }

  v42 = AXLogAudiogram();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = [v10 numericalValue];
    *v58 = 138412290;
    *&v58[4] = v43;
    _os_log_impl(&dword_24179B000, v42, OS_LOG_TYPE_INFO, "Snapped frequency value up to known value %@", v58, 0xCu);
  }

LABEL_7:
  v36 = v10;
LABEL_14:
  v28 = [v36 numericalValue];
LABEL_15:

  return v28;
}

- (void)_calculateAxisSlopeAndInterceptForAxisType:(unint64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [(AIAudiogramMap *)self hearingLevels];
    v6 = [v5 values];
  }

  else
  {
    v7 = [(AIAudiogramMap *)self frequencies];
    v8 = [v7 values];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __61__AIAudiogramMap__calculateAxisSlopeAndInterceptForAxisType___block_invoke;
    v29[3] = &unk_278CECDD8;
    v30 = &unk_2853659B0;
    v6 = [v8 ax_filteredArrayUsingBlock:v29];
  }

  if ([v6 count] > 1)
  {
    v14 = [v6 firstObject];
    [v14 center];
    v16 = v15;
    v18 = v17;

    v19 = [v6 lastObject];
    [v19 center];
    v21 = v20;
    v23 = v22;

    if (v16 == v21)
    {
      v9 = AXLogAudiogram();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v11 = "Points are perfectly aligned vertically, slope is undefined";
        v12 = v9;
        v13 = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v24 = (v23 - v18) / (v21 - v16);
      [(AIAudiogramMap *)self _interceptForLineThroughPoint:v16 withSlope:v18, v24];
      v26 = v25;
      v27 = AXLogAudiogram();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v32 = v24;
        v33 = 2048;
        v34 = v26;
        v35 = 2048;
        v36 = a3;
        _os_log_impl(&dword_24179B000, v27, OS_LOG_TYPE_DEFAULT, "Calculated slope %f, intercept %f for axis %lu", buf, 0x20u);
      }

      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      if (a3)
      {
        [(AIAudiogramMap *)self setHearingLevelSlope:v28];

        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        [(AIAudiogramMap *)self setHearingLevelIntercept:v9];
      }

      else
      {
        [(AIAudiogramMap *)self setFrequencySlope:v28];

        v9 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        [(AIAudiogramMap *)self setFrequencyIntercept:v9];
      }
    }
  }

  else
  {
    v9 = AXLogAudiogram();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 count];
      *buf = 134217984;
      v32 = *&v10;
      v11 = "Not enough points (%lu) to calculate slope";
      v12 = v9;
      v13 = 12;
LABEL_10:
      _os_log_impl(&dword_24179B000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
    }
  }
}

uint64_t __61__AIAudiogramMap__calculateAxisSlopeAndInterceptForAxisType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numericalValue];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (CGPoint)_adjustedPointForSlopeWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AIAudiogramMap *)self hearingLevelSlope];
  if (v6)
  {
    v7 = [(AIAudiogramMap *)self hearingLevelSlope];
    [v7 doubleValue];
    v9 = fabs(fabs(atan(v8)) * 180.0 / 3.14159265 + -90.0);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(AIAudiogramMap *)self frequencySlope];
  [v10 doubleValue];
  v12 = fabs(atan(v11)) * 180.0 / 3.14159265;

  v13 = fmax(v9, v12) > 1.0;
  if (v9 >= 3.0 || (v12 < 3.0 ? (v14 = !v13) : (v14 = 0), !v14))
  {
    v97 = x;
    v98 = y;
    v17 = [(AIAudiogramMap *)self frequencies];
    v18 = [v17 minValue];
    [v18 center];
    v20 = v19;
    v95 = v21;

    v22 = [(AIAudiogramMap *)self frequencies];
    v23 = [v22 maxValue];
    [v23 center];
    v25 = v24;

    v26 = [(AIAudiogramMap *)self hearingLevels];
    v27 = [v26 minValue];
    [v27 center];
    v96 = v28;
    v30 = v29;

    v31 = [(AIAudiogramMap *)self hearingLevels];
    v32 = [v31 maxValue];
    [v32 center];
    v94 = v33;
    v35 = v34;

    if (v9 < 3.0 || v12 >= 3.0)
    {
      if (v9 >= 3.0 || v12 < 3.0)
      {
        if (v13)
        {
          v48 = [(AIAudiogramMap *)self frequencySlope];
          x = v97;
          y = v98;
          if (v48)
          {
            v49 = v48;
            v50 = [(AIAudiogramMap *)self hearingLevelSlope];

            if (v50)
            {
              v51 = [(AIAudiogramMap *)self hearingLevelSlope];
              [v51 doubleValue];
              v53 = v52;

              [(AIAudiogramMap *)self _interceptForLineThroughPoint:v97 withSlope:v98, v53];
              v55 = v54;
              v56 = [(AIAudiogramMap *)self frequencySlope];
              [v56 doubleValue];
              v58 = v57;
              v59 = [(AIAudiogramMap *)self frequencyIntercept];
              [v59 doubleValue];
              [(AIAudiogramMap *)self _intersectionOfLinesWithSlope:v58 intercept:v60 slope2:v53 intercept2:v55];
              v62 = v61;

              v63 = [(AIAudiogramMap *)self frequencySlope];
              [v63 doubleValue];
              v65 = v64;

              [(AIAudiogramMap *)self _interceptForLineThroughPoint:v97 withSlope:v98, v65];
              v67 = v66;
              v68 = [(AIAudiogramMap *)self hearingLevelSlope];
              [v68 doubleValue];
              v70 = v69;
              v71 = [(AIAudiogramMap *)self hearingLevelIntercept];
              [v71 doubleValue];
              [(AIAudiogramMap *)self _intersectionOfLinesWithSlope:v70 intercept:v72 slope2:v65 intercept2:v67];
              y = v73;

              x = v62;
            }
          }
        }

        else
        {
          x = v97;
          y = v98;
        }
      }

      else
      {
        v42 = [(AIAudiogramMap *)self frequencySlope];
        [v42 doubleValue];
        v44 = v43;
        if (vabdd_f64(v95, v30) < vabdd_f64(v95, v35))
        {

          v45 = [(AIAudiogramMap *)self frequencySlope];
          [v45 doubleValue];
          v47 = -v88;
        }

        else
        {
          v44 = -v43;

          v45 = [(AIAudiogramMap *)self frequencySlope];
          [v45 doubleValue];
          v47 = v46;
        }

        v89 = (v98 - v30) / (v35 - v30);
        if (fabs(v89 + -0.5) >= 0.05)
        {
          v90 = atan(v44);
          v91 = atan(v47);
          v92 = tan(v90 + (v91 - v90) * v89);
          x = v97;
          [(AIAudiogramMap *)self _interceptForLineThroughPoint:v97 withSlope:v98, v92];
          y = v93 + v92 * ((v96 + v94) * 0.5);
        }

        else
        {
          y = v98;
          x = v97;
        }
      }
    }

    else
    {
      v36 = [(AIAudiogramMap *)self hearingLevelSlope];
      [v36 doubleValue];
      v38 = v37;
      x = v97;
      if (vabdd_f64(v96, v20) < vabdd_f64(v96, v25))
      {

        v39 = [(AIAudiogramMap *)self hearingLevelSlope];
        [v39 doubleValue];
        v41 = -v74;
      }

      else
      {
        v38 = -v37;

        v39 = [(AIAudiogramMap *)self hearingLevelSlope];
        [v39 doubleValue];
        v41 = v40;
      }

      v75 = (v97 - v20) / (v25 - v20);
      if (fabs(v75 + -0.5) >= 0.05)
      {
        v76 = atan(v38);
        v77 = atan(v41);
        v78 = v76 + 3.14159265;
        if (v76 >= 0.0)
        {
          v78 = v76;
        }

        if (v77 < 0.0)
        {
          v77 = v77 + 3.14159265;
        }

        v79 = tan(v78 + (v77 - v78) * v75);
        y = v98;
        [(AIAudiogramMap *)self _interceptForLineThroughPoint:v97 withSlope:v98, v79];
        v81 = v80;
        v82 = [(AIAudiogramMap *)self frequencySlope];
        [v82 doubleValue];
        v84 = v83;
        v85 = [(AIAudiogramMap *)self frequencyIntercept];
        [v85 doubleValue];
        [(AIAudiogramMap *)self _intersectionOfLinesWithSlope:v84 intercept:v86 slope2:v79 intercept2:v81];
        x = v87;
      }

      else
      {
        y = v98;
      }
    }
  }

  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)_intersectionOfLinesWithSlope:(double)a3 intercept:(double)a4 slope2:(double)a5 intercept2:(double)a6
{
  v6 = (a4 - a6) / (a5 - a3);
  v7 = a4 + a3 * v6;
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = AIAudiogramMap;
  v14 = [(AIAudiogramMap *)&v19 description];
  v18 = [(AIAudiogramMap *)self frequencies];
  v17 = [v18 minValue];
  v3 = [v17 numericalValue];
  v16 = [(AIAudiogramMap *)self frequencies];
  v4 = [v16 maxValue];
  v5 = [v4 numericalValue];
  v6 = [(AIAudiogramMap *)self hearingLevels];
  v7 = [v6 minValue];
  v8 = [v7 numericalValue];
  v9 = [(AIAudiogramMap *)self hearingLevels];
  v10 = [v9 maxValue];
  v11 = [v10 numericalValue];
  v12 = [v15 stringWithFormat:@"%@ Frequency: %@Hz to %@Hz, Hearing Level: %@dB to %@dB", v14, v3, v5, v8, v11];

  return v12;
}

- (void)_valueOfPoint:(os_log_t)log betweenObject:(double)a2 andObject:onAxis:.cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_24179B000, log, OS_LOG_TYPE_DEBUG, "Finding frequency value. Percent between points = %f", &v2, 0xCu);
}

@end