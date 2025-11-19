@interface MKPuckAnnotationView
@end

@implementation MKPuckAnnotationView

uint64_t __37___MKPuckAnnotationView__removePulse__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1224) removeFromSuperlayer];
  }

  return result;
}

void __42___MKPuckAnnotationView__updateGlyphImage__block_invoke(uint64_t a1)
{
  [objc_opt_class() innerDiameter];
  v3 = v2 + -8.0;
  [*(*(a1 + 32) + 1040) size];
  v4 = v3;
  if (v5 < v3)
  {
    [*(*(a1 + 32) + 1040) size];
    v4 = v6;
  }

  [*(*(a1 + 32) + 1040) size];
  if (v7 < v3)
  {
    [*(*(a1 + 32) + 1040) size];
    v3 = v8;
  }

  [*(*(a1 + 32) + 1176) bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [*(a1 + 32) layer];
  [v17 contentsScale];
  [*(*(a1 + 32) + 1056) setFrame:{round(v18 * (v10 + (v14 - v4) * 0.5)) / v18, round(v18 * (v12 + (v16 - v3) * 0.5)) / v18, v4, v3}];

  v22 = *(*(a1 + 32) + 1040);
  if ([v22 renderingMode] == 1)
  {
    v19 = v22;
  }

  else
  {
    v20 = [v22 _mapkit_templateImageWithTintColor:*(*(a1 + 32) + 1048)];

    v19 = v20;
  }

  v23 = v19;
  v21 = v19;
  [*(*(a1 + 32) + 1056) setContents:{objc_msgSend(v23, "CGImage")}];
}

uint64_t __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1120) removeAnimationForKey:@"show/hide"];
  [*(*(a1 + 32) + 1120) removeFromSuperlayer];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1120);
  *(v2 + 1120) = 0;

  [*(*(a1 + 32) + 1112) removeFromSuperlayer];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1112);
  *(v4 + 1112) = 0;

  [*(*(a1 + 32) + 1232) removeAnimationForKey:@"show/hide"];
  v6 = *(*(a1 + 32) + 1024);

  return [v6 removeAnimationForKey:@"show/hide"];
}

id __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6979398] layer];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1112);
  *(v3 + 1112) = v2;

  [*(*(a1 + 32) + 1112) _mapkit_setActionsToRemoveDefaultImplicitActions];
  [*(*(a1 + 32) + 1080) position];
  [*(*(a1 + 32) + 1112) setPosition:?];
  v5 = [*(a1 + 32) layer];
  [v5 insertSublayer:*(*(a1 + 32) + 1112) above:*(*(a1 + 32) + 1024)];

  v6 = [*(a1 + 32) _createFakePuckLayer];
  [v6 setPosition:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1024);
  if (v8)
  {
    [v8 transform];
    v7 = *(a1 + 32);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  v9 = *(v7 + 1112);
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  [v9 setTransform:&v20];
  v10 = *(*(a1 + 32) + 1096);
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  [v6 setTransform:{&v20, v12, v13, v14, v15, v16, v17, v18, v19}];
  [*(*(a1 + 32) + 1112) addSublayer:v6];

  return v6;
}

void __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  [*(a1 + 40) removeFromSuperlayer];
  v2 = *(a1 + 48);
  v3 = *(v2 + 1120);
  if (*(a1 + 32) == v3)
  {
    *(v2 + 1120) = 0;

    v4 = *(a1 + 48);
    v5 = *(v4 + 1112);
    *(v4 + 1112) = 0;
  }
}

void __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_4(uint64_t a1)
{
  v2 = +[MKThreadContext currentContext];
  [v2 _CA_setDisableActions:1];

  [*(*(a1 + 32) + 1224) setHidden:0];
  [*(a1 + 40) removeFromSuperlayer];
  [*(a1 + 48) removeFromSuperlayer];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1120);
  if (*(a1 + 40) == v4)
  {
    *(v3 + 1120) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 1112);
    *(v5 + 1112) = 0;

    [*(*(a1 + 32) + 1232) removeAnimationForKey:@"show/hide"];
  }

  v7 = +[MKThreadContext currentContext];
  [v7 _CA_setDisableActions:0];
}

void __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLegacyConfiguration];
}

void __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (_MKLinkedOnOrAfterReleaseSet(3081))
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 0;
    }

    *(v3 + 1136) = BOOL;
    [*(v3 + 154) setFaux3DEnabled:?];
    [v3 _updateBaseImage];
    [v3 _updateShadowImage];
    [v3 _createOrRemoveFaux3DRingsIfNecessary];
    [v3 _updateFaux3DColors];
    [v3 _updateFaux3DLayers];
    WeakRetained = v3;
  }
}

void __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  GEOConfigGetDouble();
  [WeakRetained _setMinimumAccuracyRadius:?];
}

void __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    GEOConfigGetDouble();
    WeakRetained[175] = v1;
    [WeakRetained _updateFromMap];
  }
}

@end