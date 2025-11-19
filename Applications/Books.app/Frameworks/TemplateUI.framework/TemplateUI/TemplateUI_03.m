void sub_82254(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_82304;
  v5[3] = &unk_260500;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v5];
}

void sub_82304(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_opt_new();
  v6 = objc_alloc_init(*(*(a1 + 32) + 64));
  v7 = [*(a1 + 40) evaluateEnumerator:*(*(a1 + 32) + 16) withObject:v5 atIndex:*(a1 + 56) + a3 count:*(a1 + 64) + *(*(a1 + 32) + 96) uniqueID:objc_msgSend(*(*(a1 + 32) + 72) nodes:"uniqueID") flags:*(*(a1 + 32) + 20) containingObject:*(*(a1 + 32) + 80) builder:{v8, v6}];

  [v6 finalizeModelsWithParent:v8 context:*(a1 + 40)];
  [v8 setInstantiateResult:v7];
  [*(a1 + 48) insertObject:v8 atIndex:a3];
}

void sub_82410(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_824C0;
  v5[3] = &unk_260500;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v5];
}

void sub_824C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_opt_new();
  v6 = objc_alloc_init(*(*(a1 + 32) + 64));
  v7 = [*(a1 + 40) evaluateEnumerator:*(*(a1 + 32) + 16) withObject:v5 atIndex:*(a1 + 56) + a3 count:*(a1 + 64) + *(*(a1 + 32) + 96) uniqueID:objc_msgSend(*(*(a1 + 32) + 72) nodes:"uniqueID") flags:*(*(a1 + 32) + 20) containingObject:*(*(a1 + 32) + 80) builder:{v8, v6}];

  [v6 finalizeModelsWithParent:v8 context:*(a1 + 40)];
  [v8 setInstantiateResult:v7];
  [*(a1 + 48) addObject:v8];
}

id *sub_825C8(id *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = [result[7] mapFromIndex:a3];
        v8 = v7;
        v9 = v6[4];
        v10 = v9[11];
        if (v7 < v10 || &v7[-v10] >= v9[12])
        {
          if (v7 < v10)
          {
            v9[11] = v10 - 1;
          }
        }

        else
        {
          [v6[5] removeObjectAtIndex:?];
          --*(v6[4] + 12);
          v39 = [v6[6] statsCollector];
          [v39 recordEvent:24];
        }

        [v6[7] deleteAtIndex:a3];
        v40 = v6[8];

        return [v40 layoutDeleteAtIndex:v8];
      }
    }

    else
    {
      v19 = result[4];
      v20 = v19[11];
      v21 = v19[12];
      v22 = a4 < v20 || a4 - v20 >= v21;
      if (!v22 || ((v23 = v21 + v20, *(result + 72) == 1) ? (v24 = v23 == a4) : (v24 = 0), v24))
      {
        v35 = result[5];
        v36 = +[NSNull null];
        [v35 insertObject:v36 atIndex:a4 - *(v6[4] + 11)];

        ++*(v6[4] + 12);
        v37 = [v6[6] statsCollector];
        [v37 recordEvent:25];
      }

      else if (a4 < v20)
      {
        v19[11] = v20 + 1;
      }

      [v6[7] insertAtIndex:a4];
      v38 = v6[8];

      return [v38 layoutInsertAtIndex:a4];
    }

    return result;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return result;
    }

    v12 = [result[7] mapFromIndex:a3];
    v13 = v12;
    v14 = v6[4];
    v15 = v14[11];
    v17 = v12 >= v15 && &v12[-v15] < v14[12];
    if (v17)
    {
      [v6[5] removeObjectAtIndex:?];
      v18 = -1;
    }

    else
    {
      v18 = 0;
      if (v12 < v15)
      {
        v14[11] = v15 - 1;
      }
    }

    v41 = v6[4];
    v42 = v41[11];
    v43 = v41[12];
    v44 = a4 < v42 || a4 - v42 >= v43;
    if (!v44 || *(v6 + 72) == 1 && v42 + v18 + v43 == a4)
    {
      v45 = v6[5];
      v46 = +[NSNull null];
      [v45 insertObject:v46 atIndex:a4 - *(v6[4] + 11)];

      ++v18;
    }

    else
    {
      if (a4 < v42)
      {
        v41[11] = v42 + 1;
      }

      if (!v17)
      {
        goto LABEL_62;
      }
    }

    v47 = [v6[6] statsCollector];
    [v47 recordEvent:27];

LABEL_62:
    *(v6[4] + 12) += v18;
    [v6[7] moveFromIndex:a3 toIndex:a4];
    v48 = v6[8];

    return [v48 layoutMoveFromIndex:v13 toIndex:?];
  }

  v25 = [result[7] mapFromIndex:a3];
  v26 = v6[4];
  v28 = v26[11];
  v27 = v26[12];
  v29 = &v25[-v28];
  if (v25 >= v28 && v29 < v27)
  {
    v31 = v6[5];
    v32 = +[NSNull null];
    [v31 replaceObjectAtIndex:v29 withObject:v32];

    v33 = [v6[6] statsCollector];
    [v33 recordEvent:26];
  }

  [v6[7] updateAtIndex:a3];
  v34 = v6[8];

  return [v34 layoutUpdateAtIndex:v25];
}

uint64_t sub_8299C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_829B4(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  if (objc_opt_class() == *(a1 + 64))
  {
    v5 = 0;
  }

  else
  {
    v5 = v24;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_37;
  }

  v8 = *(*(a1 + 32) + 88) + a3;
  v9 = [v6 instantiateResult];
  v10 = v9;
  if (!v9)
  {
    v16 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_30;
  }

  v11 = [*(a1 + 40) mapToIndex:v8];
  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  v13 = !v12;
  if (v8)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (v10)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  if ((v10 & 1) == 0)
  {
    v16 = 0;
  }

  if ((v10 & 2) == 0)
  {
LABEL_30:
    if (((v8 != v17) & (v10 >> 2)) == 0 && (v16 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v18 = v17 + 1;
  v19 = *(a1 + 80);
  if (v8 + 1 == *(a1 + 72))
  {
    v16 |= v18 != v19;
    goto LABEL_30;
  }

  if (v18 != v19)
  {
    goto LABEL_30;
  }

LABEL_34:
  v20 = *(*(*(a1 + 56) + 8) + 40);
  if (!v20)
  {
    v21 = [*(a1 + 48) mutableCopy];
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v20 = *(*(*(a1 + 56) + 8) + 40);
  }

  [v20 addIndex:v8];
LABEL_37:
}

void sub_82B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v4 = [*(a1 + 32) count];
  v5 = [v3 count];
  if (v4 != v5)
  {
    v6 = TUIInstantiationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 40) feedId];
      v12 = *(a1 + 32);
      v13 = [*(*(a1 + 48) + 32) array];
      v14 = [v13 dataProvider];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 134219266;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v30 = 2048;
      v31 = v4;
      v32 = 2114;
      v33 = v16;
      v34 = 2048;
      v35 = v5;
      v36 = 2112;
      v37 = v3;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[fid:%lu] requested indexes: %{public}@ (%lu) from %{public}@ -- received %lu: %@", buf, 0x3Eu);
    }

    if (_TUIDeviceHasInternalInstall())
    {
      objc_exception_throw([[NSException alloc] initWithName:@"InvalidResponse" reason:@"The dynamic array provided yielded an incorrect response" userInfo:0]);
    }
  }

  v7 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_82DB8;
  v18[3] = &unk_2605C8;
  v22 = v25;
  v23 = v5;
  v8 = v3;
  v19 = v8;
  v17 = *(a1 + 40);
  v9 = v17.i64[0];
  v20 = vextq_s8(v17, v17, 8uLL);
  v10 = *(a1 + 56);
  v24 = *(a1 + 64);
  v21 = v10;
  [v7 enumerateIndexesUsingBlock:v18];

  _Block_object_dispose(v25, 8);
}

void sub_82D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_82DB8(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 72))
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:?];
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  v4 = objc_opt_new();
  v5 = objc_alloc_init(*(*(a1 + 40) + 64));
  v6 = [*(a1 + 48) evaluateEnumerator:*(*(a1 + 40) + 16) withObject:v7 atIndex:a2 count:*(a1 + 80) uniqueID:objc_msgSend(*(*(a1 + 40) + 72) nodes:"uniqueID") flags:*(*(a1 + 40) + 20) containingObject:*(*(a1 + 40) + 80) builder:{v4, v5}];
  [v5 finalizeModelsWithParent:v4 context:*(a1 + 48)];
  [v4 setInstantiateResult:v6];
  [*(a1 + 56) replaceObjectAtIndex:a2 - *(*(a1 + 40) + 88) withObject:v4];
}

id sub_82F98(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  [v1 appendLayoutChildrenToArray:v2];

  v3 = [v2 lastObject];

  return v3;
}

id sub_83008(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  [v1 appendLayoutChildrenToArray:v2];

  v3 = [v2 firstObject];

  return v3;
}

void sub_83674(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"halign";
  v6[1] = @"hspacing";
  v6[2] = @"vspacing";
  v6[3] = @"layout-mode";
  v3 = [NSArray arrayWithObjects:v6 count:4];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E62D8;
  qword_2E62D8 = v4;
}

void sub_837A8(id a1)
{
  v4[0] = @"valign";
  v4[1] = @"estimated-width";
  v4[2] = @"estimated-height";
  v4[3] = @"estimated-height-above-pivot";
  v1 = [NSArray arrayWithObjects:v4 count:4];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E62E8;
  qword_2E62E8 = v2;
}

id sub_83BE0()
{
  if (qword_2E6300 != -1)
  {
    sub_19A048();
  }

  v1 = qword_2E62F8;

  return v1;
}

void sub_83EA0(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_2E62F8;
  qword_2E62F8 = v1;

  [qword_2E62F8 setObject:&off_273448 forKeyedSubscript:@"__text_value"];
  [qword_2E62F8 setObject:&off_273460 forKeyedSubscript:@"__closure"];
  [qword_2E62F8 setObject:&off_273478 forKeyedSubscript:@"accepts-drop"];
  [qword_2E62F8 setObject:&off_273490 forKeyedSubscript:@"alignment-rect-insets"];
  [qword_2E62F8 setObject:&off_2734A8 forKeyedSubscript:@"allow-fullscreen"];
  [qword_2E62F8 setObject:&off_2734C0 forKeyedSubscript:@"allow-group-blending"];
  [qword_2E62F8 setObject:&off_2734D8 forKeyedSubscript:@"allow-hanging-punctuation"];
  [qword_2E62F8 setObject:&off_2734F0 forKeyedSubscript:@"allow-shrink-to-fit"];
  [qword_2E62F8 setObject:&off_273508 forKeyedSubscript:@"alpha"];
  [qword_2E62F8 setObject:&off_273520 forKeyedSubscript:@"anchor-offset"];
  [qword_2E62F8 setObject:&off_273538 forKeyedSubscript:@"anchor-position"];
  [qword_2E62F8 setObject:&off_273550 forKeyedSubscript:@"anchor-ref-id"];
  [qword_2E62F8 setObject:&off_273568 forKeyedSubscript:@"arrow-direction"];
  [qword_2E62F8 setObject:&off_273580 forKeyedSubscript:@"aspect-ratio"];
  [qword_2E62F8 setObject:&off_273598 forKeyedSubscript:@"attribute"];
  [qword_2E62F8 setObject:&off_2735B0 forKeyedSubscript:@"auto-play"];
  [qword_2E62F8 setObject:&off_2735C8 forKeyedSubscript:@"axis"];
  [qword_2E62F8 setObject:&off_2735E0 forKeyedSubscript:@"ax-adjustable"];
  [qword_2E62F8 setObject:&off_2735F8 forKeyedSubscript:@"ax-button"];
  [qword_2E62F8 setObject:&off_273610 forKeyedSubscript:@"ax-default"];
  [qword_2E62F8 setObject:&off_273628 forKeyedSubscript:@"ax-disabled"];
  [qword_2E62F8 setObject:&off_273640 forKeyedSubscript:@"ax-enable"];
  [qword_2E62F8 setObject:&off_273658 forKeyedSubscript:@"ax-heading"];
  [qword_2E62F8 setObject:&off_273670 forKeyedSubscript:@"ax-hint"];
  [qword_2E62F8 setObject:&off_273688 forKeyedSubscript:@"ax-identifier"];
  [qword_2E62F8 setObject:&off_2736A0 forKeyedSubscript:@"ax-image"];
  [qword_2E62F8 setObject:&off_2736B8 forKeyedSubscript:@"ax-label"];
  [qword_2E62F8 setObject:&off_2736D0 forKeyedSubscript:@"ax-toggle"];
  [qword_2E62F8 setObject:&off_2736E8 forKeyedSubscript:@"ax-touch-container"];
  [qword_2E62F8 setObject:&off_273700 forKeyedSubscript:@"ax-value"];
  [qword_2E62F8 setObject:&off_273718 forKeyedSubscript:@"background-color"];
  [qword_2E62F8 setObject:&off_273730 forKeyedSubscript:@"balance-sections"];
  [qword_2E62F8 setObject:&off_273748 forKeyedSubscript:@"based-on"];
  [qword_2E62F8 setObject:&off_273760 forKeyedSubscript:@"baseline"];
  [qword_2E62F8 setObject:&off_273778 forKeyedSubscript:@"baseline-offset"];
  [qword_2E62F8 setObject:&off_273790 forKeyedSubscript:@"behavior"];
  [qword_2E62F8 setObject:&off_2737A8 forKeyedSubscript:@"binding"];
  [qword_2E62F8 setObject:&off_2737C0 forKeyedSubscript:@"blend-mode"];
  [qword_2E62F8 setObject:&off_2737D8 forKeyedSubscript:@"blur-offset"];
  [qword_2E62F8 setObject:&off_2737F0 forKeyedSubscript:@"blur-radius"];
  [qword_2E62F8 setObject:&off_273808 forKeyedSubscript:@"blur-style"];
  [qword_2E62F8 setObject:&off_273820 forKeyedSubscript:@"border-color"];
  [qword_2E62F8 setObject:&off_273838 forKeyedSubscript:@"border-width"];
  [qword_2E62F8 setObject:&off_273850 forKeyedSubscript:@"bottom"];
  [qword_2E62F8 setObject:&off_273868 forKeyedSubscript:@"button-role"];
  [qword_2E62F8 setObject:&off_273880 forKeyedSubscript:@"c"];
  [qword_2E62F8 setObject:&off_273898 forKeyedSubscript:@"calculation-mode"];
  [qword_2E62F8 setObject:&off_2738B0 forKeyedSubscript:@"cancel-text"];
  [qword_2E62F8 setObject:&off_2738C8 forKeyedSubscript:@"char-count"];
  [qword_2E62F8 setObject:&off_2738E0 forKeyedSubscript:@"chart-type"];
  [qword_2E62F8 setObject:&off_2738F8 forKeyedSubscript:@"clips-to-bounds"];
  [qword_2E62F8 setObject:&off_273910 forKeyedSubscript:@"color"];
  [qword_2E62F8 setObject:&off_273928 forKeyedSubscript:@"columns"];
  [qword_2E62F8 setObject:&off_273940 forKeyedSubscript:@"column-multiple"];
  [qword_2E62F8 setObject:&off_273958 forKeyedSubscript:@"column-spacing"];
  [qword_2E62F8 setObject:&off_273970 forKeyedSubscript:@"column-span"];
  [qword_2E62F8 setObject:&off_273988 forKeyedSubscript:@"column-width"];
  [qword_2E62F8 setObject:&off_2739A0 forKeyedSubscript:@"container-fraction"];
  [qword_2E62F8 setObject:&off_2739B8 forKeyedSubscript:@"content-width"];
  [qword_2E62F8 setObject:&off_2739D0 forKeyedSubscript:@"continuous-corners"];
  [qword_2E62F8 setObject:&off_2739E8 forKeyedSubscript:@"corner-radius"];
  [qword_2E62F8 setObject:&off_273A00 forKeyedSubscript:@"cover-urls"];
  [qword_2E62F8 setObject:&off_273A18 forKeyedSubscript:@"cover-filters"];
  [qword_2E62F8 setObject:&off_273A30 forKeyedSubscript:@"crossfades-contents"];
  [qword_2E62F8 setObject:&off_273A48 forKeyedSubscript:@"curve"];
  [qword_2E62F8 setObject:&off_273A60 forKeyedSubscript:@"deceleration-rate"];
  [qword_2E62F8 setObject:&off_273A78 forKeyedSubscript:@"delay"];
  [qword_2E62F8 setObject:&off_273A90 forKeyedSubscript:@"designated-id"];
  [qword_2E62F8 setObject:&off_273AA8 forKeyedSubscript:@"direction"];
  [qword_2E62F8 setObject:&off_273AC0 forKeyedSubscript:@"duration"];
  [qword_2E62F8 setObject:&off_273AD8 forKeyedSubscript:@"dynamic-unique-id"];
  [qword_2E62F8 setObject:&off_273AF0 forKeyedSubscript:@"element"];
  [qword_2E62F8 setObject:&off_273B08 forKeyedSubscript:@"enable-background-for-highlight-preview"];
  [qword_2E62F8 setObject:&off_273B20 forKeyedSubscript:@"enable-shadow-for-highlight-preview"];
  [qword_2E62F8 setObject:&off_273B38 forKeyedSubscript:@"enabled"];
  [qword_2E62F8 setObject:&off_273B50 forKeyedSubscript:@"end-color"];
  [qword_2E62F8 setObject:&off_273B68 forKeyedSubscript:@"end-position"];
  [qword_2E62F8 setObject:&off_273B80 forKeyedSubscript:@"estimated-height"];
  [qword_2E62F8 setObject:&off_273B98 forKeyedSubscript:@"estimated-height-above-pivot"];
  [qword_2E62F8 setObject:&off_273BB0 forKeyedSubscript:@"estimated-width"];
  [qword_2E62F8 setObject:&off_273BC8 forKeyedSubscript:@"fallback-color"];
  [qword_2E62F8 setObject:&off_273BE0 forKeyedSubscript:@"feature"];
  [qword_2E62F8 setObject:&off_273BF8 forKeyedSubscript:@"fetch-delta"];
  [qword_2E62F8 setObject:&off_273C10 forKeyedSubscript:@"fetch-initial"];
  [qword_2E62F8 setObject:&off_273C28 forKeyedSubscript:@"fetch-padding"];
  [qword_2E62F8 setObject:&off_273C40 forKeyedSubscript:@"fetch-window"];
  [qword_2E62F8 setObject:&off_273C58 forKeyedSubscript:@"fill-mode"];
  [qword_2E62F8 setObject:&off_273C70 forKeyedSubscript:@"filter"];
  [qword_2E62F8 setObject:&off_273C88 forKeyedSubscript:@"focus-style"];
  [qword_2E62F8 setObject:&off_273CA0 forKeyedSubscript:@"font"];
  [qword_2E62F8 setObject:&off_273CB8 forKeyedSubscript:@"gradient-width"];
  [qword_2E62F8 setObject:&off_273CD0 forKeyedSubscript:@"gradient-insets"];
  [qword_2E62F8 setObject:&off_273CE8 forKeyedSubscript:@"gradient-fraction"];
  [qword_2E62F8 setObject:&off_273D00 forKeyedSubscript:@"grouped"];
  [qword_2E62F8 setObject:&off_273D18 forKeyedSubscript:@"group-identifier"];
  [qword_2E62F8 setObject:&off_273D30 forKeyedSubscript:@"group-priority"];
  [qword_2E62F8 setObject:&off_273D48 forKeyedSubscript:@"halign"];
  [qword_2E62F8 setObject:&off_273D60 forKeyedSubscript:@"hcompressed"];
  [qword_2E62F8 setObject:&off_273D78 forKeyedSubscript:@"h"];
  [qword_2E62F8 setObject:&off_273D90 forKeyedSubscript:@"hflip-for-rtl"];
  [qword_2E62F8 setObject:&off_273DA8 forKeyedSubscript:@"hide-ellipses"];
  [qword_2E62F8 setObject:&off_273DC0 forKeyedSubscript:@"hspacing"];
  [qword_2E62F8 setObject:&off_273DD8 forKeyedSubscript:@"html-tags"];
  [qword_2E62F8 setObject:&off_273DF0 forKeyedSubscript:@"href"];
  [qword_2E62F8 setObject:&off_273E08 forKeyedSubscript:@"identifier"];
  [qword_2E62F8 setObject:&off_273E20 forKeyedSubscript:@"ignore-insets-for-opacity-trigger"];
  [qword_2E62F8 setObject:&off_273E38 forKeyedSubscript:@"inherit-from"];
  [qword_2E62F8 setObject:&off_273E50 forKeyedSubscript:@"inline"];
  [qword_2E62F8 setObject:&off_273E68 forKeyedSubscript:@"impression-data"];
  [qword_2E62F8 setObject:&off_273E80 forKeyedSubscript:@"indent-firstline"];
  [qword_2E62F8 setObject:&off_273E98 forKeyedSubscript:@"indent-leading"];
  [qword_2E62F8 setObject:&off_273EB0 forKeyedSubscript:@"indent-trailing"];
  [qword_2E62F8 setObject:&off_273EC8 forKeyedSubscript:@"insets"];
  [qword_2E62F8 setObject:&off_273EE0 forKeyedSubscript:@"instance"];
  [qword_2E62F8 setObject:&off_273EF8 forKeyedSubscript:@"ih"];
  [qword_2E62F8 setObject:&off_273F10 forKeyedSubscript:@"iw"];
  [qword_2E62F8 setObject:&off_273F28 forKeyedSubscript:@"kind"];
  [qword_2E62F8 setObject:&off_273F40 forKeyedSubscript:@"layer-contents-gravity"];
  [qword_2E62F8 setObject:&off_273F58 forKeyedSubscript:@"layer-video-gravity"];
  [qword_2E62F8 setObject:&off_273F70 forKeyedSubscript:@"layout-direction"];
  [qword_2E62F8 setObject:&off_273F88 forKeyedSubscript:@"layout-mode"];
  [qword_2E62F8 setObject:&off_273FA0 forKeyedSubscript:@"leading"];
  [qword_2E62F8 setObject:&off_273FB8 forKeyedSubscript:@"line-balancing"];
  [qword_2E62F8 setObject:&off_273FD0 forKeyedSubscript:@"lines"];
  [qword_2E62F8 setObject:&off_273FE8 forKeyedSubscript:@"live-transform"];
  [qword_2E62F8 setObject:&off_274000 forKeyedSubscript:@"loop"];
  [qword_2E62F8 setObject:&off_274018 forKeyedSubscript:@"mask-color"];
  [qword_2E62F8 setObject:&off_274030 forKeyedSubscript:@"max-aspect-ratio"];
  [qword_2E62F8 setObject:&off_274048 forKeyedSubscript:@"max-columns"];
  [qword_2E62F8 setObject:&off_274060 forKeyedSubscript:@"max-lines"];
  [qword_2E62F8 setObject:&off_274078 forKeyedSubscript:@"max-pages"];
  [qword_2E62F8 setObject:&off_274090 forKeyedSubscript:@"max-scale"];
  [qword_2E62F8 setObject:&off_2740A8 forKeyedSubscript:@"mica-text-key"];
  [qword_2E62F8 setObject:&off_2740C0 forKeyedSubscript:@"mica-text-value"];
  [qword_2E62F8 setObject:&off_2740D8 forKeyedSubscript:@"min-lines"];
  [qword_2E62F8 setObject:&off_2740F0 forKeyedSubscript:@"min-scale"];
  [qword_2E62F8 setObject:&off_274108 forKeyedSubscript:@"muted"];
  [qword_2E62F8 setObject:&off_274120 forKeyedSubscript:@"n"];
  [qword_2E62F8 setObject:&off_274138 forKeyedSubscript:@"name"];
  [qword_2E62F8 setObject:&off_274150 forKeyedSubscript:@"menu-is-primary"];
  [qword_2E62F8 setObject:&off_274168 forKeyedSubscript:@"item-type"];
  [qword_2E62F8 setObject:&off_274180 forKeyedSubscript:@"observation-mode"];
  [qword_2E62F8 setObject:&off_274198 forKeyedSubscript:@"observe-trigger"];
  [qword_2E62F8 setObject:&off_2741B0 forKeyedSubscript:@"observe-trigger-delay"];
  [qword_2E62F8 setObject:&off_2741C8 forKeyedSubscript:@"observe-trigger-value"];
  [qword_2E62F8 setObject:&off_2741E0 forKeyedSubscript:@"on"];
  [qword_2E62F8 setObject:&off_2741F8 forKeyedSubscript:@"opacity"];
  [qword_2E62F8 setObject:&off_274210 forKeyedSubscript:@"padding"];
  [qword_2E62F8 setObject:&off_274228 forKeyedSubscript:@"paginated"];
  [qword_2E62F8 setObject:&off_274240 forKeyedSubscript:@"param"];
  [qword_2E62F8 setObject:&off_274258 forKeyedSubscript:@"parameters"];
  [qword_2E62F8 setObject:&off_274270 forKeyedSubscript:@"play-state"];
  [qword_2E62F8 setObject:&off_274288 forKeyedSubscript:@"pointer-ref-id"];
  [qword_2E62F8 setObject:&off_2742A0 forKeyedSubscript:@"pointer-style"];
  [qword_2E62F8 setObject:&off_2742B8 forKeyedSubscript:@"poster-frame-url"];
  [qword_2E62F8 setObject:&off_2742D0 forKeyedSubscript:@"prefers-no-platter"];
  [qword_2E62F8 setObject:&off_2742E8 forKeyedSubscript:@"presentation"];
  [qword_2E62F8 setObject:&off_274300 forKeyedSubscript:@"pressed-scale"];
  [qword_2E62F8 setObject:&off_274318 forKeyedSubscript:@"progress"];
  [qword_2E62F8 setObject:&off_274330 forKeyedSubscript:@"progress-id"];
  [qword_2E62F8 setObject:&off_274348 forKeyedSubscript:@"mode"];
  [qword_2E62F8 setObject:&off_274360 forKeyedSubscript:@"paused"];
  [qword_2E62F8 setObject:&off_274378 forKeyedSubscript:@"raise"];
  [qword_2E62F8 setObject:&off_274390 forKeyedSubscript:@"rasterize"];
  [qword_2E62F8 setObject:&off_2743A8 forKeyedSubscript:@"rating"];
  [qword_2E62F8 setObject:&off_2743C0 forKeyedSubscript:@"ref-id"];
  [qword_2E62F8 setObject:&off_2743D8 forKeyedSubscript:@"ref-instance"];
  [qword_2E62F8 setObject:&off_2743F0 forKeyedSubscript:@"relative-width"];
  [qword_2E62F8 setObject:&off_274408 forKeyedSubscript:@"render-mode"];
  [qword_2E62F8 setObject:&off_274420 forKeyedSubscript:@"render-model"];
  [qword_2E62F8 setObject:&off_274438 forKeyedSubscript:@"render-outsets"];
  [qword_2E62F8 setObject:&off_274450 forKeyedSubscript:@"render-transform"];
  [qword_2E62F8 setObject:&off_274468 forKeyedSubscript:@"resource-instance"];
  [qword_2E62F8 setObject:&off_274480 forKeyedSubscript:@"resource-kind"];
  [qword_2E62F8 setObject:&off_274498 forKeyedSubscript:@"resource-load"];
  [qword_2E62F8 setObject:&off_2744B0 forKeyedSubscript:@"resource-options"];
  [qword_2E62F8 setObject:&off_2744C8 forKeyedSubscript:@"respect-safe-area"];
  [qword_2E62F8 setObject:&off_2744E0 forKeyedSubscript:@"return-key-type"];
  [qword_2E62F8 setObject:&off_2744F8 forKeyedSubscript:@"role"];
  [qword_2E62F8 setObject:&off_274510 forKeyedSubscript:@"rows"];
  [qword_2E62F8 setObject:&off_274528 forKeyedSubscript:@"row-spacing"];
  [qword_2E62F8 setObject:&off_274540 forKeyedSubscript:@"row-span"];
  [qword_2E62F8 setObject:&off_274558 forKeyedSubscript:@"run-list"];
  [qword_2E62F8 setObject:&off_274570 forKeyedSubscript:@"scale"];
  [qword_2E62F8 setObject:&off_274588 forKeyedSubscript:@"search-text-max-length"];
  [qword_2E62F8 setObject:&off_2745A0 forKeyedSubscript:@"select"];
  [qword_2E62F8 setObject:&off_2745B8 forKeyedSubscript:@"select-index"];
  [qword_2E62F8 setObject:&off_2745D0 forKeyedSubscript:@"shadow-color"];
  [qword_2E62F8 setObject:&off_2745E8 forKeyedSubscript:@"shadow-offset"];
  [qword_2E62F8 setObject:&off_274600 forKeyedSubscript:@"shadow-opacity"];
  [qword_2E62F8 setObject:&off_274618 forKeyedSubscript:@"shadow-radius"];
  [qword_2E62F8 setObject:&off_274630 forKeyedSubscript:@"should-hyphenate"];
  [qword_2E62F8 setObject:&off_274648 forKeyedSubscript:@"show-cancel-button"];
  [qword_2E62F8 setObject:&off_274660 forKeyedSubscript:@"show-playback-controls"];
  [qword_2E62F8 setObject:&off_274678 forKeyedSubscript:@"size"];
  [qword_2E62F8 setObject:&off_274690 forKeyedSubscript:@"spacing"];
  [qword_2E62F8 setObject:&off_2746A8 forKeyedSubscript:@"span"];
  [qword_2E62F8 setObject:&off_2746C0 forKeyedSubscript:@"start-at-end"];
  [qword_2E62F8 setObject:&off_2746D8 forKeyedSubscript:@"start-color"];
  [qword_2E62F8 setObject:&off_2746F0 forKeyedSubscript:@"start-position"];
  [qword_2E62F8 setObject:&off_274708 forKeyedSubscript:@"startTime"];
  [qword_2E62F8 setObject:&off_274720 forKeyedSubscript:@"style"];
  [qword_2E62F8 setObject:&off_274738 forKeyedSubscript:@"text"];
  [qword_2E62F8 setObject:&off_274750 forKeyedSubscript:@"text-alignment"];
  [qword_2E62F8 setObject:&off_274768 forKeyedSubscript:@"timing"];
  [qword_2E62F8 setObject:&off_274780 forKeyedSubscript:@"tint"];
  [qword_2E62F8 setObject:&off_274798 forKeyedSubscript:@"title"];
  [qword_2E62F8 setObject:&off_2747B0 forKeyedSubscript:@"top"];
  [qword_2E62F8 setObject:&off_2747C8 forKeyedSubscript:@"touch-outsets"];
  [qword_2E62F8 setObject:&off_2747E0 forKeyedSubscript:@"trailing"];
  [qword_2E62F8 setObject:&off_2747F8 forKeyedSubscript:@"transform"];
  [qword_2E62F8 setObject:&off_274810 forKeyedSubscript:@"trigger"];
  [qword_2E62F8 setObject:&off_274828 forKeyedSubscript:@"trigger-offset"];
  [qword_2E62F8 setObject:&off_274840 forKeyedSubscript:@"truncate"];
  [qword_2E62F8 setObject:&off_274858 forKeyedSubscript:@"type"];
  [qword_2E62F8 setObject:&off_274870 forKeyedSubscript:@"url"];
  [qword_2E62F8 setObject:&off_274888 forKeyedSubscript:@"user-interface-style"];
  [qword_2E62F8 setObject:&off_2748A0 forKeyedSubscript:@"v"];
  [qword_2E62F8 setObject:&off_2748B8 forKeyedSubscript:@"valign"];
  [qword_2E62F8 setObject:&off_2748D0 forKeyedSubscript:@"vcompressed"];
  [qword_2E62F8 setObject:&off_2748E8 forKeyedSubscript:@"video-id"];
  [qword_2E62F8 setObject:&off_274900 forKeyedSubscript:@"vpivot"];
  [qword_2E62F8 setObject:&off_274918 forKeyedSubscript:@"vertical-placement"];
  [qword_2E62F8 setObject:&off_274930 forKeyedSubscript:@"vspacing"];
  [qword_2E62F8 setObject:&off_274948 forKeyedSubscript:@"weight"];
  [qword_2E62F8 setObject:&off_274960 forKeyedSubscript:@"w"];
  [qword_2E62F8 setObject:&off_274978 forKeyedSubscript:@"width-snap"];
  [qword_2E62F8 setObject:&off_274990 forKeyedSubscript:@"when-unavailable"];
  v3 = qword_2E62F8;

  [v3 setObject:&off_2749A8 forKeyedSubscript:@"z-index"];
}

void sub_87070(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CAGradientLayer);
  [v4 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v12[0] = [*(a1 + 32) CGColor];
  v12[1] = [*(a1 + 40) CGColor];
  v5 = [NSArray arrayWithObjects:v12 count:2];
  [v4 setColors:v5];

  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  v11[0] = v6;
  v11[1] = &off_275C88;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  [v4 setLocations:v7];

  if (*(a1 + 88) == 1)
  {
    v8 = 0.5;
    [v4 setStartPoint:{*(a1 + 96), 0.5}];
    v9 = *(a1 + 104);
  }

  else
  {
    v9 = 0.5;
    [v4 setStartPoint:{0.5, *(a1 + 96)}];
    v8 = *(a1 + 104);
  }

  [v4 setEndPoint:{v9, v8}];
  v10 = [v3 CGContext];

  [v4 renderInContext:v10];
}

void sub_8790C(id a1)
{
  v1 = qword_2E6318;
  qword_2E6318 = &off_2757D8;
}

void sub_87CDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 objectForKeyedSubscript:NSFontAttributeName];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    v11 = [a2 mutableCopy];
    [v11 removeObjectForKey:NSFontAttributeName];
    [*(a1 + 40) addAttributes:v11 range:{a3, a4}];
  }

  else
  {
    v10 = *(a1 + 40);

    [v10 addAttributes:a2 range:{a3, a4}];
  }
}

void sub_897B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_11420(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_89C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_11420(a10);
  }

  _Unwind_Resume(a1);
}

void sub_8B7B8(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

double sub_8BB68(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 768);
    if (!v3)
    {
      operator new();
    }

LABEL_6:

    return sub_8BF4C(v3);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"TUIRecordInstantiationStats"];

  v3 = *(a1 + 768);
  if (v5)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v3)
  {
    sub_3780(v3 + 88);
    sub_11694(v3 + 48);
    sub_11694(v3 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_8BE78(uint64_t result, _DWORD *a2)
{
  *result = 0;
  *(result + 4) = 0xFFFF0000FFFF0000;
  *(result + 12) = 0;
  if (a2)
  {
    *result = *a2;
    *(result + 4) = a2[2];
    *(result + 8) = a2[1];
    *(result + 12) = a2[3];
  }

  return result;
}

void sub_8BEBC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_8BF18(exception, a1);
}

std::logic_error *sub_8BF18(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

double sub_8BF4C(uint64_t a1)
{
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
  sub_8BFC8(a1 + 8, &v3);
  sub_11694(&v3);
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
  sub_8BFC8(a1 + 48, &v3);
  sub_11694(&v3);
  result = 0.0;
  *(a1 + 27816) = 0u;
  *(a1 + 27832) = 0u;
  return result;
}

void sub_8BFC8(uint64_t a1, uint64_t *a2)
{
  sub_8C06C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_8C06C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

id sub_8D72C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setContentInset:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 48) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(a1 + 32) _leadingGradientFrame];
  [*(*(a1 + 32) + 56) setFrame:?];
  [*(a1 + 32) _trailingGradientFrame];
  v2 = *(*(a1 + 32) + 64);

  return [v2 setFrame:?];
}

id sub_8E3CC(uint64_t a1)
{
  v2 = [[TUIFeedView alloc] initWithFrame:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  [*(*(a1 + 32) + 48) setAutoresizingMask:18];
  v5 = +[UIColor clearColor];
  [*(*(a1 + 32) + 48) setBackgroundColor:v5];

  [*(*(a1 + 32) + 48) setShowsHorizontalScrollIndicator:0];
  [*(*(a1 + 32) + 48) setShowsVerticalScrollIndicator:0];
  [*(*(a1 + 32) + 48) setContentInsetAdjustmentBehavior:2];
  [*(*(a1 + 32) + 48) setPagingEnabled:0];
  [*(*(a1 + 32) + 48) setDelegate:?];
  [*(*(a1 + 32) + 48) setSubviewsDelegate:?];
  v6 = *(a1 + 32);
  v7 = v6[6];

  return [v6 addSubview:v7];
}

id sub_8FAB8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_8FAEC(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_8FB58(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_8FD6C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_2E6328;
  qword_2E6328 = v1;
}

void sub_900B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 response];
  v7 = [v5 URL];

  v6 = [NSURLRequest requestWithURL:v7];
  [*(*(a1 + 32) + 40) storeCachedResponse:v4 forRequest:v6];
}

uint64_t sub_902A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_906CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 25) == 1)
  {
    if ((*(v2 + 32) & 0x8000000000000000) != 0)
    {
      [v2 _aq_loadPostLaunchCaches];
    }
  }

  else if (*(v2 + 24) == 1)
  {
    [v2 _aq_saveOfflineCache];
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;
  }

  ++*(*(a1 + 32) + 32);
}

uint64_t sub_90A78(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = [*(a1 + 32) fileExistsAtPath:a2 isDirectory:&v4];
  return (v2 & v4);
}

void sub_90AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 response];
  v7 = [v5 URL];

  v6 = [NSURLRequest requestWithURL:v7];
  [*(*(a1 + 32) + 40) storeCachedResponse:v4 forRequest:v6];
}

void sub_90D5C(void *a1)
{
  v2 = [*(a1[4] + 8) valueForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_91724(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = a1[4];
  if (v9[32] == 1)
  {
    [v9 _addURLToOfflineCache:a1[5] response:v7 data:v11];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v11, v8);
  }
}

void sub_9194C(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = a1[4];
  if (v9[32] == 1)
  {
    [v9 _addURLToOfflineCache:a1[5] response:v7 data:v11];
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8);
  }
}

void sub_91C80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t TUIKeyboardAppearanceFromEnvironmentStyle(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

BOOL TUIPlatformKeyboardAppearanceFromKeyboardAppearance(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void sub_93C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, char a50)
{
  sub_95A70(&a22);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  sub_639A8(&a50);

  _Unwind_Resume(a1);
}

double sub_93D58(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v7 = *a1;
  v143 = a4;
  if (!a4)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    v143 = 1;
LABEL_3:
    while (1)
    {
      v10 = v8;
      v11 = v9;
      if (v9 == *(v6 + 32) && v8 == *(v6 + 40))
      {
        break;
      }

      v12 = *v7;
      v13 = *(*v7 + 88 * v9) + 96 * v8;
      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          if (*v14)
          {
            v17 = [*v14 span];
            if (v17 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17;
            }
          }

          else
          {
            v18 = 1;
          }

          v16 += v18;
          v14 += 8;
        }

        while (v14 != v15);
        v12 = *v7;
      }

      v8 = 0;
      v19 = v143;
      if (v143 <= v16)
      {
        v19 = v16;
      }

      v143 = v19;
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v7[1] - v12) >> 3);
      v6 = a1;
      v5 = a2;
      if (v11 < v9)
      {
        v8 = v10 + 1;
        v20 = (v12 + 88 * v11 + 8);
        while (v8 >= 0xAAAAAAAAAAAAAAABLL * ((*v20 - *(v20 - 1)) >> 5))
        {
          v8 = 0;
          ++v11;
          v20 += 11;
          if (v9 == v11)
          {
            goto LABEL_3;
          }
        }

        v9 = v11;
      }
    }

    v7 = *v6;
  }

  v21 = *(v5 + 40);
  v22 = *v5 - *(v5 + 16) - *(v5 + 32);
  v152 = 0uLL;
  v153 = 0;
  v24 = *(v6 + 8);
  v23 = *(v6 + 16);
  v25 = 0.0;
LABEL_25:
  while (1)
  {
    v26 = v23;
    v27 = v24;
    if (v24 == *(v6 + 32) && v23 == *(v6 + 40))
    {
      break;
    }

    v28 = (*(*v7 + 88 * v24) + 96 * v23);
    sub_673FC(&v154, 0, v28[6], v28[7], NAN);
    v30 = v29;
    *(v28 + 9) = v29;
    v28[10] = v31;
    v32 = *(&v152 + 1);
    if (v152 == *(&v152 + 1))
    {
      __p[0] = 0;
      __p[1] = 0;
      v151 = 0;
      sub_95B68(&v152, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v25 = 0.0;
      v32 = *(&v152 + 1);
    }

    if (*(v5 + 64) == 1 && *(v32 - 24) != *(v32 - 16) && v30 + v21 + v25 > v22)
    {
      __p[0] = 0;
      __p[1] = 0;
      v151 = 0;
      sub_95B68(&v152, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v25 = 0.0;
      v32 = *(&v152 + 1);
    }

    v33 = *(v32 - 24);
    v34 = *(v32 - 16);
    v35 = *(v32 - 8);
    if (v33 != v34)
    {
      v25 = v21 + v25;
    }

    if (v34 >= v35)
    {
      v37 = (v34 - v33) >> 4;
      v38 = v37 + 1;
      if ((v37 + 1) >> 60)
      {
        sub_4050();
      }

      v39 = v35 - v33;
      if (v39 >> 3 > v38)
      {
        v38 = v39 >> 3;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF0)
      {
        v40 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        sub_9655C(v32 - 24, v40);
      }

      v41 = 16 * v37;
      *v41 = v28;
      *(v41 + 8) = v30;
      v36 = 16 * v37 + 16;
      v42 = *(v32 - 24);
      v43 = *(v32 - 16) - v42;
      v44 = v41 - v43;
      memcpy((v41 - v43), v42, v43);
      v45 = *(v32 - 24);
      *(v32 - 24) = v44;
      *(v32 - 16) = v36;
      *(v32 - 8) = 0;
      if (v45)
      {
        operator delete(v45);
      }

      v5 = a2;
    }

    else
    {
      *v34 = v28;
      *(v34 + 8) = v30;
      v36 = v34 + 16;
    }

    v23 = 0;
    v25 = v30 + v25;
    *(v32 - 16) = v36;
    v24 = 0x2E8BA2E8BA2E8BA3 * ((v7[1] - *v7) >> 3);
    if (v27 < v24)
    {
      v23 = v26 + 1;
      v46 = (*v7 + 88 * v27 + 8);
      while (v23 >= 0xAAAAAAAAAAAAAAABLL * ((*v46 - *(v46 - 1)) >> 5))
      {
        v23 = 0;
        ++v27;
        v46 += 11;
        if (v24 == v27)
        {
          goto LABEL_25;
        }
      }

      v24 = v27;
    }
  }

  if (*(v5 + 64))
  {
    v47 = *(&v152 + 1);
    for (i = v152; i != v47; i += 3)
    {
      if (i != (*(&v152 + 1) - 24) || 0xAAAAAAAAAAAAAAABLL * ((*(&v152 + 1) - v152) >> 3) <= 1)
      {
        v49 = i[1];
        v50 = *i;
        if (*i != v49)
        {
          v51 = 0.0;
          v52 = *i;
          do
          {
            v51 = v51 + v52[1];
            v52 += 2;
          }

          while (v52 != v49);
          v53 = (v49 - v50) >> 4;
          v54 = v22 - (v51 + (v53 - 1) * v21);
          if (v54 > 0.0)
          {
            v55 = v54 / v53;
            do
            {
              v56 = *v50;
              sub_673FC(&v154, 1, *(*v50 + 48), *(*v50 + 56), v55 + v50[1]);
              *(v56 + 72) = v57;
              *(v56 + 80) = v58;
              *(v50 + 1) = v57;
              v50 += 2;
            }

            while (v50 != v49);
          }
        }
      }
    }
  }

  __p[0] = 0;
  sub_677F4(&v155, v143, __p);
  v59 = a1;
  v61 = *a1;
  v60 = *(a1 + 8);
  v62 = *(a1 + 16);
  v136 = *a1;
LABEL_70:
  while (1)
  {
    v63 = v60;
    v64 = v62;
    if (v60 == *(v59 + 32) && v62 == *(v59 + 40))
    {
      break;
    }

    v65 = *v61;
    v66 = *(*v61 + 88 * v60) + 96 * v62;
    v68 = *(v66 + 48);
    v67 = *(v66 + 56);
    if (v68 != v67)
    {
      v138 = v62;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 2;
      do
      {
        v73 = *(v68 + 56);
        if (*v68 && [*v68 span] >= 2)
        {
          operator new();
        }

        if (v71 < v143)
        {
          v155[v71] = fmax(v155[v71], v73);
        }

        ++v71;
        v68 += 64;
        v70 += v72;
        v72 += 2;
        v69 += 8;
      }

      while (v68 != v67);
      v61 = v136;
      v64 = v138;
      v65 = *v136;
      v59 = a1;
    }

    v62 = 0;
    v60 = 0x2E8BA2E8BA2E8BA3 * ((v61[1] - v65) >> 3);
    if (v63 < v60)
    {
      v62 = v64 + 1;
      v74 = (v65 + 88 * v63 + 8);
      while (v62 >= 0xAAAAAAAAAAAAAAABLL * ((*v74 - *(v74 - 1)) >> 5))
      {
        v62 = 0;
        ++v63;
        v74 += 11;
        if (v60 == v63)
        {
          goto LABEL_70;
        }
      }

      v60 = v63;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v151 = 0;
  v148[0] = 0;
  sub_677F4(__p, v143 + 1, v148);
  v75 = v155;
  v76 = v156;
  v77 = __p[0];
  if (v155 == v156)
  {
    v82 = 0;
    v79 = 0.0;
  }

  else
  {
    v78 = 0;
    v79 = 0.0;
    v80 = __p[0];
    do
    {
      v81 = *v75++;
      *v80++ = v79;
      v79 = v79 + v81;
      --v78;
    }

    while (v75 != v76);
    v82 = -v78;
  }

  v77[v82] = v79;
  v83 = *(a2 + 16);
  if (*(a2 + 64))
  {
    v83 = 0.0;
  }

  *&v144 = v83;
  v148[0] = 0;
  v148[1] = 0;
  v149 = 0;
  v85 = *(&v152 + 1);
  for (j = v152; j != v85; j += 3)
  {
    v146 = 0uLL;
    v147 = 0;
    sub_96624(&v146, *j, j[1], (j[1] - *j) >> 4);
    v86 = *(&v146 + 1);
    v87 = v146;
    if (v146 != *(&v146 + 1))
    {
      do
      {
        v88 = v87[1];
        sub_94B48(v148, &v144);
        *&v144 = v21 + v88 + *&v144;
        v87 += 2;
      }

      while (v87 != v86);
      v87 = v146;
    }

    v59 = a1;
    if (v87)
    {
      *(&v146 + 1) = v87;
      operator delete(v87);
    }
  }

  sub_94B48(v148, &v144);
  v89 = a2;
  if ((a2 + 72) != v148)
  {
    sub_966D4((a2 + 72), v148[0], v148[1], (v148[1] - v148[0]) >> 3);
  }

  if (v148[0])
  {
    v148[1] = v148[0];
    operator delete(v148[0]);
  }

  *v148 = *v59;
  v149 = *(v59 + 16);
  v146 = *(v59 + 24);
  v147 = *(v59 + 40);
  *&v144 = a2;
  *(&v144 + 1) = __p;
  v145 = v59;
  sub_95D44(a3, v148, &v146, &v144);
  v137 = *(__p[1] - 1);
  v91 = *v59;
  v90 = *(v59 + 8);
  v92 = *(v59 + 16);
  v139 = *v59;
LABEL_107:
  while (1)
  {
    v93 = v90;
    v94 = v92;
    if (v90 == *(v59 + 32) && v92 == *(v59 + 40))
    {
      break;
    }

    v95 = *v91;
    v96 = (*(*v91 + 88 * v90) + 96 * v92);
    v97 = *v96;
    v98 = v96[2];
    if (v98 <= 1)
    {
      v98 = 1;
    }

    if (*(v89 + 56) == 2)
    {
      v99 = *(v89 + 72);
      v100 = *(v89 + 40);
      v101 = *(v89 + 16) + *(v89 + 32);
      if (*(v89 + 64))
      {
        v101 = 0.0;
      }

      v102 = &v99[v97];
      v103 = v102[v98] - *v102 - v100;
      v104 = *(*(v89 + 80) - 8) - *v99 - v100 + v101 - *v102 - v103;
    }

    else
    {
      v105 = (*(v89 + 72) + 8 * v97);
      v104 = *v105;
      v103 = v105[v98] - *v105 - *(v89 + 40);
    }

    v106 = v96[6];
    v107 = v96[7];
    if (v106 != v107)
    {
      v141 = v94;
      v108 = 0;
      v109 = 0.0;
      do
      {
        v110 = 0.0;
        if (v108 < v143)
        {
          v110 = v155[v108];
        }

        v111 = [*v106 valign] - 1;
        v112 = 0.0;
        if (v111 <= 3)
        {
          v112 = dbl_24CD90[v111];
        }

        v113 = *(v106 + 56);
        v114 = *(v89 + 56);
        v115 = [*v106 halign];
        v116 = v112 * (v110 - v113);
        if (v115 == &dword_0 + 3)
        {
          v117 = 1.0;
        }

        else
        {
          v117 = 0.0;
        }

        if (v115 == &dword_0 + 2)
        {
          v117 = 0.5;
        }

        if (v114 != 2)
        {
          v117 = 1.0 - v117;
        }

        v118 = v104 + *(v59 + 48) + v117 * (v103 - *(v106 + 48));
        v119 = v116 + v109 + *(v59 + 56);
        *(v106 + 32) = v118;
        *(v106 + 40) = v119;
        v120 = *(v106 + 8);
        v121 = *(v106 + 16);
        while (v120 != v121)
        {
          v122 = *(v120 + 56);
          v123 = a3[14] + 152 * v122;
          v124 = (v123 + 136);
          p_y = (v123 + 144);
          v126 = v122 == -1;
          if (v122 == -1)
          {
            v127 = &CGPointZero;
          }

          else
          {
            v127 = v124;
          }

          if (v126)
          {
            p_y = &CGPointZero.y;
          }

          sub_6850C((v120 + 8), v118 - v127->x + *(v120 + 72), v119 - *p_y + *(v120 + 64));
          v120 += 96;
        }

        v109 = v109 + v110;
        ++v108;
        v106 += 64;
        v89 = a2;
      }

      while (v106 != v107);
      v91 = v139;
      v94 = v141;
      v95 = *v139;
    }

    v92 = 0;
    v90 = 0x2E8BA2E8BA2E8BA3 * ((v91[1] - v95) >> 3);
    if (v93 < v90)
    {
      v92 = v94 + 1;
      v128 = (v95 + 88 * v93 + 8);
      while (v92 >= 0xAAAAAAAAAAAAAAABLL * ((*v128 - *(v128 - 1)) >> 5))
      {
        v92 = 0;
        ++v93;
        v128 += 11;
        if (v90 == v93)
        {
          goto LABEL_107;
        }
      }

      v90 = v93;
    }
  }

  v129 = *(v59 + 80);
  *(v59 + 80) = v152;
  v152 = v129;
  v131 = *(v59 + 96);
  v130 = *(v59 + 104);
  *(v59 + 96) = v153;
  v153 = v131;
  *(v59 + 104) = *__p;
  v132 = *(v59 + 120);
  *(v59 + 120) = v151;
  __p[0] = v130;
  v151 = v132;
  v133 = *(v89 + 16) + *(v89 + 32);
  if (*(v89 + 64))
  {
    v133 = 0.0;
  }

  v134 = *(*(v89 + 80) - 8) - **(v89 + 72) - *(v89 + 40) + v133;
  *(v59 + 64) = v134;
  *(v59 + 72) = v137;
  if (v130)
  {
    __p[1] = v130;
    operator delete(v130);
  }

  __p[0] = &v152;
  sub_95ABC(__p);
  if (v155)
  {
    v156 = v155;
    operator delete(v155);
  }

  return v134;
}

void sub_9498C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__p, char *a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a29;
  sub_95ABC(&__p);
  v31 = *(v29 - 176);
  if (v31)
  {
    *(v29 - 168) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_94A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_96A5C(v7, v4);
        v4 += 40;
        v7 += 40;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    for (; v6 != v7; v6 -= 40)
    {
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_94AF4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_96A9C(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_94B48(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_4050();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_65004(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

double *sub_94C28(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v14 = *(a4 + 32);
  v15 = *a4;
  v36 = *(a4 + 8);
  v30 = *(a4 + 16);
  v37 = v30;
  v38 = v14;
  v16 = sub_618AC(a3, &dword_0 + 1);
  if (*(a3 + 32) != v16)
  {
    v17 = v16;
    sub_673FC(&v35, 0, *(v16 + 40), *(v16 + 48), *&v30);
    *(v17 + 72) = v18;
    *(v17 + 80) = v19;
    v20 = *&v37 - v18;
    v21 = v15 - *&v37 + v20 * 0.5;
    v22 = v20 * 0.5;
    if (*(a4 + 56) == 2)
    {
      v22 = v21;
    }

    v33 = a6 + v22;
    v34 = a7 + v36;
    *&v31 = &v36;
    *(&v31 + 1) = a2;
    v32 = &v33;
    sub_96F78(a5, v17, (v17 + 96), &v31);
    sub_97304(v17, &dword_4, a2, a5, v33, v34);
    sub_61AFC(v17, 1);
    [*a1 addObjectsFromArray:*(v17 + 88)];
  }

  result = sub_618AC(a3, &dword_0 + 2);
  if (*(a3 + 32) != result)
  {
    v24 = result;
    sub_673FC(&v35, 0, *(result + 5), *(result + 6), v38);
    v26 = v25;
    v24[9] = v25;
    *(v24 + 10) = v27;
    v28 = sub_618AC(a3, &dword_0 + 2);
    v29 = v15 - v38 + (v38 - v26) * 0.5;
    if (*(a4 + 56) == 2)
    {
      v29 = (v38 - v26) * 0.5;
    }

    v33 = a6 + v29;
    v34 = a7 + v36;
    *&v31 = &v36;
    *(&v31 + 1) = a2;
    v32 = &v33;
    sub_974C8(a5, v28, v28 + 12, &v31);
    sub_97304(v24, &dword_4, a2, a5, v33, v34);
    sub_61AFC(v24, 1);
    return [*a1 addObjectsFromArray:*(v24 + 11)];
  }

  return result;
}

uint64_t *sub_95A1C(uint64_t *a1)
{
  *a1 = 0;
  v2 = objc_opt_new();
  v3 = *a1;
  *a1 = v2;

  return a1;
}

uint64_t sub_95A70(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 80);
  sub_95ABC(&v4);
  return a1;
}

void sub_95ABC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_95B10(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_95B10(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_95B68(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_961C8(a1, a2);
  }

  else
  {
    sub_96174(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_95BA8(unint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v25 = 0x7FF8000000000000;
  sub_677F4(a2, v4, &v25);
  v5 = *a2;
  **a2 = 0;
  v6 = *a1;
  v7 = 8 * *a1;
  if (*a1 < 2)
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = a1[1];
    v9 = 1;
    do
    {
      v10 = 0;
      v11 = 0;
      v12 = NAN;
      v13 = 2;
      v14 = v8;
      do
      {
        v15 = (v14 - 8 * (v10 >> 1));
        if (v12 < *v15 + *&v5[v11])
        {
          v12 = *v15 + *&v5[v11];
        }

        ++v11;
        v14 += v7 - 8;
        v10 += v13;
        v13 += 2;
      }

      while (v9 != v11);
      *&v5[v9++] = v12;
      v8 += 8;
    }

    while (v9 != v6);
  }

  v16 = v6 - 1;
  v17 = v7 - 16;
  v18 = v7 - 8;
  do
  {
    v19 = *&v5[--v6];
    if (v6)
    {
      v20 = 0;
      v21 = 0;
      v22 = a1[1] + v17;
      v23 = 2;
      do
      {
        v24 = v19 - *(v22 - 8 * (v20 >> 1));
        if (v24 >= *&v5[v21])
        {
          v24 = *&v5[v21];
        }

        *&v5[v21++] = v24;
        v22 += v18;
        v20 += v23;
        v23 += 2;
      }

      while (v16 != v21);
    }

    --v16;
    v17 -= 8;
  }

  while (v6);
}

void sub_95D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_95D44(void *a1, size_t size, uint64_t a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = a3;
    v6 = 0;
    v7 = 0;
    v8 = 64;
    memset(ptr, 0, sizeof(ptr));
    v10 = *size;
    v9 = *(size + 8);
    v11 = ptr;
    v12 = *(size + 16);
    v29 = *size;
LABEL_3:
    while (v9 != *(v4 + 8) || v12 != *(v4 + 16))
    {
      v33 = v9;
      v34 = v12;
      v13 = *(*v10 + 88 * v9);
      if (v6 >= v8)
      {
        v8 += 64;
        if (v11 == ptr)
        {
          v11 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
          memcpy(v11, ptr, 8 * v6);
        }

        else
        {
          v11 = malloc_type_realloc(v11, 8 * v8, 0x2004093837F09uLL);
        }
      }

      v31 = v8;
      v32 = v11;
      v14 = (v13 + 96 * v34);
      *(v11 + v6) = v14;
      v15 = v14[6];
      v35 = v14[7];
      if (v15 != v35)
      {
        v16 = 0;
        do
        {
          v36 = v15;
          v18 = *(v15 + 8);
          v17 = *(v15 + 16);
          v37 = v17;
          while (v18 != v17)
          {
            v19 = a1[8];
            v38 = v18;
            v20 = (*(v18 + 8) - v19) >> 3;
            v21 = *(v18 + 16) - v19;
            if (v20 < v21 >> 3)
            {
              v22 = v21 >> 3;
              do
              {
                v23 = *(a1[11] + 8 * v20);
                if (v23 != -1)
                {
                  if (!v7)
                  {
                    v7 = objc_opt_new();
                  }

                  do
                  {
                    if (([v7 containsIndex:v23] & 1) == 0)
                    {
                      v24 = a1[14] + 152 * v23;
                      *v24 = -1;
                      *(v24 + 8) = 0u;
                      *(v24 + 24) = 0u;
                      *(v24 + 40) = 0u;
                      [v7 addIndex:v23];
                    }

                    v25 = (a1[14] + 152 * v23);
                    sub_68144(v25, v6, *v14, v14[1], v16, v14[2], v14[3], 1uLL);
                    v23 = v25[16];
                  }

                  while (v23 != -1);
                }

                ++v20;
              }

              while (v20 != v22);
            }

            v17 = v37;
            v18 = v38 + 96;
          }

          ++v16;
          v15 = v36 + 64;
        }

        while (v36 + 64 != v35);
      }

      v12 = 0;
      ++v6;
      v10 = v29;
      v4 = a3;
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v29[1] - *v29) >> 3);
      v11 = v32;
      v26 = v33;
      v8 = v31;
      if (v33 < v9)
      {
        v12 = v34 + 1;
        v27 = (*v29 + 88 * v33 + 8);
        while (v12 >= 0xAAAAAAAAAAAAAAABLL * ((*v27 - *(v27 - 1)) >> 5))
        {
          v12 = 0;
          ++v26;
          v27 += 11;
          if (v9 == v26)
          {
            goto LABEL_3;
          }
        }

        v9 = v26;
      }
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_9683C;
    v43[3] = &unk_25F6C0;
    v43[4] = a1;
    v44 = *a4;
    v45 = *(a4 + 2);
    v46 = v11;
    [v7 enumerateRangesUsingBlock:v43];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_96978;
    v39[3] = &unk_25F6C0;
    v39[4] = a1;
    v40 = *a4;
    v41 = *(a4 + 2);
    v42 = v11;
    [v7 enumerateRangesWithOptions:2 usingBlock:v39];
    if (v11 != ptr)
    {
      free(v11);
    }
  }
}

uint64_t sub_96174(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_96624(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_961C8(uint64_t a1, uint64_t *a2)
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

  v17 = a1;
  if (v6)
  {
    sub_96308(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_96624(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  *&v16 = v16 + 24;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_96360(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_964C4(&v14);
  return v13;
}

void sub_962F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_964C4(va);
  _Unwind_Resume(a1);
}

void sub_96308(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

uint64_t sub_96360(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_96624(v4, *v7, v7[1], (v7[1] - *v7) >> 4);
      v7 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        v6[1] = v8;
        operator delete(v8);
      }

      v6 += 3;
    }
  }

  return sub_9643C(v10);
}

uint64_t sub_9643C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_96474(a1);
  }

  return a1;
}

void sub_96474(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_964C4(uint64_t a1)
{
  sub_964FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_964FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_9655C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3AAC();
}

void *sub_965A4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v4 = 0x7FF8000000000000;
  sub_677F4(a1 + 1, ((a2 - 1) * a2) >> 1, &v4);
  return a1;
}

void sub_96608(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_96624(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_96698(result, a4);
  }

  return result;
}

void sub_9667C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_96698(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_9655C(a1, a2);
  }

  sub_4050();
}

void *sub_966D4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_96800(v6, v10);
    }

    sub_4050();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void sub_96800(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_65004(a1, a2);
  }

  sub_4050();
}

void *sub_9683C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2 + 144;
    do
    {
      v7 = *(v5 + 112);
      v8 = *(v7 + v6 - 136);
      v9 = *(v7 + v6 - 112);
      v10 = v4[5];
      if (v9 <= 1)
      {
        v9 = 1;
      }

      if (*(v10 + 56) == 2)
      {
        v11 = 0.0;
        if ((*(v10 + 64) & 1) == 0)
        {
          v11 = *(v10 + 16) + *(v10 + 32);
        }

        v12 = *(*(v10 + 80) - 8) - **(v10 + 72) - *(v10 + 40) + v11 - *(*(v10 + 72) + 8 * v8) - (*(*(v10 + 72) + 8 * v8 + 8 * v9) - *(*(v10 + 72) + 8 * v8) - *(v10 + 40));
      }

      else
      {
        v12 = *(*(v10 + 72) + 8 * v8);
      }

      v13 = v4[7];
      v14 = *(*v4[6] + 8 * *(v7 + v6 - 120));
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = (v7 + v6);
      v18 = *(v7 + v6 - 24);
      v19 = *(v7 + v6 - 16);
      v20 = v7 + 152 * v19;
      v21 = v19 == -1;
      p_y = &CGPointZero.y;
      if (!v21)
      {
        p_y = (v20 + 144);
      }

      v23 = v12 + v15;
      v24 = v14 + v16;
      v25 = (v20 + 136);
      if (v21)
      {
        v25 = &CGPointZero;
      }

      v26 = *p_y;
      x = v25->x;
      *(v17 - 1) = v23;
      *v17 = v24;
      result = [v18 setComputedOrigin:{v23 - x, v24 - v26}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_96978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 32);
    v6 = 152 * a3 + 152 * a2 - 32;
    do
    {
      v7 = (*(v5 + 112) + v6);
      v8 = *(v7 - 11);
      v9 = *(a1 + 40);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v10 = (*(v9 + 72) + 8 * *(v7 - 14));
      v11 = v10[v8] - *v10 - *(v9 + 40);
      v12 = (**(a1 + 48) + 8 * *(v7 - 12));
      v13 = v12[*(v7 - 9)] - *v12;
      v14 = [*v7 controller];
      [v14 validateGroupedContainingLayout:*v7 withSize:{v11, v13}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_96A5C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    objc_storeStrong((a1 + 32), *(a2 + 32));
  }

  return a1;
}

uint64_t sub_96A9C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_4050();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_96BD0(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *&v17 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_96C28(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_96CA4(&v15);
  return v14;
}

void sub_96BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_96CA4(va);
  _Unwind_Resume(a1);
}

void sub_96BD0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_96C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 32) = *(v7 + 32);
      v7 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {

      v6 += 40;
    }
  }
}

uint64_t sub_96CA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_96CF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = 0.0;
  v8 = 0.0;
  if (a3 != a4)
  {
    v10 = a3;
    do
    {
      v13 = sub_96D94(v10, a2, a1, NAN, a6);
      if (v7 < v14)
      {
        v7 = v14;
      }

      v8 = v8 + v13;
      v10 += 64;
    }

    while (v10 != a4);
  }

  return v8;
}

double sub_96D94(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  width = CGSizeZero.width;
  for (i = CGSizeZero.height; v6 != v7; v6 += 96)
  {
    v14 = sub_96E3C(v6, a2, a3, a4, a5);
    if (width < v14)
    {
      width = v14;
    }

    if (i < v15)
    {
      i = v15;
    }
  }

  *(a1 + 48) = width;
  *(a1 + 56) = i;
  return width;
}

double sub_96E3C(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v6 = sub_96EB8(a4 - (*(a1 + 72) + *(a1 + 88)), a5 - (*(a1 + 64) + *(a1 + 80)), a3, a2, *(a1 + 8), *(a1 + 16));
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  return v6 + *(a1 + 72) + *(a1 + 88);
}

double sub_96EB8(double a1, double a2, uint64_t a3, int a4, id *a5, id *a6)
{
  v7 = 0.0;
  v8 = 0.0;
  if (a5 != a6)
  {
    v10 = a5;
    if (a4)
    {
      v11 = a2;
    }

    else
    {
      v11 = NAN;
    }

    do
    {
      [*v10 setContainingWidth:NAN];
      [*v10 setContainingHeight:a2];
      [*v10 setFlexedWidth:NAN];
      [*v10 setFlexedHeight:v11];
      [*v10 validateLayout];
      v12 = *v10++;
      [v12 computedNaturalSize];
      if (v7 < v14)
      {
        v7 = v14;
      }

      v8 = v8 + v13;
    }

    while (v10 != a6);
  }

  return v8;
}

void sub_96F78(void *a1, uint64_t *size, uint64_t *a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = size;
    v22 = a4;
    memset(ptr, 0, sizeof(ptr));
    if (size == a3)
    {
      v6 = 0;
      v7 = ptr;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v10 = 64;
      v7 = ptr;
      do
      {
        if (v9 >= v10)
        {
          v10 += 64;
          if (v7 == ptr)
          {
            v7 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
            memcpy(v7, ptr, 8 * v9);
          }

          else
          {
            v7 = malloc_type_realloc(v7, 8 * v10, 0x2004093837F09uLL);
          }
        }

        v24 = v10;
        v25 = v7;
        *(v7 + v9) = v4;
        v11 = v4[5];
        v26 = v4[6];
        if (v11 != v26)
        {
          v12 = 0;
          do
          {
            v27 = v11;
            v14 = *(v11 + 8);
            v13 = *(v11 + 16);
            v28 = v13;
            while (v14 != v13)
            {
              v15 = a1[8];
              v29 = v14;
              v16 = (*(v14 + 8) - v15) >> 3;
              v17 = *(v14 + 16) - v15;
              if (v16 < v17 >> 3)
              {
                v18 = v17 >> 3;
                do
                {
                  v19 = *(a1[11] + 8 * v16);
                  if (v19 != -1)
                  {
                    if (!v6)
                    {
                      v6 = objc_opt_new();
                    }

                    do
                    {
                      if (([v6 containsIndex:{v19, v22}] & 1) == 0)
                      {
                        v20 = a1[14] + 152 * v19;
                        *v20 = -1;
                        *(v20 + 8) = 0u;
                        *(v20 + 24) = 0u;
                        *(v20 + 40) = 0u;
                        [v6 addIndex:v19];
                      }

                      v21 = (a1[14] + 152 * v19);
                      sub_68144(v21, v9, *v4, v4[1], v12, v4[2], v4[3], 1uLL);
                      v19 = v21[16];
                    }

                    while (v19 != -1);
                  }

                  ++v16;
                }

                while (v16 != v18);
              }

              v13 = v28;
              v14 = v29 + 96;
            }

            ++v12;
            v11 = v27 + 64;
          }

          while (v27 + 64 != v26);
        }

        ++v9;
        v4 += 12;
        v10 = v24;
        v7 = v25;
      }

      while (v4 != a3);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_97854;
    v34[3] = &unk_25F6C0;
    v34[4] = a1;
    v8 = v22;
    v35 = *v22;
    v36 = *(v22 + 2);
    v37 = v7;
    [v6 enumerateRangesUsingBlock:{v34, v22}];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_97918;
    v30[3] = &unk_25F6C0;
    v30[4] = a1;
    v31 = *v8;
    v32 = *(v8 + 2);
    v33 = v7;
    [v6 enumerateRangesWithOptions:2 usingBlock:v30];
    if (v7 != ptr)
    {
      free(v7);
    }
  }
}

void sub_97304(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v35 = *(a1 + 48);
  if (v6 != v35)
  {
    v11 = 0;
    v12 = (a3[1] - *a3) >> 3;
    do
    {
      if (v11 >= v12)
      {
        v13 = v12 - 1;
      }

      else
      {
        v13 = v11;
      }

      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      if (*v6)
      {
        v16 = [*v6 span];
        v14 = *a3;
        v17 = *v6;
      }

      else
      {
        v17 = 0;
        v16 = 1;
      }

      v11 += v16;
      if (v11 >= v12)
      {
        v18 = v12 - 1;
      }

      else
      {
        v18 = v11;
      }

      v19 = *(v14 + 8 * v18);
      v20 = *(v6 + 56);
      v21 = v17;
      v22 = [v21 valign];
      v23 = v19 - v15;

      v24 = a2;
      if (v22)
      {
        v24 = v22;
      }

      if (v24 == (&dword_0 + 1) || v24 == (&dword_0 + 3))
      {
        v25 = v23 - v20;
      }

      else
      {
        v25 = (v23 - v20) * 0.5;
        if (v24 != &dword_4)
        {
          v25 = 0.0;
        }
      }

      v26 = a6 + v15 + v25;
      *(v6 + 32) = a5;
      *(v6 + 40) = v26;
      v27 = *(v6 + 8);
      v28 = *(v6 + 16);
      while (v27 != v28)
      {
        v29 = *(v27 + 56);
        v30 = *(a4 + 112) + 152 * v29;
        v31 = (v30 + 136);
        p_y = (v30 + 144);
        v33 = v29 == -1;
        if (v29 == -1)
        {
          v34 = &CGPointZero;
        }

        else
        {
          v34 = v31;
        }

        if (v33)
        {
          p_y = &CGPointZero.y;
        }

        sub_6850C((v27 + 8), a5 - v34->x + *(v27 + 72), v26 - *p_y + *(v27 + 64));
        v27 += 96;
      }

      v6 += 64;
    }

    while (v6 != v35);
  }
}

void sub_974C8(void *a1, uint64_t *size, uint64_t *a3, __int128 *a4)
{
  if (a1[14] != a1[15])
  {
    v4 = size;
    v22 = a4;
    memset(ptr, 0, sizeof(ptr));
    if (size == a3)
    {
      v6 = 0;
      v7 = ptr;
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v10 = 64;
      v7 = ptr;
      do
      {
        if (v9 >= v10)
        {
          v10 += 64;
          if (v7 == ptr)
          {
            v7 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
            memcpy(v7, ptr, 8 * v9);
          }

          else
          {
            v7 = malloc_type_realloc(v7, 8 * v10, 0x2004093837F09uLL);
          }
        }

        v24 = v10;
        v25 = v7;
        *(v7 + v9) = v4;
        v11 = v4[5];
        v26 = v4[6];
        if (v11 != v26)
        {
          v12 = 0;
          do
          {
            v27 = v11;
            v14 = *(v11 + 8);
            v13 = *(v11 + 16);
            v28 = v13;
            while (v14 != v13)
            {
              v15 = a1[8];
              v29 = v14;
              v16 = (*(v14 + 8) - v15) >> 3;
              v17 = *(v14 + 16) - v15;
              if (v16 < v17 >> 3)
              {
                v18 = v17 >> 3;
                do
                {
                  v19 = *(a1[11] + 8 * v16);
                  if (v19 != -1)
                  {
                    if (!v6)
                    {
                      v6 = objc_opt_new();
                    }

                    do
                    {
                      if (([v6 containsIndex:{v19, v22}] & 1) == 0)
                      {
                        v20 = a1[14] + 152 * v19;
                        *v20 = -1;
                        *(v20 + 8) = 0u;
                        *(v20 + 24) = 0u;
                        *(v20 + 40) = 0u;
                        [v6 addIndex:v19];
                      }

                      v21 = (a1[14] + 152 * v19);
                      sub_68144(v21, v9, *v4, v4[1], v12, v4[2], v4[3], 1uLL);
                      v19 = v21[16];
                    }

                    while (v19 != -1);
                  }

                  ++v16;
                }

                while (v16 != v18);
              }

              v13 = v28;
              v14 = v29 + 96;
            }

            ++v12;
            v11 = v27 + 64;
          }

          while (v27 + 64 != v26);
        }

        ++v9;
        v4 += 12;
        v10 = v24;
        v7 = v25;
      }

      while (v4 != a3);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_979D4;
    v34[3] = &unk_25F6C0;
    v34[4] = a1;
    v8 = v22;
    v35 = *v22;
    v36 = *(v22 + 2);
    v37 = v7;
    [v6 enumerateRangesUsingBlock:{v34, v22}];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_97A98;
    v30[3] = &unk_25F6C0;
    v30[4] = a1;
    v31 = *v8;
    v32 = *(v8 + 2);
    v33 = v7;
    [v6 enumerateRangesWithOptions:2 usingBlock:v30];
    if (v7 != ptr)
    {
      free(v7);
    }
  }
}

void *sub_97854(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112);
      v8 = v7 + v6;
      v9 = v4[7];
      v10 = *(*v4[6] + 8 * *(v7 + v6 + 24));
      v11 = *(v7 + v6 + 120);
      v12 = *(v7 + v6 + 128);
      v13 = v7 + 152 * v12;
      v14 = v12 == -1;
      p_y = &CGPointZero.y;
      if (!v14)
      {
        p_y = (v13 + 144);
      }

      v16 = *v9 + 0.0;
      v17 = v10 + v9[1];
      v18 = (v13 + 136);
      if (v14)
      {
        v18 = &CGPointZero;
      }

      v19 = *p_y;
      x = v18->x;
      *(v8 + 136) = v16;
      *(v8 + 144) = v17;
      result = [v11 setComputedOrigin:{v16 - x, v17 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_97918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 32);
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(*(a1 + 40) + 8);
      v9 = (**(a1 + 48) + 8 * *(v7 - 128));
      v10 = v9[*(v7 - 104)] - *v9;
      v11 = [*(v7 - 32) controller];
      [v11 validateGroupedContainingLayout:*(v7 - 32) withSize:{v8, v10}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void *sub_979D4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = result[4];
    v6 = 152 * a2;
    do
    {
      v7 = *(v5 + 112);
      v8 = v7 + v6;
      v9 = v4[7];
      v10 = *(*v4[6] + 8 * *(v7 + v6 + 24));
      v11 = *(v7 + v6 + 120);
      v12 = *(v7 + v6 + 128);
      v13 = v7 + 152 * v12;
      v14 = v12 == -1;
      p_y = &CGPointZero.y;
      if (!v14)
      {
        p_y = (v13 + 144);
      }

      v16 = *v9 + 0.0;
      v17 = v10 + v9[1];
      v18 = (v13 + 136);
      if (v14)
      {
        v18 = &CGPointZero;
      }

      v19 = *p_y;
      x = v18->x;
      *(v8 + 136) = v16;
      *(v8 + 144) = v17;
      result = [v11 setComputedOrigin:{v16 - x, v17 - v19}];
      v6 += 152;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_97A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = *(a1 + 32);
    v6 = 152 * a3 + 152 * a2;
    do
    {
      v7 = *(v5 + 112) + v6;
      v8 = *(*(a1 + 40) + 8);
      v9 = (**(a1 + 48) + 8 * *(v7 - 128));
      v10 = v9[*(v7 - 104)] - *v9;
      v11 = [*(v7 - 32) controller];
      [v11 validateGroupedContainingLayout:*(v7 - 32) withSize:{v8, v10}];

      v6 -= 152;
      --v3;
    }

    while (v3);
  }
}

void sub_97B54(void ***a1)
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
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_97DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_97DD8(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(*(a1 + 32) + 16);
  v3 = [TUIPair alloc];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v2)
  {
    v6 = [*(v5 + 16) from];
    v7 = [(TUIPair *)v4 initWithFirst:v6 second:*(*(a1 + 32) + 32)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1 + 32) + 16);
    v11 = *(*(a1 + 32) + 32);
    v12 = *(*(a1 + 32) + 8);
    objc_initWeak(&location, *(a1 + 32));
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_9801C;
    v28[3] = &unk_260868;
    objc_copyWeak(&v33, &location);
    v29 = *(a1 + 40);
    v13 = v11;
    v30 = v13;
    v14 = v10;
    v31 = v14;
    v15 = v12;
    v32 = v15;
    v16 = [v28 copy];
    v17 = *(a1 + 32);
    v18 = *(v17 + 24);
    *(v17 + 24) = v16;

    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    *(v19 + 16) = 0;

    v21 = *(a1 + 32);
    v22 = *(v21 + 32);
    *(v21 + 32) = 0;

    v23 = *(a1 + 32);
    v24 = *(v23 + 8);
    *(v23 + 8) = 0;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = [(TUIPair *)v3 initWithFirst:*(v5 + 72) second:*(v5 + 88)];
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }
}

void sub_98000(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_9801C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) updateHostingMap:*(a1 + 40) controller:WeakRetained];
    }

    v3 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_980F0;
    v5[3] = &unk_25DE30;
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    [v3 applyUpdate:v4 controller:WeakRetained completion:v5];
  }
}

void sub_982EC(uint64_t a1)
{
  v2 = [[TUIPair alloc] initWithFirst:*(*(a1 + 32) + 72) second:*(*(a1 + 32) + 88)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_98438(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));

  if (v2 == WeakRetained)
  {
    v4 = (*(a1 + 40) + 64);

    objc_storeWeak(v4, 0);
  }
}

void sub_98730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = *(a1 + 32);
    if (*(v5 + 40) == 1)
    {
      v6 = *(a1 + 40);

      objc_storeStrong((v5 + 32), v6);
    }
  }
}

void sub_99154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 48));
  v5 = *(a1 + 32);
  if (*(*(*(a1 + 72) + 8) + 40) || *(v5 + 40) != 1)
  {
    v9 = *(v5 + 16);
    *(v5 + 16) = 0;

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v12 = *(a1 + 32);
    v8 = *(v12 + 8);
    *(v12 + 8) = 0;
  }

  else
  {
    objc_storeStrong((v5 + 16), *(a1 + 56));
    v6 = *(a1 + 32);
    v7 = *(a1 + 64);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
  }

  *(*(a1 + 32) + 40) = 0;
}

void sub_99228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_99310;
  v9[3] = &unk_25EB18;
  v7 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 56);
  v8 = v3;
  [v4 applyUpdate:v5 controller:v6 completion:v9];
}

void sub_99310(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_993C0;
  v3[3] = &unk_25DCA0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  dispatch_async(v2, v3);
}

void sub_993C0(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) resumeUnload];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_9BCAC(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"title";
  v6[1] = @"observe-trigger";
  v6[2] = @"observe-trigger-value";
  v6[3] = @"item-type";
  v6[4] = @"opacity";
  v6[5] = @"text";
  v3 = [NSArray arrayWithObjects:v6 count:6];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6338;
  qword_2E6338 = v4;
}

void sub_9BE34(id a1)
{
  v1 = qword_2E6348;
  qword_2E6348 = &off_275800;
}

uint64_t TUIIndexMapperComputeCount(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 & (a2 >> 63)) + a2;
  v4 = a3 + (a1 & (a3 >> 63));
  if (v3 >= a1)
  {
    v3 = a1;
  }

  if (v4 + 1 < a1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = __OFSUB__(v5, v3);
  v7 = v5 - v3;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t *sub_9DAC4(uint64_t **a1, unint64_t a2, unint64_t a3)
{
  sub_9F040(a1, a2, 0, 0);
  result = sub_9FDD0(a1, a3, 0);
  if (a1 + 1 != result)
  {
    v7 = result;
    v8 = result[4];
    v10 = v8;
    *(v8 + 32) |= 3u;
    v9 = a1[8] + 1;
    a1[8] = v9;
    *(v8 + 40) = v9;
    sub_9F9DC(a1, result);
    operator delete(v7);
    *v8 = a2;
    *(v8 + 8) = 1;
    return sub_9EAB4(a1, &v10);
  }

  return result;
}

uint64_t sub_9DB9C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + a2;
  v6 = sub_9F664(a1, a3 + a2, 1);
  if (a1 + 4 == v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6[4];
  v8 = v7[2];
  v10 = v5 >= v8;
  v9 = v5 - v8;
  v10 = !v10 || v9 >= v7[3];
  if (v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = *v7;
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v11 + v9;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v12 - a3;
  }
}

id sub_9DC28(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != v4)
  {
    do
    {
      v5 = v3[4];
      if (v5[2] != 0x7FFFFFFFFFFFFFFFLL && *v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v2 addIndexesInRange:?];
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

id sub_9DD14(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != v4)
  {
    do
    {
      v5 = v3[4];
      if ((*(v5 + 32) & 1) != 0 && *(v5 + 16) != 0x7FFFFFFFFFFFFFFFLL && *v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v2 addIndexesInRange:?];
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

id sub_9DE08(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 24);
  v4 = (a1 + 32);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = v3[4];
      v6 = *(v5 + 16);
      if (*(v5 + 32))
      {
        break;
      }

      if (v6 != 0x7FFFFFFFFFFFFFFFLL && *v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
      if (v8 == v4)
      {
        goto LABEL_14;
      }
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

LABEL_7:
    [v2 addIndexesInRange:?];
    goto LABEL_8;
  }

LABEL_14:
  v10 = [v2 copy];

  return v10;
}

void sub_9DF68(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[9];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 += a1[7];
  }

  v5 = a1[10];
  v6 = a1[7];
  if (v5 < 0)
  {
    v5 += v6;
  }

  if (v4 >= v6)
  {
    v7 = a1[7];
  }

  else
  {
    v7 = v4;
  }

  if (v5 + 1 < v6)
  {
    v8 = v5 + 1;
  }

  else
  {
    v8 = a1[7];
  }

  sub_9E9D0(v9, v8 - v7);
}

void sub_9E520(__CFString *a1)
{
  NSLog(@"old -> new");
  v38 = a1;
  isa = a1->isa;
  p_info = &a1->info;
  if (a1->isa != &a1->info)
  {
    do
    {
      v4 = isa[4];
      v5 = @"   ";
      if (v4[2].location)
      {
        v5 = @"(u)";
      }

      v6 = @"(m)";
      if ((v4[2].location & 2) == 0)
      {
        v6 = v5;
      }

      v7 = v6;
      v8 = &stru_264550;
      if (v4[2].length != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [NSNumber numberWithUnsignedInteger:?];
        v8 = [NSString stringWithFormat:@"[%@]", v9];
      }

      v10 = @"x ";
      if ((v4[2].location & 4) == 0)
      {
        v10 = @"  ";
      }

      v11 = v10;
      v12 = @" x";
      if ((v4[2].location & 8) == 0)
      {
        v12 = @"  ";
      }

      v13 = v12;
      location = v4->location;
      v15 = @"NFound";
      if (v4->location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = NSStringFromRange(*v4);
        v15 = v39;
      }

      v16 = v4[1].location;
      v17 = @"NotFound";
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v1 = NSStringFromRange(v4[1]);
        v17 = v1;
      }

      NSLog(@"%@%@ -> %@%@ %@ %@", v11, v15, v17, v13, v7, v8);
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      v18 = isa[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = isa[2];
          v20 = *v19 == isa;
          isa = v19;
        }

        while (!v20);
      }

      isa = v19;
    }

    while (v19 != p_info);
  }

  NSLog(@"new -> old");
  length = v38->length;
  v41 = v38 + 1;
  if (length != &v38[1])
  {
    do
    {
      v22 = length[1].isa;
      v23 = @"   ";
      if (v22[2].location)
      {
        v23 = @"(u)";
      }

      v24 = @"(m)";
      if ((v22[2].location & 2) == 0)
      {
        v24 = v23;
      }

      v25 = v24;
      v26 = &stru_264550;
      if (v22[2].length != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = [NSNumber numberWithUnsignedInteger:?];
        v26 = [NSString stringWithFormat:@"[%@]", v27];
      }

      v28 = @"x ";
      if ((v22[2].location & 4) == 0)
      {
        v28 = @"  ";
      }

      v29 = v28;
      v30 = @" x";
      if ((v22[2].location & 8) == 0)
      {
        v30 = @"  ";
      }

      v31 = v30;
      v32 = v22->location;
      v33 = @"NFound";
      if (v22->location != 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = NSStringFromRange(*v22);
        v33 = v39;
      }

      v34 = v22[1].location;
      v35 = @"NotFound";
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = NSStringFromRange(v22[1]);
        v35 = v38;
      }

      NSLog(@"%@%@ <- %@%@ %@ %@", v29, v33, v35, v31, v25, v26);
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      info = length->info;
      if (info)
      {
        do
        {
          data = info;
          info = info->isa;
        }

        while (info);
      }

      else
      {
        do
        {
          data = length->data;
          v20 = data->isa == length;
          length = data;
        }

        while (!v20);
      }

      length = data;
    }

    while (data != v41);
  }
}

void sub_9E9D0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[3] = a1 + 4;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = -1;
  operator new();
}

void sub_9EA90(_Unwind_Exception *a1)
{
  sub_9EF40(v2, *(v1 + 32));
  sub_9EF40(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_9EAB4(uint64_t a1, unint64_t **a2)
{
  v2 = *sub_9EB48(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_9EB48(uint64_t a1, void *a2, unint64_t **a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = **a3;
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = *v9;
        if (v7 != 0x7FFFFFFFFFFFFFFFLL || v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v6 >= v9)
        {
          goto LABEL_15;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_19;
        }
      }

      if (v7 < v10)
      {
        goto LABEL_13;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_15:
        if (v9 >= v6)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      if (v10 >= v7)
      {
        goto LABEL_19;
      }

LABEL_16:
      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = result;
LABEL_19:
  *a2 = v8;
  return result;
}

uint64_t *sub_9EBD4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_9EC58(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_9EC2C(void *a1, void *a2)
{
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL && *a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1 < a2;
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t *sub_9EC58(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_9EDF4(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_9EE88(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_9EE88(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(*a3 + 16);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = *(v9 + 16);
        if (v7 != 0x7FFFFFFFFFFFFFFFLL || v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v6 >= v9)
        {
          goto LABEL_15;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_19;
        }
      }

      if (v7 < v10)
      {
        goto LABEL_13;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_15:
        if (v9 >= v6)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      if (v10 >= v7)
      {
        goto LABEL_19;
      }

LABEL_16:
      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = result;
LABEL_19:
  *a2 = v8;
  return result;
}

BOOL sub_9EF14(unint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL && v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1 < a2;
  }

  else
  {
    return v2 < v3;
  }
}

void sub_9EF40(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_9EF40(a1, *a2);
    sub_9EF40(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_9EF94(uint64_t a1)
{
  v2 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      if (v2[4])
      {
        operator delete();
      }

      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 8));
  }

  sub_9EF40(a1 + 24, *(a1 + 32));
  sub_9EF40(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_9F040(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v8 = 1;
  v9 = sub_9F4A0(a1, a2, 1);
  if ((a1 + 8) != v9)
  {
    v10 = v9;
    v11 = v9[4];
    v20 = v11;
    v13 = *v11;
    v12 = *(v11 + 8);
    if (a2 >= *v11 && a2 - *v11 < v12)
    {
      v15 = *(v11 + 16);
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a2 == v13)
        {
          v16 = v12 - 1;
          if (!v16)
          {
            v17 = sub_9F664(a1, v15, 1);
            if (a3)
            {
              if (a4)
              {
                *(v11 + 32) = *(v11 + 32) & 0xFE | a4;
                v18 = *(a1 + 64) + 1;
                *(a1 + 64) = v18;
                *(v11 + 40) = v18;
                a3 = (*(v11 + 32) >> 1) & 1;
              }

              else
              {
                sub_9F9DC((a1 + 24), v17);
                operator delete(v17);
                *(v11 + 16) = xmmword_24CA10;
                sub_9EDF4(a1 + 24, &v20);
                a3 = 0;
              }
            }

            else
            {
              sub_9F9DC(a1, v10);
              operator delete(v10);
              sub_9F9DC((a1 + 24), v17);
              operator delete(v17);
            }

            goto LABEL_23;
          }

          *v11 = a2 + 1;
          *(v11 + 8) = v16;
          --*(v11 + 24);
          if (!a3)
          {
LABEL_23:
            sub_9F828(a1);
            return a3 ^ 1u;
          }

          if (a4)
          {
            operator new();
          }
        }

        else
        {
          if (v12 + v13 != a2 + 1)
          {
            operator new();
          }

          *(v11 + 8) = v12 - 1;
          --*(v11 + 24);
          if (!a3)
          {
            goto LABEL_23;
          }

          if (a4)
          {
            operator new();
          }
        }

        operator new();
      }
    }
  }

  return v8;
}

void *sub_9F4A0(uint64_t a1, unint64_t a2, char a3)
{
  v21 = xmmword_24CD50;
  v22 = 0;
  v23 = 0;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = (a1 + 8);
  v6 = *a1;
  v19 = &v20;
  v20 = a2;
  v26 = sub_9EC2C;
  v25 = 0;
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
  }

  v13 = sub_9F898(v6, &v19, v8, &v26);
  if (a3)
  {
    if (v7 != v13)
    {
      if (a3)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (*a1 == v7)
    {
      if (a3)
      {
        return v7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = *(a1 + 56);
    if (v14 <= a2)
    {
LABEL_18:
      if (v14 <= a2)
      {
        return v13;
      }

      v12 = v7 == v13;
      v7 = v13;
      if (v12)
      {
        return v7;
      }

LABEL_20:
      if (*a1 != v13 && *v13[4] > a2)
      {
        v15 = *v13;
        if (*v13)
        {
          do
          {
            v7 = v15;
            v15 = v15[1];
          }

          while (v15);
        }

        else
        {
          do
          {
            v7 = v13[2];
            v12 = *v7 == v13;
            v13 = v7;
          }

          while (v12);
        }

        return v7;
      }

      return v13;
    }

    if (v7 != v13 || *a1 == v7)
    {
LABEL_17:
      v14 = *(a1 + 56);
      goto LABEL_18;
    }
  }

  v17 = *v7;
  if (*v7)
  {
    do
    {
      v7 = v17;
      v17 = v17[1];
    }

    while (v17);
  }

  else
  {
    v18 = v7;
    do
    {
      v7 = v18[2];
      v12 = *v7 == v18;
      v18 = v7;
    }

    while (v12);
  }

  return v7;
}

void *sub_9F664(void *a1, unint64_t a2, char a3)
{
  v20 = xmmword_24CA10;
  v21 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = a1[3];
  v7 = a1 + 4;
  v19 = &v20;
  v26 = sub_9EF14;
  v25 = 0;
  if (v6 == a1 + 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
  }

  v13 = sub_9F898(v6, &v19, v8, &v26);
  if (a3)
  {
    if (v7 != v13)
    {
      if (a3)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (a1[3] == v7)
    {
      if (a3)
      {
        return v7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = a1[6];
    if (v14 <= a2)
    {
LABEL_18:
      if (v14 <= a2)
      {
        return v13;
      }

      v12 = v7 == v13;
      v7 = v13;
      if (v12)
      {
        return v7;
      }

LABEL_20:
      if (a1[3] != v13 && *(v13[4] + 16) > a2)
      {
        v15 = *v13;
        if (*v13)
        {
          do
          {
            v7 = v15;
            v15 = v15[1];
          }

          while (v15);
        }

        else
        {
          do
          {
            v7 = v13[2];
            v12 = *v7 == v13;
            v13 = v7;
          }

          while (v12);
        }

        return v7;
      }

      return v13;
    }

    if (v7 != v13 || a1[3] == v7)
    {
LABEL_17:
      v14 = a1[6];
      goto LABEL_18;
    }
  }

  v17 = *v7;
  if (*v7)
  {
    do
    {
      v7 = v17;
      v17 = v17[1];
    }

    while (v17);
  }

  else
  {
    v18 = a1 + 4;
    do
    {
      v7 = v18[2];
      v12 = *v7 == v18;
      v18 = v7;
    }

    while (v12);
  }

  return v7;
}

uint64_t sub_9F828(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 != (result + 32))
  {
    v2 = 0;
    do
    {
      v3 = v1[4];
      if (*(v3 + 16) != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v3 + 16) = v2;
        v2 += *(v3 + 24);
      }

      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != (result + 32));
  }

  return result;
}

void *sub_9F898(void *a1, void *a2, unint64_t a3, unsigned int (**a4)(void, void))
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = v6 >> 1;
      v13 = a1;
      sub_9F950(&v13, v6 >> 1);
      if ((*a4)(v13[4], *a2))
      {
        v9 = v13;
        v10 = v13[1];
        if (v10)
        {
          do
          {
            a1 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            a1 = v9[2];
            v11 = *a1 == v9;
            v9 = a1;
          }

          while (!v11);
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void **sub_9F950(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t *sub_9F9DC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_9FA50(v6, a2);
  return v3;
}

uint64_t *sub_9FA50(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_9FDD0(void *a1, unint64_t a2, int a3)
{
  v6 = sub_9F664(a1, a2, 1);
  if (a1 + 4 == v6)
  {
    operator new();
  }

  v7 = v6[4];
  v17 = v7;
  if (v7[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_3:
    operator new();
  }

  v9 = (a1 + 1);
  ++v7[3];
  sub_9F828(a1);
  v11 = v7[2];
  v10 = v7[3];
  v12 = v10 - 1;
  v7[3] = v10 - 1;
  if (a2 == v11)
  {
    if (v12 | a2)
    {
      if (*v7 != 0x7FFFFFFFFFFFFFFFLL || a3 == 0)
      {
        v7[2] = a2 + 1;
        goto LABEL_3;
      }

      goto LABEL_34;
    }

    *v7 = 0x7FFFFFFFFFFFFFFFLL;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 1;
  }

  else
  {
    if (v11 + v12 == a2)
    {
      if (*v7 != 0x7FFFFFFFFFFFFFFFLL || a3 == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_34;
    }

    if (a2 >= v11 && a2 - v11 < v12)
    {
      if (*v7 != 0x7FFFFFFFFFFFFFFFLL || a3 == 0)
      {
        operator new();
      }

LABEL_34:
      v7[3] = v10;
      v9 = sub_A0124(a1, &v17);
      goto LABEL_5;
    }

    if (v11 | v12)
    {
      operator new();
    }

    *v7 = xmmword_24CA10;
    v7[2] = a2;
    v7[3] = 1;
  }

LABEL_5:
  sub_9F828(a1);
  return v9;
}

uint64_t sub_A0124(uint64_t a1, unint64_t **a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = **a2;
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    v9 = *v8;
    v10 = *v8 < v6;
    v11 = v8 < v5;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL || v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
    }

    v13 = !v11;
    if (v11)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v7 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v15 = *(v7 + 32);
  v16 = *v15;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 >= v15)
    {
      return v7;
    }

    return v2;
  }

  if (v6 < v16)
  {
    return v2;
  }

  return v7;
}

uint64_t sub_A01BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a2;
  v7 = sub_9F4A0(a1, a3 + a2, 1);
  if ((a1 + 8) == v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7[4];
  v9 = v6 - *v8;
  if (v6 < *v8 || v9 >= v8[1])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v8[2];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v11 + v9;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v12 - a4;
  }
}

void *sub_A0240(void *result, unint64_t a2, int64_t a3)
{
  v3 = a3;
  v4 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 += result[7];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_34:
    v3 = result[7] + a3;
    goto LABEL_3;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (a2 > v3 || a2 >= result[7])
  {
    v14 = *result;
    if (*result != result + 1)
    {
      do
      {
        v15 = v14[4];
        if (*v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v15 + 32) |= 4u;
        }

        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v10 = *v17 == v14;
            v14 = v17;
          }

          while (!v10);
        }

        v14 = v17;
      }

      while (v17 != result + 1);
    }
  }

  else
  {
    v5 = sub_A057C(result, a2);
    v6 = v4 + 1;
    if (v4 + 1 != v5)
    {
      v7 = *v4;
      if (*v4 != v5)
      {
        do
        {
          *(v7[4] + 32) |= 4u;
          v8 = v7[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v7[2];
              v10 = *v9 == v7;
              v7 = v9;
            }

            while (!v10);
          }

          v7 = v9;
        }

        while (v9 != v5);
      }
    }

    result = sub_A057C(v4, v3 + 1);
    if (v6 != result)
    {
      do
      {
        v11 = result[4];
        if (*v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v11 + 32) |= 4u;
        }

        v12 = result[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = result[2];
            v10 = *v13 == result;
            result = v13;
          }

          while (!v10);
        }

        result = v13;
      }

      while (v13 != v6);
    }
  }

  return result;
}

void *sub_A03DC(void *result, unint64_t a2, int64_t a3)
{
  v3 = a3;
  v4 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 += result[6];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_34:
    v3 = result[6] + a3;
    goto LABEL_3;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (a2 > v3 || a2 >= result[6])
  {
    v14 = result[3];
    if (v14 != result + 4)
    {
      do
      {
        v15 = v14[4];
        if (*(v15 + 16) != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v15 + 32) |= 8u;
        }

        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v10 = *v17 == v14;
            v14 = v17;
          }

          while (!v10);
        }

        v14 = v17;
      }

      while (v17 != result + 4);
    }
  }

  else
  {
    v5 = sub_A06E0(result, a2);
    v6 = v4 + 4;
    if (v4 + 4 != v5)
    {
      v7 = v4[3];
      if (v7 != v5)
      {
        do
        {
          *(v7[4] + 32) |= 8u;
          v8 = v7[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v7[2];
              v10 = *v9 == v7;
              v7 = v9;
            }

            while (!v10);
          }

          v7 = v9;
        }

        while (v9 != v5);
      }
    }

    result = sub_A06E0(v4, v3 + 1);
    if (v6 != result)
    {
      do
      {
        v11 = result[4];
        if (*(v11 + 16) != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v11 + 32) |= 8u;
        }

        v12 = result[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = result[2];
            v10 = *v13 == result;
            result = v13;
          }

          while (!v10);
        }

        result = v13;
      }

      while (v13 != v6);
    }
  }

  return result;
}

void *sub_A057C(uint64_t a1, unint64_t a2)
{
  v4 = sub_9F4A0(a1, a2, 0);
  result = (a1 + 8);
  if ((a1 + 8) == v4)
  {
    return v4;
  }

  v6 = v4[4];
  v7 = a2 >= *v6;
  v8 = a2 - *v6;
  if (!v8)
  {
    return v4;
  }

  if (v7 && v8 < v6[1])
  {
    operator new();
  }

  return result;
}

uint64_t sub_A0690(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFE | *(a2 + 32) & 1;
  *(result + 32) = v2;
  v3 = v2 & 0xFFFFFFFD | (2 * ((*(a2 + 32) >> 1) & 1));
  *(result + 32) = v3;
  v4 = v3 & 0xFFFFFFFB | (4 * ((*(a2 + 32) >> 2) & 1));
  *(result + 32) = v4;
  *(result + 32) = v4 & 0xF7 | *(a2 + 32) & 8;
  *(result + 40) = *(a2 + 40);
  return result;
}

void *sub_A06E0(void *a1, unint64_t a2)
{
  result = sub_9F664(a1, a2, 0);
  if (a1 + 4 != result)
  {
    v5 = result[4];
    v6 = *(v5 + 16);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    if (v8)
    {
      if (v7 && v8 < *(v5 + 24))
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_A2074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_A208C(uint64_t a1)
{
  ++*(*(a1 + 32) + 128);
  result = [*(a1 + 32) _q_shouldLoadResourceIfNeededAllowDefer:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *sub_A2148(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 128);
  if (v2)
  {
    *(v1 + 128) = v2 - 1;
    result = result[4];
    if (!result[16] && !result[18])
    {
      return [result _q_unloadResource];
    }
  }

  return result;
}

void sub_A2230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_A2248(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 136);
  *(v1 + 136) = v2 + 1;
  if (!v2)
  {
    v3 = result;
    result = [*(result[4] + 64) markAsNonVolatile];
    v4 = v3[4];
    v5 = *(v4 + 104);
    if (result)
    {
      *(v4 + 104) = v5 | 2;
    }

    else
    {
      *(v4 + 104) = v5 & 0xFD;
      v6 = v3[4];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;

      result = [v3[4] _q_shouldLoadResourceIfNeededAllowDefer:1];
      if (result)
      {
        *(*(v3[5] + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void sub_A2390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_A23A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[16] || result[17])
  {
    result = [result _q_shouldLoadResourceIfNeededAllowDefer:0];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void *sub_A2464(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = v2 - 1;
    *(v1 + 136) = v3;
    if (!v3)
    {
      v4 = result;
      result = [*(result[4] + 64) markAsVolatile];
      if (result)
      {
        *(v4[4] + 104) &= ~2u;
      }
    }
  }

  return result;
}

void sub_A25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A2610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A2628(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _q_shouldLoadResourceIfNeededAllowDefer:0];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(*(a1 + 32) + 64))
  {
    v2 = [TUIImageContent alloc];
    v3 = *(a1 + 32);
    v4 = [(TUIImageContent *)v2 initWithImage:*(v3 + 64) insets:(*(v3 + 104) & 4) == 0 intrinsicSize:*(v3 + 72) flags:*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 112), *(v3 + 120)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_A2878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_A2890(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8])
  {
    [result _q_unloadResource];
    result = [*(a1 + 32) _q_shouldLoadResourceIfNeededAllowDefer:0];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void *sub_A29D4(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = v2 - 1;
    *(v1 + 144) = v3;
    if (!v3)
    {
      result = result[4];
      if (!result[16])
      {
        return [result _q_unloadResource];
      }
    }
  }

  return result;
}

void sub_A2D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_A2DCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[104] & 1) == 0)
  {
    if (![v2 allowsMultipleUpdates])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 112);
  if ((v3 & 1) == 0)
  {
    v2[104] &= ~1u;
    *(*(a1 + 32) + 104) |= 2u;
    v3 = *(a1 + 112);
    v2 = *(a1 + 32);
  }

  v2[104] = v2[104] & 0xF7 | (8 * v3);
  v4 = *(a1 + 32);
  if (*(v4 + 128))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 144) == 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 152) + 1;
    *(v6 + 152) = v7;
    *(*(*(a1 + 56) + 8) + 24) = v7;
  }

  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  *(v8 + 88) = *(a1 + 96);
  *(v8 + 72) = v9;
  v10 = *(a1 + 32);
  if ((LOBYTE(v10[6].height) & 4) != 0)
  {
    p_height = &v10[7].height;
  }

  else
  {
    p_height = &CGSizeZero.height;
  }

  v12 = *p_height;
  v13 = v10 + 7;
  if ((LOBYTE(v10[6].height) & 4) == 0)
  {
    v13 = &CGSizeZero;
  }

  width = v13->width;
  [(CGSize *)v10 _q_loadedImage:*(a1 + 40) insets:*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)];
  v15 = *(a1 + 32);
  if ((*(v15 + 104) & 4) != 0)
  {
    v16 = (v15 + 112);
  }

  else
  {
    v16 = &CGSizeZero;
  }

  if ((*(v15 + 104) & 4) != 0)
  {
    v17 = (v15 + 120);
  }

  else
  {
    v17 = &CGSizeZero.height;
  }

  if (width != v16->width || v12 != *v17)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v15 = *(a1 + 32);
  }

  if ([*(v15 + 40) count])
  {
    v19 = [*(*(a1 + 32) + 40) allObjects];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 64);
    *(v22 + 64) = 0;

    v24 = *(a1 + 32);
    v25 = *&UIEdgeInsetsZero.bottom;
    *(v24 + 72) = *&UIEdgeInsetsZero.top;
    *(v24 + 88) = v25;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_A2FE4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 imageResourceDidChangeIntrinsicSize:{*(a1 + 32), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void *sub_A310C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[19] == *(*(*(a1 + 40) + 8) + 24))
  {
    return [result _q_unloadResource];
  }

  return result;
}

void sub_A3488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

unsigned __int16 sub_A34D0@<H0>(uint64_t a1@<X0>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 64) != v2 || (result = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 + 72), *(a1 + 72)), vceqq_f64(*(v3 + 88), *(a1 + 88))))), (result & 1) != 0))
  {
    objc_storeStrong((v3 + 64), v2);
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    *(v4 + 88) = *(a1 + 88);
    *(v4 + 72) = v5;
    *(*(a1 + 32) + 104) = *(*(a1 + 32) + 104) & 0xF7 | (8 * *(a1 + 104));
    v7 = *(a1 + 105) == 1 && (v6 = *(a1 + 32), !*(v6 + 128)) && *(v6 + 144) == 0;
    *(*(*(a1 + 48) + 8) + 24) = v7;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 152) + 1;
      *(v8 + 152) = v9;
      *(*(*(a1 + 56) + 8) + 24) = v9;
    }

    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v11 = [*(*(a1 + 32) + 40) allObjects];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  return result;
}

void *sub_A3618(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[19] == *(*(*(a1 + 40) + 8) + 24))
  {
    return [result _q_unloadResource];
  }

  return result;
}

void sub_A3734(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(v2 + 104);
  if (v3 && ((v4 & 2) != 0 || (v4 & 1) != 0) && (*(a1 + 48) & 1) != 0)
  {
    v5 = [[TUIImageContent alloc] initWithImage:*(*(a1 + 32) + 64) insets:*(*(a1 + 32) + 72), *(*(a1 + 32) + 80), *(*(a1 + 32) + 88), *(*(a1 + 32) + 96)];
  }

  else
  {
    if ((v4 & 4) == 0 || (*(a1 + 48) & 2) == 0)
    {
      return;
    }

    v5 = [[TUIImageContent alloc] initWithIntrinsicSize:0 flags:*(*(a1 + 32) + 112), *(*(a1 + 32) + 120)];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_A3898(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 64))
  {
    v2 = (*(v1 + 104) >> 1) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void sub_A3A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *sub_A3A60(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[104] & 4) == 0)
  {
    result = [result _q_shouldLoadResourceIfNeededAllowDefer:0];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void sub_A4408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A442C(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [BCUPurgeableImage alloc];
    [a1[5] contentsScale];
    v5 = [v4 initWithData:v3 contentsScale:?];
  }

  else
  {
    v6 = TUIImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [a1[4] absoluteURL];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "failed to load image with url:%@", &v9, 0xCu);
    }

    v5 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _loadedImage:v5 insets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
}

void sub_A5490(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);
  v14 = a3;
  [v13 _endFilterOperation:a2];
  v15 = TUIProtocolCast(&OBJC_PROTOCOL___TUIPurgeableImage, v14);

  (*(*(a1 + 40) + 16))(a4, a5, a6, a7);
}

void sub_A6518(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = TUIImageCacheLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_19A638(v11, a1, v12);
  }

  [*(a1 + 40) _loadedImage:v11 insets:{a3, a4, a5, a6}];
  [*(a1 + 32) removeAllObjects];
}

void sub_A6810(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);
  v14 = a3;
  [v13 _endFilterOperation:a2];
  v15 = TUIProtocolCast(&OBJC_PROTOCOL___TUIPurgeableImage, v14);

  (*(*(a1 + 40) + 16))(a4, a5, a6, a7);
}

void sub_A6B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TUIImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_19A6EC(a1, v5, v6);
    }

    (*(*(a1 + 40) + 16))(UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
  }

  else
  {
    v7 = [[BCUPurgeableImage alloc] initWithImage:a2 surface:0 contentsScale:*(a1 + 48)];
    (*(*(a1 + 40) + 16))(UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
  }
}

void sub_A7434(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 72) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 134218498;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 imageContentWithOptions:{1, v16}];
        v10 = [v9 image];

        if (*(a1 + 40) != 1 || v10 != 0)
        {
          v12 = TUIImageCacheLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v8 debugFunctionalDescription];
            v14 = v13;
            *buf = v16;
            v15 = "loaded";
            if (!v10)
            {
              v15 = "not-loaded";
            }

            v22 = v8;
            v23 = 2114;
            v24 = v13;
            v25 = 2082;
            v26 = v15;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[%p] %{public}@ (%{public}s)", buf, 0x20u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }
}

void sub_A7CCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 40) objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
  if (v2)
  {
  }

  if (!*(*(*(a1 + 64) + 8) + 40) && *(a1 + 32))
  {
    v9 = [_TUICachedURLImageResource sizedURLFromTemplatedURL:*(a1 + 48) baseURL:*(a1 + 56) naturalSize:*(a1 + 72) contentsScale:*(a1 + 80), *(a1 + 88)];
    v4 = [_TUICachedURLImageResource unsizedKeyFromTemplatedURL:*(a1 + 48) baseURL:*(a1 + 56)];
    v5 = sub_A7E2C(v4, *(*(a1 + 40) + 48));
    v6 = [_TUICachedURLImageResource initWithCache:"initWithCache:unsizedCacheSet:queue:templateURL:baseURL:url:naturalSize:contentsScale:loader:" unsizedCacheSet:*(a1 + 72) queue:*(a1 + 80) templateURL:*(a1 + 88) baseURL:*(*(a1 + 40) + 8) url:? naturalSize:? contentsScale:? loader:?];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 40) + 40) setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 32)];
  }
}

_TUIImageResourceUnsizedCacheSet *sub_A7E2C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 objectForKey:v3];
    if (!v6)
    {
      v6 = objc_alloc_init(_TUIImageResourceUnsizedCacheSet);
      [v5 setObject:v6 forKey:v3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_A8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A803C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 40) objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (v2)
  {
  }

  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 32) && *(a1 + 48))
  {
    v4 = [_TUICachedURLImageResource initWithCache:"initWithCache:unsizedCacheSet:queue:templateURL:baseURL:url:naturalSize:contentsScale:loader:" unsizedCacheSet:CGSizeZero.width queue:CGSizeZero.height templateURL:*(a1 + 64) baseURL:*(*(a1 + 40) + 8) url:? naturalSize:? contentsScale:? loader:?];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [[TUIImageResourceCacheKey alloc] initWithURL:*(a1 + 48)];
    [*(*(a1 + 40) + 40) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:v7];
  }
}

void sub_A82F4(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[8] + 8) + 40))
  {
    v9 = [_TUICachedTintedImageResource unsizedKeyForColor:a1[6] imageResource:a1[7]];
    v5 = sub_A7E2C(v9, *(a1[4] + 64));
    v6 = [[_TUICachedTintedImageResource alloc] initWithCache:a1[4] unsizedCacheSet:v5 queue:*(a1[4] + 32) resource:a1[7] color:a1[6]];
    v7 = *(a1[8] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1[4] + 56) setObject:*(*(a1[8] + 8) + 40) forKey:a1[5]];
  }
}

void sub_A85E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A85FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = [_TUICachedFilterImageResource unsizedKeyForFilter:*(a1 + 48) contentsScale:*(a1 + 56) imageResource:*(a1 + 72)];
    v5 = sub_A7E2C(v9, *(*(a1 + 32) + 80));
    v6 = [[_TUICachedFilterImageResource alloc] initWithCache:*(a1 + 32) unsizedCacheSet:v5 queue:*(*(a1 + 32) + 32) naturalSize:*(a1 + 56) contentsScale:*(a1 + 48) resource:*(a1 + 80) filter:*(a1 + 88), *(a1 + 72)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 32) + 72) setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 40)];
  }
}

void sub_A88FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A8914(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v18 = [_TUICachedSeriesStackImageResource unsizedKeyForContentsScale:*(a1 + 48) imageResources:*(a1 + 80)];
    v17 = sub_A7E2C(v18, *(*(a1 + 32) + 80));
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 56) count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = *(a1 + 56);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 16) imageFilterWithIdentifier:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }

          else
          {
            v13 = TUIImageCacheLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v11;
              _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Can't find cover filter '%@' for series stack", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    v14 = [[_TUICachedSeriesStackImageResource alloc] initWithCache:*(a1 + 32) unsizedCacheSet:v17 queue:*(*(a1 + 32) + 32) naturalSize:*(a1 + 48) contentsScale:v5 resources:*(a1 + 64) filters:*(a1 + 88) imageSetFilter:*(a1 + 96), *(a1 + 80)];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(a1 + 32) + 88) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];
  }
}

void sub_A8F6C(void *a1)
{
  v2 = [*(a1[4] + 120) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_A8FBC(void *a1)
{
  v2 = [*(a1[4] + 120) objectForKey:a1[5]];

  v3 = *(a1[4] + 120);
  if (v2)
  {
    v4 = [v3 objectForKey:a1[5]];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);

    [v3 setObject:v8 forKey:v7];
  }
}

void sub_A93BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserInterfaceStyle:v3];
  [v4 setDisplayScale:*(a1 + 40)];
  [v4 setLayoutDirection:*(a1 + 48)];
}

id sub_A9424(uint64_t a1)
{
  UIEdgeInsetsSubtract();
  v4 = v3 + CGPointZero.y;
  v6 = *(a1 + 72) - (v2 + v5);
  v8 = *(a1 + 80) - (v3 + v7);
  v9 = *(a1 + 32);

  return [v9 drawInRect:{CGPointZero.x + v2, v4, v6, v8}];
}

void sub_A9624(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = [_TUICachedMediaBackdropImageResource unsizedKeyForContentsScale:*(a1 + 48) imageResource:*(a1 + 64)];
    v5 = sub_A7E2C(v9, *(*(a1 + 32) + 112));
    v6 = [[_TUICachedMediaBackdropImageResource alloc] initWithCache:*(a1 + 32) unsizedCacheSet:v5 queue:*(*(a1 + 32) + 32) naturalSize:*(a1 + 48) contentsScale:*(a1 + 72) resource:*(a1 + 80), *(a1 + 64)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 32) + 104) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 40)];
  }
}

void sub_A97A8(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [*(*(a1 + 32) + 40) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v34 + 1) + 8 * v6) _refresh];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v4);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [*(*(a1 + 32) + 56) objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v30 + 1) + 8 * v11) _refresh];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [*(*(a1 + 32) + 72) objectEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v26 + 1) + 8 * v16) _refresh];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = [*(*(a1 + 32) + 88) objectEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21) _refresh];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v38 count:16];
    }

    while (v19);
  }
}

uint64_t TUI::Util::PartialStruct::Storage::Header::determineOptimalMap(TUI::Util::PartialStruct::Storage::Header *this, unsigned int a2)
{
  v4 = *this;
  v2 = this + 8;
  v3 = v4;
  v5 = v4 - *(v4 + 4);
  v6 = *(v5 + 4);
  if (v6 >= 2)
  {
    v7 = (*(v3 + 8) + 16) >> 4;
    do
    {
      if (*&v2[2 * v7 - 2])
      {
        break;
      }

      --v7;
    }

    while (v7);
    v8 = 0;
    v9 = a2 >> 4;
    do
    {
      v10 = v5 + *(v5 + 16 + 4 * v8);
      v11 = (*(v10 + 8) + 16) >> 4;
      if (v11 >= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = (*(v10 + 8) + 16) >> 4;
      }

      if (v12)
      {
        v13 = v2;
        v14 = (v10 + 12);
        while (1)
        {
          v16 = *v13++;
          v15 = v16;
          v17 = *v14++;
          if ((v15 & ~v17) != 0)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        if (a2 == 0xFFFF)
        {
          if (v7 <= v11)
          {
            return v10;
          }
        }

        else if (v11 > v9 && v7 <= v11 && ((1 << (a2 & 0xF)) & *(v10 + 12 + 2 * v9)) != 0)
        {
          return v10;
        }
      }

      ++v8;
    }

    while (v8 != v6);
  }

  return 0;
}

void *TUI::Util::PartialStruct::Storage::Header::transferToNewMap(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  if (*(*a1 + 8) >= *(a2 + 8))
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = *(*a1 + 8);
  }

  v6 = *a1 - *(*a1 + 4);
  v7 = malloc_type_malloc(*(a2 + 10), 0x6004044C4A2DFuLL);
  bzero(v7, *(a2 + 10));
  v16 = v7;
  *v7 = a2;
  v8 = v7 + 1;
  bzero(v8, ((*(a2 + 8) + 16) >> 3) & 0x3FFELL);
  for (i = 0; i <= v5; ++i)
  {
    if ((*(v4 + 2 * (i >> 4)) >> (i & 0xF)))
    {
      if (i <= *(v6 + 12))
      {
        v10 = *(2 * *(v6 + 12) + v6 + 16 + 4 * *(v6 + 4) + 2 * i + 2);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(*a1 + 8);
      if (v11 >= i)
      {
        v12 = *(*a1 + (((v11 + 16) >> 3) & 0x3FFELL) + 2 * i + 12) >> 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      if (v13 >= i)
      {
        if (v12)
        {
          v14 = *(a2 + 12 + (((v13 + 16) >> 3) & 0x3FFELL) + 2 * i);
          if (v14 >= 2)
          {
            memcpy(v16 + (v14 >> 1), (v12 + a1), v10);
            *(v8 + (i >> 4)) |= 1 << (i & 0xF);
          }
        }
      }
    }
  }

  return v16;
}

void TUI::Util::PartialStruct::Storage::~Storage(TUI::Util::PartialStruct::Storage::Header **this)
{
  v2 = *this;
  if (*this)
  {
    v3 = (*this & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 0;
    v5 = *v2;
    v6 = *(*v2 + 8);
    v7 = *v2 + 12;
    do
    {
      if ((*(v2 + (v4 >> 4) + 4) >> (v4 & 0xF)))
      {
        v8 = *(v5 + 8);
        if (v8 >= v4 && (*(v7 + (((v8 + 16) >> 3) & 0x3FFELL) + 2 * v4) & 1) != 0)
        {
          TUI::Util::PartialStruct::Storage::setObjectForKey(this, v4, 0);
        }
      }

      ++v4;
    }

    while (v6 >= v4);
    free(v2);
  }
}

void TUI::Util::PartialStruct::Storage::setObjectForKey(TUI::Util::PartialStruct::Storage::Header **this, unsigned int a2, objc_object *a3)
{
  cf = a3;
  if (cf)
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(this, a2, v5, 0);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::dataForKey(this, a2);
  }

  v7 = DataForKey;
  if (DataForKey)
  {
    v8 = *this;
    v9 = *(*v8 + 8);
    v10 = *DataForKey;
    if (*v7 && v9 >= a2 && ((*(v8 + (a2 >> 4) + 4) >> (a2 & 0xF)) & 1) != 0)
    {
      CFRelease(v10);
    }

    if (cf)
    {
      *v7 = CFRetain(cf);
      if (v9 >= a2)
      {
        *(v8 + (a2 >> 4) + 4) |= 1 << (a2 & 0xF);
      }
    }

    else
    {
      if (v9 >= a2)
      {
        *(v8 + (a2 >> 4) + 4) &= ~(1 << (a2 & 0xF));
      }

      *v7 = 0;
    }
  }
}

uint64_t TUI::Util::PartialStruct::Storage::dataForKey(TUI::Util::PartialStruct::Storage *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = (*this & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = *(*v2 + 8), v4 >= a2) && ((*(v2 + 2 * (a2 >> 4) + 8) >> (a2 & 0xF)) & 1) != 0 && (v5 = *(*v2 + (((v4 + 16) >> 3) & 0x3FFELL) + 2 * a2 + 12), v5 >= 2))
  {
    return v2 + (v5 >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t TUI::Util::PartialStruct::Storage::allocateDataForKey(TUI::Util::PartialStruct::Storage::Header **this, unsigned int a2, unint64_t a3, int a4)
{
  v7 = *this;
  if (*this)
  {
    v8 = (*this & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = *v7;
    v11 = *(*v7 + 8);
    if (v11 >= a2)
    {
      v20 = *(v10 + (((v11 + 16) >> 3) & 0x3FFELL) + 2 * a2 + 12);
      if (v20 >= 2)
      {
        v24 = v20 >> 1;
        if (a4)
        {
          *(v7 + 2 * (a2 >> 4) + 8) |= 1 << (a2 & 0xF);
        }

        return v7 + v24;
      }

      v21 = TUI::Util::PartialStruct::Storage::Header::determineOptimalMap(*this, a2);
      if (!v21 || (v22 = v21, v14 = TUI::Util::PartialStruct::Storage::Header::transferToNewMap(v7, v21), free(v7), *this = v14, v23 = *(v22 + 8), v23 < a2) || (v16 = *(v22 + (((v23 + 16) >> 3) & 0x3FFELL) + 2 * a2 + 12), v16 < 2))
      {
        v17 = TUIDefaultLog();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        goto LABEL_15;
      }
    }

    else if (*(v10 - *(v10 + 4) + 12) < a2 || (v12 = TUI::Util::PartialStruct::Storage::Header::determineOptimalMap(*this, a2)) == 0 || (v13 = v12, v14 = TUI::Util::PartialStruct::Storage::Header::transferToNewMap(v7, v12), free(v7), *this = v14, v15 = *(v13 + 8), v15 < a2) || (v16 = *(v13 + (((v15 + 16) >> 3) & 0x3FFELL) + 2 * a2 + 12), v16 < 2))
    {
      v17 = TUIDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_34:

        return 0;
      }

LABEL_15:
      sub_19A900();
      goto LABEL_34;
    }

    v30 = v16 >> 1;
    if (a4)
    {
      *(v14 + (a2 >> 4) + 4) |= 1 << (a2 & 0xF);
    }

    return v14 + v30;
  }

  if ((v7 & 1) == 0)
  {
    v9 = TUIDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_19A8BC(v9);
    }

    return 0;
  }

  v18 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 4);
  if (v18)
  {
    v19 = (v7 & 0xFFFFFFFFFFFFFFFELL) + *((v7 & 0xFFFFFFFFFFFFFFFELL) + 4 * v18 + 12);
  }

  else
  {
    v19 = 0;
  }

  v26 = *(v19 + 8);
  if (v26 < a2)
  {
    v17 = TUIDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_19A854();
    }

    goto LABEL_34;
  }

  v27 = *(v19 + (((v26 + 16) >> 3) & 0x3FFELL) + 2 * a2 + 12);
  if (v27 < 2)
  {
    v17 = TUIDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_19A7EC();
    }

    goto LABEL_34;
  }

  v28 = v27 >> 1;
  v29 = malloc_type_malloc(*(v19 + 10), 0x6004044C4A2DFuLL);
  bzero(v29, *(v19 + 10));
  *v29 = v19;
  bzero(v29 + 1, ((*(v19 + 8) + 16) >> 3) & 0x3FFELL);
  if (a4)
  {
    *(v29 + (a2 >> 4) + 4) |= 1 << (a2 & 0xF);
  }

  *this = v29;
  return v29 + v28;
}

uint64_t *TUI::Util::PartialStruct::Storage::markAsDefault(uint64_t *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = (*this & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && *(*v2 + 8) >= a2)
  {
    *(v2 + 2 * (a2 >> 4) + 8) &= ~(1 << (a2 & 0xF));
  }

  return this;
}

void *TUI::Util::PartialStruct::Storage::getObjectForKey(TUI::Util::PartialStruct::Storage *this, unsigned int a2)
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(this, a2);
  if (v2)
  {
    v2 = *v2;
  }

  return v2;
}

uint64_t TUI::Util::PartialStruct::Storage::allocated(TUI::Util::PartialStruct::Storage *this)
{
  if (*this)
  {
    v1 = (*this & 1) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return *(**this + 10);
  }

  else
  {
    return 0;
  }
}

void TUI::Util::PartialStruct::Storage::compress(TUI::Util::PartialStruct::Storage::Header **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = (*this & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v4 = TUI::Util::PartialStruct::Storage::Header::determineOptimalMap(*this, 0xFFFFu);
    if (v4)
    {
      if (*v1 != v4)
      {
        v5 = TUI::Util::PartialStruct::Storage::Header::transferToNewMap(v1, v4);
        free(v1);
        *this = v5;
      }
    }
  }
}

void sub_AC5D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_ACCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_11420(a10);
  }

  if (a12)
  {
    sub_11420(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_ACDCC(id a1)
{
  v1 = qword_2E6358;
  qword_2E6358 = &off_275828;
}

id sub_AE100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastObject];
  v5 = [v4 count] == 0;

  if (*(a1 + 32) == v5)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v7 = [v3 lastObject];
    v9 = v7;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

void sub_AFF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_AFF38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_AFF50(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v16];
  if (v6)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v8 = [*(*(a1 + 40) + 48) deletedModels];
      v9 = [v8 mutableCopy];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v7 setObject:v6 forKeyedSubscript:v16];
  }

  else
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    if (!v12)
    {
      v13 = [*(*(a1 + 40) + 40) containedSubmodels];
      v14 = [v13 mutableCopy];
      v15 = v14;
      if (!v14)
      {
        v15 = objc_opt_new();
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
      if (!v14)
      {
      }

      v12 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v12 addObject:v5];
  }
}

void sub_B00A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1[6] + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B01D8;
  v14[3] = &unk_260D18;
  v8 = v5;
  v15 = v8;
  v9 = [v7 indexOfObjectPassingTest:v14];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = [*(a1[4] + 40) identifierToContainedSubmodelMap];
    v12 = [v11 objectForKeyedSubscript:v8];

    v13 = [v12 newToContainerPlusDeletesWithUpdate:v6 interests:a1[5]];
    [*(*(a1[6] + 8) + 40) replaceObjectAtIndex:v10 withObject:v13];
  }
}

id sub_B01D8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_B0394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_B04E8;
  v16[3] = &unk_260D18;
  v8 = v5;
  v17 = v8;
  v9 = [v7 indexOfObjectPassingTest:v16];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = [*(*(a1 + 40) + 40) identifierToContainedSubmodelMap];
    v12 = [v11 objectForKeyedSubscript:v8];

    v13 = [*(*(a1 + 40) + 24) identifierToContainedSubmodelMap];
    v14 = [v13 objectForKeyedSubscript:v8];

    v15 = [v12 newCurrentContainerPlusInsertsWithCurrent:v14 update:v6];
    [*(a1 + 32) replaceObjectAtIndex:v10 withObject:v15];
  }
}

id sub_B04E8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

float64x2_t TUITransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

double TUIFloatRoundedForScale(double result, double a2)
{
  if (a2 > 0.0)
  {
    return round(result * a2) / a2;
  }

  return result;
}

double TUISizeRoundedForScale(double result, double a2, double a3)
{
  if (a3 > 0.0)
  {
    return round(result * a3) / a3;
  }

  return result;
}

double TUIPointRoundedForScale(double result, double a2, double a3)
{
  if (a3 > 0.0)
  {
    return round(result * a3) / a3;
  }

  return result;
}

int8x16_t TUIInsetsExtendedForScale(int8x16_t result, double a2, double a3, double a4, double a5)
{
  *&result.i64[1] = a4;
  if (a5 > 0.0)
  {
    v5 = vdivq_f64(vrndpq_f64(vmulq_n_f64(vabsq_f64(result), a5)), vdupq_lane_s64(*&a5, 0));
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    return vbslq_s8(vnegq_f64(v6), v5, result);
  }

  return result;
}

void sub_B1434(id a1)
{
  v4 = @"param";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6380;
  qword_2E6380 = v2;
}

void sub_B153C(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E6390;
  qword_2E6390 = v2;
}

void sub_B16F4(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E63A0;
  qword_2E63A0 = v2;
}

void sub_B1890(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E63B0;
  qword_2E63B0 = v2;
}

void sub_B1B44(id a1)
{
  v4 = @"param";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E63C0;
  qword_2E63C0 = v2;
}

void sub_B1C60(id a1)
{
  v4 = @"n";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [TUIAttributeSet setWithArray:v1];
  v3 = qword_2E63D0;
  qword_2E63D0 = v2;
}

id sub_B286C(uint64_t a1)
{
  CGContextTranslateCTM(*(a1 + 40), 0.0, -*(*(a1 + 32) + 24));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [TSWPText renderColumns:v3 selection:0 inContext:v2 isFlipped:0 viewScale:1.0];
}

void sub_B45F0(id a1)
{
  v1 = qword_2E63E0;
  qword_2E63E0 = &off_275850;
}

void sub_B4D0C(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = objc_opt_new();
    sub_B4ED0(v2, *(*(a1 + 32) + 40), 0);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(*(a1 + 32) + 48);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = TUILinkEntityObserverLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = *(a1 + 32);
            *buf = 134218242;
            v18 = v10;
            v19 = 2112;
            v20 = v2;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "detach-from-tracker observer[%p]: removed=%@", buf, 0x16u);
          }

          [v8 linkEntityController:*(a1 + 32) visibleEntityReferencesWithAdded:0 removed:v2];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v5);
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }
}

void sub_B4ED0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 identifiers];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [v6 attributesMap];
        v15 = [v14 objectForKeyedSubscript:v13];

        sub_B6538(v5, v15, v7);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = [v6 identifierNodeMap];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_B66B0;
  v19[3] = &unk_260E98;
  v20 = v7;
  v21 = v5;
  v17 = v5;
  v18 = v7;
  [v16 enumerateKeysAndObjectsUsingBlock:v19];
}

void sub_B52A8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [v9 added];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v17 = [v9 attributesMap];
        v18 = [v17 objectForKeyedSubscript:v16];

        sub_B6538(v7, v18, v10);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [v9 removed];
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      v23 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * v23);
        v25 = [v9 attributesMap];
        v26 = [v25 objectForKeyedSubscript:v24];

        sub_B6538(v8, v26, v10);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v21);
  }

  v27 = [v9 identifierNodeMap];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_B6740;
  v31[3] = &unk_260EC0;
  v32 = v10;
  v33 = v7;
  v34 = v8;
  v28 = v8;
  v29 = v7;
  v30 = v10;
  [v27 enumerateKeysAndObjectsUsingBlock:v31];
}

void sub_B5618(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  if (*(*(a1 + 32) + 40))
  {
    v2 = objc_opt_new();
    sub_B5720(v2, *(*(a1 + 32) + 40), 0);
    v3 = TUILinkEntityObserverLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 134218242;
      v6 = v4;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "add observer[%p]: added=%@", &v5, 0x16u);
    }

    [*(a1 + 40) linkEntityController:*(a1 + 32) visibleEntityReferencesWithAdded:v2 removed:0];
  }
}

void sub_B5720(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 identifiers];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [v6 attributesMap];
        v15 = [v14 objectForKeyedSubscript:v13];

        sub_B6538(v5, v15, v7);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = [v6 identifierNodeMap];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_B67D0;
  v19[3] = &unk_260E98;
  v20 = v7;
  v21 = v5;
  v17 = v5;
  v18 = v7;
  [v16 enumerateKeysAndObjectsUsingBlock:v19];
}

void sub_B59A0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  if (*(*(a1 + 32) + 40))
  {
    v2 = objc_opt_new();
    sub_B4ED0(v2, *(*(a1 + 32) + 40), 0);
    v3 = TUILinkEntityObserverLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 134218242;
      v6 = v4;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "remove observer[%p]: removed=%@", &v5, 0x16u);
    }

    [*(a1 + 40) linkEntityController:*(a1 + 32) visibleEntityReferencesWithAdded:0 removed:v2];
  }
}

void sub_B5B6C(uint64_t a1)
{
  v2 = objc_opt_new();
  sub_B5BDC(v2, *(a1 + 40), *(*(a1 + 32) + 40), 0);
  (*(*(a1 + 48) + 16))();
}

void sub_B5BDC(void *a1, void *a2, void *a3, void *a4)
{
  v30 = a1;
  v36 = a2;
  v7 = a3;
  v29 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v7;
  obj = [v7 identifiers];
  v32 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v32)
  {
    v28 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v8;
        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = [v31 attributesMap];
        v11 = [v10 objectForKeyedSubscript:v9];

        v35 = v30;
        v34 = v36;
        v12 = v11;
        v13 = v29;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = [v12 linkEntities];
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v46;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v45 + 1) + 8 * i);
              if (!v36 || (*(v36 + 2))(v34, *(*(&v45 + 1) + 8 * i)))
              {
                v20 = [TUILinkEntityReference alloc];
                v21 = [v12 identifier];
                v22 = [(TUILinkEntityReference *)v20 initWithModel:v19 path:v13 renderIdentifier:v21];

                [v35 addObject:v22];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v16);
        }

        v8 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v32);
  }

  v23 = [v31 identifierNodeMap];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_B6860;
  v37[3] = &unk_260EE8;
  v38 = v29;
  v39 = v30;
  v40 = v36;
  v24 = v36;
  v25 = v30;
  v26 = v29;
  [v23 enumerateKeysAndObjectsUsingBlock:v37];
}

void sub_B6538(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v6 linkEntities];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [TUILinkEntityReference alloc];
        v14 = [v6 identifier];
        v15 = [(TUILinkEntityReference *)v13 initWithModel:v12 path:v7 renderIdentifier:v14];

        [v5 addObject:v15];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

void sub_B66B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_TUILinkEntityReferencePath alloc] initWithIdentifier:v6 parent:*(a1 + 32)];

  sub_B4ED0(*(a1 + 40), v5, v7);
}

void sub_B6740(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_TUILinkEntityReferencePath alloc] initWithIdentifier:v6 parent:a1[4]];

  sub_B52A8(a1[5], a1[6], v5, v7);
}

void sub_B67D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_TUILinkEntityReferencePath alloc] initWithIdentifier:v6 parent:*(a1 + 32)];

  sub_B5720(*(a1 + 40), v5, v7);
}

void sub_B6860(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_TUILinkEntityReferencePath alloc] initWithIdentifier:v6 parent:a1[4]];

  sub_B5BDC(a1[5], a1[6], v5, v7);
}

id sub_B7C3C(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 32)];
  [*(*(a1 + 32) + 32) addSubview:*(*(a1 + 32) + 48)];
  [*(*(a1 + 32) + 32) addSubview:*(*(a1 + 32) + 56)];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateGeometry];
}

void sub_B8DEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t sub_B9E58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_B9E70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  [*(a1 + 32) updateFromState];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

BOOL TUIRenderModelIsEqualToRenderModel(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v16 = 1;
  }

  else if ((v3 == 0) != (v4 != 0) && (v6 = [v3 kind], v6 == objc_msgSend(v5, "kind")) && (objc_msgSend(v3, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = TUIIdentifierIsEqualToIdentifier(v7, v8), v8, v7, v9))
  {
    [v3 size];
    v11 = v10;
    v13 = v12;
    [v5 size];
    v16 = v13 == v15 && v11 == v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void TUIRenderModelCopyProperties(void *a1, void *a2)
{
  v3 = a2;
  v9 = a1;
  v4 = [v3 identifier];
  [v9 setIdentifier:v4];

  [v3 size];
  v6 = v5;
  v8 = v7;

  [v9 setSize:{v6, v8}];
}

id TUIRenderModelArrayContainingIsEqualToRenderModelArrayContaining(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (TUIRenderModelIsEqualToRenderModel(v3, v4))
  {
    v5 = [v3 containedSubmodels];
    v6 = [v4 containedSubmodels];
    if (v5 == v6 || [v5 isEqual:v6])
    {
      v7 = [v3 identifierToContainedSubmodelMap];
      v8 = [v4 identifierToContainedSubmodelMap];
      if (v7 == v8)
      {
        v9 = &dword_0 + 1;
      }

      else
      {
        v9 = [v7 isEqual:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void TUIRenderModelDebugCollectContainedModels(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && ([v4 containsObject:v3] & 1) == 0)
  {
    [v5 addObject:v3];
    v6 = TUIProtocolCast(&OBJC_PROTOCOL___TUIRenderModelBaseContaining, v3);
    v7 = v6;
    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [v6 debugContainedSubmodels];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            TUIRenderModelDebugCollectContainedModels(*(*(&v13 + 1) + 8 * v12), v5);
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

id TUIRenderModelDebugTree(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = v2;
  if (v1)
  {
    sub_BD264(v2, v1, &stru_264550);
  }

  return v3;
}

void sub_BD264(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 identifier];
  [v5 appendFormat:@"%@%@ %p id=%@\n", v7, v9, v6, v10];

  v11 = TUIProtocolCast(&OBJC_PROTOCOL___TUIRenderModelBaseContaining, v6);
  if (v11)
  {
    v12 = [[NSString alloc] initWithFormat:@"%@  ", v7];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v11 debugContainedSubmodels];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          sub_BD264(v5, *(*(&v18 + 1) + 8 * v17), v12);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

void sub_C11E4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_C136C(id a1, NSNumber *a2, _TUIFeedLayoutSection *a3, BOOL *a4)
{
  v4 = [(_TUIFeedLayoutSection *)a3 layoutController];
  [v4 resetInstantiationStats:1];
}

uint64_t sub_C13B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_C13CC(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(*(a1 + 32) + 368)];

  return v4;
}

void sub_C1414(void *a1, uint64_t a2)
{
  v4 = *(a1[4] + 320);
  v5 = [NSNumber numberWithUnsignedInteger:a2];
  v16 = [v4 objectForKeyedSubscript:v5];

  if ([v16 needsInstantiation])
  {
    [v16 lq_instantiateWithController:a1[4] transactionGroup:a1[5]];
LABEL_3:
    v6 = *(*(a1[8] + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(a1[8] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(a1[8] + 8) + 40);
    }

    [v6 addIndex:a2];
    goto LABEL_13;
  }

  if ([v16 environmentNeedsUpdate])
  {
    [v16 lq_updateEnvironment:*(a1[4] + 80) withTransactionGroup:a1[5]];
  }

  v10 = [v16 entry];
  v11 = [v10 stackNames];
  if ([v11 containsObject:a1[6]])
  {
    v12 = 1;
  }

  else
  {
    v13 = [v16 entry];
    v14 = [v13 stackNames];
    v12 = [v14 containsObject:*(a1[4] + 216)];
  }

  v15 = [v16 lq_updateLayoutWithTransactionGroup:a1[5]];
  *(*(a1[7] + 8) + 24) |= v15;
  if ((v15 & 1) != 0 || v12)
  {
    goto LABEL_3;
  }

LABEL_13:
}

void sub_C15BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 != *(v2 + 296) || ([*(v2 + 256) info], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"TUIRenderInfoKeyIsFinal"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v4, (v6 & 1) != 0))
  {
    if (*(a1 + 123) == 1)
    {
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = *(a1 + 32);
      if (!*(*(*(a1 + 104) + 8) + 40) && *(v7 + 32) != 1)
      {
        v57 = 0;
        goto LABEL_59;
      }
    }

    v8 = *(v7 + 304);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!*(v7 + 72))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v9 = *(v7 + 296);
    v10 = *(v7 + 72);
    v11 = v10 != 0;
    if (v10)
    {
      if (v8 != v9)
      {
LABEL_13:
        v12 = *(*(*(a1 + 96) + 8) + 40);
        [*(v7 + 80) viewSize];
        if (v12 > v13 || (v14 = *(a1 + 32), v15 = *(v14 + 296), v15 > [*(v14 + 72) initialContentReadyEntryIndex]))
        {
          v11 = 1;
          goto LABEL_19;
        }

LABEL_18:
        v11 = 0;
LABEL_19:
        v18 = *(a1 + 32);
        v19 = *(v18 + 304);
        if (v19 != 0x7FFFFFFFFFFFFFFFLL && *(v18 + 296) < v19)
        {
          v20 = [*(*(*(a1 + 88) + 8) + 40) count];
          v21 = *(a1 + 32);
          if (v20)
          {
            [v21[10] viewSizeWithinSafeArea];
            v23 = v22;
            v24 = *(a1 + 32);
            v25 = *(v24 + 144);
            [*(v24 + 80) viewSafeAreaInsets];
            v27 = v26 + v23 * 0.5;
            v28 = *(a1 + 32);
            v29 = *(*(*(a1 + 96) + 8) + 40);
            v30 = v29 + v25 * 0.5;
            if (*(v28 + 152) >= v30)
            {
              v30 = *(v28 + 152);
            }

            v31 = v30 - v29;
            v32 = *(v28 + 320);
            v33 = [NSNumber numberWithUnsignedInteger:*(v28 + 296)];
            v34 = [v32 objectForKeyedSubscript:v33];
            v35 = [v34 loadingRenderModelWithSize:*(*(a1 + 32) + 80) center:v23 environment:{v25, v27, v31}];

            v36 = [v35 section];
            v37 = *(*(*(a1 + 96) + 8) + 40);
            v38 = [v35 UUID];
            v39 = [v35 copyWithSection:v36 offset:v38 uuid:{0.0, v37}];

            [v39 frame];
            *(*(*(a1 + 96) + 8) + 40) = CGRectGetMaxY(v84);
            v40 = [*(*(*(a1 + 88) + 8) + 40) arrayByAddingObject:v39];
            v41 = *(*(a1 + 88) + 8);
            v42 = *(v41 + 40);
            *(v41 + 40) = v40;

            [*(a1 + 32) setLayoutState:2];
          }

          else
          {
            [v21 setLayoutState:1];
          }
        }

        v16 = 0;
        v17 = 0;
LABEL_35:
        v58 = [TUIRenderModelCollection alloc];
        v59 = *(a1 + 32);
        v60 = *(a1 + 40);
        v61 = v59[9];
        v62 = *(*(*(a1 + 88) + 8) + 40);
        v63 = *(*(a1 + 96) + 8);
        v45 = [v59 _infoForFinal:v17];
        v64 = -[TUIRenderModelCollection initWithContent:sections:size:insets:visibleBoundsObservers:info:anchorSet:layoutDirection:matchingUUID:matchingUID:](v58, "initWithContent:sections:size:insets:visibleBoundsObservers:info:anchorSet:layoutDirection:matchingUUID:matchingUID:", v61, v62, v60, v45, *(a1 + 48), [*(*(a1 + 32) + 80) layoutDirection], *(v63 + 32), *(v63 + 40), UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, 0);
        v65 = *(*(a1 + 80) + 8);
        v66 = *(v65 + 40);
        *(v65 + 40) = v64;

        objc_storeStrong((*(a1 + 32) + 256), *(*(*(a1 + 80) + 8) + 40));
        if ([*(a1 + 32) _lq_shouldSubmitRenderModelUpdate:*(a1 + 121) transactionGroup:*(a1 + 56)])
        {
          v67 = *(a1 + 32);
          v68 = *(v67 + 344);
          if (v68 == 1)
          {
            [*(v67 + 120) updateWithRenderModel:*(v67 + 280) transactionGroup:*(a1 + 56) hasInvalidLayouts:*(a1 + 122)];
LABEL_47:
            v57 = 1;
            if (!v11)
            {
              goto LABEL_48;
            }

            goto LABEL_40;
          }

          if (!v68)
          {
            [*(v67 + 104) updateWithHostingMap:*(v67 + 264) transactionGroup:*(a1 + 56)];
            [*(*(a1 + 32) + 104) updateWithRenderModel:*(*(a1 + 32) + 256) viewState:*(a1 + 64) flags:*(a1 + 112) transactionGroup:*(a1 + 56)];
            [*(*(a1 + 32) + 112) updateWithRenderModel:*(*(a1 + 32) + 272) transactionGroup:*(a1 + 56)];
            goto LABEL_47;
          }

LABEL_43:
          v57 = 1;
          if (!v11)
          {
            goto LABEL_48;
          }

          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    else if (v8 != v9)
    {
      goto LABEL_18;
    }

    v16 = *(a1 + 120);
    [v7 setLayoutState:2];
    v17 = 1;
    goto LABEL_35;
  }

  v43 = *(a1 + 32);
  v78 = v43[9];
  v11 = v78 != 0;
  v16 = *(a1 + 120);
  if (v43[38])
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
  }

  [v43 setLayoutState:v44];
  v45 = [TUIRenderModelCollection alloc];
  v46 = *(a1 + 32);
  v47 = *(a1 + 40);
  v48 = v46[9];
  v49 = *(*(*(a1 + 88) + 8) + 40);
  v50 = *(*(a1 + 96) + 8);
  v51 = [v46 _infoForFinal:1];
  v52 = -[TUIRenderModelCollection initWithContent:sections:size:insets:visibleBoundsObservers:info:anchorSet:layoutDirection:matchingUUID:matchingUID:](v45, "initWithContent:sections:size:insets:visibleBoundsObservers:info:anchorSet:layoutDirection:matchingUUID:matchingUID:", v48, v49, v47, v51, *(a1 + 48), [*(*(a1 + 32) + 80) layoutDirection], *(v50 + 32), *(v50 + 40), UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, 0);
  v53 = *(*(a1 + 80) + 8);
  v54 = *(v53 + 40);
  *(v53 + 40) = v52;

  objc_storeStrong((*(a1 + 32) + 256), *(*(*(a1 + 80) + 8) + 40));
  if ([*(a1 + 32) _lq_shouldSubmitRenderModelUpdate:*(a1 + 121) transactionGroup:*(a1 + 56)])
  {
    v55 = *(a1 + 32);
    v56 = *(v55 + 344);
    if (v56 == 1)
    {
      [*(v55 + 120) updateWithRenderModel:*(v55 + 280) transactionGroup:*(a1 + 56) hasInvalidLayouts:*(a1 + 122)];
    }

    else
    {
      if (v56)
      {
        goto LABEL_43;
      }

      [*(v55 + 104) updateWithHostingMap:*(v55 + 264) transactionGroup:*(a1 + 56)];
      [*(*(a1 + 32) + 104) updateWithRenderModel:*(*(a1 + 32) + 256) viewState:*(a1 + 64) flags:*(a1 + 112) transactionGroup:*(a1 + 56)];
      [*(*(a1 + 32) + 112) updateWithRenderModel:*(*(a1 + 32) + 272) transactionGroup:*(a1 + 56)];
    }

    v57 = 1;
    if (!v78)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_39:
  v57 = 0;
  if (!v11)
  {
LABEL_48:
    if ((v16 & 1) == 0)
    {
      goto LABEL_59;
    }

    v70 = 0;
    goto LABEL_50;
  }

LABEL_40:
  v69 = [*(*(a1 + 32) + 184) initialContentReadyDate];
  if (!v69)
  {
LABEL_53:
    *(*(a1 + 32) + 8) &= ~1u;
    v72 = *(a1 + 32);
    if ((*(v72 + 8) & 2) != 0)
    {
      v74 = 0;
      v73 = 1;
    }

    else
    {
      *(v72 + 8) |= 2u;
      v73 = 1;
      v74 = 1;
    }

    goto LABEL_58;
  }

  v45 = v69;
  if ((v16 & 1) == 0)
  {

    goto LABEL_59;
  }

  v70 = 1;
LABEL_50:
  v71 = [*(*(a1 + 32) + 184) allContentReadyDate];

  if (v70)
  {

    if (v71)
    {
      goto LABEL_59;
    }

    v16 = 1;
    goto LABEL_53;
  }

  if (v71)
  {
    goto LABEL_59;
  }

  v73 = 0;
  v74 = 0;
  *(*(a1 + 32) + 8) &= ~1u;
  v16 = 1;
LABEL_58:
  v75 = *(a1 + 56);
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_C1D18;
  v79[3] = &unk_261040;
  v80 = v74;
  v79[4] = *(a1 + 32);
  v81 = v16 & 1;
  v82 = v16 & 1;
  v83 = v73;
  [v75 appendUpdateBlock:v79];
LABEL_59:
  if (*(a1 + 123) == 1)
  {
    v76 = *(a1 + 32);
  }

  else
  {
    v76 = *(a1 + 32);
    if (!*(*(*(a1 + 104) + 8) + 40) && *(v76 + 32) != 1)
    {
      return;
    }
  }

  v77 = [*(v76 + 184) initialLayoutStartDate];

  if (v77)
  {
    if (!v57)
    {
      return;
    }

    goto LABEL_65;
  }

  [*(*(a1 + 32) + 184) setInitialLayoutStartDate:*(a1 + 72)];
  if (v57)
  {
LABEL_65:
    [*(a1 + 32) lq_updateAXModelTreeWithTransactionGroup:*(a1 + 56)];
  }
}

void sub_C1D18(uint64_t a1)
{
  v2 = +[NSDate date];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    if ((*(v3 + 12) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 64));
      [WeakRetained feedLayoutControllerInitialContentReady:*(a1 + 32)];
    }
  }

  if (*(a1 + 41) == 1 && *(a1 + 42) == 1)
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 12) & 8) != 0)
    {
      v6 = objc_loadWeakRetained((v5 + 64));
      [v6 feedLayoutControllerAllContentReady:*(a1 + 32)];
    }
  }

  v7 = [*(*(a1 + 32) + 240) activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C1E5C;
  block[3] = &unk_261018;
  v11 = *(a1 + 43);
  block[4] = *(a1 + 32);
  v10 = v2;
  v12 = *(a1 + 42);
  v8 = v2;
  dispatch_async(v7, block);
}

void sub_C1E5C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(*(a1 + 32) + 184) initialContentReadyDate];

    if (!v2)
    {
      [*(*(a1 + 32) + 184) setInitialContentReadyDate:*(a1 + 40)];
    }
  }

  if (*(a1 + 49) == 1)
  {
    v3 = [*(*(a1 + 32) + 184) allContentReadyDate];

    if (!v3)
    {
      [*(*(a1 + 32) + 184) setAllContentReadyDate:*(a1 + 40)];
    }
  }

  v4 = *(a1 + 32);
  if (*(v4 + 248) & 0x10) != 0 && (*(v4 + 12))
  {
    v5 = +[TUITransaction noAnimationTransaction];
    [*(*(a1 + 32) + 88) scheduleLayoutUpdateWithTransaction:v5 block:&stru_260FF0];
    [v5 commit];
  }
}

void sub_C1F5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 440);
  v4 = a3;
  v5 = [v4 layoutController];
  [v3 collectStatsFromLayoutController:v5];

  v6 = [v4 layoutController];

  [v6 resetInstantiationStats:0];
}

void sub_C1FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 timingCollector];
  [v4 finalizeWithTimebase:*(a1 + 48)];
  [*(*(a1 + 32) + 376) recordReason:{objc_msgSend(v4, "reason")}];
  [*(*(a1 + 32) + 376) addPhase:1 fromCollector:v4];
  [*(*(a1 + 32) + 376) addPhase:2 fromCollector:v4];
  [*(*(a1 + 32) + 376) addPhase:3 fromCollector:v4];
  [*(*(a1 + 32) + 376) addPhase:4 fromCollector:v4];
  if ([v4 reason])
  {
    v5 = [v13 entry];
    v6 = [v5 uid];

    v7 = [TUIStatsFeedEntryPass alloc];
    v8 = [v13 entry];
    v9 = [v8 templateURL];
    v10 = [v4 reason];
    v11 = [v13 eventCollector];
    v12 = [(TUIStatsFeedEntryPass *)v7 initWithURL:v9 uid:v6 reason:v10 timingCollector:v4 timeBase:*(a1 + 48) eventCollector:v11];

    [*(a1 + 40) addObject:v12];
  }
}

void sub_C2180(id a1, NSNumber *a2, _TUIFeedLayoutSection *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(_TUIFeedLayoutSection *)v4 timingCollector];
  [v5 reset];

  v6 = [(_TUIFeedLayoutSection *)v4 eventCollector];

  [v6 reset];
}

void sub_C21F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained feedLayoutController:*(a1 + 32) updateStats:*(a1 + 40)];
}

void sub_C25AC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) completed];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_C2A58(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) completed];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_C2C90(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 160);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_C2D0C;
  v3[3] = &unk_261120;
  v4 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

id sub_C2E58(uint64_t a1)
{
  *(*(a1 + 32) + 248) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 376);
  *(v4 + 376) = 0;

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [[TUIStatsCollector alloc] initWithMode:*(a1 + 40)];
    v8 = *(a1 + 32);
    v9 = *(v8 + 192);
    *(v8 + 192) = v7;

    v6 = *(a1 + 40);
    if ((v6 & 4) != 0)
    {
      v10 = [[TUIStatsTimingCollector alloc] initWithMode:*(a1 + 40)];
      v11 = *(a1 + 32);
      v12 = *(v11 + 376);
      *(v11 + 376) = v10;

      v6 = *(a1 + 40);
    }
  }

  v13 = *(*(a1 + 32) + 320);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_C2F5C;
  v15[3] = &unk_261168;
  v15[4] = v6;
  return [v13 enumerateKeysAndObjectsUsingBlock:v15];
}

void sub_C30DC(uint64_t a1)
{
  v2 = [[TUIStatsFeed alloc] initWithDates:*(*(a1 + 32) + 184) collector:*(*(a1 + 32) + 192)];
  (*(*(a1 + 40) + 16))();
}

void sub_C3208(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) initialResourcesRenderedDate];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 184);

    [v4 setInitialResourcesRenderedDate:v3];
  }
}

void sub_C3328(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) resourcesStartLoadingDate];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 184);

    [v4 setResourcesStartLoadingDate:v3];
  }
}

void sub_C3448(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) resourcesLoadedDate];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 184);

    [v4 setResourcesLoadedDate:v3];
  }
}

void sub_C3568(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) viewWillAppearDate];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 184);

    [v4 setViewWillAppearDate:v3];
  }
}

void sub_C363C(uint64_t a1)
{
  [*(*(a1 + 32) + 160) enumerateObjectsUsingBlock:&stru_2611A8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;
}

uint64_t sub_C3944(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v6 = a3;
  v7 = a2;
  objc_storeStrong((*(a1 + 32) + 368), *(a1 + 48));
  [*(a1 + 32) lq_updateContent:*(a1 + 56) contentUpdateDate:*(a1 + 64) transaction:v6 transactionGroup:v7];

  return 1;
}

void sub_C41C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, id location, id a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  objc_destroyWeak((v47 + 64));
  objc_destroyWeak((v47 + 56));
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a38);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}