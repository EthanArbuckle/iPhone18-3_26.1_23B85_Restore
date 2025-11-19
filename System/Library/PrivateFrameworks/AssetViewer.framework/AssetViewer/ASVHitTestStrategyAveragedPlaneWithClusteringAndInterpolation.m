@interface ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation
- (ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation)init;
- (BOOL)decisionHistoryContainsPlaneChange:(id)a3 relativeToNewDecision:(id)a4;
- (BOOL)hasFormedClusterForInitialPlacement:(float *)a3 planeNormal:;
- (BOOL)hasFormedClusterForMovement:(float *)a3 planeNormal:;
- (BOOL)resultsContainPoorQualityEstimatedResults:(id)a3;
- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atScreenPoint:(SEL)a2 inFrame:(int64_t)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6;
- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atScreenPoint:(SEL)a2 inSession:(int64_t)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6;
- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self originalResult:(SEL)a2 atImagePoint:(int64_t)a3 inFrame:(id)a4 withViewportSize:(id)a5 assetPosition:(CGSize)a6 maxDistance:(float)a7;
- (id)decisionForMovementFromOriginalResult:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atImagePoint:(SEL)a2 inFrame:(id)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6;
- (id)decisionForPlacementFromOriginalResult:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self afterPlacementTimeout:(SEL)a2 atImagePoint:(id)a3 inFrame:(BOOL)a4 withViewportSize:(id)a5 assetPosition:(CGSize)a6 maxDistance:(float)a7;
- (id)interpolatedDecisionForDecision:(id)a3;
- (id)reprojectOntoCurrentPlaneAtImagePoint:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self inFrame:(SEL)a2 withViewportSize:(id)a3 assetPosition:(CGSize)a4 maxDistance:(float)a5;
- (void)clearHistory;
@end

@implementation ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation

- (ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation)init
{
  [ASVSettings floatForKey:@"ASVSettingHitTestClusterSizeForPlacement"];
  v4 = vcvtms_u32_f32(v3);
  [ASVSettings floatForKey:@"ASVSettingHitTestClusterSizeForMovement"];
  v6 = vcvtms_u32_f32(v5);
  if (v4 <= v6)
  {
    v4 = v6;
  }

  [ASVSettings floatForKey:@"ASVSettingInterpolationPlaneChangeDecisionCount"];
  v9.receiver = self;
  v9.super_class = ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation;
  result = [(ASVHitTestHistory *)&v9 initWithResultCapacity:v4 decisionCapacity:vcvtms_u32_f32(v7)];
  if (result)
  {
    result->_currentPlaneHeight = -1000000.0;
    *&result->_currentPlaneNormal[4] = kASVInvalidPosition;
  }

  return result;
}

- (void)clearHistory
{
  v3.receiver = self;
  v3.super_class = ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation;
  [(ASVHitTestHistory *)&v3 clearHistory];
  self->_currentPlaneHeight = -1000000.0;
  *&self->_currentPlaneNormal[4] = kASVInvalidPosition;
}

- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atScreenPoint:(SEL)a2 inSession:(int64_t)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6
{
  v8 = v7;
  v25 = v6;
  v9 = *&a6;
  height = a5.height;
  width = a5.width;
  v14 = a4;
  v15 = [v14 currentFrame];
  if (+[ASVUserDefaults forceUseLegacyHitTestAPI])
  {
    LODWORD(v16) = v8;
    v17 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self decisionForHitTestOfType:a3 atScreenPoint:v15 inFrame:width withViewportSize:height assetPosition:v9 maxDistance:v25, v16];
  }

  else
  {
    v18 = [MEMORY[0x277D759A0] mainScreen];
    [v15 normalizedImagePointForScreenPoint:objc_msgSend(v18 viewportSize:"currentOrientation") orientation:{width, height, v9}];
    v20 = v19;

    LODWORD(v21) = v8;
    v22 = [v14 smartRaycastResultForImagePoint:v20 assetPosition:v25 maxDistance:v21];
    LODWORD(v23) = v8;
    v17 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self decisionForHitTestOfType:a3 originalResult:v22 atImagePoint:v15 inFrame:v20 withViewportSize:height assetPosition:v9 maxDistance:v25, v23];
  }

  return v17;
}

- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atScreenPoint:(SEL)a2 inFrame:(int64_t)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6
{
  v8 = v7;
  v24 = v6;
  v9 = *&a6;
  height = a5.height;
  width = a5.width;
  v14 = MEMORY[0x277D759A0];
  v15 = a4;
  v16 = [v14 mainScreen];
  [v15 normalizedImagePointForScreenPoint:objc_msgSend(v16 viewportSize:"currentOrientation") orientation:{width, height, v9}];
  v18 = v17;

  LODWORD(v19) = v8;
  v20 = [v15 smartHitTestResultForImagePoint:v18 assetPosition:v24 maxDistance:v19];
  LODWORD(v21) = v8;
  v22 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self decisionForHitTestOfType:a3 originalResult:v20 atImagePoint:v15 inFrame:v18 withViewportSize:height assetPosition:v9 maxDistance:v24, v21];

  return v22;
}

- (id)decisionForHitTestOfType:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self originalResult:(SEL)a2 atImagePoint:(int64_t)a3 inFrame:(id)a4 withViewportSize:(id)a5 assetPosition:(CGSize)a6 maxDistance:(float)a7
{
  if (a3 > 1)
  {
    v9 = [ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation decisionForMovementFromOriginalResult:"decisionForMovementFromOriginalResult:atImagePoint:inFrame:withViewportSize:assetPosition:maxDistance:" atImagePoint:a4 inFrame:a5 withViewportSize:a6.width assetPosition:a6.height maxDistance:?];
    if (!v9)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v10 = v9;
    v8 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self interpolatedDecisionForDecision:v9];

LABEL_6:
    [(ASVHitTestHistory *)self addDecision:v8];
    goto LABEL_8;
  }

  v8 = [ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation decisionForPlacementFromOriginalResult:"decisionForPlacementFromOriginalResult:afterPlacementTimeout:atImagePoint:inFrame:withViewportSize:assetPosition:maxDistance:" afterPlacementTimeout:a4 atImagePoint:a3 == 1 inFrame:a5 withViewportSize:a6.width assetPosition:a6.height maxDistance:?];
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v8;
}

- (id)decisionForPlacementFromOriginalResult:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self afterPlacementTimeout:(SEL)a2 atImagePoint:(id)a3 inFrame:(BOOL)a4 withViewportSize:(id)a5 assetPosition:(CGSize)a6 maxDistance:(float)a7
{
  v9 = v8;
  v25 = v7;
  v10 = *&a7;
  height = a6.height;
  width = a6.width;
  v14 = a4;
  v16 = a3;
  v17 = a5;
  if (v16)
  {
    [(ASVHitTestHistory *)self addResult:v16];
    if ([v16 isRealPlane])
    {
      if (v14 || [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self hasFormedClusterForInitialPlacement:0 planeNormal:0])
      {
        [v16 worldTransform];
        v20 = vmulq_f32(v18, v19);
        self->_currentPlaneHeight = vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
        *&self->_currentPlaneNormal[4] = v18;
        v21 = [[ASVHitTestDecision alloc] initWithOriginalResult:v16 interpolatedResult:0 finalResult:v16];
        goto LABEL_12;
      }
    }

    else
    {
      v27 = 0.0;
      DWORD2(v26) = 0;
      *&v26 = 0;
      if ([(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self hasFormedClusterForInitialPlacement:&v27 planeNormal:&v26])
      {
        self->_currentPlaneHeight = v27;
        *&self->_currentPlaneNormal[4] = v26;
        LODWORD(v22) = v9;
        v23 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self reprojectOntoCurrentPlaneAtImagePoint:v17 inFrame:width withViewportSize:height assetPosition:v10 maxDistance:*&v25, v22];
        if (v23)
        {
          v21 = [[ASVHitTestDecision alloc] initWithOriginalResult:v16 interpolatedResult:0 finalResult:v23];
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (id)decisionForMovementFromOriginalResult:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self atImagePoint:(SEL)a2 inFrame:(id)a3 withViewportSize:(id)a4 assetPosition:(CGSize)a5 maxDistance:(float)a6
{
  v8 = v7;
  v26 = v6;
  v9 = *&a6;
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  if (v14)
  {
    [(ASVHitTestHistory *)self addResult:v14];
    if ([v14 isRealPlane])
    {
      [v14 worldTransform];
      v19 = vmulq_f32(v17, v18);
      self->_currentPlaneHeight = vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)));
      *&self->_currentPlaneNormal[4] = v17;
      v20 = [[ASVHitTestDecision alloc] initWithOriginalResult:v14 interpolatedResult:0 finalResult:v14];
      goto LABEL_13;
    }

    v28 = 0.0;
    DWORD2(v27) = 0;
    *&v27 = 0;
    if ([(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self hasFormedClusterForMovement:&v28 planeNormal:&v27])
    {
      self->_currentPlaneHeight = v28;
      *&self->_currentPlaneNormal[4] = v27;
    }

    LODWORD(v24) = v8;
    v21 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self reprojectOntoCurrentPlaneAtImagePoint:v15 inFrame:width withViewportSize:height assetPosition:v9 maxDistance:*&v26, v24, v26];
    if (v21)
    {
      v22 = [ASVHitTestDecision alloc];
      v23 = v14;
      goto LABEL_10;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  LODWORD(v16) = v8;
  v21 = [(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self reprojectOntoCurrentPlaneAtImagePoint:v15 inFrame:width withViewportSize:height assetPosition:v9 maxDistance:*&v26, v16];
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = [ASVHitTestDecision alloc];
  v23 = 0;
LABEL_10:
  v20 = [(ASVHitTestDecision *)v22 initWithOriginalResult:v23 interpolatedResult:0 finalResult:v21, v26];
LABEL_12:

LABEL_13:

  return v20;
}

- (id)interpolatedDecisionForDecision:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [ASVSettings floatForKey:@"ASVSettingInterpolationPlaneChangeDecisionCount"];
  v6 = vcvtms_u32_f32(v5);
  v7 = [(ASVHitTestHistory *)self recentDecisionsForCount:v6];
  if ([v7 count])
  {
    if ([v7 count] >= v6)
    {
      v10 = v7;
    }

    else
    {
      v8 = [v7 count];
      v9 = [v7 firstObject];
      v10 = objc_opt_new();
      for (i = v6 - v8; i; --i)
      {
        [v10 addObject:v9];
      }

      [v10 addObjectsFromArray:v7];
    }

    if ([(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self decisionHistoryContainsPlaneChange:v10 relativeToNewDecision:v4])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = v10;
      v12 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v39;
        v15 = 0.0;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(v7);
            }

            v17 = [*(*(&v38 + 1) + 8 * j) finalResult];
            [v17 distanceFromCamera];
            v15 = v15 + v18;
          }

          v13 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 0.0;
      }

      v35 = v15 / [v7 count];
      v19 = [v4 finalResult];
      [v19 cameraPosition];
      v37 = v20;
      v21 = [v4 finalResult];
      [v21 cameraToPosition];
      v23 = vmulq_f32(v22, v22);
      *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
      *v23.f32 = vrsqrte_f32(v24);
      *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
      v37.i64[0] = vmlaq_n_f32(v37, vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]), v35).u64[0];

      v25 = [ASVHitTestResult alloc];
      v26 = [v4 finalResult];
      [v26 imagePoint];
      v28 = v27;
      v29 = [v4 finalResult];
      [v29 assetPosition];
      v36 = v30;
      v31 = [v4 finalResult];
      [v31 cameraPosition];
      v33 = [(ASVHitTestResult *)v25 initWithType:4 worldPosition:*v37.i64 imagePoint:v28 assetPosition:v36 cameraPosition:v32];
      [v4 setInterpolatedResult:v33];
    }

    else
    {
      v7 = v10;
    }
  }

  return v4;
}

- (BOOL)decisionHistoryContainsPlaneChange:(id)a3 relativeToNewDecision:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 finalResult];
  v8 = [v7 isRealPlane];

  if (v8)
  {
    v9 = [v6 finalResult];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = [v15 finalResult];
          v17 = [v16 isRealPlane];

          if (v17)
          {
            v18 = [v15 finalResult];
            v19 = [v9 planeIdentifier];
            v20 = [v18 planeIdentifier];
            v21 = [v19 isEqual:v20];

            if (!v21)
            {

              LOBYTE(v10) = 1;
              v5 = v32;
              goto LABEL_23;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v5 = v32;
  }

  [ASVSettings floatForKey:@"ASVSettingInterpolationPlaneChangeMinimumSeparationDistance", v32];
  v23 = v22;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v24 = *v35;
    while (2)
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v9);
        }

        v26 = [*(*(&v34 + 1) + 8 * j) finalResult];
        [v26 worldPosition];
        v33 = v27;
        v28 = [v6 finalResult];
        [v28 worldPosition];
        LODWORD(v30) = vsubq_f32(v33, v29).i32[1];

        if (fabsf(v30) >= v23)
        {
          LOBYTE(v10) = 1;
          goto LABEL_23;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  return v10;
}

- (id)reprojectOntoCurrentPlaneAtImagePoint:(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self inFrame:(SEL)a2 withViewportSize:(id)a3 assetPosition:(CGSize)a4 maxDistance:(float)a5
{
  v7 = v6;
  v21 = v5;
  width = a4.width;
  v10 = a3;
  v12 = v10;
  currentPlaneHeight = self->_currentPlaneHeight;
  if (currentPlaneHeight == -1000000.0)
  {
    v14 = 0;
  }

  else
  {
    LODWORD(v11) = v7;
    v15 = [v10 hitTestOnPlaneWithWorldTransform:*MEMORY[0x277D860B8] forImagePoint:*&self->_currentPlaneNormal[4] maxDistance:{*(MEMORY[0x277D860B8] + 32), *vmulq_n_f32(*&self->_currentPlaneNormal[4], currentPlaneHeight).i64, width, v11}];
    if (v15)
    {
      v16 = [ASVHitTestResult alloc];
      [v15 worldPosition];
      v20 = v17;
      [v12 cameraPosition];
      v14 = [(ASVHitTestResult *)v16 initWithType:3 worldPosition:v20 imagePoint:width assetPosition:v21 cameraPosition:v18];
      [(ASVHitTestResult *)v14 setSynthesizedPlaneNormal:*&self->_currentPlaneNormal[4]];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)resultsContainPoorQualityEstimatedResults:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [ASVSettings floatForKey:@"ASVSettingMinimumEstimatedHitPointDistanceFromCamera"];
  v5 = v4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (![v10 type])
        {
          [v10 distanceFromCamera];
          if (v11 <= v5 || ([v10 distanceFromFeaturePoint], v13 = v12, objc_msgSend(v10, "distanceFromCamera"), v13 > v14))
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (BOOL)hasFormedClusterForInitialPlacement:(float *)a3 planeNormal:
{
  v4 = v3;
  v50 = *MEMORY[0x277D85DE8];
  [ASVSettings floatForKey:@"ASVSettingHitTestClusterSizeForPlacement"];
  v8 = vcvtms_u32_f32(v7);
  if (!v8)
  {
    return 1;
  }

  v9 = [(ASVHitTestHistory *)self results];
  v10 = [v9 count];

  if (v10 < v8)
  {
    return 0;
  }

  v12 = [(ASVHitTestHistory *)self recentResultsForCount:v8];
  if ([(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self resultsContainPoorQualityEstimatedResults:v12])
  {
LABEL_28:
    v11 = 0;
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
    v38 = 0u;
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      v38 = 0uLL;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v44 + 1) + 8 * i) worldPosition];
          v38 = vaddq_f32(v38, v18);
        }

        v15 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v15);
    }

    *v19.i32 = [v13 count];
    v39 = vdivq_f32(v38, vdupq_lane_s32(v19, 0));
    [ASVSettings floatForKey:@"ASVSettingPlacementClusterCylinderDiameter"];
    v21 = v20;
    [ASVSettings floatForKey:@"ASVSettingPlacementClusterCylinderHeight"];
    v23 = v22;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = v21 * 0.5;
      v28 = v23 * 0.5;
      v29 = *v41;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v40 + 1) + 8 * j);
          [v31 worldPosition];
          if (fabsf(COERCE_FLOAT(vsubq_f32(v32, v39).i32[1])) <= v28)
          {
            [v31 worldPosition];
            v37 = vsubq_f32(v33, v39).u32[0];
            [v31 worldPosition];
            v34.i32[0] = v37;
            v34.i32[1] = vsubq_f32(v35, v39).i32[2];
            if (sqrtf(vaddv_f32(vmul_f32(v34, v34))) <= v27)
            {
              continue;
            }
          }

          goto LABEL_28;
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    if (a3)
    {
      *a3 = v39.f32[1];
    }

    if (v4)
    {
      *v4 = xmmword_241364640;
    }

    v11 = 1;
  }

  return v11;
}

- (BOOL)hasFormedClusterForMovement:(float *)a3 planeNormal:
{
  v4 = v3;
  v56 = *MEMORY[0x277D85DE8];
  [ASVSettings floatForKey:@"ASVSettingHitTestClusterSizeForMovement"];
  v8 = vcvtms_u32_f32(v7);
  if (!v8)
  {
    return 1;
  }

  v9 = [(ASVHitTestHistory *)self results];
  v10 = [v9 count];

  if (v10 >= v8)
  {
    v12 = [(ASVHitTestHistory *)self recentResultsForCount:v8];
    if (![(ASVHitTestStrategyAveragedPlaneWithClusteringAndInterpolation *)self resultsContainPoorQualityEstimatedResults:v12])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v51;
        v17 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v51 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v50 + 1) + 8 * i) worldPosition];
            v17 = v17 + v19;
          }

          v15 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v15);
      }

      else
      {
        v17 = 0.0;
      }

      v20 = v17 / [v13 count];
      [ASVSettings floatForKey:@"ASVSettingMovementClusterChainHeight"];
      v22 = v21;
      [ASVSettings floatForKey:@"ASVSettingMovementClusterChainLinkDistance"];
      v24 = v23;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v25 = v13;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = v22 * 0.5;
        v29 = *v47;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v46 + 1) + 8 * j) worldPosition];
            if (vabds_f32(v31, v20) > v28)
            {

              goto LABEL_33;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      if ([v25 count] < 2)
      {
LABEL_27:
        if (a3)
        {
          *a3 = v20;
        }

        if (v4)
        {
          *v4 = xmmword_241364640;
        }

        v11 = 1;
        goto LABEL_34;
      }

      v32 = 1;
      while (1)
      {
        v33 = [v25 objectAtIndexedSubscript:v32];
        v34 = v32 - 1;
        v35 = [v25 objectAtIndexedSubscript:v34];
        [v33 worldPosition];
        v44 = v36;
        [v33 worldPosition];
        v45 = __PAIR64__(v37, v44);
        [v35 worldPosition];
        v43 = v38;
        [v35 worldPosition];
        v40 = vsub_f32(v45, __PAIR64__(v39, v43));
        v41 = sqrtf(vaddv_f32(vmul_f32(v40, v40)));

        if (v41 > v24)
        {
          break;
        }

        v32 = v34 + 2;
        if (v32 >= [v25 count])
        {
          goto LABEL_27;
        }
      }
    }

LABEL_33:
    v11 = 0;
LABEL_34:

    return v11;
  }

  return 0;
}

@end