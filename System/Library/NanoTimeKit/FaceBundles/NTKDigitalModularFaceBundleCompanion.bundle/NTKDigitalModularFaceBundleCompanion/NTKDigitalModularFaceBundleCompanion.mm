void sub_1FE8(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqual:NTKComplicationSlotCenter];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) device];
  _NTKDigitalModularLayoutConstants();
  if (v2)
  {
    v5 = &v9;
  }

  else
  {
    v5 = &v8;
  }

  [v3 setContentHeight:*v5];

  v6 = *(a1 + 48);
  v7 = [v6 faceColorPalette];
  [v6 _applyFaceColorPalette:v7 toModuleView:*(a1 + 40)];
}

void sub_26FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 faceColorPalette];
  [v2 _applyFaceColorPalette:v3 toModuleView:v4];

  [v4 setHighlightAlpha:0.0];
}

void sub_28C0(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if (a3 == 2)
  {
    v8 = *(a1 + 48);
  }

  else if (a3 == 1)
  {
    v7 = *(a1 + 48);
  }

  else
  {
    v5 = 0.0;
    if (a3)
    {
      goto LABEL_8;
    }

    v6 = *(a1 + 48);
  }

  CLKCompressFraction();
LABEL_8:
  v9 = v5 + -0.5;
  if (v5 + -0.5 < 0.0)
  {
    v9 = -(v5 + -0.5);
  }

  v10 = 0.5 - v9;
  [v14 applyTransitionFraction:*(a1 + 32) fromFaceColorPalette:*(a1 + 40) toFaceColorPalette:71 units:1 brightenedUnits:?];
  [v14 setHighlightAlpha:v10];
  v11 = *(a1 + 48);
  if (([*(a1 + 32) isMulticolor] & 1) != 0 || objc_msgSend(*(a1 + 40), "isMulticolor"))
  {
    if ([*(a1 + 40) isMulticolor])
    {
      v12 = [*(a1 + 32) isMulticolor];
      v13 = v14;
      if ((v12 & 1) == 0)
      {
        v11 = 1.0 - *(a1 + 48);
      }
    }

    else
    {
      v13 = v14;
    }

    [v13 transitionToMonochromeWithFraction:v11];
  }

  else
  {
    [v14 updateMonochromeColor];
  }
}

void sub_2E64(uint64_t a1, uint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) _complicationSlotsForRow:a2];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(a1 + 32) _moduleViewForComplicationSlot:*(*(&v17 + 1) + 8 * v7)];
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_3014;
        v13[3] = &unk_8328;
        v14 = v8;
        v15 = *(a1 + 40);
        v16 = a2;
        v11 = v8;
        [v10 _performIfNonRichModuleView:v11 actions:v13];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void *sub_3014(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return (*(result[5] + 16))(result[5], v1, result[6]);
  }

  return result;
}