@interface _TUIFlexibleEqualWidthLayoutController
- (void)computeWithMeasured:(double)measured desired:(id *)desired;
@end

@implementation _TUIFlexibleEqualWidthLayoutController

- (void)computeWithMeasured:(double)measured desired:(id *)desired
{
  v5 = v4;
  v47 = [[NSHashTable alloc] initWithOptions:512 capacity:{-[NSMutableArray count](self->super._layouts, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = self->super._layouts;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v10)
  {
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v47 addObject:*(*(&v57 + 1) + 8 * i)];
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v10);
  }

  [(TUIFlexibleLayoutController *)self _lengthToAdjustWithMeasured:desired desired:v5, measured];
  v14 = v13;
  v15 = v13 + self->super._layoutTotalLength;
  while (1)
  {
    if (![v47 count])
    {
      goto LABEL_38;
    }

    v16 = +[NSMutableArray array];
    v17 = [v47 count];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v18 = v47;
    v19 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v19)
    {
      v20 = v15 / v17;
      v21 = *v54;
      v22 = 0.0;
      v23 = 0.0;
      while (1)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v53 + 1) + 8 * j);
          v52 = v25;
          v26 = sub_E428C(&self->super._layoutToLength.__table_.__bucket_list_.__ptr_, &v52);
          v27 = v26;
          v28 = v26[6];
          v29 = v20 - v28;
          if (v20 - v28 <= 0.0)
          {
            v31 = v26[6];
            if (v29 >= 0.0)
            {
              goto LABEL_20;
            }

            v30 = fmax(-fmax((COERCE_FLOAT(*(v26 + 3)) - COERCE_FLOAT(HIDWORD(*(v26 + 3)))), 0.0), v29);
          }

          else
          {
            v30 = fmin(fmax((v26[8] - v26[6]), 0.0), v29);
          }

          v31 = v30 + v28;
LABEL_20:
          [(_TUIFlexibleEqualWidthLayoutController *)self _layout:v25 lengthForProposedLength:v31];
          v33 = v32;
          v34 = !TUICGFloatIsAlmostEqualFloat(vabdd_f64(v27[8], v32), 0.0);
          v35 = !TUICGFloatIsAlmostEqualFloat(vabdd_f64(v27[7], v33), 0.0);
          if (!TUICGFloatIsAlmostEqualFloat(vabdd_f64(v33, v20), 0.0) || !v34 && !v35)
          {
            [v16 addObject:v25];
            v22 = v22 + v33 - v28;
          }

          layoutToFlexed = self->super._layoutToFlexed;
          v37 = [NSNumber numberWithDouble:v33];
          [(NSMapTable *)layoutToFlexed setObject:v37 forKey:v25];

          v23 = v23 + v33 - v28;
        }

        v19 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (!v19)
        {
          goto LABEL_26;
        }
      }
    }

    v22 = 0.0;
    v23 = 0.0;
LABEL_26:

    if (![v16 count])
    {
      break;
    }

    v38 = [v16 count];
    if (v38 == [v18 count] || TUICGFloatIsAlmostEqualFloat(v23, v14))
    {
      break;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v16;
    v40 = [v39 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v40)
    {
      v41 = *v49;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v48 + 1) + 8 * k);
          [v18 removeObject:v43];
          v44 = [(NSMapTable *)self->super._layoutToFlexed objectForKey:v43];
          [v44 doubleValue];
          v46 = v45;

          v15 = v15 - v46;
        }

        v40 = [v39 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v40);
    }

    v14 = v14 - v22;
  }

LABEL_38:
}

@end