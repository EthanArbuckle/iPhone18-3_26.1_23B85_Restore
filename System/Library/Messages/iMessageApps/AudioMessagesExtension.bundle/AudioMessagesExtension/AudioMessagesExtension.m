void sub_3770(uint64_t a1, void *a2, void *a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v17 = a2;
  v18 = a3;
  if (v18)
  {
    v19 = [v17 animationForKey:v18];
    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!a4)
  {
    if (*(a1 + 56) == 1 && ([v17 superlayer], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = 1;
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [v17 removeAllAnimations];
      v21 = 0;
    }

    [v17 setFrame:{a5, a6, a7, a8}];
    *&v48 = a9;
    [v17 setOpacity:v48];
    v49 = [v17 superlayer];

    if (v49)
    {
      if (v21)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v50 = [*(a1 + 32) layer];
      [v50 addSublayer:v17];

      if (v21)
      {
        goto LABEL_25;
      }
    }

    +[CATransaction commit];
    goto LABEL_25;
  }

LABEL_9:
  v22 = [v17 superlayer];

  if (!v22)
  {
    v23 = [*(a1 + 32) layer];
    [v23 addSublayer:v17];
  }

  v54 = a9;
  v24 = *(a1 + 40);
  if (v24 * 0.25 >= *(a1 + 48))
  {
    v25 = v24 * 0.25;
  }

  else
  {
    v25 = *(a1 + 48);
  }

  if (v19)
  {
    v26 = CACurrentMediaTime();
    [v19 beginTime];
    v28 = v27;
    [v19 duration];
    v30 = v26 - (v28 + v29);
    if (v30 > 0.1)
    {
      v25 = v30;
    }

    else
    {
      v25 = 0.1;
    }
  }

  v31 = v17;
  v53 = v18;
  v32 = [v31 presentationLayer];
  v33 = [v32 valueForKeyPath:@"position"];

  v34 = [v31 presentationLayer];
  v35 = [v34 valueForKeyPath:@"bounds"];

  v36 = [v31 presentationLayer];
  v37 = [v36 valueForKey:@"opacity"];

  v57.origin.x = a5;
  v57.origin.y = a6;
  v57.size.width = a7;
  v57.size.height = a8;
  MidX = CGRectGetMidX(v57);
  v58.origin.x = a5;
  v58.origin.y = a6;
  v58.size.width = a7;
  v58.size.height = a8;
  MidY = CGRectGetMidY(v58);
  v59.origin.x = a5;
  v59.origin.y = a6;
  v59.size.width = a7;
  v59.size.height = a8;
  Width = CGRectGetWidth(v59);
  v60.origin.x = a5;
  v60.origin.y = a6;
  v60.size.width = a7;
  v60.size.height = a8;
  Height = CGRectGetHeight(v60);
  [v31 setPosition:{MidX, MidY}];
  [v31 setBounds:{0.0, 0.0, Width, Height}];
  HIDWORD(v42) = HIDWORD(v54);
  *&v42 = v54;
  [v31 setOpacity:v42];
  v43 = [CABasicAnimation animationWithKeyPath:@"position"];
  v55 = v33;
  [v43 setFromValue:v33];
  v44 = [CABasicAnimation animationWithKeyPath:@"bounds"];
  v52 = v35;
  [v44 setFromValue:v35];
  v45 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v45 setFromValue:v37];
  v46 = objc_alloc_init(CAAnimationGroup);
  v56[0] = v43;
  v56[1] = v44;
  v56[2] = v45;
  v47 = [NSArray arrayWithObjects:v56 count:3];
  [v46 setAnimations:v47];

  if (v25 >= 0.0)
  {
    [v46 setDuration:v25];
  }

  [v46 setRemovedOnCompletion:{1, v18}];
  [v31 addAnimation:v46 forKey:v53];

  v18 = v51;
LABEL_25:
}

BOOL sub_3E48(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  [v7 opacity];
  if (v8 < 1.0 || ([v7 isHidden] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [*(a1 + 32) layer];
    [v7 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 superlayer];
    [v10 convertRect:v19 fromLayer:{v12, v14, v16, v18}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v29.origin.x = v21 - a3;
    v29.size.width = a3 + a4 + v25;
    v29.origin.y = v23;
    v29.size.height = v27;
    v9 = CGRectContainsPoint(v29, *(a1 + 40));
  }

  return v9;
}

void sub_44B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

double sub_4530(id a1, double result, double a3, double a4, double a5, int a6)
{
  v6 = a3 - result;
  if (a6 <= 0)
  {
    v6 = result - a3;
  }

  v7 = fmax(v6, 0.0);
  v8 = -a6;
  v9 = v7 >= a4 || a4 <= 0.0;
  v10 = a3 + v8 * a4;
  if (!v9)
  {
    result = v10;
  }

  v11 = v7 <= a5 || a5 <= 0.0;
  v12 = a3 + v8 * a5;
  if (!v11)
  {
    return v12;
  }

  return result;
}

void sub_4574(uint64_t a1, void *a2)
{
  v28 = a2;
  [v28 updateTrackingInfo];
  v3 = [v28 selectionBarType];
  if (v3 == &dword_0 + 2)
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
    v21 = [v28 touch];
    v22 = [*(a1 + 32) superview];
    [v21 locationInView:v22];
    v24 = v23;

    if (([*(a1 + 32) enableTimeTrackingInView] & 1) == 0)
    {
      [v28 trackingOffset];
      v24 = v24 + v25;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    [WeakRetained waveformSelectionOverlay:*(a1 + 32) timeForOffset:v24];
    *(*(*(a1 + 104) + 8) + 24) = v27;

    v4 = v28;
  }

  else
  {
    if (v3 == &dword_0 + 1)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v14 = [v28 touch];
      v15 = [*(a1 + 32) superview];
      [v14 locationInView:v15];
      v17 = v16;
      [v28 trackingOffset];
      *(*(*(a1 + 88) + 8) + 24) = v17 + v18;

      v19 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v19 waveformSelectionOverlay:*(a1 + 32) timeForOffset:*(*(*(a1 + 88) + 8) + 24)];
      *(*(*(a1 + 72) + 8) + 24) = v20;

      (*(*(a1 + 40) + 16))(*(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
      v4 = v28;
      v13 = *(a1 + 72);
    }

    else
    {
      v4 = v28;
      if (v3)
      {
        goto LABEL_10;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v5 = [v28 touch];
      v6 = [*(a1 + 32) superview];
      [v5 locationInView:v6];
      v8 = v7;
      [v28 trackingOffset];
      *(*(*(a1 + 56) + 8) + 24) = v8 + v9;

      v10 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v10 waveformSelectionOverlay:*(a1 + 32) timeForOffset:*(*(*(a1 + 56) + 8) + 24)];
      *(*(*(a1 + 64) + 8) + 24) = v11;

      (*(*(a1 + 40) + 16))(*(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 24), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
      v4 = v28;
      v13 = *(a1 + 64);
    }

    *(*(v13 + 8) + 24) = v12;
  }

LABEL_10:
}

void sub_495C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 touch];

  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

id sub_4E3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:{objc_msgSend(a2, "pointerValue")}];
  *a4 = result;
  return result;
}

id sub_7BFC(uint64_t a1)
{
  v2 = objc_alloc_init(CALayer);
  [v2 setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 40) + *(a1 + 48) * -4.0}];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
  [v2 setOpaque:1];

  return v2;
}

id sub_7C80(uint64_t a1)
{
  v2 = objc_alloc_init(CALayer);
  [v2 setBounds:{0.0, 0.0, *(a1 + 40) + *(a1 + 40), *(a1 + 40) + *(a1 + 40)}];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
  [v2 setCornerRadius:*(a1 + 40)];
  [v2 setOpaque:1];

  return v2;
}

void sub_8324(id a1)
{
  v1 = objc_alloc_init(RCNoAnimateLayerHelper);
  v2 = qword_822E0;
  qword_822E0 = v1;
}

void sub_8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RCWaveformRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_8E6C(uint64_t a1)
{
  *(*(a1 + 32) + 142) = 1;
  v1 = *(a1 + 32);
  [v1 _duration];

  return [v1 _renderVisibleTimeRangeWithDuration:?];
}

void *sub_900C(uint64_t a1)
{
  [*(a1 + 32) _clearRenderingState];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 removeObserver:?];
    v2 = *(a1 + 32);
  }

  *(v2 + 32) = 0;
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  result = *(a1 + 32);
  if (result[19])
  {
    [result _updateOverviewUnitsPerSecond];
    [*(*(a1 + 32) + 152) addObserver:?];
    *(*(a1 + 32) + 142) = 1;
    [*(a1 + 32) _setNeedsVisibleTimeRangeRendering];
    result = [*(*(a1 + 32) + 152) duration];
    if (v5 > 0.0)
    {
      *(*(a1 + 32) + 143) = 1;
      result = [*(a1 + 32) _renderVisibleTimeRangeWithDuration:?];
      *(*(a1 + 32) + 143) = 0;
    }
  }

  return result;
}

void sub_93B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_98EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[140])
  {
    if (v2[137])
    {
      [*(a1 + 40) timeRange];
      v4 = v3;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
      [WeakRetained currentTime];
      v7 = vabdd_f64(v4, v6);

      if (v7 > 0.25)
      {
        *(*(a1 + 32) + 146) = 1;
      }

      v2 = *(a1 + 32);
    }
  }

  else if (v2[137])
  {
    goto LABEL_8;
  }

  v2[142] = 1;
LABEL_8:
  v8 = *(a1 + 32);

  return [v8 _setNeedsVisibleTimeRangeRendering];
}

_BYTE *sub_9B64(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[144] & 1) == 0 && (result[8] & 1) == 0)
  {
    return [result _startRendering];
  }

  return result;
}

id sub_9F20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  *(*(a1 + 32) + 16) = RCTimeRangeZero;
  *(*(a1 + 32) + 142) = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 32) waveformSlices];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) sliceLayer];
        [v9 removeFromSuperlayer];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  [*(a1 + 32) setWaveformSlices:v10];

  v11 = objc_opt_new();
  [*(a1 + 32) setWaveformSliceIndexes:v11];

  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  [v13 setWaveformAmpSlicesForRendering:&__NSArray0__struct];
  *(*v12 + 3) = RCTimeRangeZero;
  v14 = *v12 + 64;
  *v14 = 0;
  v14[1] = 0;
  *(*v12 + 80) = 0;
  [*v12 _setNeedsVisibleTimeRangeRendering];
  return [*v12 _setNeedsRendering];
}

void sub_AE08(uint64_t a1)
{
  if ([*(a1 + 32) renderingQueueIsBusy])
  {
    return;
  }

  [*(a1 + 32) setFailedFirstRenderCalculationAttempt:0];
  [*(a1 + 32) setRenderingQueueIsBusy:1];
  v2 = [*(*(a1 + 32) + 152) waveformSegmentsIntersectingTimeRange:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) waveformSliceIndexes];
  v4 = [v3 mutableCopy];
  v5 = v4;
  v6 = 3;
  if (*(a1 + 56) > 3)
  {
    v6 = *(a1 + 56);
  }

  v7 = v6 - 3;
  if (*(*(a1 + 32) + 140))
  {
    v8 = *(a1 + 56);
  }

  else
  {
    v8 = v7;
  }

  if (*(*(a1 + 32) + 140))
  {
    v9 = *(a1 + 64);
  }

  else
  {
    v9 = *(a1 + 64) + 6;
  }

  [v4 removeIndexesInRange:{v8, v9}];
  v10 = [v2 objectEnumerator];
  v11 = [v10 nextObject];
  v12 = [*(a1 + 32) waveformSlices];
  v57 = v3;
  v56 = v2;
  v13 = *(a1 + 56);
  if (v13 >= (*(a1 + 64) + v13))
  {
    goto LABEL_58;
  }

  do
  {
    v14 = v13 + 1;
    v15 = RCTimeRangeMake(*(a1 + 72) * v13, *(a1 + 72) * (v13 + 1));
    v17 = v16;
    v18 = [NSNumber numberWithInteger:v13];
    v19 = [v12 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = *(a1 + 120);
      [v5 removeIndex:v13];
      if (*(a1 + 121) != 1 || (v20 & 1) != 0)
      {
        goto LABEL_25;
      }

      if ((*(*(a1 + 32) + 140) & 1) == 0 && (*(a1 + 122) & 1) == 0)
      {
        v21 = *(a1 + 96);
        v22 = RCTimeRangeEqualToTimeRange(*(a1 + 88), v21, 1.79769313e308, -1.79769313e308);
        v23 = v15 - v21 > 0.0;
        if (v15 - v21 <= -0.5)
        {
          v23 = 1;
        }

        v20 = !v22 && !v23;
        goto LABEL_25;
      }
    }

    else
    {
      if ([v5 count] && (v24 = objc_msgSend(v5, "firstIndex"), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v24), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", v25), v19 = objc_claimAutoreleasedReturnValue(), v25, v19))
      {
        v26 = [NSNumber numberWithUnsignedInteger:v24];
        [v12 setObject:0 forKeyedSubscript:v26];

        [v57 removeIndex:v24];
        [v5 removeIndex:v24];
        v27 = [NSNumber numberWithInteger:v13];
        [v12 setObject:v19 forKeyedSubscript:v27];

        [v57 addIndex:v13];
      }

      else
      {
        v28 = objc_opt_new();
        v29 = [NSNumber numberWithInteger:v13];
        [v12 setObject:v28 forKeyedSubscript:v29];

        v19 = v28;
        [v57 addIndex:v13];
      }

      [v19 setAmplitude:*(a1 + 80)];
      [v19 setVisualAmplitudeHeightInterpolatingFrames:0];
      [v19 setVisualAmplitudeHeight:RCOnePixelInPoints()];
      [v19 setSliceIndex:v13];
      [v19 setHasProcessedSegments:0];
    }

    v20 = 1;
LABEL_25:
    if (!v11)
    {
      [v19 setHasProcessedSegments:0];
    }

    if (v20 & 1) == 0 && ([v19 hasProcessedSegments])
    {
      goto LABEL_57;
    }

    if (!v11)
    {
      v30 = 0;
      v31 = -3.40282347e38;
      goto LABEL_49;
    }

    v30 = v11;
    v31 = -3.40282347e38;
    while (1)
    {
      v32 = [v30 averagePowerLevelsCount];
      v33 = [v30 averagePowerLevels];
      [v30 timeRange];
      v35 = v34;
      v37 = v36;
      if (RCTimeRangeIntersectsRange(v15, v17, v34, v36))
      {
        break;
      }

      if (v37 >= v15)
      {
        if (v35 > v17)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_44:
      v42 = [v10 nextObject];

      v30 = v42;
LABEL_46:
      if (!v30)
      {
        goto LABEL_49;
      }
    }

    if (v32 < 1)
    {
      goto LABEL_44;
    }

    v38 = 0;
    v39 = v37 - v35;
    while (1)
    {
      v40 = v35 + v39 * (v38 / v32);
      if (v40 > v17)
      {
        break;
      }

      if (v40 >= v15 && v40 <= v17)
      {
        [v19 setHasProcessedSegments:1];
        if (v31 < v33[v38])
        {
          v31 = v33[v38];
        }
      }

      if (v32 == ++v38)
      {
        goto LABEL_44;
      }
    }

LABEL_49:
    v43 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v43 minimumDecibelDisplayRange];
    v45 = v44;

    if (v31 >= v45)
    {
      v46 = v31;
    }

    else
    {
      v46 = -3.40282347e38;
    }

    v47 = v46;
    v48 = RCNormalizedDecibelValue(v47);
    if (v48 > *&qword_82358)
    {
      v48 = *&qword_82358;
    }

    v49 = *&qword_82360 * sqrt(v48);
    if (v49 < *(a1 + 80))
    {
      v49 = *(a1 + 80);
    }

    [v19 setAmplitude:v49];
    v11 = v30;
LABEL_57:

    v13 = v14;
  }

  while (v14 < *(a1 + 64) + *(a1 + 56));
LABEL_58:
  if (*(a1 + 123))
  {
    v50 = [v12 allValues];
    v51 = [v50 count];

    if (!v51)
    {
      [*(a1 + 32) setFailedFirstRenderCalculationAttempt:1];
      v52 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        sub_41F84(v52);
      }
    }
  }

  v53 = [v12 allValues];
  [*(a1 + 32) setWaveformAmpSlicesForRendering:v53];

  *(*(a1 + 32) + 48) = *(a1 + 104);
  *(*(a1 + 32) + 64) = *(a1 + 56);
  if (*(a1 + 122) == 1)
  {
    *(*(a1 + 32) + 80) = 1;
  }

  v54 = [*(a1 + 32) nextRenderBlock];
  v55 = *(a1 + 32);
  if (v54)
  {
    [v55 setNextRenderBlock:0];
    dispatch_async(*(*(a1 + 32) + 88), v54);
    if (([*(a1 + 32) waitForFinalCalc] & 1) == 0)
    {
      v55 = *(a1 + 32);
      goto LABEL_68;
    }
  }

  else
  {
LABEL_68:
    [v55 setRenderReadyForDraw:1];
  }

  [*(a1 + 32) setRenderingQueueIsBusy:0];
}

id sub_B58C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v16 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v12 = 0.0;
    v13 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [v4 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
    [v5 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v6 = [UIColor colorWithRed:(1.0 - v9) * v16 + v9 * v12 green:(1.0 - v9) * v15 + v9 * v11 blue:(1.0 - v9) * v14 + v9 * v10 alpha:1.0];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

void sub_B6A0(uint64_t a1, void *a2, void *a3, double a4)
{
  v49 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v51 = v7;
  if ([WeakRetained isZooming])
  {
    v9 = a1 + 48;
  }

  else
  {
    v9 = *(a1 + 32) + 216;
  }

  v11 = *v9;
  v10 = *(v9 + 8);

  v12 = *(a1 + 64);
  v13 = RCTimeRangeDelta(v11, v10);
  v14 = 0.0;
  if (v13 > 0.0)
  {
    v14 = v11 * (v12 / v13);
  }

  [v7 bounds];
  [v7 setBounds:v14];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = v50;
  v16 = [v15 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v16)
  {
    v17 = *v53;
    v18 = -v14;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v52 + 1) + 8 * i);
        v21 = [v20 sliceIndex];
        v22 = *(*(a1 + 32) + 64);
        v24 = v21 >= v22;
        v23 = &v21[-v22];
        v24 = !v24 || v23 >= *(*(a1 + 32) + 72);
        if (v24 || ([v20 amplitude], objc_msgSend(v20, "amplitude"), fabs(v25) == INFINITY))
        {
          [v20 setHidden:1];
          continue;
        }

        v26 = [v20 sliceLayer];
        if (!v26)
        {
          v26 = +[CALayer layer];
          v27 = +[RCNoAnimateLayerHelper sharedNoAnimationHelper];
          [v26 setDelegate:v27];

          [v26 setOpaque:1];
          [v20 setSliceLayer:v26];
        }

        v28 = [v20 sliceIndex];
        v29 = *(a1 + 72);
        v30 = [v20 hasProcessedSegments];
        v31 = 0.0;
        if (v30)
        {
          [v20 amplitude];
          v31 = fmax(v32, 0.0);
        }

        v33 = v31 * *(a1 + 80);
        if (v33 < *(a1 + 88))
        {
          v34 = v33;
        }

        else
        {
          v34 = *(a1 + 88);
        }

        [v20 setVisualAmplitudeHeight:v34];
        v35 = RCOnePixelInPoints();
        [v20 visualAmplitudeHeight];
        v37 = v29 * v28;
        if (v35 < v36)
        {
          v35 = v36;
        }

        v38 = [v20 sliceLayer];
        v39 = [v38 superlayer];
        v40 = v39 == v51;

        if (!v40)
        {
          v41 = [v20 sliceLayer];
          [v51 addSublayer:v41];
        }

        [v20 setHidden:0];
        v42 = RCRoundCoord(v37);
        v43 = *(a1 + 80);
        v44 = RCRoundCoord(a4);
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          [v20 setColor:0];
        }

        if (([*(a1 + 32) isOverview] & 1) == 0)
        {
          v46 = *(a1 + 32);
          if (v46[41] != 1 || v46[137] != 1 || [v46 isPlayBarOnlyMode])
          {
            if (RCTimeRangeEqualToTimeRange(*(a1 + 96), *(a1 + 104), 1.79769313e308, -1.79769313e308) || [v20 sliceIndex] >= *(a1 + 112) && objc_msgSend(v20, "sliceIndex") <= *(a1 + 120))
            {
              if (v18 + [v20 sliceIndex] * *(a1 + 72) < *(a1 + 64) * 0.5)
              {
                v45 = 1;
              }

              else
              {
                v45 = 2;
              }

              goto LABEL_46;
            }

LABEL_45:
            v45 = 2;
            goto LABEL_46;
          }
        }

        if (!RCTimeRangeEqualToTimeRange(*(a1 + 96), *(a1 + 104), 1.79769313e308, -1.79769313e308) && ([v20 sliceIndex] < *(a1 + 112) || objc_msgSend(v20, "sliceIndex") > *(a1 + 120)))
        {
          goto LABEL_45;
        }

        v45 = 1;
LABEL_46:
        [v20 setColor:v45];
        if (([v20 hasProcessedSegments] & 1) == 0)
        {
          if (*(*(a1 + 32) + 137) == 1)
          {
            if ([v20 color] != &dword_0 + 1)
            {
              [v20 setHidden:1];
            }
          }

          else
          {
            v47 = [v20 uiColorDimmed];
            [v20 setColor:0];
            v48 = v47;
            [v26 setBackgroundColor:{objc_msgSend(v47, "CGColor")}];
          }
        }

        [v20 setFrame:{v42, v43 - v35, v44, v35 + v35}];
      }

      v16 = [v15 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v16);
  }
}

void sub_C478(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_CD8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  v2 = &_os_log_default;
  if (qword_82378 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_42008();
    if (v1)
    {
LABEL_3:
      v3 = [qword_82370 objectForKey:v1];

      if (v3)
      {
        goto LABEL_15;
      }

      if ([qword_82370 count] > 0xA)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_12:
          v3 = &_os_log_default;
          v7 = &_os_log_default;
          goto LABEL_15;
        }

        v9 = 0;
        v5 = "ERROR | Too many categories defined, use default";
        v6 = &v9;
      }

      else
      {
        v4 = os_log_create("com.apple.VoiceMemos", [v1 UTF8String]);
        if (v4)
        {
          v3 = v4;
          [qword_82370 setObject:v4 forKey:v1];
          goto LABEL_15;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v5 = "ERROR | Failed os_log_create, use default";
        v6 = buf;
      }

      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_12;
    }
  }

  v3 = &_os_log_default;
LABEL_15:

  return v3;
}

void sub_CFE4(id a1)
{
  v1 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v2 = qword_82370;
  qword_82370 = v1;
}

uint64_t RCShouldAssertWarnings()
{
  result = MSVDeviceOSIsInternalInstall();
  if (result)
  {
    return RCDebugAssertsDisabled() ^ 1;
  }

  return result;
}

id sub_D500(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);

    return [v4 addObject:v3];
  }

  return result;
}

uint64_t sub_D6F8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = [v3 state];
  v5 = v4;
  if (v4 == &dword_0 + 3 || !v4)
  {
    sub_DE58(@"loading samples", v4, a2);
  }

  if (v5)
  {
    v6 = v5 == &dword_0 + 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

uint64_t sub_DCB0(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  *(*(*(result + 40) + 8) + 24) = v3;
  return result;
}

void sub_DD70(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = *(*(a1 + 32) + 8);
    if (v3 >= 2)
    {
      sub_DE58(@"begin loading", v3, *(a1 + 48));
    }
  }

  else
  {
    *(v2 + 8) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 216);
    *(v4 + 216) = 0;

    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_DF9C;
    v7[3] = &unk_6D138;
    v7[4] = v6;
    [v6 _onQueue_performObserversBlock:v7];
  }
}

void sub_DE58(void *a1, unint64_t a2, const char *a3)
{
  v5 = a1;
  v6 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a3);
    v8 = v7;
    if (a2 > 3)
    {
      v9 = @"unknown RCWaveformGeneratorState";
    }

    else
    {
      v9 = *(&off_6D3C8 + a2);
    }

    v10 = 136315906;
    v11 = "_assertInvalidStateMessage";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%s -- WARNING: %@ (%@) is disallowed when generator state is '%@'  ignoring, instead of asserting.", &v10, 0x2Au);
  }
}

void sub_DF9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 waveformGeneratorWillBeginLoading:*(a1 + 32)];
  }
}

void sub_E088(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (*(a1 + 40) == 1)
  {
    *(v1 + 224) = v2 + 1;
    v3 = *(a1 + 32);
    if (*(v3 + 224) == 1)
    {
      v4 = *(v3 + 16);

      dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else if (v2)
  {
    *(v1 + 224) = v2 - 1;
    v5 = *(*(a1 + 32) + 16);

    dispatch_semaphore_signal(v5);
  }

  else
  {
    v6 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[RCWaveformGenerator setPaused:]_block_invoke";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s -- WARNING: Unbalanced setPaused: detected", &v7, 0xCu);
    }
  }
}

void sub_E398(uint64_t a1)
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_E6BC;
  v27[4] = sub_E6CC;
  v28 = *(a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 3)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, (*(v2 + 232) & 1) == 0, *(v2 + 216));
    }
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    v5 = +[NSUUID UUID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_E6D4;
    v22[3] = &unk_6D1B0;
    v26 = v27;
    v25 = *(a1 + 40);
    v6 = v5;
    v23 = v6;
    v7 = v4;
    v24 = v7;
    v8 = [v22 copy];
    [*(*(a1 + 32) + 56) addObject:v6];
    v9 = *(*(a1 + 32) + 64);
    v10 = objc_retainBlock(v8);
    [v9 addObject:v10];

    v11 = *(a1 + 32);
    if (*(v11 + 232))
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 64);
    }

    *(v11 + 232) = v12 & 1;
    v13 = *(a1 + 32);
    if (*(v13 + 8) != 2)
    {
      *(v13 + 8) = 2;
      if (sub_D6F8(*(a1 + 32), *(a1 + 48)))
      {
        [*(a1 + 32) _onQueue_flushRemainingData];
        [*(a1 + 32) _onQueue_performInternalFinishedLoadingBlocksAndFinishObservers];
      }
    }

    v14 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_E720;
    v17[3] = &unk_6D1D8;
    v21 = *(a1 + 64);
    v18 = v7;
    v19 = v8;
    v20 = *(a1 + 56);
    v15 = v7;
    v16 = v8;
    dispatch_async(v14, v17);
  }

  _Block_object_dispose(v27, 8);
}

void sub_E654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_E6BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_E6D4(void *a1, uint64_t a2)
{
  [*(*(a1[7] + 8) + 40) _onQueue_performLoadingFinishedBlock:a1[6] internalBlockUUID:a1[4] isTimeout:a2];
  v3 = a1[5];

  return dispatch_semaphore_signal(v3);
}

intptr_t sub_E720(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || (result = dispatch_semaphore_wait(*(a1 + 32), *(a1 + 48))) != 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void *sub_EE74(void *result)
{
  v1 = result[5];
  if (*v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      result = [v2[4] _onQueue_appendPowerMeterValuesFromRawAudioData:*&v1[v3 + 4] frameCount:v1[v3 + 2] * (v1[v3 + 3] / (*(v2[6] + 16) / *(v2[6] + 20))) format:? isPredigest:?];
      ++v4;
      v1 = v2[5];
      v3 += 4;
    }

    while (v4 < *v1);
  }

  return result;
}

void sub_EF8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *[*(a1 + 40) floatChannelData];
  v4 = [*(a1 + 40) frameLength];
  v5 = [*(a1 + 40) format];
  [v2 _onQueue_appendPowerMeterValuesFromRawAudioData:v3 frameCount:v4 format:objc_msgSend(v5 isPredigest:{"streamDescription"), 0}];
}

void sub_F40C(uint64_t a1)
{
  v2 = [AVAudioPCMBuffer alloc];
  v3 = [*(a1 + 32) processingFormat];
  v4 = [v2 initWithPCMFormat:v3 frameCapacity:4096];

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = 0;
    while (1)
    {
      v6 = v5;
      dispatch_semaphore_wait(*(*(a1 + 40) + 16), 0xFFFFFFFFFFFFFFFFLL);
      dispatch_semaphore_signal(*(*(a1 + 40) + 16));
      v7 = *(a1 + 32);
      v21 = v5;
      v8 = [v7 readIntoBuffer:v4 error:&v21];
      v5 = v21;

      if (!v8)
      {
        break;
      }

      v9 = [v4 frameLength];
      *(*(*(a1 + 64) + 8) + 24) += *(a1 + 80) * v9;
      v10 = *(a1 + 40);
      if (v10[232])
      {
        v19 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v20 = *(*(a1 + 56) + 8);
        v18 = *(v20 + 40);
        *(v20 + 40) = v19;
        goto LABEL_14;
      }

      if (!v9)
      {
        [*(a1 + 40) _onQueue_flushRemainingData];
        goto LABEL_16;
      }

      v11 = *[v4 floatChannelData];
      v12 = [v4 frameLength];
      v13 = [v4 format];
      [v10 _onQueue_appendPowerMeterValuesFromRawAudioData:v11 frameCount:v12 format:objc_msgSend(v13 isPredigest:{"streamDescription"), 0}];

      if (*(a1 + 48))
      {
        v14 = floor(*(*(*(a1 + 64) + 8) + 24) / *(a1 + 88) * 1000.0) / 1000.0;
        v15 = *(*(a1 + 72) + 8);
        if (*(v15 + 24) != v14)
        {
          *(v15 + 24) = v14;
          (*(*(a1 + 48) + 16))();
        }
      }

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        goto LABEL_16;
      }
    }

    v16 = *(*(a1 + 56) + 8);
    v17 = v5;
    v18 = *(v16 + 40);
    *(v16 + 40) = v17;
LABEL_14:

    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
}

void sub_F80C(uint64_t a1)
{
  if (sub_D6F8(*(a1 + 32), *(a1 + 48)))
  {
    v2 = [*(a1 + 40) framePosition];
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = v2;
      v4 = [*(a1 + 40) processingFormat];
      [v4 sampleRate];
      v6 = *v8.i64;
      v7 = *(a1 + 56);
      *v8.i64 = v7 + -10.0;
      if (v7 + -10.0 < 0.0)
      {
        *v8.i64 = 0.0;
      }

      v9 = (v6 * *v8.i64);
      *v8.i64 = vcvtd_n_f64_s64(v9, 0xCuLL);
      *v5.i64 = *v8.i64 - trunc(*v8.i64);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v11 = vcvtd_n_s64_f64(*vbslq_s8(vnegq_f64(v10), v5, v8).i64, 0xCuLL);
      [*(a1 + 40) setFramePosition:{fmaxf((v9 - v11), 0.0)}];
      v12 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v4 frameCapacity:4096];
      if (v11 >= 1)
      {
        do
        {
          dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
          dispatch_semaphore_signal(*(*(a1 + 32) + 16));
          if (*(*(a1 + 32) + 232))
          {
            break;
          }

          v13 = *(a1 + 40);
          if (v11 >= 0x1000)
          {
            v14 = 4096;
          }

          else
          {
            v14 = v11;
          }

          v30 = 0;
          v15 = [v13 readIntoBuffer:v12 frameCount:v14 error:&v30];
          v16 = v30;
          if (!v15 || (v17 = [v12 frameLength]) == 0)
          {

            break;
          }

          v18 = *(a1 + 32);
          v19 = *[v12 floatChannelData];
          v20 = [v12 format];
          [v18 _onQueue_appendPowerMeterValuesFromRawAudioData:v19 frameCount:v17 format:objc_msgSend(v20 isPredigest:{"streamDescription"), 1}];
          v11 -= v17;
        }

        while (v11 > 0);
      }

      [*(a1 + 40) setFramePosition:(v6 * v7)];
      *(*(a1 + 32) + 32) = 0;
      *(*(a1 + 32) + 192) = 0;
      while (1)
      {
        v21 = *(*(a1 + 32) + 40);
        if (v21 >= RCTimeRangeDeltaWithExactPrecision(*(a1 + 56), *(a1 + 64)))
        {
          break;
        }

        dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_signal(*(*(a1 + 32) + 16));
        if (*(*(a1 + 32) + 232))
        {
          break;
        }

        v22 = *(a1 + 40);
        v29 = 0;
        v23 = [v22 readIntoBuffer:v12 frameCount:4096 error:&v29];
        v24 = v29;
        if (!v23 || (v25 = [v12 frameLength]) == 0)
        {
          [*(a1 + 32) _onQueue_flushRemainingData];

          break;
        }

        v26 = *(a1 + 32);
        v27 = *[v12 floatChannelData];
        v28 = [v12 format];
        [v26 _onQueue_appendPowerMeterValuesFromRawAudioData:v27 frameCount:v25 format:objc_msgSend(v28 isPredigest:{"streamDescription"), 0}];
      }

      [*(a1 + 40) setFramePosition:v3];
    }
  }
}

void sub_FDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_FE84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copyWithTimeRangeOffsetByTimeOffset:*(a1 + 40)];

  [*(a1 + 32) addObject:?];
}

id sub_FFF8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(a1 + 40);
      if (v6[232])
      {
        break;
      }

      [v6 _onQueue_appendSegment:{*(*(&v8 + 1) + 8 * v5), v8}];
      v5 = v5 + 1;
      if (v3 == v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = [*(a1 + 40) _onQueue_flushRemainingData];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

void sub_1010C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    *(*(*(v2 + 48) + 8) + 24) = 0;
    objc_end_catch();
    JUMPOUT(0x100D8);
  }

  _Unwind_Resume(a1);
}

void sub_1042C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_10E94();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10F3C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_10CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RCWaveformSegmentAccumulator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10EAC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10F08(exception, a1);
}

std::logic_error *sub_10F08(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10F3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_10F84();
}

void sub_10F84()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

double sub_10FD0(void *a1)
{
  *a1 = 0;
  a1[2] = 0x3F789374BC6A7EFALL;
  a1[4] = 0x3F90624DD2F1A9FCLL;
  a1[6] = 0;
  *(a1 + 54) = 0;
  *&result = 0xFFFFFFFFLL;
  a1[5] = 0xFFFFFFFFLL;
  return result;
}

double sub_11010(void *a1)
{
  *(a1 + 54) = 0;
  a1[6] = 0;
  *&result = 0xFFFFFFFFLL;
  a1[5] = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_11024(uint64_t result)
{
  *(result + 60) = 0;
  *(result + 56) = 0;
  return result;
}

void sub_11030(uint64_t a1, double a2)
{
  *a1 = a2;
  v4 = a2 * 2.5;
  v5 = 0.0;
  v6 = a2 * 2.5 < 0.00001;
  v7 = 0.0;
  if (!v6)
  {
    v7 = exp(-6.90775528 / v4);
  }

  *(a1 + 8) = v7;
  if (a2 * 1.24 >= 0.00001)
  {
    v5 = exp(-6.90775528 / (a2 * 1.24));
  }

  *(a1 + 24) = v5;
}

uint64_t sub_110C4(uint64_t result)
{
  *(result + 48) = 0;
  *(result + 44) = 0;
  return result;
}

long double sub_110D0(uint64_t a1, int a2, long double result)
{
  if (*(a1 + 40) != a2)
  {
    if (*a1 == 0.0)
    {
      *a1 = xmmword_5F1F0;
      *(a1 + 24) = 0x3FEFFEF71A09F35FLL;
      v5 = 0.999937347;
      v6 = 0.999873687;
    }

    else
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
    }

    *(a1 + 16) = 1.0 - pow(v5, a2);
    result = 1.0 - pow(v6, a2);
    *(a1 + 32) = result;
    *(a1 + 40) = a2;
  }

  return result;
}

void sub_1118C(uint64_t a1, float *a2, int a3, int a4)
{
  v6 = a2;
  v17 = a2;
  v15 = 0.0;
  v16 = a4;
  v8 = a4;
  if ((a2 & 0xF) == 0)
  {
    sub_11280(a1, &v17, &v16, &v15);
    v8 = v16;
  }

  v9 = v15;
  if (v8 >= 1)
  {
    v10 = v8 + 1;
    do
    {
      v11 = *v6;
      if (*v6 < 0.0)
      {
        v11 = -*v6;
      }

      if (v11 > v9)
      {
        v9 = v11;
      }

      --v10;
      v6 += a3;
    }

    while (v10 > 1);
  }

  if (v9 > *(a1 + 56))
  {
    *(a1 + 56) = v9;
  }

  *(a1 + 44) += a4;
  v12 = v9;
  if (*(a1 + 48) > v12)
  {
    v12 = *(a1 + 48);
  }

  v13 = fabs(v12);
  if (v13 >= 1.0e15 || v13 <= 1.0e-15)
  {
    v12 = 0.0;
  }

  *(a1 + 48) = v12;
}

void sub_11280(int a1, const float **a2, int *a3, float *__C)
{
  memset(__A, 0, sizeof(__A));
  v13[0] = xmmword_5F200;
  v13[1] = unk_5F210;
  v13[2] = xmmword_5F220;
  v13[3] = unk_5F230;
  v6 = *a3;
  if ((*a3 + 15) >= 0x1F)
  {
    v7 = *a2;
    if (v6 < 0)
    {
      v6 = *a3 + 15;
    }

    v8 = v6 >> 4;
    do
    {
      --v8;
      vDSP_vsq(v7, 1, __Ca, 1, 4uLL);
      vDSP_vabs(v7, 1, __B, 1, 4uLL);
      vDSP_vmax(__A, 1, __B, 1, __A, 1, 4uLL);
      vDSP_vma(__Ca, 1, v13, 1, __D, 1, __D, 1, 4uLL);
      v7 += 16;
    }

    while (v8);
  }

  vDSP_maxv(__A, 1, __C, 0x10uLL);
  v9 = *a3 & 0xF;
  if (*a3 <= 0)
  {
    v9 = -(-*a3 & 0xF);
  }

  *a3 = v9;
}

double RCTimeRangeByConvertingToValidRange(double a1, double a2, double a3)
{
  v3 = fabs(a2 + 1.79769313e308);
  if (fabs(a1 + -1.79769313e308) > 0.00000011920929 || v3 > 0.00000011920929)
  {
    v5 = fabs(a2 + -1.79769313e308);
    if (fabs(a1 + 1.79769313e308) > 0.00000011920929 || v5 > 0.00000011920929)
    {
      return a1;
    }
  }

  return a3;
}

double RCTimeRangeDeltaWithFractionalPrecision(uint64_t a1, double a2, double a3)
{
  v3 = a3 - a2;
  if (a1 >= 1)
  {
    v4 = __exp10(a1);
    v5 = v3 * v4;
    return roundf(v5) / v4;
  }

  return v3;
}

double RCTimeRangeConstrainTime(double result, double a2, double a3)
{
  if (a2 >= a3)
  {
    a2 = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

double RCTimeRangeIntersectTimeRange(double result, double a2, double a3, double a4)
{
  if (result < a3)
  {
    result = a3;
  }

  if (a2 >= a4)
  {
    a2 = a4;
  }

  if (a2 < result)
  {
    return 1.79769313e308;
  }

  return result;
}

id NSStringFromRCTimeRange(double a1, double a2)
{
  v7 = 0;
  if (a2 == 1.79769313e308)
  {
    v3 = @"MAX";
  }

  else if (a2 == -1.79769313e308)
  {
    v3 = @"-MAX";
  }

  else
  {
    v3 = sub_1171C(&v7, a2);
  }

  if (a1 == 1.79769313e308)
  {
    v4 = @"MAX";
  }

  else if (a1 == -1.79769313e308)
  {
    v4 = @"-MAX";
  }

  else
  {
    v4 = sub_1171C(&v7, a1);
  }

  v5 = [NSString stringWithFormat:@"[%@ - %@]", v4, v3];

  return v5;
}

id sub_1171C(void *a1, double a2)
{
  v2 = a2;
  v3 = a2 - (60 * (a2 / 60));
  v4 = (v2 / 3600);
  v5 = (v2 / 60 - 60 * v4);
  if (v2 > 3599)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1)
  {
    if (v5 <= 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    [NSString stringWithFormat:@"%02d:%05.2f", v5, *&v3, v10];
    goto LABEL_18;
  }

  if (*a1 == 3)
  {
LABEL_6:
    *a1 = 3;
LABEL_7:
    [NSString stringWithFormat:@"%02d:%02d:%05.2f", v4, v5, *&v3];
    goto LABEL_18;
  }

  if (v5 > 0 || *a1 == 2)
  {
    *a1 = 2;
    goto LABEL_16;
  }

  *a1 = 1;
LABEL_17:
  [NSString stringWithFormat:@"%g", *&v3, v9, v10];
  v7 = LABEL_18:;

  return v7;
}

void RCTimeRangeEncodeWithKey(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [v7 stringByAppendingString:@".beginTime"];
  [v8 encodeDouble:v9 forKey:a3];

  v10 = [v7 stringByAppendingString:@".endTime"];

  [v8 encodeDouble:v10 forKey:a4];
}

double RCTimeRangeDecodeWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 stringByAppendingString:@".beginTime"];
  [v4 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = [v3 stringByAppendingString:@".endTime"];

  [v4 decodeDoubleForKey:v8];
  return v7;
}

CMTimeRange *CMTimeRangeFromRCTimeRange@<X0>(CMTimeRange *a1@<X8>, Float64 a2@<D0>, double a3@<D1>)
{
  CMTimeMakeWithSeconds(&start, a2, kCMDefaultTimeScale);
  v6 = (a3 - a2) * 10000.0;
  CMTimeMakeWithSeconds(&v8, roundf(v6) / 10000.0, kCMDefaultTimeScale);
  return CMTimeRangeMake(a1, &start, &v8);
}

double RCTimeRangeFromCMTimeRange(uint64_t a1)
{
  v4 = *a1;
  Seconds = CMTimeGetSeconds(&v4);
  v4 = *(a1 + 24);
  CMTimeGetSeconds(&v4);
  return Seconds;
}

void sub_11C50(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_82380;
  qword_82380 = v1;

  v3 = qword_82380;

  [v3 set_horizontalSizeClassFromSplitView:0];
}

void sub_147C4(id a1)
{
  v1 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v2 = qword_82390;
  qword_82390 = v1;
}

id sub_16BF4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 64);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_16CE0(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  v2 = dispatch_time(0, 500000000);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16D7C;
  block[3] = &unk_6D458;
  block[4] = v3;
  dispatch_after(v2, v4, block);
}

id sub_16D7C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  if (!result)
  {
    v3 = *(*(a1 + 32) + 32);

    return [v3 terminateLoadingImmediately];
  }

  return result;
}

void sub_16F30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_16F54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveGeneratedWaveformIfNecessary];

  v7 = objc_loadWeakRetained((a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17030;
  v10[3] = &unk_6D480;
  v8 = *(a1 + 32);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 _performOnObserversBlock:v10];
}

uint64_t sub_17030(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_1724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_17264(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1727C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) segments];
  v2 = [v5 lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1740C(uint64_t a1)
{
  v5 = [*(a1 + 32) accumulatorWaveform];
  v2 = [v5 segmentsByClippingToTimeRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1756C(uint64_t a1)
{
  v5 = [*(a1 + 32) accumulatorWaveform];
  v2 = [v5 segmentsIntersectingTimeRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

double sub_1768C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) averagePowerLevelsRate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_179D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 waveformDataSourceRequiresUpdate:*(a1 + 32)];
  }
}

void sub_17B84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) segments];
  v3 = [RCWaveformSegment segmentsByMergingSegments:v2 preferredSegmentDuration:*(a1 + 40) beforeTime:*(a1 + 48) andThenUsePreferredSegmentDuration:*(a1 + 56)];

  if ([v3 count])
  {
    [*(*(a1 + 32) + 8) setSegments:v3];
  }
}

void sub_17CB8(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(*(a1 + 32) + 8) setSegments:v2];
}

void sub_18258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18280(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id RCDisplayStringForString(void *a1)
{
  v1 = a1;
  if (qword_823A0 != -1)
  {
    sub_42488();
  }

  if (byte_823A8)
  {
    v2 = [v1 stringByAppendingString:v1];
    v3 = [v2 mutableCopy];

    [v3 replaceOccurrencesOfString:@"@" withString:&stru_6F498 options:0 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

void sub_193F0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_823A8 = [v1 BOOLForKey:@"NSDoubleLocalizedStrings"];
}

double UIMainScreenScale()
{
  if (qword_823B8 != -1)
  {
    sub_4249C();
  }

  return *&qword_823B0;
}

void sub_19480(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_823B0 = v1;
}

double RCRoundCoord(double a1)
{
  if (qword_823B8 != -1)
  {
    sub_4249C();
  }

  v2 = a1 + 2.22044605e-16;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  return round(v2 * *&qword_823B0) / *&qword_823B0;
}

double RCCeilCoord(double a1)
{
  if (qword_823B8 != -1)
  {
    sub_4249C();
  }

  return ceil(*&qword_823B0 * a1) / *&qword_823B0;
}

double RCFloorCoord(double a1)
{
  if (qword_823B8 != -1)
  {
    sub_4249C();
  }

  return floor(*&qword_823B0 * a1) / *&qword_823B0;
}

double RCOnePixelInPoints()
{
  if (qword_823B8 != -1)
  {
    sub_4249C();
  }

  return 1.0 / *&qword_823B0;
}

void sub_19678(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_823C0;
  qword_823C0 = v1;
}

void sub_1BF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadLocalizedFormatStrings];
}

void sub_1BFF0(id a1)
{
  v1 = objc_alloc_init(RCDurationFormatter);
  v2 = qword_823D8;
  qword_823D8 = v1;
}

uint64_t sub_1C124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C13C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueStringFromDuration:*(a1 + 56) byReplacingDigitsWithDigit:0 hideComponentOptions:*(a1 + 64) style:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C28C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueStringFromDuration:-1 byReplacingDigitsWithDigit:*(a1 + 56) hideComponentOptions:*(a1 + 64) style:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C3DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueStringFromDuration:*(a1 + 56) style:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1CD44(id a1)
{
  v3[0] = &off_70298;
  v3[1] = &off_702B0;
  v4[0] = @"HHmmssSS";
  v4[1] = @"HHmmss";
  v3[2] = &off_702C8;
  v3[3] = &off_702E0;
  v4[2] = @"HHmmss";
  v4[3] = @"mmssSS";
  v3[4] = &off_702F8;
  v3[5] = &off_70310;
  v4[4] = @"mmss";
  v4[5] = @"sSS";
  v3[6] = &off_70328;
  v4[6] = @"s";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_823E0;
  qword_823E0 = v1;
}

const __CFString *NSStringFromRCDurationFormattingStyle(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"RCDurationFormattingStyle_???";
  }

  else
  {
    return *(&off_6D6F8 + a1);
  }
}

void sub_1D344(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1D55C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1D650(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1D6D0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1D870(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1DC38(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1DCFC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

int64_t sub_1DE98(id a1, RCWaveformSegment *a2, RCWaveformSegment *a3)
{
  v4 = a3;
  [(RCWaveformSegment *)a2 timeRange];
  v6 = v5;
  v8 = v7;
  [(RCWaveformSegment *)v4 timeRange];
  if (v10 < v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v9 <= v6)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

void sub_1DFC4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E0E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1E23C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E400(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) objectAtIndex:a2];
  v4 = [v6 segmentByClippingToTimeRange:{*(a1 + 40), *(a1 + 48)}];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 replaceObjectAtIndex:a2 withObject:v4];
  }

  else
  {
    [v5 removeObjectAtIndex:a2];
  }
}

void sub_1E734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1E840(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E96C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1EAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_1EC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v11 = v10;

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

id sub_1FDF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2[4] currentDuration];
  [v2 setDuration:?];
  result = [*(a1 + 32) currentTime];
  if (v4 < 0.0)
  {
    v5 = *(a1 + 32);

    return [v5 setCurrentTime:0.0];
  }

  return result;
}

id sub_208B4(uint64_t a1)
{
  [*(a1 + 32) setDuration:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _updateCurrentTimeForCapturedInputAtTime:v3];
}

id sub_20A28(uint64_t a1)
{
  [*(a1 + 32) setCurrentTime:*(a1 + 40)];
  v2 = *(a1 + 32);
  [v2[8] duration];

  return [v2 setDuration:?];
}

id sub_20F70(uint64_t a1)
{
  [*(a1 + 32) setSelectionOverlayShouldUseInsertMode:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setSelectedTimeRangeEditingEnabled:1];
}

void sub_20FB4(uint64_t a1)
{
  v1 = [*(a1 + 32) _selectionOverlay];
  v2 = [v1 accessibilityElements];
  argument = [v2 firstObject];

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, argument);
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument);
}

id sub_21228(uint64_t a1)
{
  if ([*(a1 + 32) isOverview])
  {
    [*(a1 + 32) updateVisibleTimeRangeToFullDuration];
  }

  v2 = *(a1 + 32);
  v3 = RCTimeRangeMake(*(a1 + 40), *(a1 + 40));

  return [v2 setSelectedTimeRange:v3 animationDuration:?];
}

uint64_t sub_21284(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_21724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 timelinePlaybackBackgroundColor:*(a1 + 32)];
  [v5 setBackgroundColor:v4];

  [v5 setNeedsDisplay];
}

id sub_24D40(uint64_t a1)
{
  [*(a1 + 32) _updateVisibleAreaWithAnimationDuration:*(a1 + 48)];
  [*(a1 + 32) _updateSelectionOverlayWithAnimationDuration:*(a1 + 48)];
  [*(a1 + 32) _updateBackgroundWaveformHighlight];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t sub_24D98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_250DC(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, double a6)
{
  v11 = a2;
  if (!a5 || a3 != 1 && a5 > 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = 0;
  if (a5 >= 0 || a3 == -1)
  {
    v15 = fmax(a6 / *(a1 + 40), 0.0);
    if (v15 < 0.25)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 240);
      v18 = *(v16 + 272);
      v19 = *(v16 + 280);
      v20 = ((1.0 - v15 * 4.0) * 0.025 + v15 * 4.0 * 0.0125) * (*(v16 + 128) * a5 * *(v16 + 120));
      [*(v16 + 24) selectedTimeRangeMinimumDuration];
      v22 = v18 + v21;
      if (v18 + v21 < v19 + v20)
      {
        v22 = v19 + v20;
      }

      v23 = v19 - v21;
      if (v23 >= v18 + v20)
      {
        v23 = v18 + v20;
      }

      if (a4)
      {
        v24 = v22;
      }

      else
      {
        v24 = v19;
      }

      if (a4)
      {
        v23 = v18;
      }

      v25 = fmax(v23, 0.0);
      v26 = *(a1 + 32);
      v27 = *(v26 + 224);
      if (v27 >= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = *(v26 + 224);
      }

      v29 = v25 - v23;
      v30 = v28 - v24;
      if (a4)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      v32 = RCTimeRangeMake(0.0, v27);
      v34 = *(a1 + 32);
      v35 = *(v34 + 232);
      if (v35 > 0.0)
      {
        v36 = *(v34 + 224);
        if (v35 < v36)
        {
          if (a3 == -1)
          {
            v32 = RCTimeRangeMake(fmax(v28 - v35, 0.0), v28);
            if (v25 < v32)
            {
              v38 = *(a1 + 32);
              v28 = v25 + v38[29];
              goto LABEL_47;
            }
          }

          else
          {
            if (v36 >= v25 + v35)
            {
              v37 = v25 + v35;
            }

            else
            {
              v37 = *(v34 + 224);
            }

            v32 = RCTimeRangeMake(v25, v37);
            if (v28 > v33)
            {
              v38 = *(a1 + 32);
              v25 = v28 - v38[29];
LABEL_47:
              v41 = v17 + v20 + v31;
              [v38 _setSelectedTimeRange:0 updateVisibleTimeRange:0 updateWaveformViewContentSizeAndOffset:1 notifyDelegate:v25 animationDuration:{v28, 0.0}];
              v42 = *(a1 + 32);
              v43 = 1.0;
              if (v15 < 0.125)
              {
                v43 = *(v42 + 120) * 1.1;
              }

              *(v42 + 120) = v43;
              v44 = v41 + *(a1 + 40) * 0.5;
              WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
              [WeakRetained waveformViewController:*(a1 + 32) didScrubToTime:0 finished:v44];

              v12 = 1;
              goto LABEL_5;
            }
          }
        }
      }

      v12 = 0;
      if (v25 < v32)
      {
        goto LABEL_5;
      }

      v39 = v28 >= v32 && v25 <= v33;
      if (!v39 || v28 > v33)
      {
        goto LABEL_5;
      }

      v38 = *(a1 + 32);
      goto LABEL_47;
    }
  }

LABEL_5:

  return v12;
}

void sub_254E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 superview];

  if (v4 != v5)
  {
    [*(a1 + 32) addSubview:v6];
    [*(a1 + 32) sendSubviewToBack:v6];
    [v6 frame];
    [v6 setFrame:?];
  }
}

id sub_25570(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_255F4;
  v3[3] = &unk_6D920;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

id sub_25A34(id result)
{
  v1 = *(result + 4);
  if ((*(v1 + 81) & 1) == 0)
  {
    v2 = result;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v3 = *(v1 + 64);
    v4 = [v3 countByEnumeratingWithState:&v55 objects:v60 count:16];
    v49 = v2;
    if (v4)
    {
      v5 = v4;
      v6 = *v56;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v56 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v55 + 1) + 8 * i);
          [v8 setIsPlayback:{objc_msgSend(v49[4], "isPlayback")}];
          if ([*(v49[4] + 3) isRecording])
          {
            v9 = *(v49[4] + 190) ^ 1;
          }

          else
          {
            v9 = 0;
          }

          [v8 setShouldOnlyRenderOnScreenTimeLabels:v9 & 1];
          [v49[4] _frameForTimeMarkerView:v8];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          [v8 frame];
          v62.origin.x = v18;
          v62.origin.y = v19;
          v62.size.width = v20;
          v62.size.height = v21;
          v61.origin.x = v11;
          v61.origin.y = v13;
          v61.size.width = v15;
          v61.size.height = v17;
          if (!CGRectEqualToRect(v61, v62))
          {
            v2 = v49;
            [v49[4] _setTimeMarkerViewsNeedInitialLayout:1];
            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v55 objects:v60 count:16];
        v2 = v49;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v22 = v2[4];
    if (*(v22 + 80) == 1)
    {
      return [v22 _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
    }

    else
    {
      result = [v22[8] count];
      if (result)
      {
        v23 = &v48[-2 * [*(v2[4] + 8) count]];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v24 = *(v2[4] + 8);
        v25 = [v24 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v25)
        {
          v26 = v25;
          v50 = v24;
          v48[1] = v48;
          v27 = 0;
          v28 = *v52;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v52 != v28)
              {
                objc_enumerationMutation(v50);
              }

              v30 = *(*(&v51 + 1) + 8 * j);
              if (v27)
              {
                v31 = 0;
                v32 = 1;
                while (1)
                {
                  v33 = &v23[2 * v31];
                  v35 = *v33;
                  v34 = v33[1];
                  [v30 visibleTimeRange];
                  v37 = vabdd_f64(v35, v36);
                  [v30 visibleTimeRange];
                  if (v37 <= 0.00000011920929)
                  {
                    *v33 = v38;
                    goto LABEL_32;
                  }

                  if (vabdd_f64(v34, v38) <= 0.00000011920929)
                  {
                    break;
                  }

                  v31 = v32;
                  v39 = v27 > v32++;
                  if (!v39)
                  {
                    ++v27;
                    v40 = &v23[2 * v27];
                    [v30 visibleTimeRange];
                    *v40 = v41;
                    v40[1] = v42;
                    goto LABEL_32;
                  }
                }

                [v30 visibleTimeRange];
                *(v33 + 1) = v45;
              }

              else
              {
                [*(*(&v51 + 1) + 8 * j) visibleTimeRange];
                *v23 = v43;
                v23[1] = v44;
                v27 = 1;
              }

LABEL_32:
              ;
            }

            v26 = [v50 countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v26);

          v46 = 0;
          v47 = 1;
          v2 = v49;
          while (1)
          {
            result = RCTimeRangeContainsRange(*&v23[2 * v46], *&v23[2 * v46 + 1], *(v2[4] + 30), *(v2[4] + 31));
            if (result)
            {
              break;
            }

            v46 = v47;
            v39 = v27 > v47++;
            if (!v39)
            {
              return [v2[4] _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
            }
          }
        }

        else
        {

          return [v2[4] _layoutTimeMarkerViewsForCurrentlyVisibleTimeRange];
        }
      }
    }
  }

  return result;
}

void sub_263B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if ([*(v2 + 24) isHidden])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 24) isEditingEnabled] ^ 1;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 187) == 1)
  {
    v6 = *(v5 + 224);
  }

  else
  {
    v6 = *(v5 + 224);
    v7 = 0.0;
    if ((v4 & ~*(v5 + 184) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = v3 + v3;
LABEL_8:
  v8 = RCTimeRangeMake(0.0, v6 + v7);
  v10 = v9;
  v11 = *(a1 + 32);
  v13 = *(v11 + 240);
  v12 = *(v11 + 248);
  v14 = [*(v11 + 64) objectAtIndexedSubscript:0];
  [v14 setDebugID:0];
  [v14 setVisibleTimeRange:{RCTimeRangeMake(v13 - v3, v13)}];
  [v14 setMarkerClippingRange:{v8, v10}];
  [*(a1 + 32) _frameForTimeMarkerView:v14];
  [v14 setFrame:?];
  v15 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:1];

  [v15 setDebugID:1];
  [v15 setVisibleTimeRange:{v13, v12}];
  [v15 setMarkerClippingRange:{v8, v10}];
  [*(a1 + 32) _frameForTimeMarkerView:v15];
  [v15 setFrame:?];
  v16 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:2];

  [v16 setDebugID:2];
  [v16 setVisibleTimeRange:{RCTimeRangeMake(v12, v3 + v12)}];
  [v16 setMarkerClippingRange:{v8, v10}];
  [*(a1 + 32) _frameForTimeMarkerView:v16];
  [v16 setFrame:?];
  *(*(a1 + 32) + 80) = 0;
}

void sub_27530(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_82400;
  qword_82400 = v1;
}

void sub_27ACC(id a1)
{
  v1 = [NSSet setWithArray:&off_70350];
  v2 = qword_82410;
  qword_82410 = v1;
}

id RCGenericError()
{
  v0 = [[NSError alloc] initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:0];

  return v0;
}

id RCErrorWithTypeAndDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSError alloc];
  v8 = NSLocalizedDescriptionKey;
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [v4 initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:a1 userInfo:v5];

  return v6;
}

id RCGenericErrorWithUnderlyingError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = NSUnderlyingErrorKey;
    v7 = v1;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [[NSError alloc] initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:v3];

  return v4;
}

id RCLocalizedDurationWithStyleAndSizingDigit(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 2;
  if (!(a3 / 3600.0))
  {
    v5 = 4;
  }

  if (a2 == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = +[RCDurationFormatter sharedFormatter];
  v8 = [v7 stringFromDuration:a1 replacingDigitsWithDigit:v6 style:a3];

  return v8;
}

id RCLocalizedDurationWithStyle(uint64_t a1, double a2)
{
  v3 = 2;
  if (!(a2 / 3600.0))
  {
    v3 = 4;
  }

  if (a1 == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  v5 = +[RCDurationFormatter sharedFormatter];
  v6 = [v5 stringFromDuration:v4 style:a2];

  return v6;
}

id RCLocalizedRecordingDuration(int a1, double a2)
{
  if ((floor(a2) / 3600.0) >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  v5 = +[RCDurationFormatter sharedFormatter];
  v6 = [v5 stringFromDuration:v4 style:a2];

  if (a1)
  {
    v7 = @"RECORDING_PAUSED_STATUS_BAR_FORMAT";
  }

  else
  {
    v7 = @"RECORDING_STATUS_BAR_FORMAT";
  }

  v8 = RCLocalizedFrameworkString(v7);
  v9 = [NSString stringWithFormat:v8, v6];

  return v9;
}

id RCLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.VoiceMemos.framework"];
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id RCLocalizedRecordingDateWithOptions(void *a1, unint64_t a2)
{
  v3 = a1;
  if (a2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2;
  }

  if ((~v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = &qword_82428;
      v6 = qword_82428;
      if (!qword_82428)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      if ((v4 & 2) == 0)
      {
        v8 = 0;
        goto LABEL_15;
      }

      v5 = &qword_82430;
      v6 = qword_82430;
      if (!qword_82430)
      {
        v9 = 0;
        v7 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = &qword_82420;
    v6 = qword_82420;
    if (!qword_82420)
    {
      v7 = 1;
LABEL_12:
      v9 = 1;
LABEL_13:
      v10 = objc_alloc_init(NSDateFormatter);
      v11 = *v5;
      *v5 = v10;

      [*v5 setDateStyle:v7];
      [*v5 setTimeStyle:v9];
      v6 = *v5;
    }
  }

  v12 = [v6 stringFromDate:v3];
  v8 = RCDisplayStringForString(v12);

LABEL_15:

  return v8;
}

id RCLocalizedPlaybackTimeWithMinimumAndHiddenComponents(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = (floor(a4) / 60.0);
  v7 = 2;
  if (v6)
  {
    v7 = 3;
  }

  if (v6 >= 0x3C)
  {
    v7 = 4;
  }

  if (v7 <= a1)
  {
    v7 = a1;
  }

  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = +[RCDurationFormatter sharedFormatter];
  v10 = [v9 stringFromDuration:a2 hideComponentOptions:qword_5F580[v8 - 2] style:{fmax(a3, 0.0)}];

  return v10;
}

id RCLocalizedInteger(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    if (qword_824B8 != -1)
    {
      sub_425A0();
    }

    v4 = qword_824C0;
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if (qword_824A8 != -1)
    {
      sub_425B4();
    }

    v4 = qword_824B0;
LABEL_9:
    v5 = [NSNumber numberWithInteger:a1];
    v6 = [v4 stringFromNumber:v5];
    goto LABEL_13;
  }

  v7 = objc_alloc_init(NSNumberFormatter);
  v5 = v7;
  if (a2 >= 1)
  {
    [v7 setMinimumIntegerDigits:a2];
  }

  v8 = [NSNumber numberWithInteger:a1];
  v6 = [v5 stringFromNumber:v8];

LABEL_13:

  return v6;
}

uint64_t RCNumberOfDigitsInInteger(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = [NSString stringWithFormat:@"%ld", v1];
  v3 = [v2 length];

  return v3;
}

uint64_t RCAvailableDiskSpaceForRecording()
{
  valuePtr = 0;
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v3 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_42648();
    }

    goto LABEL_11;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, kMGQDiskUsageAmountDataAvailable);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  }

  else
  {
    v4 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_425C8();
    }
  }

  CFRelease(v1);
  v5 = valuePtr;
  if (!valuePtr)
  {
LABEL_11:
    memset(&v11, 0, 512);
    v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media"];
    v7 = statfs([v6 fileSystemRepresentation], &v11);

    if (v7)
    {
      v8 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_426C8();
      }

      v5 = valuePtr;
    }

    else
    {
      v5 = v11.f_bavail * v11.f_bsize;
    }
  }

  return fmax((v5 / 2) + -5242880.0, 0.0);
}

BOOL RCHasEnoughDiskSpaceToRecord()
{
  v0 = RCAvailableDiskSpaceForRecording();
  if (v0 < 5242880)
  {
    v1 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_42748();
    }
  }

  return v0 >= 5242880;
}

id RCDiskCacheDirectory()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.voicememos"];

  return v2;
}

id RCApplicationSupportDirectory()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v1 = [v0 lastObject];
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.voicememos"];

  return v2;
}

id RCIsVoiceMemosApplication()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.VoiceMemos"];

  return v2;
}

id RCIsVoiceMemosApplicationInstalled()
{
  v0 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [v0 applicationIsInstalled:@"com.apple.VoiceMemos"];

  return v1;
}

id RCLegacyRecordingsDirectoryURL()
{
  if (qword_82440 != -1)
  {
    sub_427D0();
  }

  v1 = qword_82438;

  return v1;
}

void sub_287AC(id a1)
{
  v1 = sub_287E4();
  v2 = qword_82438;
  qword_82438 = v1;
}

id sub_287E4()
{
  v4[0] = CPSharedResourcesDirectory();
  v4[1] = @"Media";
  v4[2] = @"Recordings";
  v0 = [NSArray arrayWithObjects:v4 count:3];
  v1 = [NSString pathWithComponents:v0];
  v2 = [NSURL fileURLWithPath:v1];

  return v2;
}

id RCRecordingsDirectoryURL()
{
  if (qword_82450 != -1)
  {
    sub_427E4();
  }

  v1 = qword_82448;

  return v1;
}

void sub_2890C(id a1)
{
  v5[0] = CPSharedResourcesDirectory();
  v5[1] = @"Library";
  v5[2] = @"Recordings";
  v1 = [NSArray arrayWithObjects:v5 count:3];
  v2 = [NSString pathWithComponents:v1];
  v3 = [NSURL fileURLWithPath:v2];

  v4 = qword_82448;
  qword_82448 = v3;
}

id RCStockRecordingsURL()
{
  v0 = sub_287E4();
  v1 = [v0 URLByDeletingLastPathComponent];
  v2 = [v1 URLByAppendingPathComponent:@"StockRecordings"];

  return v2;
}

id RCLogsDirectoryURL()
{
  v4[0] = CPSharedResourcesDirectory();
  v4[1] = @"Library";
  v4[2] = @"Logs";
  v4[3] = @"com.apple.voicememos";
  v0 = [NSArray arrayWithObjects:v4 count:4];
  v1 = [NSString pathWithComponents:v0];
  v2 = [NSURL fileURLWithPath:v1];

  return v2;
}

void RCDispatchNoSoonerThan(void *a1, void *a2, void *a3)
{
  queue = a2;
  v5 = a3;
  [a1 timeIntervalSinceReferenceDate];
  v7 = v6;
  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v7 - v8;
  if (v9 <= 0.0)
  {
    dispatch_async(queue, v5);
  }

  else
  {
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    dispatch_after(v10, queue, v5);
  }
}

id RCObserveChangesToKeyPaths(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setObject:v7];
  v11 = [v8 copy];
  [v10 setKeyPaths:v11];

  [v10 setObserver:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v7 addObserver:v10 forKeyPath:*(*(&v18 + 1) + 8 * i) options:a3 context:{&unk_82458, v18}];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  return v10;
}

id RCObserveChangesToKeyPath(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_291DC;
  v21 = sub_291EC;
  v22 = 0;
  v23 = a2;
  v6 = a2;
  v7 = a1;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_291F4;
  v14[3] = &unk_6D9D8;
  v15 = v5;
  v16 = &v17;
  v9 = v5;
  v10 = RCObserveChangesToKeyPaths(v7, v8, 3, v14);

  v11 = v18[5];
  v18[5] = v10;

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t sub_291DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_291F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  (*(*(a1 + 32) + 16))();
  if (*a5 == 1)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

id RCComputeFileDigest(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [[NSMutableData alloc] initWithLength:32];
  if (v6 && v6[2](v6, v5, v7))
  {
    v8 = v7;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x8810000000;
    v17 = &unk_5D943;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v9 = [[NSData alloc] initWithContentsOfURL:v5 options:1 error:a2];
    if (v9)
    {
      CC_SHA256_Init((v15 + 4));
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_2945C;
      v13[3] = &unk_6DA00;
      v13[4] = &v14;
      [v9 enumerateByteRangesUsingBlock:v13];
      v10 = [v7 mutableBytes];
      CC_SHA256_Final(v10, (v15 + 4));
      v8 = v7;
    }

    else
    {
      v11 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_427F8();
      }

      v8 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

void sub_29440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [NSString alloc];
  v11 = [NSString stringWithUTF8String:a1];
  v12 = [v10 initWithFormat:v11 arguments:&a9];

  NSLog(@"%@", v12);
}

id RCDebugAssertsDisabled()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"RCDebugAssertsDisabled"];

  return v1;
}

void RCTestEditInTrimSheetAllowedSetDefaultOption(uint64_t a1)
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  if (byte_82471 == 1)
  {
    qword_81A48 = a1;
  }
}

uint64_t RCTestEditInTrimSheetAllowed()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82471;
}

double RCTestSlowMessageServiceSleepAmount()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return *&qword_82460;
}

double RCTestSlowMessageExportSeconds()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return *&qword_82468;
}

uint64_t RCTestAlwaysShowLockScreenPlugin()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82470;
}

uint64_t RCTestResetSyncs()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82472;
}

uint64_t RCTestResetSyncsAlwaysResetSync()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82473;
}

double RCTestBeginPreviewDelay()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return *&qword_82478;
}

double RCTestAudioTrimmingProgressWithDuration()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return *&qword_82480;
}

uint64_t RCTestAutoSelectedRecordingIndex()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return qword_81A50;
}

uint64_t RCTestRunningAutomatedUITests()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82488;
}

double RCTestResetNavigationStateThresholdSeconds()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return *&qword_82490;
}

uint64_t RCTestDebugAutolayout_Show()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82498;
}

uint64_t RCTestDebugAutolayout_Logging()
{
  if (qword_824C8 != -1)
  {
    sub_42880();
  }

  return byte_82499;
}

uint64_t RCRunningInSavedRecordingDaemon()
{
  if (qword_824A0 != -1)
  {
    sub_42894();
  }

  return byte_8249A;
}

void sub_29910(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_824B0;
  qword_824B0 = v1;

  v3 = qword_824B0;

  [v3 setMinimumIntegerDigits:1];
}

void sub_29960(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_824C0;
  qword_824C0 = v1;

  v3 = qword_824C0;

  [v3 setMinimumIntegerDigits:2];
}

void sub_299B0(id a1)
{
  v34 = +[NSUserDefaults standardUserDefaults];
  v1 = [v34 objectForKey:@"RCTestSlowMessageServiceSleepAmount"];

  if (v1)
  {
    v2 = [v34 objectForKey:@"RCTestSlowMessageServiceSleepAmount"];
    [v2 doubleValue];
    qword_82460 = v3;
  }

  v4 = [v34 objectForKey:@"RCTestSlowMessageExportSeconds"];

  if (v4)
  {
    v5 = [v34 objectForKey:@"RCTestSlowMessageExportSeconds"];
    [v5 doubleValue];
    qword_82468 = v6;
  }

  v7 = [v34 objectForKey:@"RCTestAlwaysShowLockScreenPlugin"];

  if (v7)
  {
    v8 = [v34 objectForKey:@"RCTestAlwaysShowLockScreenPlugin"];
    byte_82470 = [v8 BOOLValue];
  }

  v9 = [v34 objectForKey:@"RCTestEditInTrimSheetAllowed"];

  if (v9)
  {
    v10 = [v34 objectForKey:@"RCTestEditInTrimSheetAllowed"];
    byte_82471 = [v10 BOOLValue];
  }

  v11 = [v34 objectForKey:@"RCTestResetSyncs"];

  if (v11)
  {
    v12 = [v34 objectForKey:@"RCTestResetSyncs"];
    byte_82472 = [v12 BOOLValue];
  }

  v13 = [v34 objectForKey:@"RCTestResetSyncsAlwaysResetSync"];

  if (v13)
  {
    v14 = [v34 objectForKey:@"RCTestResetSyncsAlwaysResetSync"];
    byte_82473 = [v14 BOOLValue];
  }

  v15 = [v34 objectForKey:@"RCTestBeginPreviewDelay"];

  if (v15)
  {
    v16 = [v34 objectForKey:@"RCTestBeginPreviewDelay"];
    [v16 doubleValue];
    qword_82478 = v17;
  }

  v18 = [v34 objectForKey:@"RCTestAudioTrimmingProgressWithDuration"];

  if (v18)
  {
    v19 = [v34 objectForKey:@"RCTestAudioTrimmingProgressWithDuration"];
    [v19 doubleValue];
    qword_82480 = v20;
  }

  v21 = [v34 objectForKey:@"RCTestAutoSelectedRecordingIndex"];

  if (v21)
  {
    v22 = [v34 objectForKey:@"RCTestAutoSelectedRecordingIndex"];
    qword_81A50 = [v22 integerValue];
  }

  v23 = [v34 objectForKey:@"RCTestDebugAutolayout"];

  if (v23)
  {
    v24 = [v34 objectForKey:@"RCTestDebugAutolayout"];
    byte_824D0 = [v24 BOOLValue];
  }

  v25 = [v34 objectForKey:@"RCTestDebugAutolayout_Show"];

  if (v25)
  {
    v26 = [v34 objectForKey:@"RCTestDebugAutolayout_Show"];
    byte_82498 = [v26 BOOLValue];
  }

  v27 = [v34 objectForKey:@"RCTestDebugAutolayout_Logging"];

  if (v27)
  {
    v28 = [v34 objectForKey:@"RCTestDebugAutolayout_Logging"];
    byte_82499 = [v28 BOOLValue];
  }

  v29 = [v34 objectForKey:@"RCTestRunningAutomatedUITests"];

  if (v29)
  {
    v30 = [v34 objectForKey:@"RCTestRunningAutomatedUITests"];
    byte_82488 = [v30 BOOLValue];
  }

  v31 = [v34 objectForKey:@"RCTestResetNavigationStateThresholdSeconds"];

  if (v31)
  {
    v32 = [v34 objectForKey:@"RCTestResetNavigationStateThresholdSeconds"];
    [v32 doubleValue];
    qword_82490 = v33;
  }

  byte_82498 = (byte_82498 | byte_824D0) & 1;
  byte_82499 = (byte_82499 | byte_824D0) & 1;
  if (byte_82488 == 1)
  {
    byte_82471 = 1;
    qword_82480 = fmax(*&qword_82480, 5.0);
  }
}

void sub_29E50()
{
  v1 = v0;
  swift_getObjectType();
  v45.receiver = v0;
  v45.super_class = type metadata accessor for AMMessagesMainViewController(0);
  objc_msgSendSuper2(&v45, "viewDidLoad");
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_42968();
  v5 = [v3 objectForInfoDictionaryKey:v4];

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_42AA8();
  swift_unknownObjectRelease();
  sub_2E4CC(&v43, v44);
  swift_dynamicCast();
  v6 = v3;
  v7 = sub_42968();

  v8 = [objc_opt_self() storyboardWithName:v7 bundle:v6];

  type metadata accessor for AMMessagesViewController(0);
  v9 = sub_42A38();
  v10 = OBJC_IVAR___AMMessagesMainViewController_messagesViewController;
  v11 = *&v1[OBJC_IVAR___AMMessagesMainViewController_messagesViewController];
  *&v1[OBJC_IVAR___AMMessagesMainViewController_messagesViewController] = v9;
  v12 = v9;

  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectWeakAssign();

  if (!*&v1[v10])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v1 addChildViewController:?];
  v13 = *&v1[v10];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  [v16 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame:{v19, v21, v23, v25}];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = *&v1[v10];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = [v28 view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  [v27 addSubview:v29];

  v31 = *&v1[v10];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    return;
  }

  [v31 didMoveToParentViewController:v1];
  v32 = v1;
  v33 = sub_428D8();
  v34 = sub_42A58();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v8;
    v37 = swift_slowAlloc();
    v44[0].receiver = v37;
    *v35 = 138412546;
    *(v35 + 4) = v32;
    *v36 = v1;
    *(v35 + 12) = 2080;
    *&v43 = *&v1[v10];
    v38 = v32;
    sub_2D124(&qword_81BE0);
    v39 = sub_42A98();
    v41 = sub_2D818(v39, v40, v44);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_0, v33, v34, "%@ loaded child view controller %s", v35, 0x16u);
    sub_2E3A0(v36, &qword_81BD0);

    sub_2E268(v37);
  }

  else
  {
  }
}

void sub_2A31C()
{
  v1 = OBJC_IVAR___AMMessagesMainViewController_messagesViewController;
  v2 = *(v0 + OBJC_IVAR___AMMessagesMainViewController_messagesViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v2 willMoveToParentViewController:0];
  v3 = *(v0 + v1);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 removeFromSuperview];

  v6 = *(v0 + v1);
  if (!v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v6 removeFromParentViewController];
  v7 = *(v0 + v1);
  *(v0 + v1) = 0;
}

id sub_2A3D0()
{
  v1 = sub_428F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR___AMMessagesMainViewController_logger, v1);
  v5 = v0;
  v6 = sub_428D8();
  v7 = sub_42A58();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "%@ released from memory", v8, 0xCu);
    sub_2E3A0(v9, &qword_81BD0);
  }

  (*(v2 + 8))(v4, v1);
  v11 = type metadata accessor for AMMessagesMainViewController(0);
  v13.receiver = v5;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void sub_2A65C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR___AMMessagesMainViewController_messagesViewController;
  v5 = *&v1[OBJC_IVAR___AMMessagesMainViewController_messagesViewController];
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_2B0C4();
  v8 = [v7 audioMessageRecordingAvailable];

  if (v8)
  {
LABEL_6:
    v13 = *&v2[v4];
    if (v13)
    {
      v14 = [v13 view];
      if (v14)
      {
        v15 = v14;
        [v14 setHidden:0];

        v16 = *&v2[v4];
        if (v16)
        {

          [v16 willBecomeActiveWithConversation:a1];
          return;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = *&v2[v4];
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9;
  v11 = sub_2B0C4();
  v12 = [v11 powerLevels];

  if (v12)
  {

    goto LABEL_6;
  }

  sub_2A31C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = sub_42968();
  v46 = [objc_opt_self() storyboardWithName:v19 bundle:v18];

  type metadata accessor for AMUnavailableViewController();
  v20 = sub_42A38();
  v21 = OBJC_IVAR___AMMessagesMainViewController_unavailabelViewController;
  v22 = *&v2[OBJC_IVAR___AMMessagesMainViewController_unavailabelViewController];
  *&v2[OBJC_IVAR___AMMessagesMainViewController_unavailabelViewController] = v20;
  v23 = v20;

  if (!v20)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = *&v23[OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation];
  *&v23[OBJC_IVAR____TtC22AudioMessagesExtension27AMUnavailableViewController_conversation] = a1;
  v25 = a1;

  if (!*&v2[v21])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v2 addChildViewController:?];
  v26 = *&v2[v21];
  if (!v26)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = [v26 view];
  if (!v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27;
  v29 = [v2 view];
  if (!v29)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  [v31 layoutFrame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v28 setFrame:{v33, v35, v37, v39}];
  v40 = [v2 view];
  if (!v40)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = v40;
  v42 = *&v2[v21];
  if (!v42)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v43 = [v42 view];
  if (!v43)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = v43;
  [v41 addSubview:v43];

  v45 = *&v2[v21];
  if (!v45)
  {
LABEL_37:
    __break(1u);
    return;
  }

  [v45 didMoveToParentViewController:v2];
}

void sub_2AB94(uint64_t a1)
{
  [*&v1[OBJC_IVAR___AMMessagesMainViewController_messagesViewController] didTransitionToPresentationStyle:a1];
  v3 = v1;
  oslog = sub_428D8();
  v4 = sub_42A58();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v5 = 138412802;
    *(v5 + 4) = v3;
    *v6 = v3;
    *(v5 + 12) = 2080;
    v7 = v3;
    *(v5 + 14) = sub_2D818(0xD000000000000012, 0x80000000000631F0, &v16);
    *(v5 + 22) = 2080;
    v8 = 0xEA00000000007470;
    v9 = 0x697263736E617274;
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    if (a1 == 1)
    {
      v11 = 0x6465646E61707865;
      v10 = 0xE800000000000000;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x746361706D6F63;
    }

    if (a1)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_2D818(v12, v13, &v16);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_0, oslog, v4, "%@ %s switching to presentation style %s", v5, 0x20u);
    sub_2E3A0(v6, &qword_81BD0);

    swift_arrayDestroy();
  }
}

id sub_2AEF0(uint64_t a1, uint64_t a2, void *a3)
{
  _s22AudioMessagesExtension0A24AppContentViewControllerC6logger33_6C80B9CA6D0C59A10BF4E668E4172F5CLL2os6LoggerVvpfi_0();
  *&v3[OBJC_IVAR___AMMessagesMainViewController_messagesViewController] = 0;
  *&v3[OBJC_IVAR___AMMessagesMainViewController_unavailabelViewController] = 0;
  if (a2)
  {
    v6 = sub_42968();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AMMessagesMainViewController(0);
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_2B008(void *a1)
{
  _s22AudioMessagesExtension0A24AppContentViewControllerC6logger33_6C80B9CA6D0C59A10BF4E668E4172F5CLL2os6LoggerVvpfi_0();
  *&v1[OBJC_IVAR___AMMessagesMainViewController_messagesViewController] = 0;
  *&v1[OBJC_IVAR___AMMessagesMainViewController_unavailabelViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AMMessagesMainViewController(0);
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2B0C4()
{
  v1 = OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController____lazy_storage___audioMessagesControlInterface;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController____lazy_storage___audioMessagesControlInterface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController____lazy_storage___audioMessagesControlInterface);
  }

  else
  {
    v4 = [objc_allocWithZone(AMAudioMessagesControlInterface) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2B13C(float a1, double a2)
{
  v5 = v2;
  v6 = sub_428D8();
  v7 = sub_42A48();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412802;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2048;
    *(v8 + 24) = a2;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "%@ audioMessageDidChangeAudioPowerLevel %f, duration: %f", v8, 0x20u);
    sub_2E3A0(v9, &qword_81BD0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = Strong;
  v14 = OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration;
  *&v12 = a1;
  [Strong updatePowerLevel:v12 startTime:*&Strong[OBJC_IVAR____TtC22AudioMessagesExtension24AMWaveFormViewController_currentDuration] endTime:a2];
  *&v13[v14] = a2;

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = *(v15 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder) + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
  swift_beginAccess();
  *v17 = a1;
  *(v17 + 4) = 0;
  v18 = &v16[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v16, ObjectType, v19, (a1 + 60.0) / 50.0);
    swift_unknownObjectRelease();
  }
}

void sub_2B3E8(double a1)
{
  v3 = v1;
  v4 = sub_428D8();
  v5 = sub_42A48();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    v8 = v3;
    _os_log_impl(&dword_0, v4, v5, "%@ currentPlaybackTime %f", v6, 0x16u);
    sub_2E3A0(v7, &qword_81BD0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong updateCurrentPlaybackTime:a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_2B614()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
_objc_release_x2:
    _objc_release_x2();
    return;
  }

  if (!*(Strong + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state))
  {

    goto _objc_release_x2;
  }

  v4 = Strong;
  sub_36CA0(0, 1, 0.0);
  v1 = &v4[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 56))(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void sub_2B754()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
_objc_release_x2:
    _objc_release_x2();
    return;
  }

  if (!*(Strong + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state))
  {

    goto _objc_release_x2;
  }

  v4 = Strong;
  sub_36CA0(0, 1, 0.0);
  v1 = &v4[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 72))(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2B898()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state) != 4)
    {
      sub_36CA0(4u, 1, 0.0);
    }
  }

  else
  {
    __break(1u);
  }

  return _objc_release_x2();
}

uint64_t sub_2B960()
{
  v1 = sub_2B0C4();
  v2 = [v1 powerLevels];

  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_11:

      __break(1u);
      return _objc_release_x2();
    }

    v4 = Strong;
    [*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController____lazy_storage___audioMessagesControlInterface) duration];
    [v4 updatePowerLevels:v2 startTime:0.0 endTime:v5];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v6 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state) != 5)
  {
    sub_36CA0(5u, 1, 0.0);
  }

  return _objc_release_x2();
}

id sub_2BBF0(void *a1)
{
  _s22AudioMessagesExtension0A24AppContentViewControllerC6logger33_6C80B9CA6D0C59A10BF4E668E4172F5CLL2os6LoggerVvpfi_0();
  v1[OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController__willReleaseToSendOrCancel] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_currentPresentationStyle] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController____lazy_storage___audioMessagesControlInterface] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AMMessagesViewController(0);
  v3 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v4 = v3;
  if (v3)
  {
    v5 = qword_81A58;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    swift_unknownObjectWeakAssign();
  }

  return v4;
}

void sub_2BD54(uint64_t a1)
{
  if (a1 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v7 = Strong;
    v8 = [Strong arrangedSubviews];

    sub_2E354();
    v9 = sub_429E8();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_42AF8();
    }

    else
    {
      if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }

      v10 = *(v9 + 32);
    }

    v12 = v10;

    [v12 setHidden:0];
    goto LABEL_13;
  }

  if (!a1)
  {
    v1 = swift_unknownObjectWeakLoadStrong();
    if (!v1)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v2 = v1;
    v3 = [v1 arrangedSubviews];

    sub_2E354();
    v4 = sub_429E8();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_42AF8();
      goto LABEL_7;
    }

    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      v5 = *(v4 + 32);
LABEL_7:
      v12 = v5;

      [v12 setHidden:1];
LABEL_13:

      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_2D124(&qword_82010);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5F5C0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0xD00000000000001ELL;
  *(v11 + 40) = 0x8000000000063140;
  sub_42BF8();
}

uint64_t sub_2BF70()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AMMessagesViewController(0);
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2E438;
  *(v3 + 24) = v2;
  v8[4] = sub_2E570;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_2C114;
  v8[3] = &unk_6DDD8;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2C184(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AMMessagesViewController(0);
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state);
    if (v6 == 6)
    {
      v7 = &selRef_pausePlaying;
    }

    else
    {
      if (v6 != 4)
      {
LABEL_7:

        return;
      }

      v7 = &selRef_stopRecording;
    }

    sub_36CA0(5u, 1, 0.0);
    v8 = sub_2B0C4();
    [v8 *v7];

    goto LABEL_7;
  }

  __break(1u);
}

void sub_2C2A8(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for AMMessagesViewController(0);
  objc_msgSendSuper2(&v17, "willMoveToParentViewController:", a1);
  if (!a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong willMoveToParentViewController:0];

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 view];

        if (v7)
        {
          [v7 removeFromSuperview];

          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = v8;
            [v8 removeFromParentViewController];

            v10 = swift_unknownObjectWeakLoadStrong();
            if (v10)
            {
              v11 = v10;
              [v10 willMoveToParentViewController:0];

              v12 = swift_unknownObjectWeakLoadStrong();
              if (v12)
              {
                v13 = v12;
                v14 = [v12 view];

                if (v14)
                {
                  [v14 removeFromSuperview];

                  v15 = swift_unknownObjectWeakLoadStrong();
                  if (v15)
                  {
                    v16 = v15;
                    [v15 removeFromParentViewController];

                    return;
                  }

LABEL_19:
                  __break(1u);
                  return;
                }

LABEL_18:
                __break(1u);
                goto LABEL_19;
              }

LABEL_17:
              __break(1u);
              goto LABEL_18;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id sub_2C79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMMessagesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2C8B4()
{
  v0 = sub_2B0C4();
  [v0 stopRecording];
}

void sub_2C908(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v7 = sub_2B0C4();
  [v7 *a4];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setTimeControllerState:a5];
  }

  else
  {
    __break(1u);
  }
}

void sub_2C990()
{
  v0 = sub_2B0C4();
  [v0 pausePlaying];
}

void sub_2C9EC()
{
  *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController__willReleaseToSendOrCancel) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong reset];

    v3 = sub_2B0C4();
    [v3 cancelAudioMessage];
  }

  else
  {
    __break(1u);
  }
}

void sub_2CA70()
{
  v0 = sub_2B0C4();
  [v0 disableRotationWhileRecordingAudioMessage];
}

uint64_t sub_2CAB4(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  sub_2E1A8(a2, v15);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v7 = v15[1];
  *(v6 + 32) = v15[0];
  *(v6 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2E2B4;
  *(v8 + 24) = v6;
  v14[4] = sub_2E2D0;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_2C114;
  v14[3] = &unk_6DD60;
  v9 = _Block_copy(v14);
  v10 = v2;
  v11 = a1;

  [v5 performWithoutAnimation:v9];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2CC3C(void *a1, void *a2, uint64_t a3)
{
  sub_2E1A8(a3, v16);
  v5 = v17;
  if (v17)
  {
    v6 = sub_2E310(v16, v17);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_42BC8();
    (*(v7 + 8))(v9, v5);
    sub_2E268(v16);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for AMMessagesViewController(0);
  v15.receiver = a1;
  v15.super_class = v11;
  objc_msgSendSuper2(&v15, "prepareForSegue:sender:", a2, v10);
  swift_unknownObjectRelease();
  v12 = [a2 destinationViewController];
  type metadata accessor for AMWaveFormViewController();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectWeakAssign();
LABEL_9:

    return;
  }

  type metadata accessor for AudioAppContentViewController();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    *&v14[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_controlDelegate + 8] = &off_6DCB8;
    swift_unknownObjectWeakAssign();
    v12 = v14;
    goto LABEL_9;
  }

  __break(1u);
}

id variable initialization expression of AudioAppContentViewController.recorder()
{
  v0 = objc_allocWithZone(type metadata accessor for AudioRecorder());

  return [v0 init];
}

id variable initialization expression of AudioAppContentViewController.ringsContainerView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t variable initialization expression of AudioAppContentViewController.rings()
{
  sub_2D124(&qword_81D00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_5F5D0;
  type metadata accessor for AudioAppContentViewController.Ring();
  v1 = swift_allocObject();
  type metadata accessor for GradientView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerRadial];

  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v0 + 32) = v1;
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerRadial];

  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v0 + 40) = v5;
  return v0;
}

uint64_t sub_2D124(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of AudioAppContentViewController.centerFillView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

id variable initialization expression of AudioAppContentViewController.iconView()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = [objc_opt_self() configurationWithPointSize:6 weight:-1 scale:34.0];
  [v0 setPreferredSymbolConfiguration:v1];

  return v0;
}

id variable initialization expression of AudioAppContentViewController.labelColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 init];
}

double variable initialization expression of AudioAppContentViewController.collapsedSpring@<D0>(uint64_t a1@<X8>)
{
  result = 246.74011;
  *a1 = xmmword_5F5E0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return result;
}

double variable initialization expression of AudioAppContentViewController.powerIntensitySpring@<D0>(uint64_t a1@<X8>)
{
  result = 986.96044;
  *a1 = xmmword_5F5F0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return result;
}

id variable initialization expression of AudioAppContentViewController.longPressRecognizer()
{
  v0 = objc_allocWithZone(UILongPressGestureRecognizer);

  return [v0 init];
}

uint64_t sub_2D36C()
{
  result = sub_428F8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2D430(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D468()
{
  result = sub_428F8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_2D52C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2D53C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D55C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_2D598(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2D5A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2D5C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2D630()
{
  v0 = sub_42978();
  v2 = v1;
  if (v0 == sub_42978() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_42BD8();
  }

  return v5 & 1;
}

BOOL sub_2D6D4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2D72C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2D75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_42978();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2D7BC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2D818(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2D818(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2D8E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2E46C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2E268(v11);
  return v7;
}

unint64_t sub_2D8E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2D9F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_42B18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_2D9F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2DA3C(a1, a2);
  sub_2DB6C(&off_6DB38);
  return v3;
}

char *sub_2DA3C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_2DC58(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_42B18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_429B8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2DC58(v10, 0);
        result = sub_42AD8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2DB6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2DCCC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2DC58(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_2D124(&qword_81BD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2DCCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2D124(&qword_81BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_2DDC0(void *a1, void (**a2)(void, void))
{
  v3 = [a1 view];
  if (!v3)
  {
    _Block_release(a2);
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [objc_opt_self() mainScreen];
  [v13 scale];
  v15 = v14;

  v28.width = v10;
  v28.height = v12;
  UIGraphicsBeginImageContextWithOptions(v28, 1, v15);
  c = UIGraphicsGetCurrentContext();
  if (!c)
  {
LABEL_16:
    _Block_release(a2);
    __break(1u);
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    _Block_release(a2);
    __break(1u);
    goto LABEL_18;
  }

  v17 = Strong;
  v18 = [Strong view];

  if (!v18)
  {
LABEL_18:
    _Block_release(a2);
    __break(1u);
LABEL_19:
    _Block_release(a2);
    __break(1u);
    return;
  }

  v19 = [v18 backgroundColor];

  if (!v19 || (v20 = [v19 CGColor], v19, !v20))
  {
    v21 = [objc_opt_self() systemBackgroundColor];
    v20 = [v21 CGColor];
  }

  CGContextSetFillColorWithColor(c, v20);

  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  CGContextFillRect(c, v29);
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v22;
  v24 = sub_38EC8();

  if (v24)
  {
    v25 = UIGraphicsGetImageFromCurrentImageContext();
  }

  else
  {
    v25 = 0;
  }

  UIGraphicsEndImageContext();
  (a2)[2](a2, v25);
}

void sub_2E034()
{
  if ((*(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController__willReleaseToSendOrCancel) & 1) == 0)
  {
    v1 = sub_2B0C4();
    [v1 stopRecording];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong setTimeControllerState:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2E0D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController__willReleaseToSendOrCancel);
  *(v0 + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController__willReleaseToSendOrCancel) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;
  [Strong reset];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 requestPresentationStyle:0];

  if (v1)
  {
    v6 = sub_2B0C4();
    [v6 sendAudioMessage];
  }
}

uint64_t sub_2E1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2D124(&unk_82040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E218()
{
  if (*(v0 + 56))
  {
    sub_2E268(v0 + 32);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2E268(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2E310(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2E354()
{
  result = qword_81BC8;
  if (!qword_81BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81BC8);
  }

  return result;
}

uint64_t sub_2E3A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2D124(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2E400()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E46C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2E4CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2E504(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ShapeView.shapeLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

void ShapeView.path.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() path];

  if (v2)
  {

    v3 = [v0 layer];
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() path];

    if (v4)
    {
      [objc_opt_self() bezierPathWithCGPath:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*ShapeView.path.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ShapeView.path.getter();
  *a1 = v3;
  return sub_2E7CC;
}

void (*ShapeView.fillColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ShapeView.fillColor.getter();
  *a1 = v3;
  return sub_2E848;
}

void ShapeView.fillRule.getter(uint64_t a1@<X8>)
{
  v3 = [v1 layer];
  objc_opt_self();
  v19 = [swift_dynamicCastObjCClassUnconditional() fillRule];

  v4 = sub_42978();
  v6 = v5;
  if (v4 == sub_42978() && v6 == v7)
  {
    v10 = &enum case for CGPathFillRule.evenOdd(_:);
LABEL_8:

    goto LABEL_9;
  }

  v9 = sub_42BD8();

  if (v9)
  {
    v10 = &enum case for CGPathFillRule.evenOdd(_:);
    goto LABEL_9;
  }

  v13 = sub_42978();
  v15 = v14;
  if (v13 == sub_42978() && v15 == v16)
  {
    v10 = &enum case for CGPathFillRule.winding(_:);
    goto LABEL_8;
  }

  v18 = sub_42BD8();

  if ((v18 & 1) == 0)
  {
    sub_42B78();
    __break(1u);
    return;
  }

  v10 = &enum case for CGPathFillRule.winding(_:);
LABEL_9:
  v11 = *v10;
  v12 = sub_428B8();
  (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t ShapeView.fillRule.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_428B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for CGPathFillRule.winding(_:))
  {
    v9 = &kCAFillRuleNonZero;
LABEL_5:
    v10 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setFillRule:*v9];

    return (*(v5 + 8))(a1, v4);
  }

  if (v8 == enum case for CGPathFillRule.evenOdd(_:))
  {
    v9 = &kCAFillRuleEvenOdd;
    goto LABEL_5;
  }

  result = sub_42B78();
  __break(1u);
  return result;
}

void (*ShapeView.fillRule.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_428B8();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  ShapeView.fillRule.getter(v8);
  return sub_2ED54;
}

void sub_2ED54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    ShapeView.fillRule.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ShapeView.fillRule.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_2EE14(SEL *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() *a1];

  if (v4)
  {

    v5 = [v1 layer];
    objc_opt_self();
    v6 = [swift_dynamicCastObjCClassUnconditional() *a1];

    if (v6)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2EF40(void *a1, const char **a2, SEL *a3)
{
  v7 = [v3 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v9 = *a2;
    v10 = v8;
    v11 = [a1 v9];
    v8 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v8 *a3];
}

void (*ShapeView.strokeColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ShapeView.strokeColor.getter();
  *a1 = v3;
  return sub_2F054;
}

void sub_2F068(uint64_t a1, char a2, SEL *a3, SEL *a4)
{
  v6 = *(a1 + 8);
  v15 = *a1;
  if (a2)
  {
    v7 = v15;
    v8 = [v6 layer];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    if (v15)
    {
      v10 = v9;
      v11 = [v7 *a3];
      v9 = v10;
    }

    else
    {
      v11 = 0;
    }

    [v9 *a4];

    v15 = v7;
  }

  else
  {
    v7 = [v6 layer];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    if (v15)
    {
      v13 = *a3;
      v14 = v12;
      v8 = [v15 v13];
      v12 = v14;
    }

    else
    {
      v8 = 0;
    }

    [v12 *a4];
  }
}

void (*ShapeView.strokeStart.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() strokeStart];
  v5 = v4;

  *a1 = v5;
  return sub_2F294;
}

void (*ShapeView.strokeEnd.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() strokeEnd];
  v5 = v4;

  *a1 = v5;
  return sub_2F358;
}

void (*ShapeView.lineWidth.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() lineWidth];
  v5 = v4;

  *a1 = v5;
  return sub_2F41C;
}

uint64_t ShapeView.lineCap.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() lineCap];

  v3 = sub_42978();
  v5 = v4;
  if (v3 == sub_42978() && v5 == v6)
  {

    return 0;
  }

  v8 = sub_42BD8();

  if (v8)
  {

    return 0;
  }

  v10 = sub_42978();
  v12 = v11;
  if (v10 == sub_42978() && v12 == v13)
  {

    return 1;
  }

  else
  {
    v15 = sub_42BD8();

    if (v15)
    {

      return 1;
    }

    else
    {
      v16 = sub_42978();
      v18 = v17;
      if (v16 == sub_42978() && v18 == v19)
      {

        return 2;
      }

      else
      {
        v20 = sub_42BD8();

        if (v20)
        {

          return 2;
        }

        else
        {
          result = sub_42B78();
          __break(1u);
        }
      }
    }
  }

  return result;
}

void ShapeView.lineCap.setter(unsigned int a1)
{
  if (a1 >= 3)
  {
    sub_42B78();
    __break(1u);
  }

  else
  {
    v2 = *(&off_6DEA0 + a1);
    v3 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineCap:*v2];
  }
}

void (*ShapeView.lineCap.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ShapeView.lineCap.getter();
  return sub_2F7A0;
}

uint64_t ShapeView.lineJoin.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() lineJoin];

  v3 = sub_42978();
  v5 = v4;
  if (v3 == sub_42978() && v5 == v6)
  {

    return 0;
  }

  v8 = sub_42BD8();

  if (v8)
  {

    return 0;
  }

  v10 = sub_42978();
  v12 = v11;
  if (v10 == sub_42978() && v12 == v13)
  {

    return 1;
  }

  else
  {
    v15 = sub_42BD8();

    if (v15)
    {

      return 1;
    }

    else
    {
      v16 = sub_42978();
      v18 = v17;
      if (v16 == sub_42978() && v18 == v19)
      {

        return 2;
      }

      else
      {
        v20 = sub_42BD8();

        if (v20)
        {

          return 2;
        }

        else
        {
          result = sub_42B78();
          __break(1u);
        }
      }
    }
  }

  return result;
}

void ShapeView.lineJoin.setter(unsigned int a1)
{
  if (a1 >= 3)
  {
    sub_42B78();
    __break(1u);
  }

  else
  {
    v2 = *(&off_6DEB8 + a1);
    v3 = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineJoin:*v2];
  }
}

void (*ShapeView.lineJoin.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ShapeView.lineJoin.getter();
  return sub_2FB40;
}

void (*ShapeView.miterLimit.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() miterLimit];
  v5 = v4;

  *a1 = v5;
  return sub_2FC20;
}

double sub_2FC38(SEL *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a1];
  v5 = v4;

  return v5;
}

void sub_2FCC0(SEL *a1, double a2)
{
  v5 = [v2 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a1];
}

void (*ShapeView.lineDashPhase.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() lineDashPhase];
  v5 = v4;

  *a1 = v5;
  return sub_2FDF4;
}

void sub_2FE00(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = [*(a1 + 8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() *a3];
}

char *ShapeView.lineDashPattern.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() lineDashPattern];

  if (!v2)
  {
    return v2;
  }

  sub_3094C(0, &qword_81C00);
  v3 = sub_429E8();

  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v4 = sub_42B88();
  if (!v4)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  result = sub_30994(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_42AF8();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      [v7 doubleValue];
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_30994((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    while (v4 != v6);

    return v2;
  }

  __break(1u);
  return result;
}

void ShapeView.lineDashPattern.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = [v1 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = *(a1 + 16);
    if (v5)
    {
      sub_42B48();
      v6 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v6)];
        sub_42B28();
        sub_42B58();
        sub_42B68();
        sub_42B38();
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    sub_3094C(0, &qword_81C00);
    isa = sub_429D8().super.isa;

    [v4 setLineDashPattern:isa];
  }

  else
  {
    isa = [v1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setLineDashPattern:0];
  }
}

void (*ShapeView.lineDashPattern.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ShapeView.lineDashPattern.getter();
  return sub_302A8;
}

void sub_302A8(uint64_t *a1, char a2)
{
  if (a2)
  {

    ShapeView.lineDashPattern.setter(v2);
  }

  else
  {
    ShapeView.lineDashPattern.setter(*a1);
  }
}

id ShapeView.action(for:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 == 1752457584 && a3 == 0xE400000000000000;
  if (v7 || (sub_42BD8() & 1) != 0 || a2 == 0x6F6C6F436C6C6966 && a3 == 0xE900000000000072 || (sub_42BD8() & 1) != 0 || a2 == 0x6F43656B6F727473 && a3 == 0xEB00000000726F6CLL || (sub_42BD8() & 1) != 0 || a2 == 0x7453656B6F727473 && a3 == 0xEB00000000747261 || (sub_42BD8() & 1) != 0 || a2 == 0x6E45656B6F727473 && a3 == 0xE900000000000064 || (sub_42BD8() & 1) != 0 || a2 == 0x74646957656E696CLL && a3 == 0xE900000000000068 || (sub_42BD8() & 1) != 0 || a2 == 0x6D694C726574696DLL && a3 == 0xEA00000000007469 || (sub_42BD8() & 1) != 0 || a2 == 0x68736144656E696CLL && a3 == 0xED00006573616850 || (sub_42BD8() & 1) != 0)
  {
    v8 = sub_42968();
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ShapeView();
    v9 = objc_msgSendSuper2(&v15, "actionForLayer:forKey:", a1, v8);

    v10 = [v3 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v12 = sub_3C908(a2, a3, v11, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_42968();
    v16.receiver = v3;
    v16.super_class = type metadata accessor for ShapeView();
    v12 = objc_msgSendSuper2(&v16, "actionForLayer:forKey:", a1, v14);
  }

  return v12;
}

id ShapeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id ShapeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id ShapeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ShapeView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShapeView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3094C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_30994(char *a1, int64_t a2, char a3)
{
  result = sub_309F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_309D8(char *a1, int64_t a2, char a3)
{
  result = sub_30AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_309F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2D124(&qword_81C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_30AFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2D124(&qword_82010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void ShadowView.shadowPath.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPath];

  if (v2)
  {

    v3 = [v0 layer];
    v4 = [v3 shadowPath];

    if (v4)
    {
      [objc_opt_self() bezierPathWithCGPath:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*ShadowView.shadowPath.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ShadowView.shadowPath.getter();
  *a1 = v3;
  return sub_30D44;
}

void ShadowView.shadowColor.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowColor];

  if (v2)
  {

    v3 = [v0 layer];
    v4 = [v3 shadowColor];

    if (v4)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_30E40(void *a1, SEL *a2, SEL *a3)
{
  v7 = [v3 layer];
  if (a1)
  {
    v8 = [a1 *a2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a3];
}

void (*ShadowView.shadowColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  ShadowView.shadowColor.getter();
  *a1 = v3;
  return sub_30F2C;
}

void sub_30F40(uint64_t a1, char a2, SEL *a3, SEL *a4)
{
  v6 = *(a1 + 8);
  v10 = *a1;
  if (a2)
  {
    v7 = v10;
    v8 = [v6 layer];
    if (v10)
    {
      v9 = [v7 *a3];
    }

    else
    {
      v9 = 0;
    }

    [v8 *a4];

    v10 = v7;
  }

  else
  {
    v7 = [v6 layer];
    if (v10)
    {
      v8 = [v10 *a3];
    }

    else
    {
      v8 = 0;
    }

    [v7 *a4];
  }
}

double ShadowView.shadowOpacity.getter()
{
  v1 = [v0 layer];
  [v1 shadowOpacity];
  v3 = v2;

  return v3;
}

void ShadowView.shadowOpacity.setter(double a1)
{
  v4 = [v1 layer];
  *&v3 = a1;
  [v4 setShadowOpacity:v3];
}

void (*ShadowView.shadowOpacity.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = [v1 layer];
  [v3 shadowOpacity];
  v5 = v4;

  *a1 = v5;
  return sub_3119C;
}

void sub_3119C(uint64_t a1)
{
  v1 = *a1;
  v3 = [*(a1 + 8) layer];
  *&v2 = v1;
  [v3 setShadowOpacity:v2];
}

double ShadowView.shadowOffset.getter()
{
  v1 = [v0 layer];
  [v1 shadowOffset];
  v3 = v2;

  return v3;
}

void ShadowView.shadowOffset.setter(double a1, double a2)
{
  v5 = [v2 layer];
  [v5 setShadowOffset:{a1, a2}];
}

void (*ShadowView.shadowOffset.modify(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = [v1 layer];
  [v3 shadowOffset];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_31358;
}

void sub_31358(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = [*(a1 + 16) layer];
  [v3 setShadowOffset:{v1, v2}];
}

double ShadowView.shadowRadius.getter()
{
  v1 = [v0 layer];
  [v1 shadowRadius];
  v3 = v2;

  return v3;
}

void ShadowView.shadowRadius.setter(double a1)
{
  v3 = [v1 layer];
  [v3 setShadowRadius:a1];
}

void (*ShadowView.shadowRadius.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 layer];
  [v3 shadowRadius];
  v5 = v4;

  *a1 = v5;
  return sub_31504;
}

void sub_31504(uint64_t a1)
{
  v1 = *a1;
  v2 = [*(a1 + 8) layer];
  [v2 setShadowRadius:v1];
}

id ShadowView.action(for:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 == 0x6150776F64616873 && a3 == 0xEA00000000006874;
  if (v7 || (sub_42BD8() & 1) != 0 || a2 == 0x6F43776F64616873 && a3 == 0xEB00000000726F6CLL || (sub_42BD8() & 1) != 0 || a2 == 0x664F776F64616873 && a3 == 0xEC00000074657366 || (sub_42BD8() & 1) != 0 || a2 == 0x704F776F64616873 && a3 == 0xED00007974696361 || (sub_42BD8() & 1) != 0 || a2 == 0x6152776F64616873 && a3 == 0xEC00000073756964 || (sub_42BD8() & 1) != 0)
  {
    v8 = sub_42968();
    v13.receiver = v3;
    v13.super_class = type metadata accessor for ShadowView();
    v9 = objc_msgSendSuper2(&v13, "actionForLayer:forKey:", a1, v8);

    v10 = sub_3C908(a2, a3, a1, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_42968();
    v14.receiver = v3;
    v14.super_class = type metadata accessor for ShadowView();
    v10 = objc_msgSendSuper2(&v14, "actionForLayer:forKey:", a1, v12);
  }

  return v10;
}

id ShadowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id ShadowView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShadowView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShadowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_31B1C(void *a1, void *a2, double a3)
{
  v7 = &v3[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_radius];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_parentView] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor] = 0;
  *&v3[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor] = 0;
  v41.receiver = v3;
  v41.super_class = type metadata accessor for AMWavePulsingView();
  v8 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor:v11];

  v12 = &v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_radius];
  *v12 = a3;
  *(v12 + 8) = 0;
  v13 = *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor];
  *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor] = a1;
  v14 = a1;

  v15 = OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_parentView;
  v16 = *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_parentView];
  *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_parentView] = a2;
  v17 = a2;

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = *&v10[v15];
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v18 insertSubview:v10 atIndex:0];
  v19 = [v10 widthAnchor];
  v20 = a3 + a3;
  v21 = [v19 constraintEqualToConstant:v20];

  v22 = OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor;
  v23 = *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor];
  *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor] = v21;

  v24 = [v10 heightAnchor];
  v25 = [v24 constraintEqualToConstant:v20];

  v26 = OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor;
  v27 = *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor];
  *&v10[OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor] = v25;

  sub_2D124(&qword_81D00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_5F8E0;
  v29 = [v10 centerXAnchor];
  v30 = [v17 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 32) = v31;
  v32 = [v10 centerYAnchor];

  v33 = [v17 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v28 + 40) = v34;
  v35 = *&v10[v22];
  if (!v35)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v28 + 48) = v35;
  v36 = *&v10[v26];
  if (v36)
  {
    v37 = objc_opt_self();
    *(v28 + 56) = v36;
    sub_320B0();
    v38 = v35;
    v39 = v36;
    isa = sub_429D8().super.isa;

    [v37 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_31F5C(void *a1)
{
  [a1 setAlpha:0.1];

  return [a1 layoutIfNeeded];
}

id sub_31FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMWavePulsingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_320B0()
{
  result = qword_81CB0;
  if (!qword_81CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81CB0);
  }

  return result;
}

Swift::Int sub_32110()
{
  v1 = *v0;
  sub_42C08();
  sub_42C18(v1);
  return sub_42C28();
}

Swift::Int sub_32184()
{
  v1 = *v0;
  sub_42C08();
  sub_42C18(v1);
  return sub_42C28();
}

uint64_t sub_321C8()
{
  v1 = *v0;
  v2 = 0x7964616572;
  v3 = 0x776569766572;
  if (v1 != 5)
  {
    v3 = 0x676E6979616C70;
  }

  v4 = 1801678700;
  if (v1 != 3)
  {
    v4 = 0x64656B636F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6964726F636572;
  if (v1 != 1)
  {
    v5 = 0x616C6C65636E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t (*AudioRecorder.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_3A3C0;
}

unint64_t AudioRecorder.power.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t AudioRecorder.power.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioRecorder.start(transcribe:)(Swift::Bool transcribe)
{
  v2 = v1 + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
  swift_beginAccess();
  *v2 = 0;
  *(v2 + 4) = 1;
}

Swift::Void __swiftcall AudioRecorder.cancel()()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 4) = 1;
}

id AudioRecorder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioRecorder.init()()
{
  *&v0[OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power];
  *v1 = 0;
  v1[4] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioRecorder();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_32684()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

id sub_326BC()
{
  type metadata accessor for ShapeView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStrokeColor:0];

  v2 = [objc_opt_self() redColor];
  v3 = [v0 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (v2)
  {
    v5 = v4;
    v6 = [v2 CGColor];
    v4 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v4 setFillColor:v6];

  return v0;
}

id sub_32804()
{
  v0 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_42A28().super.super.isa;
  v2 = sub_42968();
  [v0 setValue:isa forKey:v2];

  v3 = sub_42A18().super.super.isa;
  v4 = sub_42968();
  [v0 setValue:v3 forKey:v4];

  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v6 = sub_42A28().super.super.isa;
  v7 = sub_42968();
  [v5 setValue:v6 forKey:v7];

  type metadata accessor for BackdropView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [v8 layer];
  sub_2D124(&qword_82010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5F940;
  v11 = sub_3094C(0, &qword_82018);
  *(v10 + 32) = v5;
  *(v10 + 88) = v11;
  *(v10 + 56) = v11;
  *(v10 + 64) = v0;
  v12 = v5;
  v13 = v0;
  v14 = sub_429D8().super.isa;

  [v9 setFilters:v14];

  v15 = [v8 traitCollection];
  v16 = [v15 userInterfaceStyle];

  if (v16 == &dword_0 + 2)
  {
    v17 = [objc_opt_self() effectWithStyle:9];
    v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];
    [v8 addSubview:v18];
  }

  return v8;
}

id sub_32AF0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v0 traitCollection];
  v3 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v2];

  [v3 pointSize];
  if (v4 < 13.0)
  {
    v5 = [v3 fontWithSize:13.0];

    v3 = v5;
  }

  [v0 setFont:v3];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setTextAlignment:1];
  [v0 setNumberOfLines:2];
  [v0 setLineBreakMode:4];

  return v0;
}

char *sub_32C40(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textInset];
  *v9 = xmmword_5F950;
  v9[1] = xmmword_5F960;
  *&v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowSize] = xmmword_5F970;
  *&v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxWidth] = 0x7FF0000000000000;
  *&v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxHeight] = 0;
  *&v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_cornerRadius] = 0x402E000000000000;
  v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown] = 1;
  v10 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backdropColor;
  *&v4[v10] = [objc_allocWithZone(UIColor) init];
  v11 = &v4[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_text];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textColor;
  v13 = objc_opt_self();
  *&v4[v12] = [v13 labelColor];
  v14 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowColor;
  *&v4[v14] = [v13 blackColor];
  v15 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shapeView;
  *&v4[v15] = sub_326BC();
  v16 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView;
  *&v4[v16] = sub_32804();
  v17 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowView;
  type metadata accessor for ShadowView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [v18 layer];
  LODWORD(v20) = 1028443341;
  [v19 setShadowOpacity:v20];

  v21 = [v18 layer];
  [v21 setShadowRadius:20.0];

  v22 = [v18 layer];
  [v22 setShadowOffset:{0.0, 3.0}];

  *&v4[v17] = v18;
  v23 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView;
  *&v4[v23] = sub_32AF0();
  v29.receiver = v4;
  v29.super_class = type metadata accessor for AudioAppContentViewController.CalloutView();
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowView];
  v26 = v24;
  [v26 addSubview:v25];
  v27 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView]];
  [*&v26[v27] setMaskView:*&v26[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shapeView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView]];

  return v26;
}

void sub_32F58()
{
  v56.receiver = v0;
  v56.super_class = type metadata accessor for AudioAppContentViewController.CalloutView();
  objc_msgSendSuper2(&v56, "layoutSubviews");
  [v0 bounds];
  Height = CGRectGetHeight(v57);
  v1 = [objc_allocWithZone(UIBezierPath) init];
  [v0 bounds];
  MidX = CGRectGetMidX(v58);
  [v0 bounds];
  [v1 moveToPoint:{MidX, CGRectGetMinY(v59)}];
  [v0 bounds];
  v3 = CGRectGetMaxX(v60) + -15.0;
  [v0 bounds];
  [v1 addLineToPoint:{v3, CGRectGetMinY(v61)}];
  [v0 bounds];
  v4 = CGRectGetMaxX(v62) + -15.0;
  [v0 bounds];
  [v1 addArcWithCenter:1 radius:v4 startAngle:CGRectGetMinY(v63) + 15.0 endAngle:15.0 clockwise:{4.71238898, 0.0}];
  [v0 bounds];
  v5 = CGRectGetMaxY(v64) + -5.0;
  [v0 bounds];
  [v1 addLineToPoint:{CGRectGetMaxX(v65), v5 + -15.0}];
  [v0 bounds];
  v6 = CGRectGetMaxX(v66) + -15.0;
  [v0 bounds];
  [v1 addArcWithCenter:1 radius:v6 startAngle:CGRectGetMaxY(v67) + -20.0 endAngle:15.0 clockwise:{0.0, 1.57079633}];
  [v0 bounds];
  [v1 addLineToPoint:{CGRectGetMidX(v68) + 10.0, v5}];
  [v0 bounds];
  v7 = CGRectGetMidX(v69);
  [v0 bounds];
  MaxY = CGRectGetMaxY(v70);
  [v0 bounds];
  v9 = CGRectGetMidX(v71) + 10.0 + -5.0;
  [v0 bounds];
  v10 = CGRectGetMidX(v72) + 2.5;
  [v0 bounds];
  [v1 addCurveToPoint:v7 controlPoint1:MaxY controlPoint2:{v9, v5, v10, CGRectGetMaxY(v73)}];
  [v0 bounds];
  v11 = CGRectGetMidX(v74) + -10.0;
  [v0 bounds];
  v12 = CGRectGetMidX(v75) + -2.5;
  [v0 bounds];
  v13 = CGRectGetMaxY(v76);
  [v0 bounds];
  [v1 addCurveToPoint:v11 controlPoint1:v5 controlPoint2:{v12, v13, CGRectGetMidX(v77) + -10.0 + 5.0, v5}];
  [v0 bounds];
  [v1 addLineToPoint:{CGRectGetMinX(v78) + 15.0, v5}];
  [v0 bounds];
  v14 = CGRectGetMinX(v79) + 15.0;
  [v0 bounds];
  [v1 addArcWithCenter:1 radius:v14 startAngle:CGRectGetMaxY(v80) + -20.0 endAngle:15.0 clockwise:{1.57079633, 3.14159265}];
  [v0 bounds];
  MinX = CGRectGetMinX(v81);
  [v0 bounds];
  [v1 addLineToPoint:{MinX, CGRectGetMinY(v82) + 15.0}];
  [v0 bounds];
  v16 = CGRectGetMinX(v83) + 15.0;
  [v0 bounds];
  [v1 addArcWithCenter:1 radius:v16 startAngle:CGRectGetMinY(v84) + 15.0 endAngle:15.0 clockwise:{3.14159265, 4.71238898}];
  [v1 closePath];
  v53 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown;
  if ((v0[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown] & 1) == 0)
  {
    CGAffineTransformMakeScale(&v55, 1.0, -1.0);
    tx = v55.tx;
    ty = v55.ty;
    v51 = *&v55.c;
    v52 = *&v55.a;
    [v1 bounds];
    v19 = CGRectGetHeight(v85);
    CGAffineTransformMakeTranslation(&v55, 0.0, v19);
    v20 = v55.tx;
    v21 = v55.ty;
    v49 = *&v55.c;
    v50 = *&v55.a;
    *&v55.c = v51;
    *&v55.a = v52;
    v55.tx = tx;
    v55.ty = ty;
    [v1 applyTransform:&v55];
    *&v55.c = v49;
    *&v55.a = v50;
    v55.tx = v20;
    v55.ty = v21;
    [v1 applyTransform:&v55];
  }

  v22 = [v0 traitCollection];
  v23 = [v22 userInterfaceStyle];

  if (v23 != &dword_0 + 2)
  {
    v24 = [v0 layer];
    LODWORD(v25) = 1063675494;
    [v24 setOpacity:v25];

    v26 = [v0 layer];
    [v26 setAllowsGroupOpacity:0];
  }

  v27 = *&v0[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shapeView];
  v28 = v1;
  v29 = [v27 layer];
  objc_opt_self();
  v30 = swift_dynamicCastObjCClassUnconditional();
  v31 = [v28 CGPath];
  [v30 setPath:v31];

  v32 = *&v0[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_shadowView];
  v33 = [v32 layer];
  v34 = [v28 CGPath];
  [v33 setShadowPath:v34];

  [v0 bounds];
  [v32 bounds];
  [v32 setBounds:?];
  [v0 bounds];
  v35 = CGRectGetMidX(v86);
  [v0 bounds];
  [v32 setCenter:{v35, CGRectGetMidY(v87)}];
  v36 = [v32 layer];
  [v36 setCornerRadius:15.0];

  v37 = *&v0[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView];
  [v0 bounds];
  [v37 bounds];
  [v37 setBounds:?];
  [v0 bounds];
  v38 = CGRectGetMidX(v88);
  [v0 bounds];
  [v37 setCenter:{v38, CGRectGetMidY(v89)}];
  v39 = [v37 layer];
  [v39 setCornerRadius:15.0];

  [v37 bounds];
  [v27 bounds];
  [v27 setBounds:?];
  [v37 bounds];
  v40 = CGRectGetMidX(v90);
  [v37 bounds];
  [v27 setCenter:{v40, CGRectGetMidY(v91)}];
  v41 = *&v0[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView];
  [v0 bounds];
  [v41 textRectForBounds:2 limitedToNumberOfLines:{sub_39FCC(v42, v43, v44, v45, 5.0, 14.0)}];
  [v41 bounds];
  [v41 setBounds:?];
  LODWORD(v37) = v0[v53];
  [v0 bounds];
  v46 = (Height + -5.0) * 0.5 + CGRectGetMinY(v92);
  if (v37)
  {
    v47 = v46;
  }

  else
  {
    v47 = v46 + 5.0;
  }

  [v0 bounds];
  [v41 setCenter:{CGRectGetMidX(v93), v47}];
  v48 = [v0 layer];
  [v48 setAnchorPoint:{0.5, 1.0}];
}

id sub_33914(void *a1, char a2)
{
  v3 = a2 & 1;
  v4 = 0.0;
  if (a2)
  {
    v4 = 1.0;
  }

  [a1 setAlpha:v4];
  if (v3)
  {
    v5 = xmmword_5F980;
    v6 = xmmword_5F990;
    v7 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v9, 0.01, 0.01);
    v6 = *&v9.a;
    v5 = *&v9.c;
    v7 = *&v9.tx;
  }

  *&v9.a = v6;
  *&v9.c = v5;
  *&v9.tx = v7;
  return [a1 setTransform:&v9];
}

id sub_339C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_33B14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AudioAppContentViewController.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_33C1C;
}

void sub_33C20(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void AudioAppContentViewController.init(coder:)(void *a1)
{
  _s22AudioMessagesExtension0A24AppContentViewControllerC6logger33_6C80B9CA6D0C59A10BF4E668E4172F5CLL2os6LoggerVvpfi_0();
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder;
  *&v1[v2] = [objc_allocWithZone(type metadata accessor for AudioRecorder()) init];
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] = 0;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isFirstStateSet] = 0;
  v3 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringsContainerView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v42 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_rings;
  sub_2D124(&qword_81D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5F5D0;
  type metadata accessor for AudioAppContentViewController.Ring();
  v5 = swift_allocObject();
  type metadata accessor for GradientView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = [v7 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerRadial];

  *(v5 + 16) = v7;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v4 + 32) = v5;
  v9 = swift_allocObject();
  v10 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = [v10 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerRadial];

  *(v9 + 16) = v10;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *&v1[v42] = v4;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_bottomMarginForCalloutView] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_minimumMarginBetweenButtonAndCalloutView] = 0x4022000000000000;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isButtonsVisible] = 0;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible] = 0;
  *(v4 + 40) = v9;
  v12 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpPresentTime];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpDismissTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpText];
  *v14 = 0;
  v14[1] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView] = 0;
  v15 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerFillView;
  v16 = [objc_allocWithZone(UIView) init];
  v17 = [objc_opt_self() systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  *&v1[v15] = v16;
  v18 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView;
  *&v1[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView;
  v20 = [objc_allocWithZone(UIImageView) init];
  v21 = [objc_opt_self() configurationWithPointSize:6 weight:-1 scale:34.0];
  [v20 setPreferredSymbolConfiguration:v21];

  *&v1[v19] = v20;
  v22 = a1;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed] = 0;
  v23 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_labelColor;
  *&v1[v23] = [objc_allocWithZone(UIColor) init];
  v24 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_popoverColor;
  *&v1[v24] = [objc_allocWithZone(UIColor) init];
  v25 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_buttonColor;
  *&v1[v25] = [objc_allocWithZone(UIColor) init];
  v26 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingStartTime];
  *v26 = 0;
  v26[8] = 1;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_hasStartedFirstRecording] = 0;
  v27 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime];
  *v27 = 0;
  v27[8] = 1;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recordingMinimumDuration] = 0x3FE999999999999ALL;
  v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isCollapsed] = 0;
  v28 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_collapsedSpring];
  *v28 = xmmword_5F5E0;
  *(v28 + 3) = 0;
  *(v28 + 4) = 0;
  *(v28 + 2) = 0;
  v29 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_powerIntensitySpring];
  *v29 = xmmword_5F5F0;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = 0;
  v30 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_longPressRecognizer;
  *&v1[v30] = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_controlDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44.receiver = v1;
  v44.super_class = type metadata accessor for AudioAppContentViewController();
  v31 = objc_msgSendSuper2(&v44, "initWithCoder:", a1);
  if (!v31)
  {
    goto LABEL_5;
  }

  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 displayLinkWithTarget:v33 selector:"displayLinkFiredFrom:"];
  v35 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink;
  v36 = *&v33[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  *&v33[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink] = v34;
  v37 = v34;

  if (v37)
  {
    [v37 setPaused:1];

    v38 = *&v33[v35];
    if (v38)
    {
      v39 = objc_opt_self();
      v40 = v38;
      v41 = [v39 mainRunLoop];
      [v40 addToRunLoop:v41 forMode:NSRunLoopCommonModes];

      v22 = v41;
LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall AudioAppContentViewController.viewDidLoad()()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  [v2 setIsAccessibilityElement:1];

  v4 = objc_opt_self();
  [v4 setAnimationsEnabled:0];
  sub_350BC();
  v5 = [v1 view];
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringsContainerView];
  [v5 addSubview:v7];

  v8 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_rings];
  if (v8 >> 62)
  {
    v9 = sub_42B88();
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_42AF8();
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    [v7 addSubview:*(v11 + 16)];
  }

LABEL_12:
  v12 = [v1 view];
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v12;
  [v12 addSubview:*&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerFillView]];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  [v14 addSubview:*&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView]];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v16 addSubview:*&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView]];

  v18 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder] + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_delegate;
  swift_beginAccess();
  *(v18 + 8) = &protocol witness table for AudioAppContentViewController;
  swift_unknownObjectWeakAssign();
  v19 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_controlDelegate];
  swift_unknownObjectWeakLoadStrong();
  v20 = *(v19 + 1);
  v21 = &v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_delegate];
  swift_beginAccess();
  *(v21 + 1) = v20;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v22 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_longPressRecognizer];
  [v22 setMinimumPressDuration:0.0];
  [v22 addTarget:v1 action:"longPressFrom:"];
  [v22 setDelegate:v1];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v24 = v23;
  [v23 addGestureRecognizer:v22];

  sub_36CA0(0, 0, 0.0);
  v25 = v1;
  v26 = sub_428D8();
  v27 = sub_42A58();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v1;
    v30 = v25;
    _os_log_impl(&dword_0, v26, v27, "%@ view loaded.", v28, 0xCu);
    sub_2E3A0(v29, &qword_81BD0);
  }

  [v4 setAnimationsEnabled:1];
}

Swift::Void __swiftcall AudioAppContentViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  if (v3)
  {
    [v3 setPaused:0];
  }
}

Swift::Void __swiftcall AudioAppContentViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v10, "viewWillDisappear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  if (v3)
  {
    [v3 setPaused:1];
  }

  v4 = v1;
  v5 = sub_428D8();
  v6 = sub_42A58();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_0, v5, v6, "%@ view unloaded.", v7, 0xCu);
    sub_2E3A0(v8, &qword_81BD0);
  }
}

id AudioAppContentViewController.__deallocating_deinit()
{
  v1 = sub_428F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_logger, v1);
  v5 = v0;
  v6 = sub_428D8();
  v7 = sub_42A58();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "%@ released from memory.", v8, 0xCu);
    sub_2E3A0(v9, &qword_81BD0);
  }

  (*(v2 + 8))(v4, v1);
  v11 = type metadata accessor for AudioAppContentViewController();
  v13.receiver = v5;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "dealloc");
}

Swift::Void __swiftcall AudioAppContentViewController.willMove(toParent:)(UIViewController_optional toParent)
{
  isa = toParent.value.super.super.isa;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v9, "willMoveToParentViewController:", isa);
  if (!isa)
  {
    v3 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink;
    v4 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
    if (v4)
    {
      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 mainRunLoop];
      [v6 removeFromRunLoop:v7 forMode:NSRunLoopCommonModes];

      v8 = *&v1[v3];
      *&v1[v3] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall AudioAppContentViewController.viewWillLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v1, "viewWillLayoutSubviews");
  sub_350BC();
}

Swift::Void __swiftcall AudioAppContentViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AudioAppContentViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v3 = [(objc_class *)isa userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!isa || v3 != v5)
  {
    sub_37D6C(*(v1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state));
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_350BC()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;
  v16 = v15;

  v87.origin.x = sub_39FCC(v5, v7, v9, v11, v14, v16);
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  MidX = CGRectGetMidX(v87);
  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  MidY = CGRectGetMidY(v88);
  v23 = [objc_allocWithZone(CAShapeLayer) init];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = result;
  [result bounds];
  v26 = v25;
  v28 = v27;

  v89.origin.x = sub_39FCC(0.0, 0.0, v26, v28, 0.0, 0.0);
  v29 = CGPathCreateWithRect(v89, 0);
  [v23 setPath:v29];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = result;
  v31 = [result layer];

  [v31 setMask:v23];
  v32 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringsContainerView];
  result = [v1 view];
  if (result)
  {
    v33 = result;
    v75 = v23;
    [result bounds];

    [v32 bounds];
    [v32 setBounds:?];
    [v32 setCenter:{MidX, MidY}];
    v34 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed;
    if (v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isPressed] != 1 || (v35 = 1.0, v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state] != 1))
    {
      v35 = 0.5;
    }

    [v32 setAlpha:v35];
    if (v1[v34])
    {
      v36 = 0.8;
    }

    else
    {
      v36 = 1.0;
    }

    v37 = *&v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView];
    [v37 setCenter:{MidX, MidY}];
    [v37 bounds];
    [v37 setBounds:?];
    v38 = [v37 layer];
    [v37 bounds];
    v80 = v1;
    [v38 setCornerRadius:CGRectGetHeight(v90) * 0.5];

    v39 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state;
    v40 = v1[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_state];
    v41 = swift_allocObject();
    *(v41 + 16) = 3;
    *(v41 + 17) = v40;
    v42 = objc_allocWithZone(UIColor);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_3A3C4;
    *(v43 + 24) = v41;
    v85 = sub_3A3C8;
    v86 = v43;
    aBlock = _NSConcreteStackBlock;
    v82 = 1107296256;
    v83 = sub_392C8;
    v84 = &unk_6E3F8;
    v44 = _Block_copy(&aBlock);

    v45 = [v42 initWithDynamicProvider:v44];

    _Block_release(v44);
    [v37 setBackgroundColor:v45];

    v46 = *&v80[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerFillView];
    [v46 setCenter:{MidX, MidY}];
    [v37 bounds];
    [v46 bounds];
    [v46 setBounds:?];
    v47 = [v46 layer];
    [v46 bounds];
    v48 = v80;
    [v47 setCornerRadius:CGRectGetHeight(v91) * 0.5];

    v49 = objc_opt_self();
    v50 = swift_allocObject();
    *(v50 + 16) = v80;
    *(v50 + 24) = v36;
    *(v50 + 32) = MidX;
    *(v50 + 40) = MidY;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_3A2BC;
    *(v51 + 24) = v50;
    v85 = sub_3A2DC;
    v86 = v51;
    aBlock = _NSConcreteStackBlock;
    v82 = 1107296256;
    v83 = sub_2C114;
    v84 = &unk_6E470;
    v52 = _Block_copy(&aBlock);
    v53 = v80;

    [v49 performWithoutAnimation:v52];
    _Block_release(v52);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
    }

    else
    {
      v54 = *&v53[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView];
      v55 = v80[v39];
      v56 = swift_allocObject();
      *(v56 + 16) = 2;
      *(v56 + 17) = v55;
      v57 = objc_allocWithZone(UIColor);
      v58 = swift_allocObject();
      *(v58 + 16) = sub_3A3C4;
      *(v58 + 24) = v56;
      v85 = sub_3A3C8;
      v86 = v58;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_392C8;
      v84 = &unk_6E4E8;
      v59 = _Block_copy(&aBlock);

      v60 = [v57 initWithDynamicProvider:v59];

      _Block_release(v59);
      [v54 setTintColor:v60];

      sub_35C14();
      v48 = *&v53[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_rings];
      v79 = v39;
      if (!(v48 >> 62))
      {
        result = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
LABEL_15:
          if (result >= 1)
          {
            v61 = 0;
            v76 = v48 & 0xC000000000000001;
            v77 = result;
            v78 = v48;
            do
            {
              if (v76)
              {
                v62 = sub_42AF8();
              }

              else
              {
                v62 = *(v48 + 8 * v61 + 32);
              }

              v61 = v61 + 1;
              [*(v62 + 16) setCenter:{MidX, MidY}];
              sub_2D124(&qword_81D00);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_5F5D0;
              v64 = v80[v79];
              v65 = swift_allocObject();
              *(v65 + 16) = 4;
              *(v65 + 17) = v64;
              v66 = objc_allocWithZone(UIColor);
              v67 = swift_allocObject();
              *(v67 + 16) = sub_3A3C4;
              *(v67 + 24) = v65;
              v85 = sub_3A3C8;
              v86 = v67;
              aBlock = _NSConcreteStackBlock;
              v82 = 1107296256;
              v83 = sub_392C8;
              v84 = &unk_6E560;
              v68 = _Block_copy(&aBlock);

              v69 = [v66 initWithDynamicProvider:v68];

              _Block_release(v68);
              *(inited + 32) = v69;
              LOBYTE(v65) = v80[v79];
              v70 = swift_allocObject();
              *(v70 + 16) = 5;
              *(v70 + 17) = v65;
              v71 = objc_allocWithZone(UIColor);
              v72 = swift_allocObject();
              *(v72 + 16) = sub_3A3C4;
              *(v72 + 24) = v70;
              v85 = sub_3A3C8;
              v86 = v72;
              aBlock = _NSConcreteStackBlock;
              v82 = 1107296256;
              v83 = sub_392C8;
              v84 = &unk_6E5D8;
              v73 = _Block_copy(&aBlock);

              v74 = [v71 initWithDynamicProvider:v73];

              _Block_release(v73);
              *(inited + 40) = v74;
              GradientView.colors.setter(inited);

              v48 = v78;
            }

            while (v77 != v61);
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
      }
    }

    result = sub_42B88();
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_35B6C(uint64_t a1, CGFloat a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView);
  [v7 sizeToFit];
  CGAffineTransformMakeScale(&v9, a2, a2);
  [v7 setTransform:&v9];
  return [v7 setCenter:{a3, a4}];
}

void sub_35C14()
{
  v1 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView];
  v3 = v1;
  [v2 frame];
  MinY = CGRectGetMinY(v44);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  [v5 safeAreaInsets];
  v8 = v7;

  v42 = v3;
  [v42 bounds];
  if (MinY - (42.0 - v8 + -18.0) < v9)
  {
    *(v42 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown) = 0;
    [v42 setNeedsLayout];
  }

  if (*(v42 + OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_arrowPointingDown) != 1)
  {
    [v2 frame];
    MaxY = CGRectGetMaxY(v48);
    v25 = [v0 view];
    if (v25)
    {
      v26 = v25;
      v27 = MaxY + 2.0;
      [v25 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v49.origin.x = v29;
      v49.origin.y = v31;
      v49.size.width = v33;
      v49.size.height = v35;
      v36 = CGRectGetMaxY(v49) + -17.0;
      [v42 bounds];
      v37 = v36 - CGRectGetHeight(v50);
      if (v37 >= v27)
      {
        v38 = v27;
      }

      else
      {
        v38 = v37;
      }

      [*&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView] center];
      v40 = v39;
      [v42 frame];
      v23 = v40;
      v15 = v38 + v41;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v10 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_centerView];
  [v10 frame];
  v11 = CGRectGetMinY(v45);
  [v42 frame];
  Height = CGRectGetHeight(v46);
  v13 = [v0 view];
  if (!v13)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  v15 = floor(v11 + -9.0);
  v16 = v15 - Height;
  [v13 safeAreaInsets];
  v18 = v17;

  if (v16 < 42.0 - v18 + -18.0)
  {
    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      [v19 safeAreaInsets];
      v22 = v21;

      [v42 frame];
      v15 = 42.0 - v22 + -18.0 + CGRectGetHeight(v47);
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_10:
  [v10 center];
LABEL_17:
  [v42 setCenter:{v23, v15}];
}

char *sub_35F54()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MaxY = CGRectGetMaxY(v29);
  [*&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_iconView] frame];
  MidY = CGRectGetMidY(v30);
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = MaxY - (MidY + 17.0);
  [result bounds];
  v16 = v15;

  v17 = [objc_allocWithZone(type metadata accessor for AudioAppContentViewController.CalloutView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxWidth] = v16;
  *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_maxHeight] = v14;
  v18 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpText + 8];
  v19 = &v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_text];
  *v19 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpText];
  *(v19 + 1) = v18;

  v20 = OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView;
  v21 = *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_labelView];
  if (v18)
  {

    v22 = sub_42968();
  }

  else
  {
    v22 = 0;
  }

  [v21 setText:v22];

  [v17 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_labelColor];
  v24 = *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textColor];
  *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_textColor] = v23;
  v25 = v23;

  [*&v17[v20] setTextColor:v25];
  v26 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_popoverColor];
  v27 = *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backdropColor];
  *&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backdropColor] = v26;
  v28 = v26;

  [*&v17[OBJC_IVAR____TtCC22AudioMessagesExtension29AudioAppContentViewControllerP33_6C80B9CA6D0C59A10BF4E668E4172F5C11CalloutView_backgroundView] setBackgroundColor:v28];
  [v17 sizeToFit];
  return v17;
}

void sub_361C4()
{
  v101 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink;
  v1 = *&v0[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  if (!v1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v1 duration];
  v3 = v2;
  v100 = v0;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v103.origin.x = v7;
  v103.origin.y = v9;
  v103.size.width = v11;
  v103.size.height = v13;
  if (CGRectGetHeight(v103) <= 0.0)
  {
    return;
  }

  v14 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpPresentTime];
  if ((v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpPresentTime + 8] & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible;
    if ((v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible] & 1) == 0)
    {
      v16 = *&v100[v101];
      if (!v16)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v17 = *v14;
      [v16 targetTimestamp];
      if (v17 < v18)
      {
        v100[v15] = 1;
        *v14 = 0.0;
        *(v14 + 8) = 1;
        v19 = sub_35F54();
        sub_35C14();
        v20 = [v100 view];
        if (!v20)
        {
LABEL_72:
          __break(1u);
          return;
        }

        v21 = v20;
        [v20 addSubview:v19];

        v22 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView];
        *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView] = v19;
        v23 = v19;

        [v23 setAlpha:0.0];
        CGAffineTransformMakeScale(&aBlock, 0.01, 0.01);
        [v23 setTransform:&aBlock];
        v24 = objc_opt_self();
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        *(v25 + 24) = 1;
        *&aBlock.tx = sub_3A378;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_3D178;
        *&aBlock.d = &unk_6E0D8;
        v26 = _Block_copy(&aBlock);
        v27 = v23;

        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = v27;
        *&aBlock.tx = sub_3A358;
        *&aBlock.ty = v28;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_3D1BC;
        *&aBlock.d = &unk_6E128;
        v29 = _Block_copy(&aBlock);
        v30 = v27;

        [v24 animateWithDuration:6 delay:v26 usingSpringWithDamping:v29 initialSpringVelocity:0.65 options:0.0 animations:0.78 completion:0.0];
        _Block_release(v29);
        _Block_release(v26);
      }
    }
  }

  v31 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpDismissTime];
  if ((v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpDismissTime + 8] & 1) == 0)
  {
    v32 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible;
    if (v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isHelpVisible] == 1)
    {
      v33 = *&v100[v101];
      if (!v33)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v34 = *v31;
      [v33 targetTimestamp];
      if (v34 < v35)
      {
        v100[v32] = 0;
        *v31 = 0.0;
        *(v31 + 8) = 1;
        v36 = OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView;
        v37 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_helpCalloutView];
        if (v37)
        {
          v38 = v37;
          [v38 setAlpha:1.0];
          aBlock.a = 1.0;
          aBlock.b = 0.0;
          aBlock.c = 0.0;
          aBlock.d = 1.0;
          aBlock.tx = 0.0;
          aBlock.ty = 0.0;
          [v38 setTransform:&aBlock];
          v39 = objc_opt_self();
          v40 = swift_allocObject();
          *(v40 + 16) = v38;
          *(v40 + 24) = 0;
          *&aBlock.tx = sub_3A17C;
          *&aBlock.ty = v40;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_3D178;
          *&aBlock.d = &unk_6E038;
          v41 = _Block_copy(&aBlock);
          v42 = v38;

          v43 = swift_allocObject();
          *(v43 + 16) = 1;
          *(v43 + 24) = v42;
          *&aBlock.tx = sub_3A1C0;
          *&aBlock.ty = v43;
          *&aBlock.a = _NSConcreteStackBlock;
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_3D1BC;
          *&aBlock.d = &unk_6E088;
          v44 = _Block_copy(&aBlock);
          v45 = v42;

          [v39 animateWithDuration:6 delay:v41 usingSpringWithDamping:v44 initialSpringVelocity:0.65 options:0.0 animations:0.78 completion:0.0];

          _Block_release(v44);
          _Block_release(v41);
          v46 = *&v100[v36];
          *&v100[v36] = 0;
        }
      }
    }
  }

  if ((v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime + 8] & 1) == 0)
  {
    v47 = *&v100[v101];
    if (!v47)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v48 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_ringStartTime];
    [v47 targetTimestamp];
    if (v48 < v49)
    {
      v50 = v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isCollapsed];
      v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isCollapsed] = 0;
      if (v50 == 1)
      {
        v51 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_rings];
        if (v51 >> 62)
        {
          v52 = sub_42B88();
          if (!v52)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
          if (!v52)
          {
            goto LABEL_29;
          }
        }

        if (v52 >= 1)
        {
          v53 = 0;
          do
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_42AF8();
            }

            else
            {
            }

            ++v53;
            *(v54 + 24) = 0;
            *(v54 + 32) = 0;
          }

          while (v52 != v53);
          goto LABEL_29;
        }

        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }
  }

LABEL_29:
  if (v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_isCollapsed])
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  v56 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_collapsedSpring];
  swift_beginAccess();
  v56[3] = v55;
  Spring.update(dt:)(v3);
  swift_endAccess();
  v57 = [v100 view];
  if (!v57)
  {
    goto LABEL_67;
  }

  v58 = v57;
  [v57 bounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;

  v104.origin.x = v60;
  v104.origin.y = v62;
  v104.size.width = v64;
  v104.size.height = v66;
  Width = CGRectGetWidth(v104);
  v68 = [v100 view];
  if (!v68)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v69 = v68;
  [v68 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v105.origin.x = v71;
  v105.origin.y = v73;
  v105.size.width = v75;
  v105.size.height = v77;
  Height = CGRectGetHeight(v105);
  v79 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_recorder] + OBJC_IVAR____TtC22AudioMessagesExtension13AudioRecorder_power;
  swift_beginAccess();
  if (*(v79 + 4))
  {
    v80 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_powerIntensitySpring];
    swift_beginAccess();
    *(v80 + 2) = 0;
    *(v80 + 4) = 0;
  }

  else
  {
    v81 = ((*v79 + 60.0) / 50.0);
    v82 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_powerIntensitySpring];
    swift_beginAccess();
    v82[3] = v81;
    Spring.update(dt:)(v3);
    swift_endAccess();
  }

  v83 = &v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_powerIntensitySpring];
  swift_beginAccess();
  v84 = v83[2];
  v85 = *&v100[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_rings];
  if (v85 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)); i; i = sub_42B88())
  {
    v87 = 0;
    v88 = sqrt(Width * Width + Height * Height);
    Width = v84 * 3.0 + 1.0;
    v89 = v85 & 0xC000000000000001;
    Height = v88 + -80.0;
    while (v89)
    {
      v94 = sub_42AF8();
      v95 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_58;
      }

LABEL_46:
      if (v87 && (*(v94 + 32) & 1) == 0)
      {
        if (v89)
        {
          v96 = sub_42AF8();
        }

        else
        {
          if (v87 - 1 >= *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_60;
          }
        }

        v97 = *(v96 + 24);

        if (v97 < 0.5)
        {
          v90 = (v94 + 24);
LABEL_41:
          *v90 = 0;
          v91 = 0.0;
          goto LABEL_42;
        }
      }

      *(v94 + 32) = 1;
      v98 = *&v100[v101];
      if (!v98)
      {
        goto LABEL_64;
      }

      [v98 duration];
      v90 = (v94 + 24);
      v91 = *(v94 + 24) + Width * (v99 / 3.0);
      *(v94 + 24) = v91;
      if (v91 > 1.0)
      {
        goto LABEL_41;
      }

LABEL_42:
      v84 = Height * (v91 * (1.0 - v56[2])) + 80.0;
      v92 = *(v94 + 16);
      [v92 bounds];
      [v92 setBounds:?];

      v93 = [*(v94 + 16) layer];
      [*(v94 + 16) bounds];
      [v93 setCornerRadius:CGRectGetHeight(v106) * 0.5];

      [*(v94 + 16) setAlpha:(1.0 - *(v94 + 24)) * (1.0 - v56[2])];

      ++v87;
      if (v95 == i)
      {
        return;
      }
    }

    if (v87 >= *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_59;
    }

    v94 = *(v85 + 8 * v87 + 32);

    v95 = v87 + 1;
    if (!__OFADD__(v87, 1))
    {
      goto LABEL_46;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }
}