void sub_129F0C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v7 = v1;
    if ([v1 effectiveUserInterfaceLayoutDirection])
    {
      v2 = [v7 layer];
      v3 = [v2 flipsHorizontalAxis];

      v1 = v7;
      if (v3)
      {
        goto LABEL_8;
      }

      v4 = [v7 layer];
      [v4 setFlipsHorizontalAxis:1];
    }

    else
    {
      v5 = [v7 layer];
      v6 = [v5 flipsHorizontalAxis];

      v1 = v7;
      if (!v6)
      {
        goto LABEL_8;
      }

      v4 = [v7 layer];
      [v4 setFlipsHorizontalAxis:0];
    }

    v1 = v7;
  }

LABEL_8:
}

void sub_129FFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = [*(v2 + 136) identifierForViewAtIndex:*(a1 + 48)];
  v5 = [v3 viewStateForIdentifier:v4];

  [*(a1 + 40) viewStateRestore:v5];
}

void sub_12A7D0(uint64_t a1)
{
  [*(a1 + 32) resumeReuseOfView:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

int64_t sub_12A828(id a1, UIView *a2, UIView *a3)
{
  v4 = a3;
  v5 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, a2);
  v6 = TUIProtocolCast(&OBJC_PROTOCOL___TUIReusableRenderView, v4);
  v7 = v6;
  if (v5 | v6)
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (v8)
    {
      if (!v5 || v6)
      {
        v10 = [v5 layoutAttributes];
        v11 = [v10 zIndex];

        v12 = [v7 layoutAttributes];
        v13 = [v12 zIndex];

        v14 = -1;
        if (v11 >= v13)
        {
          v14 = 1;
        }

        if (v11 == v13)
        {
          v9 = 0;
        }

        else
        {
          v9 = v14;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_12BBF4(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:a3];
  [v18 frame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (!CGRectIsEmpty(v20))
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    if (CGRectIntersectsRect(*(a1 + 40), v21))
    {
      v10 = 1;
LABEL_7:
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:a3];
      v16 = *(a1 + 32);
      WeakRetained = objc_loadWeakRetained((v16 + 160));
      [v5 updateVisible:v10 bounds:v15 host:v16 liveTransformResolver:WeakRetained factory:*(a1 + 32) feedView:{v11, v12, v13, v14}];

      goto LABEL_8;
    }
  }

  if (([v5 visible] & 1) != 0 || objc_msgSend(v18, "containsLiveTransforms"))
  {
    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_12BE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:?];
  v5 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:a3];
  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((v6 + 160));
  [v8 updateInvalidatedWithHost:v5 liveTransformResolver:v6 factory:WeakRetained feedView:*(a1 + 32)];
}

void sub_12C270(id *a1)
{
  v2 = a1[4];
  v3 = v2[3];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_12C584;
  v21[3] = &unk_2622B0;
  v21[4] = v2;
  [v3 enumerateObjectsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1[4] + 4);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * v7) removeFromSuperview];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  objc_storeStrong(a1[4] + 19, a1[5]);
  [*(a1[4] + 23) setRenderModel:a1[5] withInvalidationContext:0];
  [*(a1[4] + 24) setRenderModel:a1[5] withInvalidationContext:0];
  [*(a1[4] + 25) setRenderModel:a1[5] withInvalidationContext:0];
  v8 = [*(a1[4] + 19) sections];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_12C684;
  v11[3] = &unk_262348;
  v12 = a1[6];
  v9 = a1[7];
  v10 = a1[4];
  v13 = v9;
  v14 = v10;
  v15 = a1[8];
  v16 = a1[9];
  [v8 enumerateObjectsUsingBlock:v11];

  [*(a1[4] + 19) size];
  [a1[4] setContentSize:?];
}

void sub_12C584(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v8 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:a3];
  v9 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((v9 + 160));
  [v11 updateVisible:0 bounds:v8 host:v9 liveTransformResolver:WeakRetained factory:*(a1 + 32) feedView:{CGRectNull.origin.x, y, width, height}];
}

void sub_12C684(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v6 = [TUIFeedSectionView alloc];
  [v13 frame];
  v7 = [(TUIFeedSectionView *)v6 initWithFrame:?];
  v8 = *(a1 + 32);
  v9 = v8;
  if (!v8)
  {
    v3 = [v13 entry];
    v9 = [v3 uuid];
  }

  [(TUIFeedSectionView *)v7 setTui_querySectionUUID:v9];
  if (!v8)
  {
  }

  v10 = *(a1 + 40);
  v11 = v10;
  if (!v10)
  {
    v3 = [v13 entry];
    v11 = [v3 uid];
  }

  [(TUIFeedSectionView *)v7 setTui_querySectionUID:v11];
  if (!v10)
  {
  }

  [(TUIFeedSectionView *)v7 setRenderModel:v13];
  TUISectionViewApplyRenderModelSection(v7, v13);
  [*(a1 + 48) addSectionView:v7 respectingZIndex:1];
  [*(a1 + 56) addObject:v7];
  v12 = objc_alloc_init(_TUIFeedSectionModel);
  [(_TUIFeedSectionModel *)v12 setRenderModel:v13];
  [(_TUIFeedSectionModel *)v12 setSectionIndex:a3];
  -[_TUIFeedSectionModel setSemanticContentAttribute:](v12, "setSemanticContentAttribute:", [*(a1 + 48) semanticContentAttribute]);
  [(_TUIFeedSectionModel *)v12 setCurrentViewState:*(*(a1 + 48) + 224)];
  [*(a1 + 64) addObject:v12];
}

void sub_12CD34(uint64_t a1)
{
  MidX = CGRectGetMidX(*(a1 + 40));
  [*(a1 + 32) contentOffset];
  v4 = v3;
  MidY = CGRectGetMidY(*(a1 + 40));
  [*(a1 + 32) contentOffset];
  v7 = v6;
  v8 = [*(a1 + 32) superview];
  v9 = MidX - v4;
  v10 = [v8 _accessibilityHitTest:0 withEvent:{v9, MidY - v7}];

  v11 = TUIDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17.x = v9;
    v17.y = MidY - v7;
    v12 = NSStringFromCGPoint(v17);
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Focusing VoiceOver cursor at %@ so it will land on %@", &v13, 0x16u);
  }

  if (v10)
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v10);
  }
}

void sub_12DD3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:a3];
  v8 = [v7 renderModel];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v5 frame];
  v31.origin.x = v13;
  v31.origin.y = v14;
  v31.size.width = v15;
  v31.size.height = v16;
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v11;
  v30.size.height = v12;
  v17 = CGRectIntersectsRect(v30, v31);
  v18 = [*(a1 + 40) objectForKeyedSubscript:v6];
  v19 = v18;
  if (v17)
  {
    if (!v18)
    {
      v20 = [NSIndexPath tui_indexPathForRow:0 inSection:a3];
      v21 = [v8 layoutAttributesForViewModel:v5 atIndexPath:v20 withLiveTransformResolver:*(a1 + 32)];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
      v23 = [WeakRetained viewFactoryDequeueReusableSubviewWithReuseIdentifier:@"TUIReuseIdentifierStatsIndicatorView" indexPath:v20 host:*(a1 + 32)];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_12DFF8;
      v26[3] = &unk_261950;
      v19 = v23;
      v27 = v19;
      v24 = v21;
      v25 = *(a1 + 32);
      v28 = v24;
      v29 = v25;
      [UIView performWithoutAnimation:v26];
      [*(a1 + 40) setObject:v19 forKey:v6];
    }
  }

  else
  {
    [v18 removeFromSuperview];
    [*(a1 + 40) removeObjectForKey:v6];
  }
}

id sub_12DFF8(uint64_t a1)
{
  TUIReusableSubviewApplyLayoutAttributes(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 addSubview:v3];
}

void sub_12E428(uint64_t a1)
{
  v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 40), "count")}];
  v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 40), "count")}];
  v24 = [*(a1 + 40) matchingSectionUUID];
  [*(a1 + 40) matchingSectionUID];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v23 = v47 = 0;
  v2 = [*(a1 + 40) sections];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_12E9C0;
  v33[3] = &unk_262410;
  v33[4] = *(a1 + 32);
  v40 = &v44;
  v41 = v48;
  v42 = *(a1 + 64);
  v34 = *(a1 + 48);
  v43 = *(a1 + 72);
  v35 = *(a1 + 56);
  v3 = v24;
  v36 = v3;
  v4 = v23;
  v37 = v4;
  v5 = v26;
  v38 = v5;
  v6 = v25;
  v39 = v6;
  [v2 enumerateObjectsUsingBlock:v33];

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_12F1A4;
  v32[3] = &unk_262438;
  v32[4] = v7;
  [v8 enumerateObjectsUsingBlock:v32];
  if (*(v45 + 24) == 1)
  {
    v9 = [*(a1 + 32) subviews];
    v10 = [v9 sortedArrayUsingComparator:&stru_262458];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v49 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(a1 + 32) bringSubviewToFront:*(*(&v28 + 1) + 8 * v14)];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v49 count:16];
      }

      while (v12);
    }
  }

  v15 = [v5 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  *(v16 + 32) = v15;

  v18 = [v6 copy];
  v19 = *(a1 + 32);
  v20 = *(v19 + 24);
  *(v19 + 24) = v18;

  [*(a1 + 32) setRenderModel:*(a1 + 40)];
  v21 = [*(a1 + 32) _isAutomaticContentOffsetAdjustmentEnabled];
  if (*(a1 + 64))
  {
    [*(a1 + 32) _setAutomaticContentOffsetAdjustmentEnabled:0];
  }

  [*(*(a1 + 32) + 152) size];
  [*(a1 + 32) setContentSize:?];
  [*(a1 + 32) _setAutomaticContentOffsetAdjustmentEnabled:v21];
  *(*(a1 + 32) + 48) |= 1u;
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v22 = [*(a1 + 40) sections];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_12F45C;
  v27[3] = &unk_262320;
  v27[4] = *(a1 + 32);
  [v22 enumerateObjectsUsingBlock:v27];

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);
}

void sub_12E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

void sub_12E9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 40) mapToIndex:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [TUIFeedSectionView alloc];
    [v5 frame];
    v8 = [(TUIFeedSectionView *)v7 initWithFrame:?];
    v9 = *(a1 + 56);
    v10 = v9;
    if (!v9)
    {
      v7 = [v5 entry];
      v10 = [(TUIFeedSectionView *)v7 uuid];
    }

    [(TUIFeedSectionView *)v8 setTui_querySectionUUID:v10];
    if (!v9)
    {
    }

    v11 = *(a1 + 64);
    v12 = v11;
    if (!v11)
    {
      v7 = [v5 entry];
      v12 = [(TUIFeedSectionView *)v7 uid];
    }

    [(TUIFeedSectionView *)v8 setTui_querySectionUID:v12];
    if (!v11)
    {
    }

    [(TUIFeedSectionView *)v8 setRenderModel:v5];
    TUISectionViewApplyRenderModelSection(v8, v5);
    [*(a1 + 32) addSectionView:v8 respectingZIndex:(*(*(*(a1 + 88) + 8) + 24) & 1) == 0];
    v13 = objc_alloc_init(_TUIFeedSectionModel);
    goto LABEL_33;
  }

  v13 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:v6];
  v8 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:v6];
  v14 = [(TUIFeedSectionView *)v8 renderModel];
  v15 = v14;
  if (!v14)
  {
    v16 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  [v14 config];
  v16 = v43;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_13:
  [v5 config];
  v17 = v40;
LABEL_16:

  if (v16 != v17)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  v33 = TUIAnimationAnimationPhaseForSectionView(v5, v8, *(a1 + 104));
  if ([v33 isEqualToString:@"update"] && (-[TUIFeedSectionView frame](v8, "frame"), v18 > 0.0))
  {
    [(TUIFeedSectionView *)v8 frame];
    MaxY = CGRectGetMaxY(v44);
    [v5 frame];
    v20 = 0;
    *(*(*(a1 + 96) + 8) + 24) = MaxY - CGRectGetMaxY(v45);
  }

  else
  {
    v20 = 1;
  }

  v21 = TUIAnimationCollectionViewAnimationForSectionView(v5, v8, *(a1 + 104));
  if (v21)
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      dispatch_group_enter(v22);
    }

    [(TUIFeedSectionView *)v8 setRenderModel:v5];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_12F078;
    v37[3] = &unk_2623E8;
    v38 = v8;
    v39 = *(a1 + 40);
    (v21)[2](v21, v37);
  }

  else
  {
    v23 = [(TUIFeedSectionView *)v8 layer];
    v24 = [v23 animationKeys];
    v25 = [v24 count];

    if (!v25)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_12F198;
      v34[3] = &unk_25F7C8;
      v35 = v8;
      v36 = v5;
      [UIView performWithoutAnimation:v34];
    }

    [(TUIFeedSectionView *)v8 setRenderModel:v5];
  }

  if ((v20 & *(a1 + 112)) == 1 && *(*(*(a1 + 96) + 8) + 24) != 0.0)
  {
    v26 = [*(a1 + 48) animationForKeyPath:@"position"];
    [v26 setRemovedOnCompletion:1];
    [v26 setAdditive:1];
    v27 = [NSValue valueWithCGPoint:0.0, *(*(*(a1 + 96) + 8) + 24)];
    [v26 setFromValue:v27];

    v28 = [NSValue valueWithCGPoint:CGPointZero.x, CGPointZero.y];
    [v26 setToValue:v28];

    v29 = [(TUIFeedSectionView *)v8 layer];
    v30 = [v29 tui_uniqueAnimationKeyWithPrefix:@"additivePosition"];

    v31 = [(TUIFeedSectionView *)v8 layer];
    [v31 addAnimation:v26 forKey:v30];
  }

LABEL_33:
  v32 = [(_TUIFeedSectionModel *)v13 renderModel];
  [(_TUIFeedSectionModel *)v13 setPreviousRenderModel:v32];

  [(_TUIFeedSectionModel *)v13 setRenderModel:v5];
  [(_TUIFeedSectionModel *)v13 setSectionIndex:a3];
  -[_TUIFeedSectionModel setSemanticContentAttribute:](v13, "setSemanticContentAttribute:", [*(a1 + 32) semanticContentAttribute]);
  [(_TUIFeedSectionModel *)v13 setCurrentViewState:*(*(a1 + 32) + 224)];
  [*(a1 + 72) addObject:v8];
  [*(a1 + 80) addObject:v13];
}

void sub_12F078(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12F12C;
  v3[3] = &unk_262240;
  v4 = *(a1 + 32);
  [UIView performWithoutAnimation:v3];
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
  }
}

void sub_12F12C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 renderModel];
  TUISectionViewApplyRenderModelSection(v1, v2);
}

void sub_12F1A4(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if ([*(*(a1 + 32) + 40) mapFromIndex:a3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:a3];
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v9 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((v9 + 160));
    [v5 updateVisible:0 bounds:v11 host:v9 liveTransformResolver:WeakRetained factory:*(a1 + 32) feedView:{CGRectNull.origin.x, y, width, height}];

    [v11 removeFromSuperview];
  }
}

int64_t sub_12F2D0(id a1, UIView *a2, UIView *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = TUIDynamicCast(v6, v4);
  v8 = objc_opt_class();
  v9 = TUIDynamicCast(v8, v5);
  v10 = v9;
  if (v7 | v9)
  {
    if (v7 || !v9)
    {
      if (!v7 || v9)
      {
        v13 = [v7 renderModel];
        v14 = v13;
        if (v13)
        {
          [v13 config];
          v15 = v20;
        }

        else
        {
          v15 = 0;
          v20 = 0;
        }

        v16 = [v10 renderModel];
        v17 = v16;
        if (v16)
        {
          [v16 config];
          v18 = v20;
        }

        else
        {
          v18 = 0;
        }

        v19 = -1;
        if (v15 >= v18)
        {
          v19 = 1;
        }

        if (v15 == v18)
        {
          v11 = 0;
        }

        else
        {
          v11 = v19;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_12F418(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_12F45C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:?];
  [v1 setPreviousRenderModel:0];
}

void sub_130DCC(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 physicalMemory];

  if (vcvtd_n_f64_u64(v2, 0x1EuLL) >= 2.0)
  {
    qword_2E4BE8 = 0x3FE0000000000000;
  }
}

uint64_t sub_130E34(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_3AE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_130EAC(a1, i + 2);
  }

  return a1;
}

void *sub_130EAC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1310D8(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_13118C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_1313BC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_131AB8(id a1)
{
  v1 = objc_alloc_init(TUIDragController);
  v2 = qword_2E6570;
  qword_2E6570 = v1;
}

id sub_13248C(void *a1, void *a2, void *a3, double a4, double a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a1;
  v12 = objc_opt_class();
  v13 = [v11 _privateLocalContext];

  v14 = TUIDynamicCast(v12, v13);

  v15 = [v14 dragInfo];
  v16 = v10;
  v17 = [v15 arguments];
  v18 = [v17 objectForKeyedSubscript:@"clearBackground"];
  v19 = [v18 BOOLValue];

  v20 = v16;
  if (v19)
  {
    v20 = +[UIColor clearColor];
  }

  if (v20)
  {
    v21 = objc_alloc_init(UIDragPreviewParameters);
    [v21 setBackgroundColor:v20];
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    if (v9)
    {
LABEL_8:
      v22 = [[UIDragPreviewTarget alloc] initWithContainer:v9 center:{a4, a5}];
      v23 = [UITargetedDragPreview alloc];
      v24 = [v14 view];
      v25 = [v23 initWithView:v24 parameters:v21 target:v22];

      goto LABEL_11;
    }
  }

  else
  {
    v21 = objc_alloc_init(UIDragPreviewParameters);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v26 = [UITargetedDragPreview alloc];
  v22 = [v14 view];
  v25 = [v26 initWithView:v22 parameters:v21];
LABEL_11:

  return v25;
}

id sub_132DC4(id result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    [*(result + 4) _setAlpha:*(result + 5) forSessionDragItems:1.0];
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[6];

    return [v5 _notifyDelegateOfViewDraggingStateForSession:v6 interaction:v7 dropOperation:0];
  }

  else if (!a2)
  {
    v3 = *(result + 4);
    v4 = v2[5];

    return [v3 _setAlpha:v4 forSessionDragItems:0.5];
  }

  return result;
}

id sub_132FD8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setUserInteractionEnabled:1];
}

id sub_133198(void *a1)
{
  v1 = [a1 actionHandler];
  v2 = [v1 actionsData];

  v3 = [v2 behaviorDataForTrigger:@"drag"];

  return v3;
}

void sub_1336A8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = [*(a1[6] + 32) behavior];
  v4 = [*(a1[6] + 32) arguments];
  [v2 handleActionForObject:v3 withName:v5 arguments:v4];
}

void sub_133DA4(uint64_t a1, void *a2)
{
  v3 = [a2 newUIMenuElementWithActionObject:*(a1 + 32) delegate:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) addObject:v3];
    v3 = v4;
  }
}

BOOL sub_134058(id a1, TUIImageModel *a2, NSDictionary *a3)
{
  v3 = a2;
  if ([(TUIImageModel *)v3 isLoaded])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TUIImageModel *)v3 urlString];
    v4 = v5 != 0;
  }

  return v4;
}

void sub_13427C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appendObjectsWithProtocol:&OBJC_PROTOCOL___TUIMenuItemModel toArray:*(a1 + 32)];
  }

  else
  {
    v4 = TUIInstantiationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_19BB14(v3, v4);
    }
  }
}

void *sub_1360A8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1361D4(v6, v10);
    }

    sub_4050();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1361D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_21464(a1, a2);
  }

  sub_4050();
}

uint64_t TUI::Evaluation::Variables::Globals::equivalentTo(uint64_t a1, TUI::Evaluation::Variables::Scope *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = v3 - *a3;
  if (v5 != *(a1 + 48) - *(a1 + 40))
  {
    return 0;
  }

  result = TUI::Evaluation::Variables::Scope::equivalentTo(a2, *(a1 + 24));
  if (result)
  {
    v9 = v3 == v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = v5 >> 4;
    v12 = 1;
    while (*(*(*(a1 + 40) + v10) + 16) == *(*(*a3 + v10) + 16))
    {
      result = TUI::Evaluation::Variables::Globals::equivalentTo();
      if (result)
      {
        v13 = v12 >= v11;
      }

      else
      {
        v13 = 1;
      }

      ++v12;
      v10 += 16;
      if (v13)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t TUI::Evaluation::Variables::Globals::equivalentTo(TUI::Evaluation::Variables::Globals *this, const TUI::Evaluation::Variables::Scope *a2)
{
  v2 = *(this + 3);
  if (v2 == a2)
  {
    return 1;
  }

  else
  {
    return TUI::Evaluation::Variables::Scope::equivalentTo(a2, v2);
  }
}

BOOL TUI::Evaluation::Variables::Globals::equivalentTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48) - v5;
  result = v4 == v6;
  if (v4 == v6 && v3 != v2)
  {
    v9 = v4 >> 4;
    v10 = 1;
    while (*(*v5 + 16) == *(*v2 + 16))
    {
      v11 = *(*v5 + 88);
      v12 = *(*v2 + 88);
      result = v11 == v12;
      v13 = v11 != v12 || v10++ >= v9;
      v5 += 16;
      v2 += 16;
      if (v13)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_1366BC(id a1)
{
  v1 = qword_2E6580;
  qword_2E6580 = &off_2758C8;
}

void sub_136974(id a1)
{
  v1 = qword_2E6590;
  qword_2E6590 = &off_2758F0;
}

void sub_13834C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appendObjectsWithProtocol:*(a1 + 32) toArray:*(a1 + 40)];
  }
}

void sub_13867C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_alloc_init(TUIBoxBuilder);
  (*(*(a1 + 48) + 16))();
  v4 = [(TUIBoxBuilder *)v3 finalizeModelsWithParent:0 box:0 context:*(a1 + 32)];
  if ([v4 count] == &dword_0 + 1)
  {
    v5 = *(a1 + 40);
    v6 = [v4 firstObject];
    [v5 addModel:v6 forState:v7];
  }

  else
  {
    [*(a1 + 32) reportError:1021];
  }
}

NSArray *__cdecl sub_138BA4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)v2 objectAtIndexedSubscript:v5];
      v7 = [v6 updates];
      v8 = [v7 count];

      if (v8)
      {
        break;
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        goto LABEL_7;
      }
    }

    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = [(NSArray *)v2 subarrayWithRange:v5, v4 - v5];
  }

  else
  {
LABEL_8:
    v9 = v2;
  }

  v10 = v9;

  return v10;
}

void sub_139294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1392AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1392C4(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_139460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_139544(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1395D0;
  v3[3] = &unk_2626F8;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void sub_139ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(@"Unable to copy TUIMicaPlayer. Error = %@");

    objc_end_catch();
    JUMPOUT(0x139EB4);
  }

  _Unwind_Resume(exception_object);
}

void sub_13B1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_13B1D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_13B1F0(uint64_t a1)
{
  v2 = [*(a1 + 32) children];
  v3 = [v2 firstObject];

  v4 = *(a1 + 40);
  [v3 computedTransformedSize];
  v6 = v5;
  v7 = [*(a1 + 32) computedLayoutDirection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13B2F0;
  v10[3] = &unk_262720;
  v11 = *(a1 + 40);
  v12 = v3;
  v8 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v8;
  v9 = v3;
  [v4 evaluateWithWidth:v7 layoutDirection:v10 block:v6];
}

void sub_13B2F0(uint64_t a1)
{
  v2 = [*(a1 + 32) renderModelForLayout:*(a1 + 40) kind:7];
  v3 = [v2 copyWithSection:0 offset:*(*(a1 + 48) + 112) uuid:{CGPointZero.x, CGPointZero.y}];

  v4 = *(a1 + 48);
  [*(a1 + 32) contentsScale];
  [v4 erasableInsetsForContentsScale:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_new();
  [*(a1 + 40) appendVisibleBoundsObservers:v13 axis:1 offset:0.0];
  v14 = objc_alloc_init(TUILayoutRenderModelCollector);
  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) UUID];
  [(TUILayoutRenderModelCollector *)v14 collectWithRoot:v15 options:1 entryUUID:v16];

  v17 = [TUIRenderModelCollection alloc];
  v30 = v3;
  v18 = [NSArray arrayWithObjects:&v30 count:1];
  [v3 size];
  v20 = v19;
  v22 = v21;
  v23 = *(*(a1 + 48) + 128);
  v24 = [*(a1 + 32) layoutDirection];
  v25 = [*(a1 + 32) UUID];
  v26 = [*(a1 + 32) uid];
  v27 = [(TUIRenderModelCollection *)v17 initWithContent:0 sections:v18 size:v13 insets:0 visibleBoundsObservers:v23 info:v24 anchorSet:v20 layoutDirection:v22 matchingUUID:v6 matchingUID:v8, v10, v12, v25, v26];
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;
}

int64_t sub_13C9EC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  [v4 defaultPosition];
  v7 = v6;
  [v5 defaultPosition];
  if (v7 >= v8)
  {
    [v4 defaultPosition];
    v11 = v10;
    [v5 defaultPosition];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_13CB40(void *a1, void *a2, uint64_t a3)
{
  v28 = a2;
  v5 = [v28 floatingLiveTransform];
  [v28 defaultPosition];
  v7 = v6;
  [v28 defaultPosition];
  v9 = v8;
  v10 = *(a1[4] + 40);
  if (v8 <= v10)
  {
    [v28 sectionBottomY];
    v12 = v11;
    [v5 size];
    if (v10 >= v12 - v13)
    {
      v9 = v12 - v13;
    }

    else
    {
      v9 = v10;
    }

    [v28 defaultPosition];
    if (v14 >= v9)
    {
      v9 = v14;
    }

    if ((a3 + 1) >= a1[6])
    {
      v16 = 0;
    }

    else
    {
      v15 = [*(a1[4] + 8) objectAtIndexedSubscript:?];
      v16 = v15;
      if (v15)
      {
        [v15 defaultPosition];
        v18 = v17;
        [v5 size];
        if (v9 + v19 >= v18)
        {
          [v5 size];
          v9 = v18 - v20;
        }
      }
    }
  }

  [v28 currentOffset];
  if (v22 != v7 || v21 != v9)
  {
    [v28 setCurrentOffset:{v7, v9}];
    v24 = [*(a1[4] + 16) liveTransformViewInvalidationMap];
    v25 = [v24 objectForKey:v5];

    v26 = a1[5];
    v27 = [v25 allObjects];
    [v26 invalidateIndexPaths:v27];
  }
}

id sub_13D3B8(void *a1)
{
  v1 = [a1 layoutAttributes];
  v2 = [v1 renderModel];

  return v2;
}

void sub_13DDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_13DE0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_13DE24(uint64_t a1)
{
  v2 = [*(a1 + 32) children];
  v3 = [v2 firstObject];

  v4 = *(a1 + 40);
  [v3 computedTransformedSize];
  v6 = v5;
  v7 = [*(a1 + 32) computedLayoutDirection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13DF24;
  v10[3] = &unk_262720;
  v11 = *(a1 + 40);
  v12 = v3;
  v8 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v8;
  v9 = v3;
  [v4 evaluateWithWidth:v7 layoutDirection:v10 block:v6];
}

void sub_13DF24(uint64_t a1)
{
  v2 = [*(a1 + 32) renderModelForLayout:*(a1 + 40) kind:7];
  v3 = [v2 copyWithSection:0 offset:*(*(a1 + 48) + 112) uuid:{CGPointZero.x, CGPointZero.y}];

  v4 = *(a1 + 48);
  [*(a1 + 32) contentsScale];
  [v4 erasableInsetsForContentsScale:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_new();
  [*(a1 + 40) appendVisibleBoundsObservers:v13 axis:2 offset:0.0];
  v14 = [TUIRenderModelCollection alloc];
  v27 = v3;
  v15 = [NSArray arrayWithObjects:&v27 count:1];
  [v3 size];
  v17 = v16;
  v19 = v18;
  v20 = *(*(a1 + 48) + 128);
  v21 = [*(a1 + 32) layoutDirection];
  v22 = [*(a1 + 32) UUID];
  v23 = [*(a1 + 32) uid];
  v24 = [(TUIRenderModelCollection *)v14 initWithContent:0 sections:v15 size:v13 insets:0 visibleBoundsObservers:v20 info:v21 anchorSet:v17 layoutDirection:v19 matchingUUID:v6 matchingUID:v8, v10, v12, v22, v23];
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

void sub_13E8D4(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"insets";
  v6[1] = @"columns";
  v6[2] = @"spacing";
  v3 = [NSArray arrayWithObjects:v6 count:3];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E65A0;
  qword_2E65A0 = v4;
}

void sub_13EEBC(id a1)
{
  v1 = [[TUIRunLoopDispatcher alloc] initSharedInstance];
  v2 = qword_2E65B0;
  qword_2E65B0 = v1;
}

void TUIDispatchGroupNotifyViaRunloopIfMain(void *a1, void *a2, void *a3)
{
  queue = a2;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (queue == &_dispatch_main_q)
  {
    [TUIRunLoopDispatcher dispatchGroup:v6 notifyMain:v5];
  }

  else
  {
    dispatch_group_notify(v6, queue, v5);
  }
}

void sub_13F8CC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) dynamicValue];
    v4 = [v3 property];
    v5 = [v6 objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_141160(void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1430B4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = a2[1];
    a2[1] = 0;
    v3[1] = v4;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_14123C(void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_143298(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = a2[1];
    a2[1] = 0;
    v3[1] = v4;
    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

void sub_1412B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_141420(a1);
    if (!(a4 >> 60))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_14148C(a1, v10);
    }

    sub_4050();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 4)
  {
    sub_1414C8(&v20, a2, a3, v7);
    v16 = v15;
    v17 = *(a1 + 8);
    if (v17 != v15)
    {
      do
      {
        v18 = v17 - 16;

        v17 = v18;
      }

      while (v18 != v16);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v12 = a2 + v11;
    sub_1414C8(&v19, a2, a2 + v11, v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        *v14 = *v12;
        v14[1] = *(v12 + 8);
        v12 += 16;
        v14 += 2;
        v13 += 16;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void sub_141420(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 2;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_14148C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_141538(a1, a2);
  }

  sub_4050();
}

uint64_t sub_1414C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a4;
  do
  {
    *v6 = *v4;
    v6 += 2;
    objc_storeStrong(a4 + 1, *(v4 + 8));
    v4 += 16;
    a4 = v6;
  }

  while (v4 != v5);
  return v5;
}

void sub_141538(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_141580(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_14148C(result, a4);
  }

  return result;
}

void sub_141610(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_141698(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v136 = a2;
  v137 = a1;
  while (1)
  {
    v8 = (v6 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v63 = *(v6 - 2);
        v136 = v6 - 2;
        if (v63 < *v7)
        {
          v64 = &v137;
          v65 = &v136;
          goto LABEL_167;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      v136 = v6 - 2;
      sub_1421B8(v7, v7 + 2, v7 + 4, v6 - 2);
      return;
    }

    if (v8 == 5)
    {
      v136 = v6 - 2;
      v141 = v7 + 2;
      v142 = v7;
      v139 = (v7 + 6);
      v140 = (v7 + 4);
      v138 = v6 - 2;
      sub_1421B8(v7, v7 + 2, v7 + 4, v7 + 6);
      if (*(v6 - 2) < *(v7 + 6))
      {
        sub_142150(&v139, &v138);
        if (*v139 < *(v7 + 4))
        {
          sub_142150(&v140, &v139);
          if (*v140 < *(v7 + 2))
          {
            sub_142150(&v141, &v140);
            v66 = *v141;
            v67 = *v7;
            goto LABEL_165;
          }
        }
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v70 = v7 + 2;
      v72 = v7 == v6 || v70 == v6;
      if (a4)
      {
        if (!v72)
        {
          v73 = 0;
          v74 = v7;
          do
          {
            v75 = v70;
            v76 = *(v74 + 2);
            v77 = *v74;
            if (v76 < *v74)
            {
              v78 = v74[3];
              v74[3] = 0;
              v79 = v73;
              while (1)
              {
                v80 = (v7 + v79);
                v80[2] = v77;
                v81 = *(v7 + v79 + 8);
                v80[1] = 0.0;
                v82 = *(v7 + v79 + 24);
                *(v80 + 3) = v81;

                if (!v79)
                {
                  break;
                }

                v77 = *(v80 - 2);
                v79 -= 16;
                if (v76 >= v77)
                {
                  v83 = v7 + v79 + 16;
                  goto LABEL_130;
                }
              }

              v83 = v7;
LABEL_130:
              *v83 = v76;
              v84 = *(v83 + 8);
              *(v83 + 8) = v78;
            }

            v70 = v75 + 2;
            v73 += 16;
            v74 = v75;
          }

          while (v75 + 2 != v6);
        }
      }

      else if (!v72)
      {
        v126 = (v7 + 3);
        do
        {
          v127 = v70;
          v128 = *(v7 + 2);
          v129 = *v7;
          if (v128 < *v7)
          {
            v130 = v7[3];
            v7[3] = 0;
            v131 = v126;
            v132 = v126;
            do
            {
              *(v131 - 1) = v129;
              v133 = *(v132 - 2);
              v132 -= 2;
              *v132 = 0;
              v134 = *v131;
              *v131 = v133;

              v129 = *(v131 - 5);
              v131 = v132;
            }

            while (v128 < v129);
            *(v132 - 1) = v128;
            v135 = *v132;
            *v132 = v130;
          }

          v70 = v127 + 2;
          v126 += 2;
          v7 = v127;
        }

        while (v127 + 2 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v85 = v9 >> 1;
      v86 = v9 >> 1;
      do
      {
        v87 = v86;
        if (v85 >= v86)
        {
          v88 = (2 * v86) | 1;
          v89 = &v7[2 * v88];
          if (2 * v87 + 2 < v8 && *v89 < *(v89 + 2))
          {
            v89 += 2;
            v88 = 2 * v87 + 2;
          }

          v90 = &v7[2 * v87];
          v91 = *v89;
          v92 = *v90;
          if (*v89 >= *v90)
          {
            v93 = v90[1];
            v90[1] = 0;
            do
            {
              v94 = v90;
              v90 = v89;
              *v94 = v91;
              v95 = v89[1];
              v90[1] = 0;
              v96 = *(v94 + 1);
              *(v94 + 1) = v95;

              if (v85 < v88)
              {
                break;
              }

              v97 = 2 * v88;
              v88 = (2 * v88) | 1;
              v89 = &v7[2 * v88];
              v98 = v97 + 2;
              if (v98 < v8 && *v89 < *(v89 + 2))
              {
                v89 += 2;
                v88 = v98;
              }

              v91 = *v89;
            }

            while (*v89 >= v92);
            *v90 = v92;
            v99 = v90[1];
            v90[1] = v93;
          }
        }

        v86 = v87 - 1;
      }

      while (v87);
      while (2)
      {
        v100 = 0;
        v101 = *v7;
        v102 = v7[1];
        v7[1] = 0;
        v103 = v7;
        do
        {
          v104 = v103;
          v105 = &v103[2 * v100];
          v103 = v105 + 2;
          v106 = 2 * v100;
          v100 = (2 * v100) | 1;
          v107 = v106 + 2;
          if (v107 < v8)
          {
            v109 = *(v105 + 4);
            v108 = v105 + 4;
            if (*(v108 - 2) < v109)
            {
              v103 = v108;
              v100 = v107;
            }
          }

          *v104 = *v103;
          v110 = v103[1];
          v103[1] = 0;
          v111 = v104[1];
          v104[1] = v110;
        }

        while (v100 <= ((v8 - 2) >> 1));
        v112 = v6 - 2;
        if (v103 == v6 - 2)
        {
LABEL_159:
          *v103 = v101;
          v125 = v103[1];
          v103[1] = v102;
        }

        else
        {
          *v103 = *(v6 - 2);
          v113 = *(v6 - 1);
          *(v6 - 1) = 0;
          v114 = v103[1];
          v103[1] = v113;

          *(v6 - 2) = v101;
          v115 = *(v6 - 1);
          *(v6 - 1) = v102;

          v116 = (v103 - v7 + 16) >> 4;
          v117 = v116 < 2;
          v118 = v116 - 2;
          if (!v117)
          {
            v119 = v118 >> 1;
            v120 = &v7[2 * (v118 >> 1)];
            v121 = *v120;
            v101 = *v103;
            if (*v120 < *v103)
            {
              v102 = v103[1];
              v103[1] = 0;
              do
              {
                v122 = v103;
                v103 = v120;
                *v122 = v121;
                v123 = v120[1];
                v103[1] = 0;
                v124 = *(v122 + 1);
                *(v122 + 1) = v123;

                if (!v119)
                {
                  break;
                }

                v119 = (v119 - 1) >> 1;
                v120 = &v7[2 * v119];
                v121 = *v120;
              }

              while (*v120 < v101);
              goto LABEL_159;
            }
          }
        }

        v6 = v112;
        v117 = v8-- <= 2;
        if (v117)
        {
          return;
        }

        continue;
      }
    }

    v10 = v8 >> 1;
    v11 = &v7[2 * (v8 >> 1)];
    v12 = (v6 - 2);
    if (v8 >= 0x81)
    {
      v141 = &v7[2 * (v8 >> 1)];
      v142 = v7;
      v140 = (v6 - 2);
      v13 = *v11;
      v14 = *v12;
      if (*v11 >= *v7)
      {
        if (v14 < v13)
        {
          sub_142150(&v141, &v140);
          if (*v141 < *v142)
          {
            v15 = &v142;
            v16 = &v141;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v15 = &v142;
        if (v14 < v13)
        {
          goto LABEL_16;
        }

        sub_142150(&v142, &v141);
        if (*v140 < *v141)
        {
          v15 = &v141;
LABEL_16:
          v16 = &v140;
LABEL_25:
          sub_142150(v15, v16);
        }
      }

      v21 = 2 * (v10 - 1);
      v22 = v137[2];
      v141 = &v137[v21];
      v142 = (v137 + 2);
      v23 = *(v6 - 4);
      v140 = (v6 - 4);
      v24 = v137[v21];
      if (v24 >= v22)
      {
        if (v23 < v24)
        {
          sub_142150(&v141, &v140);
          if (*v141 < *v142)
          {
            v25 = &v142;
            v26 = &v141;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v25 = &v142;
        if (v23 < v24)
        {
          goto LABEL_30;
        }

        sub_142150(&v142, &v141);
        if (*v140 < *v141)
        {
          v25 = &v141;
LABEL_30:
          v26 = &v140;
LABEL_38:
          sub_142150(v25, v26);
        }
      }

      v27 = 2 * (v10 + 1);
      v28 = v137[4];
      v141 = &v137[v27];
      v142 = (v137 + 4);
      v29 = *(v6 - 6);
      v140 = (v6 - 6);
      v30 = v137[v27];
      if (v30 >= v28)
      {
        if (v29 < v30)
        {
          sub_142150(&v141, &v140);
          if (*v141 < *v142)
          {
            v31 = &v142;
            v32 = &v141;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v31 = &v142;
        if (v29 < v30)
        {
          goto LABEL_43;
        }

        sub_142150(&v142, &v141);
        if (*v140 < *v141)
        {
          v31 = &v141;
LABEL_43:
          v32 = &v140;
LABEL_47:
          sub_142150(v31, v32);
        }
      }

      v141 = &v137[2 * v10];
      v142 = &v137[2 * v10 - 2];
      v140 = &v137[2 * v10 + 2];
      v33 = *v141;
      v34 = v137[v27];
      if (*v141 >= v137[v21])
      {
        if (v34 < v33)
        {
          sub_142150(&v141, &v140);
          if (*v141 < *v142)
          {
            v35 = &v142;
            v36 = &v141;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v35 = &v142;
        if (v34 < v33)
        {
          goto LABEL_52;
        }

        sub_142150(&v142, &v141);
        if (*v140 < *v141)
        {
          v35 = &v141;
LABEL_52:
          v36 = &v140;
LABEL_56:
          sub_142150(v35, v36);
        }
      }

      v142 = &v137[2 * v10];
      sub_142150(&v137, &v142);
      goto LABEL_58;
    }

    v141 = v7;
    v142 = &v7[2 * (v8 >> 1)];
    v140 = (v6 - 2);
    v17 = *v7;
    v18 = *v12;
    if (*v7 >= *v11)
    {
      if (v18 < v17)
      {
        sub_142150(&v141, &v140);
        if (*v141 < *v142)
        {
          v19 = &v142;
          v20 = &v141;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v19 = &v142;
      if (v18 < v17)
      {
        goto LABEL_21;
      }

      sub_142150(&v142, &v141);
      if (*v140 < *v141)
      {
        v19 = &v141;
LABEL_21:
        v20 = &v140;
LABEL_34:
        sub_142150(v19, v20);
      }
    }

LABEL_58:
    --a3;
    v37 = v137;
    v38 = *v137;
    if ((a4 & 1) == 0 && *(v137 - 2) >= v38)
    {
      v141 = v6;
      v52 = *(v137 + 1);
      v137[1] = 0.0;
      if (v38 >= *(v6 - 2))
      {
        v55 = v37 + 2;
        do
        {
          v53 = v55;
          if (v55 >= v6)
          {
            break;
          }

          v55 += 2;
        }

        while (v38 >= *v53);
      }

      else
      {
        v53 = v37;
        do
        {
          v54 = *(v53 + 2);
          v53 += 2;
        }

        while (v38 >= v54);
      }

      v142 = v53;
      if (v53 < v6)
      {
        do
        {
          v56 = *(v6 - 2);
          v6 -= 2;
        }

        while (v38 < v56);
        v141 = v6;
      }

      if (v53 < v6)
      {
        do
        {
          sub_142150(&v142, &v141);
          v53 = v142;
          do
          {
            v57 = *(v53 + 2);
            v53 += 2;
          }

          while (v38 >= v57);
          v142 = v53;
          v58 = v141;
          do
          {
            v59 = *(v58 - 2);
            v58 -= 2;
          }

          while (v38 < v59);
          v141 = v58;
        }

        while (v53 < v58);
      }

      if (v53 - 2 != v37)
      {
        *v37 = *(v53 - 2);
        v60 = *(v53 - 1);
        *(v53 - 1) = 0;
        v61 = v37[1];
        v37[1] = v60;
      }

      *(v53 - 2) = v38;
      v62 = *(v53 - 1);
      *(v53 - 1) = v52;

      a4 = 0;
      v7 = v142;
      goto LABEL_101;
    }

    v39 = 0;
    v40 = *(v137 + 1);
    v137[1] = 0.0;
    do
    {
      v41 = *&v37[v39 + 2];
      v39 += 2;
    }

    while (v41 < v38);
    v42 = &v37[v39];
    v142 = &v37[v39];
    if (v39 == 2)
    {
      do
      {
        if (v42 >= v6)
        {
          break;
        }

        v44 = *(v6 - 2);
        v6 -= 2;
      }

      while (v44 >= v38);
    }

    else
    {
      do
      {
        v43 = *(v6 - 2);
        v6 -= 2;
      }

      while (v43 >= v38);
    }

    v141 = v6;
    v7 = &v37[v39];
    if (v42 < v6)
    {
      do
      {
        sub_142150(&v142, &v141);
        v7 = v142;
        do
        {
          v45 = *(v7 + 2);
          v7 += 2;
        }

        while (v45 < v38);
        v142 = v7;
        v46 = v141;
        do
        {
          v47 = *(v46 - 2);
          v46 -= 2;
        }

        while (v47 >= v38);
        v141 = v46;
      }

      while (v7 < v46);
    }

    if (v7 - 2 != v37)
    {
      *v37 = *(v7 - 2);
      v48 = *(v7 - 1);
      *(v7 - 1) = 0;
      v49 = v37[1];
      v37[1] = v48;
    }

    *(v7 - 2) = v38;
    v50 = *(v7 - 1);
    *(v7 - 1) = v40;

    if (v42 < v6)
    {
      goto LABEL_76;
    }

    v51 = sub_1422E0(v137, v7 - 2);
    if (!sub_1422E0(v7, v136))
    {
      if (!v51)
      {
LABEL_76:
        sub_141698(v137, v7 - 2, a3, a4 & 1);
        a4 = 0;
      }

LABEL_101:
      v137 = v7;
      goto LABEL_102;
    }

    if (v51)
    {
      return;
    }

    v136 = v7 - 2;
    v7 = v137;
LABEL_102:
    v6 = v136;
  }

  v68 = *(v7 + 2);
  v141 = v7 + 2;
  v142 = v7;
  v69 = *(v6 - 2);
  v140 = (v6 - 2);
  if (v68 < *v7)
  {
    v64 = &v142;
    if (v69 >= v68)
    {
      sub_142150(&v142, &v141);
      if (*v140 >= *v141)
      {
        return;
      }

      v64 = &v141;
    }

    v65 = &v140;
    goto LABEL_167;
  }

  if (v69 < v68)
  {
    sub_142150(&v141, &v140);
    v66 = *v141;
    v67 = *v142;
LABEL_165:
    if (v66 < v67)
    {
      v64 = &v142;
      v65 = &v141;
LABEL_167:
      sub_142150(v64, v65);
    }
  }
}

void sub_142150(uint64_t **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v2 = **a2;
  *v3 = v4;
  v5 = v2[1];
  v2[1] = 0;
  v6 = v3[1];
  v3[1] = 0;
  v7 = v2[1];
  v2[1] = v6;

  v8 = v3[1];
  v3[1] = v5;
}

void sub_1421B8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      sub_142150(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      sub_142150(v10, v11);
      goto LABEL_10;
    }

    sub_142150(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    sub_142150(&v13, &v12);
    if (*v13 < *a2)
    {
      sub_142150(&v14, &v13);
      if (*v14 < *a1)
      {
        sub_142150(&v15, &v14);
      }
    }
  }
}

BOOL sub_1422E0(uint64_t *a1, uint64_t *a2)
{
  v33 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *(a1 + 2);
        v37 = (a1 + 2);
        v38 = a1;
        v13 = *(a2 - 2);
        v36 = (a2 - 2);
        if (v12 < *a1)
        {
          v6 = &v38;
          if (v13 >= v12)
          {
            sub_142150(&v38, &v37);
            if (*v36 >= *v37)
            {
              return 1;
            }

            v6 = &v37;
          }

          v7 = &v36;
          goto LABEL_28;
        }

        if (v13 >= v12)
        {
          return 1;
        }

        sub_142150(&v37, &v36);
        v10 = *v37;
        v11 = *v38;
        break;
      case 4:
        sub_1421B8(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        v8 = (a1 + 2);
        v37 = (a1 + 2);
        v38 = a1;
        v9 = (a1 + 4);
        v35 = (a1 + 6);
        v36 = (a1 + 4);
        v34 = a2 - 2;
        sub_1421B8(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 2) >= *(a1 + 6))
        {
          return 1;
        }

        sub_142150(&v35, &v34);
        if (*v35 >= *v9)
        {
          return 1;
        }

        sub_142150(&v36, &v35);
        if (*v36 >= *v8)
        {
          return 1;
        }

        sub_142150(&v37, &v36);
        v10 = *v37;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v10 < v11)
    {
      v6 = &v38;
      v7 = &v37;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v32 = a2 - 2;
    if (v5 < *a1)
    {
      v6 = &v33;
      v7 = &v32;
LABEL_28:
      sub_142150(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v14 = (a1 + 4);
  v15 = *(a1 + 4);
  v16 = *(a1 + 2);
  v37 = (a1 + 2);
  v38 = a1;
  v36 = (a1 + 4);
  if (v16 < *a1)
  {
    v17 = &v38;
    if (v15 >= v16)
    {
      sub_142150(&v38, &v37);
      if (*v36 >= *v37)
      {
        goto LABEL_33;
      }

      v17 = &v37;
    }

    v18 = &v36;
    goto LABEL_32;
  }

  if (v15 < v16)
  {
    sub_142150(&v37, &v36);
    if (*v37 < *v38)
    {
      v17 = &v38;
      v18 = &v37;
LABEL_32:
      sub_142150(v17, v18);
    }
  }

LABEL_33:
  v19 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *v19;
    v23 = *v14;
    if (*v19 < *v14)
    {
      v24 = v19[1];
      v19[1] = 0;
      v25 = v20;
      while (1)
      {
        v26 = (a1 + v25);
        v26[6] = v23;
        v27 = *(a1 + v25 + 40);
        v26[5] = 0.0;
        v28 = *(a1 + v25 + 56);
        *(v26 + 7) = v27;

        if (v25 == -32)
        {
          break;
        }

        v23 = v26[2];
        v25 -= 16;
        if (v22 >= v23)
        {
          v29 = a1 + v25 + 48;
          goto LABEL_41;
        }
      }

      v29 = a1;
LABEL_41:
      *v29 = v22;
      v30 = *(v29 + 8);
      *(v29 + 8) = v24;

      if (++v21 == 8)
      {
        return v19 + 2 == a2;
      }
    }

    v14 = v19;
    v20 += 16;
    v19 += 2;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

void sub_142608(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v142 = a2;
  v143 = a1;
  while (1)
  {
    v8 = (v6 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v69 = *(v6 - 2);
        v142 = v6 - 2;
        if (v69 < *v7)
        {
          v70 = &v143;
          v71 = &v142;
          goto LABEL_167;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      v142 = v6 - 2;
      sub_1421B8(v7, v7 + 2, v7 + 4, v6 - 2);
      return;
    }

    if (v8 == 5)
    {
      v142 = v6 - 2;
      v147 = (v7 + 2);
      v148 = v7;
      v145 = (v7 + 6);
      v146 = (v7 + 4);
      v144 = v6 - 2;
      sub_1421B8(v7, v7 + 2, v7 + 4, v7 + 6);
      if (*(v6 - 2) < *(v7 + 6))
      {
        sub_142150(&v145, &v144);
        if (*v145 < *(v7 + 4))
        {
          sub_142150(&v146, &v145);
          if (*v146 < *(v7 + 2))
          {
            sub_142150(&v147, &v146);
            v72 = *v147;
            v73 = *v7;
            goto LABEL_165;
          }
        }
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v76 = v7 + 2;
      v78 = v7 == v6 || v76 == v6;
      if (a4)
      {
        if (!v78)
        {
          v79 = 0;
          v80 = v7;
          do
          {
            v81 = v76;
            v82 = *(v80 + 2);
            v83 = *v80;
            if (v82 < *v80)
            {
              v84 = v80[3];
              v80[3] = 0;
              v85 = v79;
              while (1)
              {
                v86 = (v7 + v85);
                v86[2] = v83;
                v87 = *(v7 + v85 + 8);
                v86[1] = 0.0;
                v88 = *(v7 + v85 + 24);
                *(v86 + 3) = v87;

                if (!v85)
                {
                  break;
                }

                v83 = *(v86 - 2);
                v85 -= 16;
                if (v82 >= v83)
                {
                  v89 = v7 + v85 + 16;
                  goto LABEL_130;
                }
              }

              v89 = v7;
LABEL_130:
              *v89 = v82;
              v90 = *(v89 + 8);
              *(v89 + 8) = v84;
            }

            v76 = v81 + 2;
            v79 += 16;
            v80 = v81;
          }

          while (v81 + 2 != v6);
        }
      }

      else if (!v78)
      {
        v132 = (v7 + 3);
        do
        {
          v133 = v76;
          v134 = *(v7 + 2);
          v135 = *v7;
          if (v134 < *v7)
          {
            v136 = v7[3];
            v7[3] = 0;
            v137 = v132;
            v138 = v132;
            do
            {
              *(v137 - 1) = v135;
              v139 = *(v138 - 2);
              v138 -= 2;
              *v138 = 0;
              v140 = *v137;
              *v137 = v139;

              v135 = *(v137 - 5);
              v137 = v138;
            }

            while (v134 < v135);
            *(v138 - 1) = v134;
            v141 = *v138;
            *v138 = v136;
          }

          v76 = v133 + 2;
          v132 += 2;
          v7 = v133;
        }

        while (v133 + 2 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v91 = v9 >> 1;
      v92 = v9 >> 1;
      do
      {
        v93 = v92;
        if (v91 >= v92)
        {
          v94 = (2 * v92) | 1;
          v95 = &v7[2 * v94];
          if (2 * v93 + 2 < v8 && *v95 < *(v95 + 2))
          {
            v95 += 2;
            v94 = 2 * v93 + 2;
          }

          v96 = &v7[2 * v93];
          v97 = *v95;
          v98 = *v96;
          if (*v95 >= *v96)
          {
            v99 = v96[1];
            v96[1] = 0;
            do
            {
              v100 = v96;
              v96 = v95;
              *v100 = v97;
              v101 = v95[1];
              v96[1] = 0;
              v102 = *(v100 + 1);
              *(v100 + 1) = v101;

              if (v91 < v94)
              {
                break;
              }

              v103 = 2 * v94;
              v94 = (2 * v94) | 1;
              v95 = &v7[2 * v94];
              v104 = v103 + 2;
              if (v104 < v8 && *v95 < *(v95 + 2))
              {
                v95 += 2;
                v94 = v104;
              }

              v97 = *v95;
            }

            while (*v95 >= v98);
            *v96 = v98;
            v105 = v96[1];
            v96[1] = v99;
          }
        }

        v92 = v93 - 1;
      }

      while (v93);
      while (2)
      {
        v106 = 0;
        v107 = *v7;
        v108 = v7[1];
        v7[1] = 0;
        v109 = v7;
        do
        {
          v110 = v109;
          v111 = &v109[2 * v106];
          v109 = v111 + 2;
          v112 = 2 * v106;
          v106 = (2 * v106) | 1;
          v113 = v112 + 2;
          if (v113 < v8)
          {
            v115 = *(v111 + 4);
            v114 = v111 + 4;
            if (*(v114 - 2) < v115)
            {
              v109 = v114;
              v106 = v113;
            }
          }

          *v110 = *v109;
          v116 = v109[1];
          v109[1] = 0;
          v117 = v110[1];
          v110[1] = v116;
        }

        while (v106 <= ((v8 - 2) >> 1));
        v118 = v6 - 2;
        if (v109 == v6 - 2)
        {
LABEL_159:
          *v109 = v107;
          v131 = v109[1];
          v109[1] = v108;
        }

        else
        {
          *v109 = *(v6 - 2);
          v119 = *(v6 - 1);
          *(v6 - 1) = 0;
          v120 = v109[1];
          v109[1] = v119;

          *(v6 - 2) = v107;
          v121 = *(v6 - 1);
          *(v6 - 1) = v108;

          v122 = (v109 - v7 + 16) >> 4;
          v123 = v122 < 2;
          v124 = v122 - 2;
          if (!v123)
          {
            v125 = v124 >> 1;
            v126 = &v7[2 * (v124 >> 1)];
            v127 = *v126;
            v107 = *v109;
            if (*v126 < *v109)
            {
              v108 = v109[1];
              v109[1] = 0;
              do
              {
                v128 = v109;
                v109 = v126;
                *v128 = v127;
                v129 = v126[1];
                v109[1] = 0;
                v130 = *(v128 + 1);
                *(v128 + 1) = v129;

                if (!v125)
                {
                  break;
                }

                v125 = (v125 - 1) >> 1;
                v126 = &v7[2 * v125];
                v127 = *v126;
              }

              while (*v126 < v107);
              goto LABEL_159;
            }
          }
        }

        v6 = v118;
        v123 = v8-- <= 2;
        if (v123)
        {
          return;
        }

        continue;
      }
    }

    v10 = &v7[2 * (v8 >> 1)];
    v11 = v10;
    v12 = (v6 - 2);
    if (v8 >= 0x81)
    {
      v147 = &v7[2 * (v8 >> 1)];
      v148 = v7;
      v146 = (v6 - 2);
      v13 = *v10;
      v14 = *v12;
      if (*v10 >= *v7)
      {
        if (v14 < v13)
        {
          sub_142150(&v147, &v146);
          if (*v147 < *v148)
          {
            v15 = &v148;
            v16 = &v147;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v15 = &v148;
        if (v14 < v13)
        {
          goto LABEL_16;
        }

        sub_142150(&v148, &v147);
        if (*v146 < *v147)
        {
          v15 = &v147;
LABEL_16:
          v16 = &v146;
LABEL_25:
          sub_142150(v15, v16);
        }
      }

      v21 = (v10 - 2);
      v22 = *(v10 - 2);
      v23 = *(v7 + 2);
      v147 = v10 - 2;
      v148 = (v7 + 2);
      v24 = *(v6 - 4);
      v146 = (v6 - 4);
      if (v22 >= v23)
      {
        if (v24 < v22)
        {
          sub_142150(&v147, &v146);
          if (*v147 < *v148)
          {
            v25 = &v148;
            v26 = &v147;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v25 = &v148;
        if (v24 < v22)
        {
          goto LABEL_30;
        }

        sub_142150(&v148, &v147);
        if (*v146 < *v147)
        {
          v25 = &v147;
LABEL_30:
          v26 = &v146;
LABEL_38:
          sub_142150(v25, v26);
        }
      }

      v28 = v10[2];
      v27 = (v10 + 2);
      v29 = v28;
      v30 = *(v7 + 4);
      v147 = v27;
      v148 = (v7 + 4);
      v31 = *(v6 - 6);
      v146 = (v6 - 6);
      if (v28 >= v30)
      {
        if (v31 < v29)
        {
          sub_142150(&v147, &v146);
          if (*v147 < *v148)
          {
            v32 = &v148;
            v33 = &v147;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v32 = &v148;
        if (v31 < v29)
        {
          goto LABEL_43;
        }

        sub_142150(&v148, &v147);
        if (*v146 < *v147)
        {
          v32 = &v147;
LABEL_43:
          v33 = &v146;
LABEL_47:
          sub_142150(v32, v33);
        }
      }

      v147 = v11;
      v148 = v21;
      v146 = v27;
      v34 = *v11;
      v35 = *v27;
      if (*v11 >= *v21)
      {
        if (v35 < v34)
        {
          sub_142150(&v147, &v146);
          if (*v147 < *v148)
          {
            v36 = &v148;
            v37 = &v147;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v36 = &v148;
        if (v35 < v34)
        {
          goto LABEL_52;
        }

        sub_142150(&v148, &v147);
        if (*v146 < *v147)
        {
          v36 = &v147;
LABEL_52:
          v37 = &v146;
LABEL_56:
          sub_142150(v36, v37);
        }
      }

      v38 = *v7;
      *v7 = *v11;
      *v11 = v38;
      v39 = v7[1];
      v7[1] = 0;
      v40 = v11[1];
      v11[1] = 0;
      v41 = v7[1];
      v7[1] = v40;

      v42 = v11[1];
      v11[1] = v39;

      goto LABEL_58;
    }

    v147 = v7;
    v148 = &v7[2 * (v8 >> 1)];
    v146 = (v6 - 2);
    v17 = *v7;
    v18 = *v12;
    if (*v7 >= *v10)
    {
      if (v18 < v17)
      {
        sub_142150(&v147, &v146);
        if (*v147 < *v148)
        {
          v19 = &v148;
          v20 = &v147;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v19 = &v148;
      if (v18 < v17)
      {
        goto LABEL_21;
      }

      sub_142150(&v148, &v147);
      if (*v146 < *v147)
      {
        v19 = &v147;
LABEL_21:
        v20 = &v146;
LABEL_34:
        sub_142150(v19, v20);
      }
    }

LABEL_58:
    --a3;
    v43 = *v7;
    if ((a4 & 1) == 0 && *(v7 - 2) >= v43)
    {
      v147 = v6;
      v58 = v7[1];
      v7[1] = 0;
      if (v43 >= *(v6 - 2))
      {
        v61 = v7 + 2;
        do
        {
          v59 = v61;
          if (v61 >= v6)
          {
            break;
          }

          v61 += 2;
        }

        while (v43 >= *v59);
      }

      else
      {
        v59 = v7;
        do
        {
          v60 = *(v59 + 2);
          v59 += 2;
        }

        while (v43 >= v60);
      }

      v148 = v59;
      if (v59 < v6)
      {
        do
        {
          v62 = *(v6 - 2);
          v6 -= 2;
        }

        while (v43 < v62);
        v147 = v6;
      }

      if (v59 < v6)
      {
        do
        {
          sub_142150(&v148, &v147);
          v59 = v148;
          do
          {
            v63 = *(v59 + 2);
            v59 += 2;
          }

          while (v43 >= v63);
          v148 = v59;
          v64 = v147;
          do
          {
            v65 = *(v64 - 2);
            v64 -= 2;
          }

          while (v43 < v65);
          v147 = v64;
        }

        while (v59 < v64);
      }

      if (v59 - 2 != v7)
      {
        *v7 = *(v59 - 2);
        v66 = *(v59 - 1);
        *(v59 - 1) = 0;
        v67 = v7[1];
        v7[1] = v66;
      }

      *(v59 - 2) = v43;
      v68 = *(v59 - 1);
      *(v59 - 1) = v58;

      a4 = 0;
      v50 = v148;
      goto LABEL_101;
    }

    v44 = 0;
    v45 = v7[1];
    v7[1] = 0;
    do
    {
      v46 = *&v7[v44 + 2];
      v44 += 2;
    }

    while (v46 < v43);
    v47 = &v7[v44];
    v148 = &v7[v44];
    if (v44 == 2)
    {
      do
      {
        if (v47 >= v6)
        {
          break;
        }

        v49 = *(v6 - 2);
        v6 -= 2;
      }

      while (v49 >= v43);
    }

    else
    {
      do
      {
        v48 = *(v6 - 2);
        v6 -= 2;
      }

      while (v48 >= v43);
    }

    v147 = v6;
    v50 = &v7[v44];
    if (v47 < v6)
    {
      do
      {
        sub_142150(&v148, &v147);
        v50 = v148;
        do
        {
          v51 = *(v50 + 2);
          v50 += 2;
        }

        while (v51 < v43);
        v148 = v50;
        v52 = v147;
        do
        {
          v53 = *(v52 - 2);
          v52 -= 2;
        }

        while (v53 >= v43);
        v147 = v52;
      }

      while (v50 < v52);
    }

    if (v50 - 2 != v7)
    {
      *v7 = *(v50 - 2);
      v54 = *(v50 - 1);
      *(v50 - 1) = 0;
      v55 = v7[1];
      v7[1] = v54;
    }

    *(v50 - 2) = v43;
    v56 = *(v50 - 1);
    *(v50 - 1) = v45;

    if (v47 < v6)
    {
      goto LABEL_76;
    }

    v57 = sub_1422E0(v143, v50 - 2);
    if (!sub_1422E0(v50, v142))
    {
      if (!v57)
      {
LABEL_76:
        sub_142608();
        a4 = 0;
      }

LABEL_101:
      v143 = v50;
      goto LABEL_102;
    }

    if (v57)
    {
      return;
    }

    v142 = v50 - 2;
    v50 = v143;
LABEL_102:
    v6 = v142;
    v7 = v50;
  }

  v74 = *(v7 + 2);
  v147 = (v7 + 2);
  v148 = v7;
  v75 = *(v6 - 2);
  v146 = (v6 - 2);
  if (v74 < *v7)
  {
    v70 = &v148;
    if (v75 >= v74)
    {
      sub_142150(&v148, &v147);
      if (*v146 >= *v147)
      {
        return;
      }

      v70 = &v147;
    }

    v71 = &v146;
    goto LABEL_167;
  }

  if (v75 < v74)
  {
    sub_142150(&v147, &v146);
    v72 = *v147;
    v73 = *v148;
LABEL_165:
    if (v72 < v73)
    {
      v70 = &v148;
      v71 = &v147;
LABEL_167:
      sub_142150(v70, v71);
    }
  }
}

uint64_t sub_1430B4(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_4050();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    sub_141538(a1, v6);
  }

  v9 = (16 * v5);
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = a2[1];
  a2[1] = 0;
  v9[1] = v10;
  v17 = (16 * v5 + 16);
  sub_1431D4(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_143244(&v15);
  return v14;
}

void sub_1431C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_143244(va);
  _Unwind_Resume(a1);
}

void sub_1431D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = v6[1];
      v6[1] = 0;
      a4[1] = v7;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 2;
    }
  }
}

uint64_t sub_143244(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_143298(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_4050();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    sub_141538(a1, v6);
  }

  v9 = (16 * v5);
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = a2[1];
  a2[1] = 0;
  v9[1] = v10;
  v17 = (16 * v5 + 16);
  sub_1431D4(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_143244(&v15);
  return v14;
}

void sub_1433A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_143244(va);
  _Unwind_Resume(a1);
}

void sub_143B88(id a1)
{
  v1 = qword_2E65C0;
  qword_2E65C0 = &off_275918;
}

void sub_143C1C(id a1)
{
  v1 = qword_2E65D0;
  qword_2E65D0 = &off_275940;
}

void sub_143CBC(id a1)
{
  v1 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [&off_273328 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [&off_273328 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v38;
    p_superclass = &OBJC_METACLASS___TUIStyledView.superclass;
    height = CGSizeZero.height;
    p_info = TUIFeedRenderer.info;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(&off_273328);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v9 unsignedIntegerValue];
        v11 = [p_info + 456 buttonWithType:{objc_msgSend(p_superclass + 24, "uiButtonTypeFromTUIButtonType:", v10)}];
        v12 = v11;
        if (v10 == &dword_4)
        {
          [v11 sizeThatFits:{CGSizeZero.width, height}];
          v14 = v13;
          v15 = [_TUIButtonMetrics alloc];
          [v12 alignmentRectInsets];
          v20 = [(_TUIButtonMetrics *)v15 initWithHeight:v14 widthPadding:NAN alignmentRectInsets:v16, v17, v18, v19];
        }

        else
        {
          [v11 setTitle:@"button" forState:0];
          [v12 sizeThatFits:{CGSizeZero.width, height}];
          v22 = v21;
          v24 = v23;
          v25 = p_info;
          v26 = p_superclass;
          v27 = [[NSAttributedString alloc] initWithString:@"button"];
          [v27 tui_widthAsTitle];
          v29 = v28;
          v30 = [_TUIButtonMetrics alloc];
          [v12 alignmentRectInsets];
          v20 = [(_TUIButtonMetrics *)v30 initWithHeight:v24 widthPadding:v22 - v29 alignmentRectInsets:v31, v32, v33, v34];

          p_superclass = v26;
          p_info = v25;
        }

        [v1 setObject:v20 forKeyedSubscript:v9];
      }

      v3 = [&off_273328 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v3);
  }

  v35 = [v1 copy];
  v36 = qword_2E65E0;
  qword_2E65E0 = v35;
}

void sub_144B1C(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  [v2 removeAttribute:98];
  [v2 removeAttribute:225];
  v6[0] = @"on";
  v6[1] = @"enabled";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E65F0;
  qword_2E65F0 = v4;
}

void sub_144C64(id a1)
{
  v4 = @"binding";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6600;
  qword_2E6600 = v2;
}

void sub_14510C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_145130(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = [WeakRetained identifier];
  LOBYTE(v12) = *(a1 + 73);
  v10 = [TUIToggleView renderModelWithStates:v7 actionHandler:v4 viewState:v5 enabled:v6 identifier:v9 name:*(a1 + 48) title:*(a1 + 56) isOn:v12];

  return v10;
}

id sub_145554(void *a1)
{
  mach_timebase_info(&info);
  v4 = objc_opt_new();
  sub_1460F4(a1, v81);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v5 = v81[0];
  v6 = v81[1];
  while (v5 != v6)
  {
    if (*(v5 + 23) < 0)
    {
      sub_114E8(__dst, *v5, *(v5 + 1));
    }

    else
    {
      v7 = *v5;
      v56.i64[0] = *(v5 + 2);
      *__dst = v7;
    }

    v8 = sub_ED6C8(a1, __dst);
    if (v56.i8[7] < 0)
    {
      sub_114E8(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v74 = v56.i64[0];
    }

    v9 = sub_146234(v8 + 5, __p, &info);
    [v4 addObject:v9];

    if (SHIBYTE(v74) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = vaddq_s64(v76, *(v8 + 7));
    v75 = vaddq_s64(v75, *(v8 + 5));
    v76 = v10;
    v11 = vaddq_s64(v78, *(v8 + 11));
    v77 = vaddq_s64(v77, *(v8 + 9));
    v78 = v11;
    v79 = vaddq_s64(v79, *(v8 + 13));
    v80 += v8[15];
    if (v56.i8[7] < 0)
    {
      operator delete(__dst[0]);
    }

    v5 = (v5 + 24);
  }

  v12 = objc_opt_new();
  sub_14664C(a1, v72);
  v70 = 0uLL;
  v71 = 0;
  v13 = v72[0];
  v14 = v72[1];
  while (v13 != v14)
  {
    if (*(v13 + 23) < 0)
    {
      sub_114E8(__dst, *v13, *(v13 + 1));
    }

    else
    {
      v15 = *v13;
      v56.i64[0] = *(v13 + 2);
      *__dst = v15;
    }

    v16 = sub_ED6C8(a1 + 5, __dst);
    if (v56.i8[7] < 0)
    {
      sub_114E8(v68, __dst[0], __dst[1]);
    }

    else
    {
      *v68 = *__dst;
      v69 = v56.i64[0];
    }

    v17 = sub_14676C(v16 + 5, v68, &info);
    [v12 addObject:v17];

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68[0]);
    }

    v70 = vaddq_s64(v70, *(v16 + 5));
    v71 += v16[7];
    if (v56.i8[7] < 0)
    {
      operator delete(__dst[0]);
    }

    v13 = (v13 + 24);
  }

  v18 = objc_opt_new();
  sub_146920(a1, v67);
  v19 = v67[0];
  v20 = v67[1];
  while (v19 != v20)
  {
    __dst[0] = *v19;
    v21 = sub_3D34(a1 + 10, __dst);
    v22 = sub_146A04(v21 + 3, __dst[0], &info);
    [v18 addObject:v22];

    ++v19;
  }

  v23 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v24 = a1[15];
  v25 = a1[16];
  if (v24 == v25)
  {
    v34 = a1[15];
  }

  else
  {
    v47 = 0uLL;
    v49 = 0uLL;
    do
    {
      v26 = v24[1];
      *__dst = *v24;
      v56 = v26;
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[5];
      v59 = v24[4];
      v60 = v29;
      v57 = v27;
      v58 = v28;
      v30 = v24[6];
      v31 = v24[7];
      v32 = v24[9];
      v63 = v24[8];
      v64 = v32;
      v61 = v30;
      v62 = v31;
      v47 = vaddq_s64(v47, v56);
      v49 = vaddq_s64(v49, *__dst);
      v65 = v49;
      v66 = v47;
      v33 = sub_146C20(__dst, a1[18], &info, *v47.i64, *v56.i64);
      [v23 addObject:v33];

      v24 += 10;
    }

    while (v24 != v25);
    v24 = a1[15];
    v34 = a1[16];
  }

  v35 = a1[18];
  v36 = a1[19];
  if (v35 >= v36)
  {
    v37 = ~v35;
  }

  else
  {
    v37 = -v35;
  }

  LODWORD(v2) = info.numer;
  LODWORD(v1) = info.denom;
  v83[0] = @"components";
  v83[1] = @"globals";
  v84[0] = v4;
  v84[1] = v12;
  v84[2] = v18;
  v83[2] = @"layouts";
  v83[3] = @"componentsSummary";
  sub_60D8(v53, "<all>");
  v48 = sub_146234(&v75, v53, &info);
  v84[3] = v48;
  v83[4] = @"globalsSummary";
  sub_60D8(v51, "<all>");
  v50 = sub_14676C(&v70, v51, &info);
  v84[4] = v50;
  v84[5] = v23;
  v83[5] = @"frames";
  v83[6] = @"frameCount";
  v38 = [NSNumber numberWithUnsignedLong:0xCCCCCCCCCCCCCCCDLL * ((a1[16] - a1[15]) >> 5)];
  v39 = v2 * (v37 + v36) / v1 / 1000000000.0;
  v84[6] = v38;
  v83[7] = @"elapsed";
  v40 = [NSNumber numberWithDouble:v39];
  v84[7] = v40;
  v83[8] = @"totalElapsed";
  v43 = sub_146EA8(&v65, &info, v41, v42);
  v84[8] = v43;
  v83[9] = @"fps";
  v44 = [NSNumber numberWithDouble:(0xCCCCCCCCCCCCCCCDLL * ((v34 - v24) >> 5)) / v39];
  v84[9] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:10];

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  __dst[0] = v67;
  sub_14EE64(__dst);

  __dst[0] = v72;
  sub_ECD94(__dst);

  __dst[0] = v81;
  sub_ECD94(__dst);

  return v45;
}

void sub_145B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  a25 = &a50;
  sub_14EE64(&a25);

  a25 = &a60;
  sub_ECD94(&a25);

  a25 = &STACK[0x200];
  sub_ECD94(&a25);

  _Unwind_Resume(a1);
}

int64x2_t sub_145F18(uint64_t a1, void *a2)
{
  for (i = *(a1 + 24); i; i = *i)
  {
    v6 = *(i + 4);
    v20 = *(i + 3);
    v21 = v6;
    v7 = *(i + 6);
    v22 = *(i + 5);
    v23 = v7;
    v8 = *(i + 2);
    *v19 = *(i + 1);
    *&v19[16] = v8;
    v2 = v2 & 0xFFFFFFFF00000000 | *v19;
    v9 = v2;
    TUI::Symbol::Tab::std_string(*a1, v9, &__p);
    sub_14EF3C(a2, &__p.__r_.__value_.__l.__data_, &v19[8]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (j = *(a1 + 64); j; j = *j)
  {
    v11 = *(j + 2);
    *v19 = *(j + 1);
    *&v19[16] = v11;
    v2 = v2 & 0xFFFFFFFF00000000 | *v19;
    v12 = v2;
    TUI::Symbol::Tab::std_string(*a1, v12, &__p);
    sub_14EFE4(a2, &__p.__r_.__value_.__l.__data_, &v19[8]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (k = *(a1 + 104); k; k = *k)
  {
    *v19 = k[2];
    v14 = *(k + 3);
    *&v19[24] = k[5];
    *&v19[8] = v14;
    sub_14F0A0(a2, *v19, &v19[8]);
  }

  v15 = a2[16];
  v16 = *(v15 - 144);
  *(v15 - 160) = vaddq_s64(*(v15 - 160), *(a1 + 27816));
  result = vaddq_s64(v16, *(a1 + 27832));
  *(v15 - 144) = result;
  return result;
}

double sub_1460F4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v4 = 0uLL;
  *a2 = 0u;
  v5 = a1[2];
  if (v5)
  {
    do
    {
      if (*(v5 + 39) < 0)
      {
        sub_114E8(__p, v5[2], v5[3]);
      }

      else
      {
        *__p = *(v5 + 1);
        v10 = v5[4];
      }

      v13 = *(v5 + 9);
      v14 = *(v5 + 11);
      v15 = *(v5 + 13);
      v16 = v5[15];
      v11 = *(v5 + 5);
      v12 = *(v5 + 7);
      sub_1470B0(a2, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *v5;
    }

    while (v5);
    v4 = *a2;
  }

  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v4 + 1) - v4) >> 3));
  v17 = a1;
  if (*(&v4 + 1) == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return sub_147290(v4, *(&v4 + 1), &v17, v7, 1);
}

id sub_146234(void *a1, uint64_t *a2, _DWORD *a3)
{
  v26[0] = @"name";
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v27[0] = [NSString stringWithCString:a2 encoding:4];
  v26[1] = @"instantiateBody";
  v25 = [NSNumber numberWithUnsignedLong:a1[3]];
  v27[1] = v25;
  v26[2] = @"instantiate";
  v24 = [NSNumber numberWithUnsignedLong:a1[4]];
  v27[2] = v24;
  v26[3] = @"instantiateCreate";
  v23 = [NSNumber numberWithUnsignedLong:a1[5]];
  v27[3] = v23;
  v26[4] = @"instantiateUpdate";
  v5 = [NSNumber numberWithUnsignedLong:a1[6]];
  v27[4] = v5;
  v26[5] = @"instantiateReuse";
  v6 = [NSNumber numberWithUnsignedLong:a1[7]];
  v27[5] = v6;
  v26[6] = @"evaluatedBindings";
  v7 = [NSNumber numberWithUnsignedLong:*a1];
  v27[6] = v7;
  v26[7] = @"globalsEvaluated";
  v8 = [NSNumber numberWithUnsignedLong:a1[1]];
  v27[7] = v8;
  v26[8] = @"globalsChanged";
  v9 = [NSNumber numberWithUnsignedLong:a1[2]];
  LODWORD(v10) = *a3;
  LODWORD(v11) = a3[1];
  v12 = a1[8] * v10;
  v27[8] = v9;
  v26[9] = @"elapsedInstantiateBody (direct)";
  v13 = [NSNumber numberWithDouble:v12 / v11 / 1000000.0];
  v27[9] = v13;
  v26[10] = @"elapsedInstantiateBody (total)";
  LODWORD(v14) = *a3;
  LODWORD(v15) = a3[1];
  v16 = [NSNumber numberWithDouble:a1[9] * v14 / v15 / 1000000.0];
  v27[10] = v16;
  v26[11] = @"elapsedGlobalsEvaluated";
  LODWORD(v17) = *a3;
  LODWORD(v18) = a3[1];
  v19 = [NSNumber numberWithDouble:a1[10] * v17 / v18 / 1000000.0];
  v27[11] = v19;
  v20 = v27[0];
  v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:12];

  return v21;
}

int64x2_t sub_1465F8(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_s64(*a1, *a2);
  a1[1] = vaddq_s64(v2, a2[1]);
  v3 = a1[3];
  a1[2] = vaddq_s64(a1[2], a2[2]);
  result = vaddq_s64(v3, a2[3]);
  v5 = vaddq_s64(a1[4], a2[4]);
  a1[3] = result;
  a1[4] = v5;
  a1[5].i64[0] += a2[5].i64[0];
  return result;
}

void sub_14664C(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v4 = 0uLL;
  *a2 = 0u;
  v5 = *(a1 + 56);
  if (v5)
  {
    do
    {
      if (*(v5 + 39) < 0)
      {
        sub_114E8(__p, v5[2], v5[3]);
      }

      else
      {
        *__p = *(v5 + 1);
        v9 = v5[4];
      }

      v10 = *(v5 + 5);
      v11 = v5[7];
      sub_1470B0(a2, __p);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = *v5;
    }

    while (v5);
    v4 = *a2;
  }

  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v4 + 1) - v4) >> 3));
  v12 = a1;
  if (*(&v4 + 1) == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_14AD40(v4, *(&v4 + 1), &v12, v7, 1);
}

id sub_14676C(void *a1, uint64_t *a2, _DWORD *a3)
{
  v14[0] = @"name";
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = [NSString stringWithCString:a2 encoding:4];
  v15[0] = v5;
  v14[1] = @"evaluated";
  v6 = [NSNumber numberWithUnsignedLong:*a1];
  v15[1] = v6;
  v14[2] = @"changed";
  v7 = [NSNumber numberWithUnsignedLong:a1[1]];
  LODWORD(v8) = *a3;
  LODWORD(v9) = a3[1];
  v10 = a1[2] * v8;
  v15[2] = v7;
  v14[3] = @"elapsedEvaluated";
  v11 = [NSNumber numberWithDouble:v10 / v9 / 1000000.0];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

void sub_146920(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  v4 = 0uLL;
  *a2 = 0u;
  v5 = *(a1 + 96);
  if (v5)
  {
    do
    {
      v9 = v5[2];
      v6 = *(v5 + 3);
      v11 = v5[5];
      v10 = v6;
      sub_14CDC0(a2, &v9);

      v5 = *v5;
    }

    while (v5);
    v4 = *a2;
  }

  v7 = 126 - 2 * __clz((*(&v4 + 1) - v4) >> 3);
  v12 = a1;
  if (*(&v4 + 1) == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_14CFB8(v4, *(&v4 + 1), &v12, v8, 1);
}

void sub_1469DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_14EE64(va);
  _Unwind_Resume(a1);
}

id sub_146A04(unint64_t *a1, Class aClass, _DWORD *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v20[0] = @"name";
  v7 = NSStringFromClass(aClass);
  v21[0] = v7;
  v20[1] = @"countCompute";
  v8 = [NSNumber numberWithUnsignedLong:*a1];
  LODWORD(v9) = *a3;
  LODWORD(v10) = a3[1];
  v21[1] = v8;
  v20[2] = @"averageDirect";
  v11 = [NSNumber numberWithDouble:(v5 / v6) * v9 / v10 / 1000000.0];
  v21[2] = v11;
  v20[3] = @"elapsedComputeDirect";
  LODWORD(v12) = *a3;
  LODWORD(v13) = a3[1];
  v14 = [NSNumber numberWithDouble:a1[1] * v12 / v13 / 1000000.0];
  v21[3] = v14;
  v20[4] = @"elapsedComputeTotal";
  LODWORD(v15) = *a3;
  LODWORD(v16) = a3[1];
  v17 = [NSNumber numberWithDouble:a1[2] * v15 / v16 / 1000000.0];
  v21[4] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  return v18;
}

id sub_146C20(unint64_t *a1, unint64_t a2, _DWORD *a3, double a4, double a5)
{
  v7 = a1[18];
  v8 = a1[19];
  if (v7 <= a2)
  {
    v9 = a2 - v7;
  }

  else
  {
    v9 = v7 - a2;
  }

  v10 = v8 - v7;
  v11 = v7 >= v8;
  v12 = v7 - v8;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v29[0] = @"elapsed";
  v14 = sub_146EA8(a1, a3, a4, a5);
  v30[0] = v14;
  v29[1] = @"componentSummary";
  sub_60D8(v27, "<all>");
  v15 = sub_146234(a1 + 4, v27, a3);
  v30[1] = v15;
  v29[2] = @"globalsSummary";
  sub_60D8(__p, "<all>");
  v16 = sub_14676C(a1 + 15, __p, a3);
  LODWORD(v17) = *a3;
  LODWORD(v18) = a3[1];
  v30[2] = v16;
  v29[3] = @"total";
  v19 = [NSNumber numberWithDouble:v13 * v17 / v18 / 1000000.0];
  v30[3] = v19;
  v29[4] = @"offfset";
  LODWORD(v20) = *a3;
  LODWORD(v21) = a3[1];
  v22 = [NSNumber numberWithDouble:v9 * v20 / v21 / 1000000.0];
  v30[4] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return v23;
}

void sub_146E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

id sub_146EA8(unint64_t *a1, _DWORD *a2, double a3, double a4)
{
  v20[0] = @"instantiate";
  LODWORD(a4) = *a2;
  v6 = a2 + 1;
  v7 = [NSNumber numberWithDouble:*a1 * *&a4 / a2[1] / 1000000.0];
  v21[0] = v7;
  v20[1] = @"layout";
  LODWORD(v8) = *a2;
  *&v9 = v8;
  v10 = a1[1] * *&v9;
  LODWORD(v9) = *v6;
  v11 = [NSNumber numberWithDouble:v10 / v9 / 1000000.0];
  v21[1] = v11;
  v20[2] = @"renderModel";
  LODWORD(v12) = *a2;
  LODWORD(v13) = a2[1];
  v14 = [NSNumber numberWithDouble:a1[2] * v12 / v13 / 1000000.0];
  v21[2] = v14;
  v20[3] = @"globalsEnvironmentUpdate";
  LODWORD(v15) = *a2;
  LODWORD(v16) = a2[1];
  v17 = [NSNumber numberWithDouble:a1[3] * v15 / v16 / 1000000.0];
  v21[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v18;
}

uint64_t sub_1470B0(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_147150(a1, a2);
  }

  else
  {
    sub_1470F0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1470F0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_114E8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_147150(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_EE2A4(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_114E8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *&dword_10[6 * v2] = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_EE2FC(&v17);
  return v11;
}

void sub_14727C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_EE2FC(va);
  _Unwind_Resume(a1);
}

double sub_147290(uint64_t a1, __int128 *a2, void **a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 24;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3uLL:
          sub_14777C(v10, (v10 + 24), (a2 - 24), a3);
          return result;
        case 4uLL:
          *&result = sub_147D34(v10, v10 + 24, (v10 + 3), a2 - 24, a3).n128_u64[0];
          return result;
        case 5uLL:
          *&result = sub_1480D8(v10, v10 + 24, (v10 + 3), v10 + 72, a2 - 24, a3).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 1) < 0)
        {
          sub_114E8(v58, *(a2 - 3), *(a2 - 2));
        }

        else
        {
          v39 = *v9;
          v59 = *(a2 - 1);
          *v58 = v39;
        }

        if (*(v10 + 23) < 0)
        {
          sub_114E8(v56, *v10, *(v10 + 1));
        }

        else
        {
          v40 = *v10;
          v57 = *(v10 + 2);
          *v56 = v40;
        }

        v41 = *a3;
        v42 = sub_ED6C8(*a3, v58);
        v43 = sub_ED6C8(v41, v56);
        v44 = v42[14];
        v45 = v43[14];
        v46 = v44 < v45;
        if (v44 == v45)
        {
          v47 = v42[8];
          v48 = v43[8];
          v33 = v47 == v48;
          v49 = v47 < v48;
          if (v33)
          {
            v46 = v42 < v43;
          }

          else
          {
            v46 = v49;
          }
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58[0]);
        }

        if (v46)
        {
          v50 = *v10;
          v61 = *(v10 + 2);
          v60 = v50;
          v51 = *v9;
          *(v10 + 2) = *(v9 + 2);
          *v10 = v51;
          result = *&v60;
          *v9 = v60;
          *(v9 + 2) = v61;
        }

        return result;
      }
    }

    if (v13 <= 575)
    {
      if (a5)
      {
        sub_1485A0(v10, a2, a3);
      }

      else
      {
        sub_1488F4(v10, a2, a3);
      }

      return result;
    }

    if (v12 == 1)
    {
      break;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 24 * (v14 >> 1));
    if (v13 < 0xC01)
    {
      sub_14777C((v10 + 24 * v15), v10, (a2 - 24), a3);
      if (a5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_14777C(v10, (v10 + 24 * v15), (a2 - 24), a3);
      v17 = 3 * v15;
      v18 = (v10 + 24 * v15 - 24);
      sub_14777C((v10 + 24), v18, a2 - 3, a3);
      v19 = (v10 + 8 * v17 + 24);
      sub_14777C((a1 + 48), v19, (a2 - 72), a3);
      sub_14777C(v18, v16, v19, a3);
      v20 = *a1;
      v61 = *(a1 + 16);
      v60 = v20;
      v21 = *v16;
      *(a1 + 16) = *(v16 + 2);
      *a1 = v21;
      v22 = v60;
      *(v16 + 2) = v61;
      *v16 = v22;
      if (a5)
      {
        goto LABEL_31;
      }
    }

    if (*(a1 - 1) < 0)
    {
      sub_114E8(__dst, *(a1 - 24), *(a1 - 16));
    }

    else
    {
      v23 = *(a1 - 24);
      v55 = *(a1 - 8);
      *__dst = v23;
    }

    if (*(a1 + 23) < 0)
    {
      sub_114E8(__p, *a1, *(a1 + 8));
    }

    else
    {
      v24 = *a1;
      v53 = *(a1 + 16);
      *__p = v24;
    }

    v25 = *a3;
    v26 = sub_ED6C8(*a3, __dst);
    v27 = sub_ED6C8(v25, __p);
    v28 = v26[14];
    v29 = v27[14];
    v30 = v28 < v29;
    if (v28 == v29)
    {
      v31 = v26[8];
      v32 = v27[8];
      v33 = v31 == v32;
      v34 = v31 < v32;
      if (v33)
      {
        v30 = v26 < v27;
      }

      else
      {
        v30 = v34;
      }
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst[0]);
    }

    if (!v30)
    {
      v10 = sub_148C20(a1, a2, a3);
      goto LABEL_36;
    }

LABEL_31:
    v35 = sub_1493C4(a1, a2, a3);
    if ((v36 & 1) == 0)
    {
      goto LABEL_34;
    }

    v37 = sub_149A8C(a1, v35, a3);
    v10 = (v35 + 24);
    if (sub_149A8C(v35 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v35;
      if (v37)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v37)
    {
LABEL_34:
      sub_147290(a1, v35, a3, -v12, a5 & 1);
      v10 = (v35 + 24);
LABEL_36:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v10 != a2)
  {
    sub_149FC4(v10, a2, a2, a3);
  }

  return result;
}

void sub_147718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_14777C(__int128 *a1, __int128 *a2, __int128 *a3, void **a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_114E8(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v88 = *(a2 + 2);
  }

  if (*(a1 + 23) < 0)
  {
    sub_114E8(__p, *a1, *(a1 + 1));
  }

  else
  {
    *__p = *a1;
    v86 = *(a1 + 2);
  }

  v8 = *a4;
  v9 = sub_ED6C8(*a4, &__dst);
  v10 = sub_ED6C8(v8, __p);
  v11 = v9[14];
  v12 = v10[14];
  v13 = v11 < v12;
  if (v11 == v12)
  {
    v14 = v9[8];
    v15 = v10[8];
    v16 = v14 == v15;
    v17 = v14 < v15;
    if (v16)
    {
      v13 = v9 < v10;
    }

    else
    {
      v13 = v17;
    }
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst);
  }

  v18 = *(a3 + 23);
  if (!v13)
  {
    if (v18 < 0)
    {
      sub_114E8(v83, *a3, *(a3 + 1));
    }

    else
    {
      *v83 = *a3;
      v84 = *(a3 + 2);
    }

    if (*(a2 + 23) < 0)
    {
      sub_114E8(v81, *a2, *(a2 + 1));
    }

    else
    {
      *v81 = *a2;
      v82 = *(a2 + 2);
    }

    v31 = *a4;
    v32 = sub_ED6C8(*a4, v83);
    v33 = sub_ED6C8(v31, v81);
    v34 = v32[14];
    v35 = v33[14];
    v36 = v34 < v35;
    if (v34 == v35)
    {
      v37 = v32[8];
      v38 = v33[8];
      v16 = v37 == v38;
      v39 = v37 < v38;
      if (v16)
      {
        v36 = v32 < v33;
      }

      else
      {
        v36 = v39;
      }
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[0]);
    }

    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83[0]);
      if (v36)
      {
        goto LABEL_45;
      }
    }

    else if (v36)
    {
LABEL_45:
      v40 = *(a2 + 2);
      v41 = *a2;
      v42 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v42;
      *a3 = v41;
      *(a3 + 2) = v40;
      if (*(a2 + 23) < 0)
      {
        sub_114E8(v79, *a2, *(a2 + 1));
      }

      else
      {
        *v79 = *a2;
        v80 = *(a2 + 2);
      }

      if (*(a1 + 23) < 0)
      {
        sub_114E8(v77, *a1, *(a1 + 1));
      }

      else
      {
        *v77 = *a1;
        v78 = *(a1 + 2);
      }

      v47 = *a4;
      v48 = sub_ED6C8(v47, v79);
      v49 = sub_ED6C8(v47, v77);
      v50 = v48[14];
      v51 = v49[14];
      v52 = v50 < v51;
      if (v50 == v51)
      {
        v53 = v48[8];
        v54 = v49[8];
        v16 = v53 == v54;
        v55 = v53 < v54;
        if (v16)
        {
          v52 = v48 < v49;
        }

        else
        {
          v52 = v55;
        }
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      if (v52)
      {
        v56 = *(a1 + 2);
        v57 = *a1;
        v58 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v58;
        *a2 = v57;
        *(a2 + 2) = v56;
      }

      return 1;
    }

    return 0;
  }

  if (v18 < 0)
  {
    sub_114E8(v75, *a3, *(a3 + 1));
  }

  else
  {
    *v75 = *a3;
    v76 = *(a3 + 2);
  }

  if (*(a2 + 23) < 0)
  {
    sub_114E8(v73, *a2, *(a2 + 1));
  }

  else
  {
    *v73 = *a2;
    v74 = *(a2 + 2);
  }

  v19 = *a4;
  v20 = sub_ED6C8(*a4, v75);
  v21 = sub_ED6C8(v19, v73);
  v22 = v20[14];
  v23 = v21[14];
  v24 = v22 < v23;
  if (v22 == v23)
  {
    v25 = v20[8];
    v26 = v21[8];
    v16 = v25 == v26;
    v27 = v25 < v26;
    if (v16)
    {
      v24 = v20 < v21;
    }

    else
    {
      v24 = v27;
    }
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75[0]);
    if (v24)
    {
      goto LABEL_35;
    }
  }

  else if (v24)
  {
LABEL_35:
    v28 = *(a1 + 2);
    v29 = *a1;
    v30 = *(a3 + 2);
    *a1 = *a3;
    *(a1 + 2) = v30;
    goto LABEL_80;
  }

  v43 = *(a1 + 2);
  v44 = *a1;
  v45 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v45;
  *a2 = v44;
  *(a2 + 2) = v43;
  if (*(a3 + 23) < 0)
  {
    sub_114E8(v71, *a3, *(a3 + 1));
  }

  else
  {
    *v71 = *a3;
    v72 = *(a3 + 2);
  }

  if (*(a2 + 23) < 0)
  {
    sub_114E8(v69, *a2, *(a2 + 1));
  }

  else
  {
    *v69 = *a2;
    v70 = *(a2 + 2);
  }

  v59 = *a4;
  v60 = sub_ED6C8(v59, v71);
  v61 = sub_ED6C8(v59, v69);
  v62 = v60[14];
  v63 = v61[14];
  v64 = v62 < v63;
  if (v62 == v63)
  {
    v65 = v60[8];
    v66 = v61[8];
    v16 = v65 == v66;
    v67 = v65 < v66;
    if (v16)
    {
      v64 = v60 < v61;
    }

    else
    {
      v64 = v67;
    }
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71[0]);
  }

  if (!v64)
  {
    return 1;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v68 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v68;
LABEL_80:
  *a3 = v29;
  *(a3 + 2) = v28;
  return 1;
}

void sub_147C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

__n128 sub_147D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_14777C(a1, a2, a3, a5);
  if (*(a4 + 23) < 0)
  {
    sub_114E8(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v58 = *(a4 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_114E8(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v56 = *(a3 + 16);
  }

  v10 = *a5;
  v11 = sub_ED6C8(*a5, __dst);
  v12 = sub_ED6C8(v10, __p);
  v14 = v11[14];
  v15 = v12[14];
  v16 = v14 < v15;
  if (v14 == v15)
  {
    v17 = v11[8];
    v18 = v12[8];
    v19 = v17 == v18;
    v20 = v17 < v18;
    if (v19)
    {
      v16 = v11 < v12;
    }

    else
    {
      v16 = v20;
    }
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst[0]);
    if (!v16)
    {
      return result;
    }
  }

  else if (!v16)
  {
    return result;
  }

  v21 = *(a3 + 16);
  v22 = *a3;
  v23 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v23;
  *a4 = v22;
  *(a4 + 16) = v21;
  if (*(a3 + 23) < 0)
  {
    sub_114E8(v53, *a3, *(a3 + 8));
  }

  else
  {
    *v53 = *a3;
    v54 = *(a3 + 16);
  }

  if (*(a2 + 23) < 0)
  {
    sub_114E8(v51, *a2, *(a2 + 8));
  }

  else
  {
    *v51 = *a2;
    v52 = *(a2 + 16);
  }

  v24 = *a5;
  v25 = sub_ED6C8(*a5, v53);
  v26 = sub_ED6C8(v24, v51);
  v27 = v25[14];
  v28 = v26[14];
  v29 = v27 < v28;
  if (v27 == v28)
  {
    v30 = v25[8];
    v31 = v26[8];
    v19 = v30 == v31;
    v32 = v30 < v31;
    if (v19)
    {
      v29 = v25 < v26;
    }

    else
    {
      v29 = v32;
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
    if (!v29)
    {
      return result;
    }
  }

  else if (!v29)
  {
    return result;
  }

  v33 = *(a2 + 16);
  v34 = *a2;
  v35 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v35;
  *a3 = v34;
  *(a3 + 16) = v33;
  if (*(a2 + 23) < 0)
  {
    sub_114E8(v49, *a2, *(a2 + 8));
  }

  else
  {
    *v49 = *a2;
    v50 = *(a2 + 16);
  }

  if (*(a1 + 23) < 0)
  {
    sub_114E8(v47, *a1, *(a1 + 8));
  }

  else
  {
    *v47 = *a1;
    v48 = *(a1 + 16);
  }

  v36 = *a5;
  v37 = sub_ED6C8(*a5, v49);
  v38 = sub_ED6C8(v36, v47);
  v39 = v37[14];
  v40 = v38[14];
  v41 = v39 < v40;
  if (v39 == v40)
  {
    v42 = v37[8];
    v43 = v38[8];
    v19 = v42 == v43;
    v44 = v42 < v43;
    if (v19)
    {
      v41 = v37 < v38;
    }

    else
    {
      v41 = v44;
    }
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  if (v41)
  {
    v45 = *(a1 + 16);
    result = *a1;
    v46 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v46;
    *a2 = result;
    *(a2 + 16) = v45;
  }

  return result;
}

void sub_148048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1480D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  sub_147D34(a1, a2, a3, a4, a6);
  if (*(a5 + 23) < 0)
  {
    sub_114E8(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v76 = *(a5 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_114E8(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v74 = *(a4 + 16);
  }

  v12 = *a6;
  v13 = sub_ED6C8(*a6, __dst);
  v14 = sub_ED6C8(v12, __p);
  v16 = v13[14];
  v17 = v14[14];
  v18 = v16 < v17;
  if (v16 == v17)
  {
    v19 = v13[8];
    v20 = v14[8];
    v21 = v19 == v20;
    v22 = v19 < v20;
    if (v21)
    {
      v18 = v13 < v14;
    }

    else
    {
      v18 = v22;
    }
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(__dst[0]);
    if (!v18)
    {
      return result;
    }
  }

  else if (!v18)
  {
    return result;
  }

  v23 = *(a4 + 16);
  v24 = *a4;
  v25 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v25;
  *a5 = v24;
  *(a5 + 16) = v23;
  if (*(a4 + 23) < 0)
  {
    sub_114E8(v71, *a4, *(a4 + 8));
  }

  else
  {
    *v71 = *a4;
    v72 = *(a4 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_114E8(v69, *a3, *(a3 + 8));
  }

  else
  {
    *v69 = *a3;
    v70 = *(a3 + 16);
  }

  v26 = *a6;
  v27 = sub_ED6C8(*a6, v71);
  v28 = sub_ED6C8(v26, v69);
  v29 = v27[14];
  v30 = v28[14];
  v31 = v29 < v30;
  if (v29 == v30)
  {
    v32 = v27[8];
    v33 = v28[8];
    v21 = v32 == v33;
    v34 = v32 < v33;
    if (v21)
    {
      v31 = v27 < v28;
    }

    else
    {
      v31 = v34;
    }
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71[0]);
    if (!v31)
    {
      return result;
    }
  }

  else if (!v31)
  {
    return result;
  }

  v35 = *(a3 + 16);
  v36 = *a3;
  v37 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v37;
  *a4 = v36;
  *(a4 + 16) = v35;
  if (*(a3 + 23) < 0)
  {
    sub_114E8(v67, *a3, *(a3 + 8));
  }

  else
  {
    *v67 = *a3;
    v68 = *(a3 + 16);
  }

  if (*(a2 + 23) < 0)
  {
    sub_114E8(v65, *a2, *(a2 + 8));
  }

  else
  {
    *v65 = *a2;
    v66 = *(a2 + 16);
  }

  v38 = *a6;
  v39 = sub_ED6C8(*a6, v67);
  v40 = sub_ED6C8(v38, v65);
  v41 = v39[14];
  v42 = v40[14];
  v43 = v41 < v42;
  if (v41 == v42)
  {
    v44 = v39[8];
    v45 = v40[8];
    v21 = v44 == v45;
    v46 = v44 < v45;
    if (v21)
    {
      v43 = v39 < v40;
    }

    else
    {
      v43 = v46;
    }
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
    if (!v43)
    {
      return result;
    }
  }

  else if (!v43)
  {
    return result;
  }

  v47 = *(a2 + 16);
  v48 = *a2;
  v49 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v49;
  *a3 = v48;
  *(a3 + 16) = v47;
  if (*(a2 + 23) < 0)
  {
    sub_114E8(v63, *a2, *(a2 + 8));
  }

  else
  {
    *v63 = *a2;
    v64 = *(a2 + 16);
  }

  if (*(a1 + 23) < 0)
  {
    sub_114E8(v61, *a1, *(a1 + 8));
  }

  else
  {
    *v61 = *a1;
    v62 = *(a1 + 16);
  }

  v50 = *a6;
  v51 = sub_ED6C8(*a6, v63);
  v52 = sub_ED6C8(v50, v61);
  v53 = v51[14];
  v54 = v52[14];
  v55 = v53 < v54;
  if (v53 == v54)
  {
    v56 = v51[8];
    v57 = v52[8];
    v21 = v56 == v57;
    v58 = v56 < v57;
    if (v21)
    {
      v55 = v51 < v52;
    }

    else
    {
      v55 = v58;
    }
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (v55)
  {
    v59 = *(a1 + 16);
    result = *a1;
    v60 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v60;
    *a2 = result;
    *(a2 + 16) = v59;
  }

  return result;
}

void sub_1484E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1485A0(__int128 *a1, __int128 *a2, void **a3)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a2;
  v5 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return;
  }

  v7 = 0;
  v38 = a1 + 23;
  v8 = a1;
  do
  {
    v9 = v5;
    if (*(v8 + 47) < 0)
    {
      sub_114E8(__dst, *v5, *(v8 + 4));
    }

    else
    {
      *__dst = *v5;
      v49 = *(v5 + 2);
    }

    if (*(v8 + 23) < 0)
    {
      sub_114E8(__p, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      v47 = *(v8 + 2);
      *__p = v10;
    }

    v11 = *a3;
    v12 = sub_ED6C8(*a3, __dst);
    v13 = sub_ED6C8(v11, __p);
    v14 = v12[14];
    v15 = v13[14];
    v16 = v14 < v15;
    if (v14 == v15)
    {
      v17 = v12[8];
      v18 = v13[8];
      v19 = v17 == v18;
      v20 = v17 < v18;
      if (v19)
      {
        v16 = v12 < v13;
      }

      else
      {
        v16 = v20;
      }
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(__dst[0]);
      if (!v16)
      {
        goto LABEL_45;
      }
    }

    else if (!v16)
    {
      goto LABEL_45;
    }

    v21 = *v9;
    v22 = *(v8 + 4);
    v45[0] = *(v8 + 10);
    *(v45 + 3) = *(v8 + 43);
    v23 = *(v8 + 47);
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *v9 = 0;
    for (i = v7; ; i -= 24)
    {
      v25 = a1 + i;
      if (*(a1 + i + 47) < 0)
      {
        operator delete(*(v25 + 24));
      }

      *(v25 + 24) = *v25;
      *(v25 + 40) = *(v25 + 16);
      *(v25 + 23) = 0;
      *v25 = 0;
      if (!i)
      {
        v36 = a1;
        v37 = v38;
        goto LABEL_44;
      }

      if (v23 < 0)
      {
        sub_114E8(v42, v21, v22);
      }

      else
      {
        v42[0] = v21;
        v42[1] = v22;
        *v43 = v45[0];
        *&v43[3] = *(v45 + 3);
        v44 = v23;
      }

      v26 = (a1 + i - 24);
      if (*(a1 + i - 1) < 0)
      {
        sub_114E8(v40, *v26, *(a1 + i - 16));
      }

      else
      {
        *v40 = *v26;
        v41 = *(a1 + i - 8);
      }

      v27 = *a3;
      v28 = sub_ED6C8(*a3, v42);
      v29 = sub_ED6C8(v27, v40);
      v30 = v28[14];
      v31 = v29[14];
      v32 = v30 < v31;
      if (v30 == v31)
      {
        v33 = v28[8];
        v34 = v29[8];
        v19 = v33 == v34;
        v35 = v33 < v34;
        if (v19)
        {
          v32 = v28 < v29;
        }

        else
        {
          v32 = v35;
        }
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (v44 < 0)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_42;
      }

LABEL_40:
      ;
    }

    operator delete(v42[0]);
    if (v32)
    {
      goto LABEL_40;
    }

LABEL_42:
    v36 = (a1 + i);
    v37 = a1 + i + 23;
    if (*v37 < 0)
    {
      operator delete(*v36);
    }

LABEL_44:
    v3 = a2;
    *v36 = v21;
    *(v36 + 1) = v22;
    *(v36 + 4) = v45[0];
    *(v36 + 19) = *(v45 + 3);
    *v37 = v23;
LABEL_45:
    v5 = (v9 + 24);
    v7 += 24;
    v8 = v9;
  }

  while ((v9 + 24) != v3);
}

void sub_148880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1488F4(__int128 *a1, __int128 *a2, void **a3)
{
  if (a1 != a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v7 = a1 + 47;
      do
      {
        v8 = v5;
        if (*(v4 + 47) < 0)
        {
          sub_114E8(__dst, *v5, *(v4 + 4));
        }

        else
        {
          *__dst = *v5;
          v44 = *(v5 + 2);
        }

        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 1));
        }

        else
        {
          v9 = *v4;
          v42 = *(v4 + 2);
          *__p = v9;
        }

        v10 = *a3;
        v11 = sub_ED6C8(*a3, __dst);
        v12 = sub_ED6C8(v10, __p);
        v13 = v11[14];
        v14 = v12[14];
        v15 = v13 < v14;
        if (v13 == v14)
        {
          v16 = v11[8];
          v17 = v12[8];
          v18 = v16 == v17;
          v19 = v16 < v17;
          if (v18)
          {
            v15 = v11 < v12;
          }

          else
          {
            v15 = v19;
          }
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(__dst[0]);
          if (v15)
          {
LABEL_20:
            v20 = *v8;
            v21 = *(v4 + 4);
            v40[0] = *(v4 + 10);
            *(v40 + 3) = *(v4 + 43);
            v22 = *(v4 + 47);
            *(v8 + 1) = 0;
            *(v8 + 2) = 0;
            *v8 = 0;
            v23 = v7;
            do
            {
              v24 = (v23 - 23);
              if (*v23 < 0)
              {
                operator delete(*v24);
              }

              *v24 = *(v23 - 47);
              *(v23 - 7) = *(v23 - 31);
              *(v23 - 24) = 0;
              *(v23 - 47) = 0;
              if (v22 < 0)
              {
                sub_114E8(v37, v20, v21);
              }

              else
              {
                v37[0] = v20;
                v37[1] = v21;
                *v38 = v40[0];
                *&v38[3] = *(v40 + 3);
                v39 = v22;
              }

              if (*(v23 - 48) < 0)
              {
                sub_114E8(v35, *(v23 - 71), *(v23 - 63));
              }

              else
              {
                *v35 = *(v23 - 71);
                v36 = *(v23 - 55);
              }

              v25 = *a3;
              v26 = sub_ED6C8(*a3, v37);
              v27 = sub_ED6C8(v25, v35);
              v28 = v26[14];
              v29 = v27[14];
              v30 = v28 < v29;
              if (v28 == v29)
              {
                v31 = v26[8];
                v32 = v27[8];
                v18 = v31 == v32;
                v33 = v31 < v32;
                if (v18)
                {
                  v30 = v26 < v27;
                }

                else
                {
                  v30 = v33;
                }
              }

              if (SHIBYTE(v36) < 0)
              {
                operator delete(v35[0]);
              }

              if (v39 < 0)
              {
                operator delete(v37[0]);
              }

              v23 -= 24;
            }

            while (v30);
            if (*v23 < 0)
            {
              operator delete(*(v23 - 23));
            }

            *(v23 - 23) = v20;
            *(v23 - 15) = v21;
            *(v23 - 7) = v40[0];
            *(v23 - 1) = *(v40 + 3);
            *v23 = v22;
            v3 = a2;
          }
        }

        else if (v15)
        {
          goto LABEL_20;
        }

        v5 = (v8 + 24);
        v7 += 24;
        v4 = v8;
      }

      while ((v8 + 24) != v3);
    }
  }
}

void sub_148BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_148C20(__int128 *a1, void **a2, void **a3)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v108[0] = *(a1 + 4);
  *(v108 + 3) = *(a1 + 19);
  v8 = *(a1 + 23);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if (v8 < 0)
  {
    sub_114E8(__dst, v6, v7);
  }

  else
  {
    __dst[0] = v6;
    __dst[1] = v7;
    *v106 = v108[0];
    *&v106[3] = *(v108 + 3);
    v107 = v8;
  }

  if (*(a2 - 1) < 0)
  {
    sub_114E8(&v103, *(a2 - 3), *(a2 - 2));
  }

  else
  {
    v103 = *(a2 - 3);
    v104 = *(a2 - 1);
  }

  v9 = *a3;
  v10 = sub_ED6C8(*a3, __dst);
  v11 = sub_ED6C8(v9, &v103);
  v12 = v10[14];
  v13 = v11[14];
  v14 = v12 < v13;
  if (v12 == v13)
  {
    v15 = v10[8];
    v16 = v11[8];
    v17 = v15 == v16;
    v18 = v15 < v16;
    if (v17)
    {
      v14 = v10 < v11;
    }

    else
    {
      v14 = v18;
    }
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103);
  }

  if (v107 < 0)
  {
    operator delete(__dst[0]);
  }

  v77 = a1;
  if (v14)
  {
    v19 = a1;
    do
    {
      if (v8 < 0)
      {
        sub_114E8(v100, v6, v7);
      }

      else
      {
        v100[0] = v6;
        v100[1] = v7;
        *v101 = v108[0];
        *&v101[3] = *(v108 + 3);
        v102 = v8;
      }

      i = (v19 + 24);
      if (*(v19 + 47) < 0)
      {
        sub_114E8(__p, *(v19 + 3), *(v19 + 4));
      }

      else
      {
        *__p = *i;
        v99 = *(v19 + 5);
      }

      v21 = *a3;
      v22 = sub_ED6C8(*a3, v100);
      v23 = sub_ED6C8(v21, __p);
      v24 = v22[14];
      v25 = v23[14];
      v26 = v24 < v25;
      if (v24 == v25)
      {
        v27 = v22[8];
        v28 = v23[8];
        v17 = v27 == v28;
        v29 = v27 < v28;
        if (v17)
        {
          v26 = v22 < v23;
        }

        else
        {
          v26 = v29;
        }
      }

      if (SHIBYTE(v99) < 0)
      {
        operator delete(__p[0]);
      }

      if (v102 < 0)
      {
        operator delete(v100[0]);
      }

      v19 = i;
    }

    while (!v26);
  }

  else
  {
    for (i = (a1 + 24); i < a2; i = (i + 24))
    {
      if (v8 < 0)
      {
        sub_114E8(v95, v6, v7);
      }

      else
      {
        v95[0] = v6;
        v95[1] = v7;
        *v96 = v108[0];
        *&v96[3] = *(v108 + 3);
        v97 = v8;
      }

      if (*(i + 23) < 0)
      {
        sub_114E8(v93, *i, *(i + 1));
      }

      else
      {
        *v93 = *i;
        v94 = *(i + 2);
      }

      v30 = *a3;
      v31 = sub_ED6C8(*a3, v95);
      v32 = sub_ED6C8(v30, v93);
      v33 = v31[14];
      v34 = v32[14];
      v35 = v33 < v34;
      if (v33 == v34)
      {
        v36 = v31[8];
        v37 = v32[8];
        v17 = v36 == v37;
        v38 = v36 < v37;
        if (v17)
        {
          v35 = v31 < v32;
        }

        else
        {
          v35 = v38;
        }
      }

      if (SHIBYTE(v94) < 0)
      {
        operator delete(v93[0]);
      }

      if (v97 < 0)
      {
        operator delete(v95[0]);
      }

      if (v35)
      {
        break;
      }
    }
  }

  if (i >= a2)
  {
    v39 = a2;
  }

  else
  {
    do
    {
      if (v8 < 0)
      {
        sub_114E8(v90, v6, v7);
      }

      else
      {
        v90[0] = v6;
        v90[1] = v7;
        *v91 = v108[0];
        *&v91[3] = *(v108 + 3);
        v92 = v8;
      }

      v39 = a2 - 3;
      if (*(a2 - 1) < 0)
      {
        sub_114E8(v88, *(a2 - 3), *(a2 - 2));
      }

      else
      {
        *v88 = *v39;
        v89 = *(a2 - 1);
      }

      v40 = *a3;
      v41 = sub_ED6C8(*a3, v90);
      v42 = sub_ED6C8(v40, v88);
      v43 = v41[14];
      v44 = v42[14];
      v45 = v43 < v44;
      if (v43 == v44)
      {
        v46 = v41[8];
        v47 = v42[8];
        v17 = v46 == v47;
        v48 = v46 < v47;
        if (v17)
        {
          v45 = v41 < v42;
        }

        else
        {
          v45 = v48;
        }
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88[0]);
      }

      if (v92 < 0)
      {
        operator delete(v90[0]);
      }

      a2 = v39;
    }

    while (v45);
  }

  while (i < v39)
  {
    v49 = *i;
    v110 = *(i + 2);
    v109 = v49;
    v50 = *v39;
    *(i + 2) = v39[2];
    *i = v50;
    v51 = v109;
    v39[2] = v110;
    *v39 = v51;
    v52 = i;
    do
    {
      if (v8 < 0)
      {
        sub_114E8(v85, v6, v7);
      }

      else
      {
        v85[0] = v6;
        v85[1] = v7;
        *v86 = v108[0];
        *&v86[3] = *(v108 + 3);
        v87 = v8;
      }

      i = (v52 + 24);
      if (*(v52 + 47) < 0)
      {
        sub_114E8(v83, *(v52 + 3), *(v52 + 4));
      }

      else
      {
        *v83 = *i;
        v84 = *(v52 + 5);
      }

      v53 = *a3;
      v54 = sub_ED6C8(*a3, v85);
      v55 = sub_ED6C8(v53, v83);
      v56 = v54[14];
      v57 = v55[14];
      v58 = v56 < v57;
      if (v56 == v57)
      {
        v59 = v54[8];
        v60 = v55[8];
        v17 = v59 == v60;
        v61 = v59 < v60;
        if (v17)
        {
          v58 = v54 < v55;
        }

        else
        {
          v58 = v61;
        }
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      if (v87 < 0)
      {
        operator delete(v85[0]);
      }

      v52 = i;
    }

    while (!v58);
    v62 = v39;
    do
    {
      if (v8 < 0)
      {
        sub_114E8(v80, v6, v7);
      }

      else
      {
        v80[0] = v6;
        v80[1] = v7;
        *v81 = v108[0];
        *&v81[3] = *(v108 + 3);
        v82 = v8;
      }

      v39 = v62 - 3;
      if (*(v62 - 1) < 0)
      {
        sub_114E8(v78, *(v62 - 3), *(v62 - 2));
      }

      else
      {
        v63 = *v39;
        v79 = *(v62 - 1);
        *v78 = v63;
      }

      v64 = *a3;
      v65 = sub_ED6C8(*a3, v80);
      v66 = sub_ED6C8(v64, v78);
      v67 = v65[14];
      v68 = v66[14];
      v69 = v67 < v68;
      if (v67 == v68)
      {
        v70 = v65[8];
        v71 = v66[8];
        v17 = v70 == v71;
        v72 = v70 < v71;
        if (v17)
        {
          v69 = v65 < v66;
        }

        else
        {
          v69 = v72;
        }
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(v78[0]);
      }

      if (v82 < 0)
      {
        operator delete(v80[0]);
      }

      v62 = v39;
    }

    while (v69);
  }

  v73 = i - 3;
  if ((i - 24) == v77)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v73);
    }
  }

  else
  {
    if (*(v77 + 23) < 0)
    {
      operator delete(*v77);
    }

    v74 = *v73;
    *(v77 + 2) = *(i - 1);
    *v77 = v74;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  *(i - 3) = v6;
  *(i - 2) = v7;
  v75 = v108[0];
  *(i - 5) = *(v108 + 3);
  *(i - 2) = v75;
  *(i - 1) = v8;
  return i;
}

void sub_149288(_Unwind_Exception *a1)
{
  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1493C4(uint64_t a1, void **a2, void **a3)
{
  v6 = 0;
  v7 = *a1;
  v8 = *(a1 + 8);
  v95[0] = *(a1 + 16);
  *(v95 + 3) = *(a1 + 19);
  v9 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  do
  {
    v10 = a1 + v6;
    if (*(a1 + v6 + 47) < 0)
    {
      sub_114E8(&__dst, *(v10 + 24), *(v10 + 32));
    }

    else
    {
      __dst = *(v10 + 24);
      v94 = *(v10 + 40);
    }

    if (v9 < 0)
    {
      sub_114E8(v90, v7, v8);
    }

    else
    {
      v90[0] = v7;
      v90[1] = v8;
      *v91 = v95[0];
      *&v91[3] = *(v95 + 3);
      v92 = v9;
    }

    v11 = *a3;
    v12 = sub_ED6C8(*a3, &__dst);
    v13 = sub_ED6C8(v11, v90);
    v14 = v12[14];
    v15 = v13[14];
    v16 = v14 < v15;
    if (v14 == v15)
    {
      v17 = v12[8];
      v18 = v13[8];
      v19 = v17 == v18;
      v20 = v17 < v18;
      if (v19)
      {
        v16 = v12 < v13;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v92 < 0)
    {
      operator delete(v90[0]);
    }

    if (SHIBYTE(v94) < 0)
    {
      operator delete(__dst);
    }

    v6 += 24;
  }

  while (v16);
  v21 = (a1 + v6);
  if (v6 == 24)
  {
    if (v21 >= a2)
    {
      i = a2;
    }

    else
    {
      for (i = a2 - 3; ; i -= 3)
      {
        if (*(i + 23) < 0)
        {
          sub_114E8(&v88, *i, i[1]);
        }

        else
        {
          v88 = *i;
          v89 = i[2];
        }

        if (v9 < 0)
        {
          sub_114E8(v85, v7, v8);
        }

        else
        {
          v85[0] = v7;
          v85[1] = v8;
          *v86 = v95[0];
          *&v86[3] = *(v95 + 3);
          v87 = v9;
        }

        v32 = *a3;
        v33 = sub_ED6C8(*a3, &v88);
        v34 = sub_ED6C8(v32, v85);
        v35 = v33[14];
        v36 = v34[14];
        v37 = v35 < v36;
        if (v35 == v36)
        {
          v38 = v33[8];
          v39 = v34[8];
          v19 = v38 == v39;
          v40 = v38 < v39;
          if (v19)
          {
            v37 = v33 < v34;
          }

          else
          {
            v37 = v40;
          }
        }

        if (v87 < 0)
        {
          operator delete(v85[0]);
        }

        if (SHIBYTE(v89) < 0)
        {
          operator delete(v88);
        }

        v41 = v21 >= i || v37;
        if (v41)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      i = a2 - 3;
      if (*(a2 - 1) < 0)
      {
        sub_114E8(v83, *(a2 - 3), *(a2 - 2));
      }

      else
      {
        *v83 = *i;
        v84 = *(a2 - 1);
      }

      if (v9 < 0)
      {
        sub_114E8(__p, v7, v8);
      }

      else
      {
        __p[0] = v7;
        __p[1] = v8;
        *v81 = v95[0];
        *&v81[3] = *(v95 + 3);
        v82 = v9;
      }

      v23 = *a3;
      v24 = sub_ED6C8(*a3, v83);
      v25 = sub_ED6C8(v23, __p);
      v26 = v24[14];
      v27 = v25[14];
      v28 = v26 < v27;
      if (v26 == v27)
      {
        v29 = v24[8];
        v30 = v25[8];
        v19 = v29 == v30;
        v31 = v29 < v30;
        if (v19)
        {
          v28 = v24 < v25;
        }

        else
        {
          v28 = v31;
        }
      }

      if (v82 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83[0]);
      }

      a2 = i;
    }

    while (!v28);
  }

  while (v21 < i)
  {
    v96 = *v21;
    v42 = v96;
    v97 = *(v21 + 2);
    v43 = v97;
    v44 = i[2];
    *v21 = *i;
    *(v21 + 2) = v44;
    i[2] = v43;
    *i = v42;
    v45 = v21;
    do
    {
      v21 = (v45 + 24);
      if (*(v45 + 47) < 0)
      {
        sub_114E8(v78, *(v45 + 3), *(v45 + 4));
      }

      else
      {
        *v78 = *v21;
        v79 = *(v45 + 5);
      }

      if (v9 < 0)
      {
        sub_114E8(v75, v7, v8);
      }

      else
      {
        v75[0] = v7;
        v75[1] = v8;
        *v76 = v95[0];
        *&v76[3] = *(v95 + 3);
        v77 = v9;
      }

      v46 = *a3;
      v47 = sub_ED6C8(*a3, v78);
      v48 = sub_ED6C8(v46, v75);
      v49 = v47[14];
      v50 = v48[14];
      v51 = v49 < v50;
      if (v49 == v50)
      {
        v52 = v47[8];
        v53 = v48[8];
        v19 = v52 == v53;
        v54 = v52 < v53;
        if (v19)
        {
          v51 = v47 < v48;
        }

        else
        {
          v51 = v54;
        }
      }

      if (v77 < 0)
      {
        operator delete(v75[0]);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(v78[0]);
      }

      v45 = v21;
    }

    while (v51);
    v55 = i;
    do
    {
      i = v55 - 3;
      if (*(v55 - 1) < 0)
      {
        sub_114E8(v73, *(v55 - 3), *(v55 - 2));
      }

      else
      {
        v56 = *i;
        v74 = *(v55 - 1);
        *v73 = v56;
      }

      if (v9 < 0)
      {
        sub_114E8(v70, v7, v8);
      }

      else
      {
        v70[0] = v7;
        v70[1] = v8;
        *v71 = v95[0];
        *&v71[3] = *(v95 + 3);
        v72 = v9;
      }

      v57 = *a3;
      v58 = sub_ED6C8(*a3, v73);
      v59 = sub_ED6C8(v57, v70);
      v60 = v58[14];
      v61 = v59[14];
      v62 = v60 < v61;
      if (v60 == v61)
      {
        v63 = v58[8];
        v64 = v59[8];
        v19 = v63 == v64;
        v65 = v63 < v64;
        if (v19)
        {
          v62 = v58 < v59;
        }

        else
        {
          v62 = v65;
        }
      }

      if (v72 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73[0]);
      }

      v55 = i;
    }

    while (!v62);
  }

  v66 = v21 - 3;
  if ((v21 - 24) == a1)
  {
    if (*(v21 - 1) < 0)
    {
      operator delete(*v66);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v67 = *v66;
    *(a1 + 16) = *(v21 - 1);
    *a1 = v67;
    *(v21 - 1) = 0;
    *(v21 - 24) = 0;
  }

  *(v21 - 3) = v7;
  *(v21 - 2) = v8;
  v68 = v95[0];
  *(v21 - 5) = *(v95 + 3);
  *(v21 - 2) = v68;
  *(v21 - 1) = v9;
  return v21 - 24;
}

void sub_149984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (v60 < 0)
  {
    operator delete(v59);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_149A8C(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = (a2 - 24);
        if (*(a2 - 1) < 0)
        {
          sub_114E8(&v68, *(a2 - 24), *(a2 - 16));
        }

        else
        {
          v68 = *v7;
          v69 = *(a2 - 8);
        }

        if (*(a1 + 23) < 0)
        {
          sub_114E8(v66, *a1, *(a1 + 8));
        }

        else
        {
          *v66 = *a1;
          v67 = *(a1 + 16);
        }

        v40 = *a3;
        v41 = sub_ED6C8(*a3, &v68);
        v42 = sub_ED6C8(v40, v66);
        v43 = v41[14];
        v44 = v42[14];
        v45 = v43 < v44;
        if (v43 == v44)
        {
          v46 = v41[8];
          v47 = v42[8];
          v21 = v46 == v47;
          v48 = v46 < v47;
          if (v21)
          {
            v45 = v41 < v42;
          }

          else
          {
            v45 = v48;
          }
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66[0]);
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68);
        }

        if (v45)
        {
          v49 = *(a1 + 16);
          v50 = *a1;
          v51 = *(v4 - 8);
          *a1 = *v7;
          *(a1 + 16) = v51;
          *v7 = v50;
          *(v4 - 8) = v49;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_14777C(a1, (a1 + 24), (a2 - 24), a3);
      return 1;
    case 4:
      sub_147D34(a1, a1 + 24, a1 + 48, a2 - 24, a3);
      return 1;
    case 5:
      sub_1480D8(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
      return 1;
  }

LABEL_11:
  v8 = a1 + 48;
  sub_14777C(a1, (a1 + 24), (a1 + 48), a3);
  v9 = a1 + 72;
  if (a1 + 72 == v4)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v53 = v4;
  while (1)
  {
    if (*(v9 + 23) < 0)
    {
      sub_114E8(__dst, *v9, *(v9 + 8));
    }

    else
    {
      *__dst = *v9;
      v65 = *(v9 + 16);
    }

    if (*(v8 + 23) < 0)
    {
      sub_114E8(__p, *v8, *(v8 + 8));
    }

    else
    {
      v12 = *v8;
      v63 = *(v8 + 16);
      *__p = v12;
    }

    v13 = *a3;
    v14 = sub_ED6C8(*a3, __dst);
    v15 = sub_ED6C8(v13, __p);
    v16 = v14[14];
    v17 = v15[14];
    v18 = v16 < v17;
    if (v16 == v17)
    {
      v19 = v14[8];
      v20 = v15[8];
      v21 = v19 == v20;
      v22 = v19 < v20;
      if (v21)
      {
        v18 = v14 < v15;
      }

      else
      {
        v18 = v22;
      }
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v65) < 0)
    {
      break;
    }

    if (v18)
    {
      goto LABEL_29;
    }

LABEL_55:
    v8 = v9;
    v10 += 24;
    v9 += 24;
    if (v9 == v4)
    {
      return 1;
    }
  }

  operator delete(__dst[0]);
  if (!v18)
  {
    goto LABEL_55;
  }

LABEL_29:
  v55 = v11;
  v23 = 0;
  v24 = *v9;
  v25 = *(v9 + 8);
  v61[0] = *(v9 + 16);
  *(v61 + 3) = *(v9 + 19);
  v26 = *(v9 + 23);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  v54 = v10;
  while (1)
  {
    v27 = a1 + v10;
    if (v23 < 0)
    {
      operator delete(*(v27 + 72));
    }

    *(v27 + 72) = *(v27 + 48);
    *(v27 + 88) = *(v27 + 64);
    *(v27 + 71) = 0;
    *(v27 + 48) = 0;
    if (v10 == -48)
    {
      v38 = a1;
      v39 = (a1 + 23);
      goto LABEL_53;
    }

    if (v26 < 0)
    {
      sub_114E8(v58, v24, v25);
    }

    else
    {
      v58[0] = v24;
      v58[1] = v25;
      *v59 = v61[0];
      *&v59[3] = *(v61 + 3);
      v60 = v26;
    }

    v28 = a1 + v10;
    if (*(a1 + v10 + 47) < 0)
    {
      sub_114E8(v56, *(v28 + 24), *(v28 + 32));
    }

    else
    {
      *v56 = *(v28 + 24);
      v57 = *(v28 + 40);
    }

    v29 = *a3;
    v30 = sub_ED6C8(*a3, v58);
    v31 = sub_ED6C8(v29, v56);
    v32 = v30[14];
    v33 = v31[14];
    v34 = v32 < v33;
    if (v32 == v33)
    {
      v35 = v30[8];
      v36 = v31[8];
      v21 = v35 == v36;
      v37 = v35 < v36;
      if (v21)
      {
        v34 = v30 < v31;
      }

      else
      {
        v34 = v37;
      }
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[0]);
    }

    if (v60 < 0)
    {
      break;
    }

    if (!v34)
    {
      goto LABEL_51;
    }

LABEL_49:
    v23 = *(v27 + 71);
    v10 -= 24;
  }

  operator delete(v58[0]);
  if (v34)
  {
    goto LABEL_49;
  }

LABEL_51:
  v39 = (a1 + v10 + 71);
  v38 = a1 + v10 + 48;
  if (*v39 < 0)
  {
    operator delete(*v38);
  }

LABEL_53:
  v10 = v54;
  *v38 = v24;
  *(v38 + 8) = v25;
  *(v38 + 16) = v61[0];
  *(v38 + 19) = *(v61 + 3);
  *v39 = v26;
  v11 = v55 + 1;
  if (v55 != 7)
  {
    v4 = v53;
    goto LABEL_55;
  }

  return v9 + 24 == v53;
}

void sub_149F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_149FC4(uint64_t a1, __int128 *a2, __int128 *a3, void **a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_14A2E8(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      while (1)
      {
        if (*(v13 + 23) < 0)
        {
          sub_114E8(__dst, *v13, *(v13 + 1));
        }

        else
        {
          *__dst = *v13;
          v42 = *(v13 + 2);
        }

        if (*(a1 + 23) < 0)
        {
          sub_114E8(__p, *a1, *(a1 + 8));
        }

        else
        {
          *__p = *a1;
          v40 = *(a1 + 16);
        }

        v14 = *a4;
        v15 = sub_ED6C8(*a4, __dst);
        v16 = sub_ED6C8(v14, __p);
        v17 = v15[14];
        v18 = v16[14];
        v19 = v17 < v18;
        if (v17 == v18)
        {
          v20 = v15[8];
          v21 = v16[8];
          v22 = v20 == v21;
          v23 = v20 < v21;
          if (v22)
          {
            v19 = v15 < v16;
          }

          else
          {
            v19 = v23;
          }
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }

        if ((SHIBYTE(v42) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__dst[0]);
        if (v19)
        {
          goto LABEL_23;
        }

LABEL_24:
        v13 = (v13 + 24);
        if (v13 == a3)
        {
          goto LABEL_25;
        }
      }

      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_23:
      v24 = *(v13 + 2);
      v25 = *v13;
      v26 = *(a1 + 16);
      *v13 = *a1;
      *(v13 + 2) = v26;
      *a1 = v25;
      *(a1 + 16) = v24;
      sub_14A2E8(a1, a4, v9, a1);
      goto LABEL_24;
    }

LABEL_25:
    if (v8 >= 25)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v28 = a2 - 3;
      do
      {
        v29 = *a1;
        v43[0] = *(a1 + 8);
        *(v43 + 7) = *(a1 + 15);
        v30 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v31 = sub_14A864(a1, a4, v27);
        v32 = v31;
        v33 = *(v31 + 23);
        if (v28 == v31)
        {
          if (v33 < 0)
          {
            operator delete(*v31);
          }

          v36 = v43[0];
          *v32 = v29;
          v32[1] = v36;
          *(v32 + 15) = *(v43 + 7);
          *(v32 + 23) = v30;
        }

        else
        {
          if (v33 < 0)
          {
            operator delete(*v31);
          }

          v34 = *v28;
          v32[2] = v28[2];
          *v32 = v34;
          v35 = v43[0];
          *v28 = v29;
          v28[1] = v35;
          *(v28 + 15) = *(v43 + 7);
          *(v28 + 23) = v30;
          sub_14AA34(a1, (v32 + 3), a4, 0xAAAAAAAAAAAAAAABLL * ((v32 - a1 + 24) >> 3));
        }

        v28 -= 3;
      }

      while (v27-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_14A29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14A2E8(uint64_t a1, void **a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v57 = v4 >> 1;
    if ((v4 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v8 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v9 = (a1 + 24 * v8);
      v10 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v10 < a3)
      {
        if (*(v9 + 23) < 0)
        {
          sub_114E8(&__dst, *v9, *(v9 + 1));
        }

        else
        {
          __dst = *v9;
          v75 = *(v9 + 2);
        }

        if (*(v9 + 47) < 0)
        {
          sub_114E8(&v72, *(v9 + 3), *(v9 + 4));
        }

        else
        {
          v72 = *(v9 + 24);
          v73 = *(v9 + 5);
        }

        v11 = *a2;
        v12 = sub_ED6C8(*a2, &__dst);
        v13 = sub_ED6C8(v11, &v72);
        v14 = v12[14];
        v15 = v13[14];
        v16 = v14 < v15;
        if (v14 == v15)
        {
          v17 = v12[8];
          v18 = v13[8];
          v19 = v17 == v18;
          v20 = v17 < v18;
          if (v19)
          {
            v16 = v12 < v13;
          }

          else
          {
            v16 = v20;
          }
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v75) < 0)
        {
          operator delete(__dst);
          if (!v16)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v16)
        {
LABEL_18:
          v9 = (v9 + 24);
          v8 = v10;
        }
      }

LABEL_19:
      if (*(v9 + 23) < 0)
      {
        sub_114E8(&v70, *v9, *(v9 + 1));
      }

      else
      {
        v70 = *v9;
        v71 = *(v9 + 2);
      }

      v21 = a1;
      if (*(v5 + 23) < 0)
      {
        sub_114E8(__p, *v5, *(v5 + 1));
      }

      else
      {
        *__p = *v5;
        v69 = *(v5 + 2);
      }

      v22 = *a2;
      v23 = sub_ED6C8(*a2, &v70);
      v24 = sub_ED6C8(v22, __p);
      v25 = v23[14];
      v26 = v24[14];
      v27 = v25 < v26;
      if (v25 == v26)
      {
        v28 = v23[8];
        v29 = v24[8];
        v19 = v28 == v29;
        v30 = v28 < v29;
        if (v19)
        {
          v27 = v23 < v24;
        }

        else
        {
          v27 = v30;
        }
      }

      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
        if (v27)
        {
          return;
        }
      }

      else if (v27)
      {
        return;
      }

      v54 = *(v5 + 1);
      v55 = *v5;
      v67[0] = *(v5 + 4);
      *(v67 + 3) = *(v5 + 19);
      v31 = *(v5 + 23);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      while (1)
      {
        v32 = v9;
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v33 = *v9;
        *(v5 + 2) = *(v9 + 2);
        *v5 = v33;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (v57 < v8)
        {
LABEL_75:
          *v32 = v55;
          *(v32 + 1) = v54;
          *(v32 + 4) = v67[0];
          *(v32 + 19) = *(v67 + 3);
          *(v32 + 23) = v31;
          return;
        }

        v34 = 2 * v8;
        v8 = (2 * v8) | 1;
        v9 = (v21 + 24 * v8);
        v35 = v34 + 2;
        if (v34 + 2 < a3)
        {
          if (*(v9 + 23) < 0)
          {
            sub_114E8(v65, *v9, *(v9 + 1));
          }

          else
          {
            *v65 = *v9;
            v66 = *(v9 + 2);
          }

          if (*(v9 + 47) < 0)
          {
            sub_114E8(v63, *(v9 + 3), *(v9 + 4));
          }

          else
          {
            *v63 = *(v9 + 24);
            v64 = *(v9 + 5);
          }

          v36 = *a2;
          v37 = sub_ED6C8(*a2, v65);
          v38 = sub_ED6C8(v36, v63);
          v39 = v37[14];
          v40 = v38[14];
          v41 = v39 < v40;
          if (v39 == v40)
          {
            v42 = v37[8];
            v43 = v38[8];
            v19 = v42 == v43;
            v44 = v42 < v43;
            if (v19)
            {
              v41 = v37 < v38;
            }

            else
            {
              v41 = v44;
            }
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(v63[0]);
          }

          if (SHIBYTE(v66) < 0)
          {
            operator delete(v65[0]);
            if (!v41)
            {
              goto LABEL_55;
            }

LABEL_54:
            v9 = (v9 + 24);
            v8 = v35;
            goto LABEL_55;
          }

          if (v41)
          {
            goto LABEL_54;
          }
        }

LABEL_55:
        if (*(v9 + 23) < 0)
        {
          sub_114E8(v61, *v9, *(v9 + 1));
        }

        else
        {
          *v61 = *v9;
          v62 = *(v9 + 2);
        }

        if (v31 < 0)
        {
          sub_114E8(v58, v55, v54);
        }

        else
        {
          v58[0] = v55;
          v58[1] = v54;
          *v59 = v67[0];
          *&v59[3] = *(v67 + 3);
          v60 = v31;
        }

        v21 = a1;
        v45 = *a2;
        v46 = sub_ED6C8(*a2, v61);
        v47 = sub_ED6C8(v45, v58);
        v48 = v46[14];
        v49 = v47[14];
        v50 = v48 < v49;
        if (v48 == v49)
        {
          v51 = v46[8];
          v52 = v47[8];
          v19 = v51 == v52;
          v53 = v51 < v52;
          if (v19)
          {
            v50 = v46 < v47;
          }

          else
          {
            v50 = v53;
          }
        }

        if (v60 < 0)
        {
          operator delete(v58[0]);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(v61[0]);
        }

        v5 = v32;
        if (v50)
        {
          if (*(v32 + 23) < 0)
          {
            operator delete(*v32);
          }

          goto LABEL_75;
        }
      }
    }
  }
}

void sub_14A798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_14A864(_OWORD *a1, void **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_18;
    }

    if (*(v8 + 47) < 0)
    {
      sub_114E8(__dst, *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v12 = *v9;
      v30 = *(v8 + 40);
      *__dst = v12;
    }

    v13 = (v8 + 48);
    if (*(v8 + 71) < 0)
    {
      sub_114E8(__p, *(v8 + 48), *(v8 + 56));
    }

    else
    {
      v14 = *v13;
      v28 = *(v8 + 64);
      *__p = v14;
    }

    v15 = *a2;
    v16 = sub_ED6C8(*a2, __dst);
    v17 = sub_ED6C8(v15, __p);
    v18 = v16[14];
    v19 = v17[14];
    v20 = v18 < v19;
    if (v18 == v19)
    {
      v21 = v16[8];
      v22 = v17[8];
      v23 = v21 == v22;
      v24 = v21 < v22;
      if (v23)
      {
        v20 = v16 < v17;
      }

      else
      {
        v20 = v24;
      }
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      v9 = v13;
      v6 = v11;
      goto LABEL_18;
    }

    operator delete(__dst[0]);
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v25 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v25;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_14AA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14AA34(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 24 * (v4 >> 1));
    if (*(v8 + 23) < 0)
    {
      sub_114E8(__dst, *v8, *(v8 + 1));
    }

    else
    {
      *__dst = *v8;
      v44 = *(v8 + 2);
    }

    v9 = (a2 - 24);
    if (*(a2 - 1) < 0)
    {
      sub_114E8(__p, *(a2 - 24), *(a2 - 16));
    }

    else
    {
      *__p = *v9;
      v42 = *(a2 - 8);
    }

    v10 = *a3;
    v11 = sub_ED6C8(*a3, __dst);
    v12 = sub_ED6C8(v10, __p);
    v13 = v11[14];
    v14 = v12[14];
    v15 = v13 < v14;
    if (v13 == v14)
    {
      v16 = v11[8];
      v17 = v12[8];
      v18 = v16 == v17;
      v19 = v16 < v17;
      if (v18)
      {
        v15 = v11 < v12;
      }

      else
      {
        v15 = v19;
      }
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(__dst[0]);
      if (!v15)
      {
        return;
      }
    }

    else if (!v15)
    {
      return;
    }

    v20 = *(a2 - 24);
    v21 = *(a2 - 16);
    v40[0] = *(a2 - 8);
    *(v40 + 3) = *(a2 - 5);
    v22 = *(a2 - 1);
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    *v9 = 0;
    while (1)
    {
      v23 = v8;
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v24 = *v8;
      *(v9 + 2) = *(v8 + 2);
      *v9 = v24;
      *(v8 + 23) = 0;
      *v8 = 0;
      if (!v7)
      {
        break;
      }

      v7 = (v7 - 1) >> 1;
      v8 = (a1 + 24 * v7);
      if (*(v8 + 23) < 0)
      {
        sub_114E8(v38, *v8, *(v8 + 1));
      }

      else
      {
        *v38 = *v8;
        v39 = *(v8 + 2);
      }

      if (v22 < 0)
      {
        sub_114E8(v35, v20, v21);
      }

      else
      {
        v35[0] = v20;
        v35[1] = v21;
        *v36 = v40[0];
        *&v36[3] = *(v40 + 3);
        v37 = v22;
      }

      v25 = *a3;
      v26 = sub_ED6C8(*a3, v38);
      v27 = sub_ED6C8(v25, v35);
      v28 = v26[14];
      v29 = v27[14];
      v30 = v28 < v29;
      if (v28 == v29)
      {
        v31 = v26[8];
        v32 = v27[8];
        v18 = v31 == v32;
        v33 = v31 < v32;
        if (v18)
        {
          v30 = v26 < v27;
        }

        else
        {
          v30 = v33;
        }
      }

      if (v37 < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      v9 = v23;
      if (!v30)
      {
        if (*(v23 + 23) < 0)
        {
          operator delete(*v23);
        }

        break;
      }
    }

    *v23 = v20;
    *(v23 + 1) = v21;
    *(v23 + 4) = v40[0];
    *(v23 + 19) = *(v40 + 3);
    *(v23 + 23) = v22;
  }
}

void sub_14ACCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14AD40(__int128 *a1, const void **a2, uint64_t *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v32 = *a3;
        v33 = sub_ED6C8((*a3 + 40), v9);
        v34 = sub_ED6C8((v32 + 40), v10);
        v35 = v33[7];
        v36 = v34[7];
        if (v35 == v36)
        {
          v37 = v33[6];
          v38 = v34[6];
          v27 = v37 == v38;
          v39 = v37 < v38;
          if (v27)
          {
            v39 = v33 < v34;
          }

          if (!v39)
          {
            return;
          }
        }

        else if (v35 >= v36)
        {
          return;
        }

        v44 = *(v10 + 2);
        v42 = *v10;
        v40 = *v9;
        *(v10 + 2) = v9[2];
        *v10 = v40;
        *v9 = v42;
        v9[2] = v44;
        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_14B46C(v10, v10 + 3, v10 + 6, a2 - 3, a3);
      return;
    }

    if (v14 == 5)
    {

      sub_14B62C(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3, a3);
      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_14B868(v10, a2, a3);
      }

      else
      {

        sub_14BA34(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_14C5A4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 3 * (v14 >> 1);
    if (v13 < 0xC01)
    {
      sub_14B1D4(v10 + 3 * v15, v10, a2 - 3, a3);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_14B1D4(v10, v10 + 3 * v15, a2 - 3, a3);
      v17 = 3 * v15;
      v18 = v10 + 3 * v15 - 3;
      sub_14B1D4(v10 + 3, v18, a2 - 6, a3);
      sub_14B1D4(v10 + 6, v10 + v17 + 3, a2 - 9, a3);
      sub_14B1D4(v18, v16, v10 + v17 + 3, a3);
      v43 = *(v10 + 2);
      v41 = *v10;
      v19 = *v16;
      *(v10 + 2) = v16[2];
      *v10 = v19;
      v16[2] = v43;
      *v16 = v41;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v20 = *a3;
    v21 = sub_ED6C8((*a3 + 40), v10 - 3);
    v22 = sub_ED6C8((v20 + 40), v10);
    v23 = v21[7];
    v24 = v22[7];
    if (v23 == v24)
    {
      v25 = v21[6];
      v26 = v22[6];
      v27 = v25 == v26;
      v28 = v25 < v26;
      if (v27)
      {
        v28 = v21 < v22;
      }

      if (!v28)
      {
LABEL_26:
        v10 = sub_14BBE4(v10, a2, a3);
        goto LABEL_27;
      }
    }

    else if (v23 >= v24)
    {
      goto LABEL_26;
    }

LABEL_22:
    v29 = sub_14BF54(v10, a2, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

    v31 = sub_14C284(v10, v29, a3);
    v10 = (v29 + 24);
    if (sub_14C284(v29 + 24, a2, a3))
    {
      a4 = -v12;
      a2 = v29;
      if (v31)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v31)
    {
LABEL_25:
      sub_14AD40(a1, v29, a3, -v12, a5 & 1);
      v10 = (v29 + 24);
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_14B1D4(v10, v10 + 3, a2 - 3, a3);
}

uint64_t sub_14B1D4(const void **a1, const void **a2, const void **a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_ED6C8((*a4 + 40), a2);
  v10 = sub_ED6C8((v8 + 40), a1);
  v11 = v9[7];
  v12 = v10[7];
  if (v11 == v12)
  {
    v13 = v9[6];
    v14 = v10[6];
    v15 = v13 == v14;
    v16 = v13 < v14;
    if (v15)
    {
      v16 = v9 < v10;
    }

    if (!v16)
    {
      goto LABEL_5;
    }

LABEL_11:
    v26 = *a4;
    v27 = sub_ED6C8((*a4 + 40), a3);
    v28 = sub_ED6C8((v26 + 40), a2);
    v29 = v27[7];
    v30 = v28[7];
    if (v29 == v30)
    {
      v31 = v27[6];
      v32 = v28[6];
      v15 = v31 == v32;
      v33 = v31 < v32;
      if (v15)
      {
        v33 = v27 < v28;
      }

      if (!v33)
      {
        goto LABEL_15;
      }
    }

    else if (v29 >= v30)
    {
LABEL_15:
      v34 = a1[2];
      v35 = *a1;
      v36 = a2[2];
      *a1 = *a2;
      a1[2] = v36;
      *a2 = v35;
      a2[2] = v34;
      v37 = *a4;
      v38 = sub_ED6C8((v37 + 40), a3);
      v39 = sub_ED6C8((v37 + 40), a2);
      v40 = v38[7];
      v41 = v39[7];
      if (v40 == v41)
      {
        v42 = v38[6];
        v43 = v39[6];
        v15 = v42 == v43;
        v44 = v42 < v43;
        if (v15)
        {
          v44 = v38 < v39;
        }

        if (!v44)
        {
          return 1;
        }
      }

      else if (v40 >= v41)
      {
        return 1;
      }

      v56 = a2[2];
      v57 = *a2;
      v59 = a3[2];
      *a2 = *a3;
      a2[2] = v59;
LABEL_30:
      *a3 = v57;
      a3[2] = v56;
      return 1;
    }

    v56 = a1[2];
    v57 = *a1;
    v58 = a3[2];
    *a1 = *a3;
    a1[2] = v58;
    goto LABEL_30;
  }

  if (v11 < v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  v17 = *a4;
  v18 = sub_ED6C8((*a4 + 40), a3);
  v19 = sub_ED6C8((v17 + 40), a2);
  v20 = v18[7];
  v21 = v19[7];
  if (v20 == v21)
  {
    v22 = v18[6];
    v23 = v19[6];
    v15 = v22 == v23;
    v24 = v22 < v23;
    if (v15)
    {
      v24 = v18 < v19;
    }

    if (!v24)
    {
      return 0;
    }
  }

  else if (v20 >= v21)
  {
    return 0;
  }

  v45 = a2[2];
  v46 = *a2;
  v47 = a3[2];
  *a2 = *a3;
  a2[2] = v47;
  *a3 = v46;
  a3[2] = v45;
  v48 = *a4;
  v49 = sub_ED6C8((v48 + 40), a2);
  v50 = sub_ED6C8((v48 + 40), a1);
  v51 = v49[7];
  v52 = v50[7];
  if (v51 == v52)
  {
    v53 = v49[6];
    v54 = v50[6];
    v15 = v53 == v54;
    v55 = v53 < v54;
    if (v15)
    {
      v55 = v49 < v50;
    }

    if (!v55)
    {
      return 1;
    }

    goto LABEL_32;
  }

  if (v51 < v52)
  {
LABEL_32:
    v60 = a1[2];
    v61 = *a1;
    v62 = a2[2];
    *a1 = *a2;
    a1[2] = v62;
    *a2 = v61;
    a2[2] = v60;
  }

  return 1;
}

__n128 sub_14B46C(uint64_t a1, const void **a2, const void **a3, const void **a4, uint64_t *a5)
{
  sub_14B1D4(a1, a2, a3, a5);
  v10 = *a5;
  v11 = sub_ED6C8((*a5 + 40), a4);
  v12 = sub_ED6C8((v10 + 40), a3);
  v14 = v11[7];
  v15 = v12[7];
  if (v14 != v15)
  {
    if (v14 >= v15)
    {
      return result;
    }

LABEL_7:
    v20 = a3[2];
    v21 = *a3;
    v22 = a4[2];
    *a3 = *a4;
    a3[2] = v22;
    *a4 = v21;
    a4[2] = v20;
    v23 = *a5;
    v24 = sub_ED6C8((*a5 + 40), a3);
    v25 = sub_ED6C8((v23 + 40), a2);
    v26 = v24[7];
    v27 = v25[7];
    if (v26 == v27)
    {
      v28 = v24[6];
      v29 = v25[6];
      v18 = v28 == v29;
      v30 = v28 < v29;
      if (v18)
      {
        v30 = v24 < v25;
      }

      if (!v30)
      {
        return result;
      }
    }

    else if (v26 >= v27)
    {
      return result;
    }

    v31 = a2[2];
    v32 = *a2;
    v33 = a3[2];
    *a2 = *a3;
    a2[2] = v33;
    *a3 = v32;
    a3[2] = v31;
    v34 = *a5;
    v35 = sub_ED6C8((*a5 + 40), a2);
    v36 = sub_ED6C8((v34 + 40), a1);
    v37 = v35[7];
    v38 = v36[7];
    if (v37 == v38)
    {
      v39 = v35[6];
      v40 = v36[6];
      v18 = v39 == v40;
      v41 = v39 < v40;
      if (v18)
      {
        v41 = v35 < v36;
      }

      if (!v41)
      {
        return result;
      }
    }

    else if (v37 >= v38)
    {
      return result;
    }

    v42 = *(a1 + 16);
    result = *a1;
    v43 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v43;
    *a2 = result;
    a2[2] = v42;
    return result;
  }

  v16 = v11[6];
  v17 = v12[6];
  v18 = v16 == v17;
  v19 = v16 < v17;
  if (v18)
  {
    v19 = v11 < v12;
  }

  if (v19)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 sub_14B62C(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, uint64_t *a6)
{
  sub_14B46C(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = sub_ED6C8((*a6 + 40), a5);
  v14 = sub_ED6C8((v12 + 40), a4);
  v16 = v13[7];
  v17 = v14[7];
  if (v16 != v17)
  {
    if (v16 >= v17)
    {
      return result;
    }

LABEL_7:
    v22 = a4[2];
    v23 = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[2] = v24;
    *a5 = v23;
    a5[2] = v22;
    v25 = *a6;
    v26 = sub_ED6C8((*a6 + 40), a4);
    v27 = sub_ED6C8((v25 + 40), a3);
    v28 = v26[7];
    v29 = v27[7];
    if (v28 == v29)
    {
      v30 = v26[6];
      v31 = v27[6];
      v20 = v30 == v31;
      v32 = v30 < v31;
      if (v20)
      {
        v32 = v26 < v27;
      }

      if (!v32)
      {
        return result;
      }
    }

    else if (v28 >= v29)
    {
      return result;
    }

    v33 = a3[2];
    v34 = *a3;
    v35 = a4[2];
    *a3 = *a4;
    a3[2] = v35;
    *a4 = v34;
    a4[2] = v33;
    v36 = *a6;
    v37 = sub_ED6C8((*a6 + 40), a3);
    v38 = sub_ED6C8((v36 + 40), a2);
    v39 = v37[7];
    v40 = v38[7];
    if (v39 == v40)
    {
      v41 = v37[6];
      v42 = v38[6];
      v20 = v41 == v42;
      v43 = v41 < v42;
      if (v20)
      {
        v43 = v37 < v38;
      }

      if (!v43)
      {
        return result;
      }
    }

    else if (v39 >= v40)
    {
      return result;
    }

    v44 = a2[2];
    v45 = *a2;
    v46 = a3[2];
    *a2 = *a3;
    a2[2] = v46;
    *a3 = v45;
    a3[2] = v44;
    v47 = *a6;
    v48 = sub_ED6C8((*a6 + 40), a2);
    v49 = sub_ED6C8((v47 + 40), a1);
    v50 = v48[7];
    v51 = v49[7];
    if (v50 == v51)
    {
      v52 = v48[6];
      v53 = v49[6];
      v20 = v52 == v53;
      v54 = v52 < v53;
      if (v20)
      {
        v54 = v48 < v49;
      }

      if (!v54)
      {
        return result;
      }
    }

    else if (v50 >= v51)
    {
      return result;
    }

    v55 = *(a1 + 16);
    result = *a1;
    v56 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v56;
    *a2 = result;
    a2[2] = v55;
    return result;
  }

  v18 = v13[6];
  v19 = v14[6];
  v20 = v18 == v19;
  v21 = v18 < v19;
  if (v20)
  {
    v21 = v13 < v14;
  }

  if (v21)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_14B868(const void **a1, const void **a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = *a3;
    v11 = sub_ED6C8((*a3 + 40), v5);
    v12 = sub_ED6C8((v10 + 40), v9);
    v13 = v11[7];
    v14 = v12[7];
    if (v13 == v14)
    {
      v15 = v11[6];
      v16 = v12[6];
      v17 = v15 == v16;
      v18 = v15 < v16;
      if (v17)
      {
        v18 = v11 < v12;
      }

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    else if (v13 >= v14)
    {
      goto LABEL_25;
    }

    v30 = *v8;
    v31 = v8[2];
    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    for (i = v7; ; i -= 24)
    {
      v20 = a1 + i;
      if (*(a1 + i + 47) < 0)
      {
        operator delete(*(v20 + 24));
      }

      *(v20 + 24) = *v20;
      *(v20 + 40) = *(v20 + 16);
      *(v20 + 23) = 0;
      *v20 = 0;
      if (!i)
      {
        v29 = a1;
        goto LABEL_24;
      }

      v21 = *a3;
      v22 = sub_ED6C8((*a3 + 40), &v30);
      v23 = sub_ED6C8((v21 + 40), (a1 + i - 24));
      v24 = v22[7];
      v25 = v23[7];
      if (v24 == v25)
      {
        break;
      }

      if (v24 >= v25)
      {
        goto LABEL_22;
      }

LABEL_20:
      ;
    }

    v26 = v22[6];
    v27 = v23[6];
    v17 = v26 == v27;
    v28 = v26 < v27;
    if (v17)
    {
      v28 = v22 < v23;
    }

    if (v28)
    {
      goto LABEL_20;
    }

LABEL_22:
    v29 = (a1 + i);
    if (*(a1 + i + 23) < 0)
    {
      operator delete(*v29);
    }

LABEL_24:
    *v29 = v30;
    v29[2] = v31;
LABEL_25:
    v5 = v8 + 3;
    v7 += 24;
  }

  while (v8 + 3 != a2);
}

void sub_14BA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_14BA34(const void **a1, const void **a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 3;
    if (a1 + 3 != a2)
    {
      for (i = a1 - 3; ; i += 3)
      {
        v8 = v4;
        v4 = v5;
        v9 = *a3;
        v10 = sub_ED6C8((*a3 + 40), v5);
        v11 = sub_ED6C8((v9 + 40), v8);
        v12 = v10[7];
        v13 = v11[7];
        if (v12 != v13)
        {
          break;
        }

        v14 = v10[6];
        v15 = v11[6];
        v16 = v14 == v15;
        v17 = v14 < v15;
        if (v16)
        {
          v17 = v10 < v11;
        }

        if (v17)
        {
          goto LABEL_10;
        }

LABEL_23:
        v5 = v4 + 3;
        if (v4 + 3 == a2)
        {
          return;
        }
      }

      if (v12 >= v13)
      {
        goto LABEL_23;
      }

LABEL_10:
      v27 = *v4;
      v28 = v4[2];
      v4[1] = 0;
      v4[2] = 0;
      *v4 = 0;
      for (j = i; ; j -= 3)
      {
        if (*(j + 71) < 0)
        {
          operator delete(j[6]);
        }

        *(j + 3) = *(j + 3);
        j[8] = j[5];
        *(j + 47) = 0;
        *(j + 24) = 0;
        v19 = *a3;
        v20 = sub_ED6C8((*a3 + 40), &v27);
        v21 = sub_ED6C8((v19 + 40), j);
        v22 = v20[7];
        v23 = v21[7];
        if (v22 == v23)
        {
          v24 = v20[6];
          v25 = v21[6];
          v16 = v24 == v25;
          v26 = v24 < v25;
          if (v16)
          {
            v26 = v20 < v21;
          }

          if (!v26)
          {
LABEL_20:
            if (*(j + 47) < 0)
            {
              operator delete(j[3]);
            }

            *(j + 3) = v27;
            j[5] = v28;
            goto LABEL_23;
          }
        }

        else if (v22 >= v23)
        {
          goto LABEL_20;
        }
      }
    }
  }
}