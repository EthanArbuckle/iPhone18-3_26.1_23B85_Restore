@interface TUIFlexibleLayoutController
+ (id)newEqualWidthController;
+ (id)newHeightController;
+ (id)newStrictEqualWidthController;
+ (id)newWidthController;
- (double)adjustedLengthForLayout:(id)layout;
- (id).cxx_construct;
- (id)_init;
- (void)addLayout:(id)layout length:(id *)length compressed:(unint64_t)compressed;
- (void)computeWithMeasured:(double)measured desired:(id *)desired;
@end

@implementation TUIFlexibleLayoutController

- (id)_init
{
  v10.receiver = self;
  v10.super_class = TUIFlexibleLayoutController;
  v2 = [(TUIFlexibleLayoutController *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    layouts = v2->_layouts;
    v2->_layouts = v3;

    v5 = objc_opt_new();
    priorityToLayouts = v2->_priorityToLayouts;
    v2->_priorityToLayouts = v5;

    v7 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    layoutToFlexed = v2->_layoutToFlexed;
    v2->_layoutToFlexed = v7;
  }

  return v2;
}

+ (id)newWidthController
{
  v2 = [_TUIFlexibleWidthLayoutController alloc];

  return [(TUIFlexibleLayoutController *)v2 _init];
}

+ (id)newHeightController
{
  v2 = [_TUIFlexibleHeightLayoutController alloc];

  return [(TUIFlexibleLayoutController *)v2 _init];
}

+ (id)newEqualWidthController
{
  v2 = [_TUIFlexibleEqualWidthLayoutController alloc];

  return [(TUIFlexibleLayoutController *)v2 _init];
}

+ (id)newStrictEqualWidthController
{
  v2 = [_TUIFlexibleStrictEqualWidthLayoutController alloc];

  return [(TUIFlexibleLayoutController *)v2 _init];
}

- (void)addLayout:(id)layout length:(id *)length compressed:(unint64_t)compressed
{
  v6 = v5;
  layoutCopy = layout;
  [(NSMutableArray *)self->_layouts addObject:layoutCopy];
  self->_layoutTotalLength = fmax(*&length, 0.0) + self->_layoutTotalLength;
  priorityToLayouts = self->_priorityToLayouts;
  v12 = [NSNumber numberWithUnsignedInteger:WORD2(compressed)];
  v13 = [(NSMutableDictionary *)priorityToLayouts objectForKeyedSubscript:v12];

  if (!v13)
  {
    v14 = objc_opt_new();
    v15 = self->_priorityToLayouts;
    v16 = [NSNumber numberWithUnsignedInteger:WORD2(compressed)];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

    v13 = v14;
  }

  [v13 addObject:layoutCopy];
  v21[0] = layoutCopy;
  v21[2] = v21;
  v17 = sub_F4048(&self->_layoutToLength.__table_.__bucket_list_.__ptr_, v21);
  v17[3] = length;
  v17[4] = compressed;
  [(NSMapTable *)self->_layoutToFlexed setObject:&off_275CB8 forKey:layoutCopy];
  [layoutCopy setHidden:0];
  if (v6 == 1)
  {
    hideableLayouts = self->_hideableLayouts;
    if (!hideableLayouts)
    {
      v19 = [NSHashTable hashTableWithOptions:512];
      v20 = self->_hideableLayouts;
      self->_hideableLayouts = v19;

      hideableLayouts = self->_hideableLayouts;
    }

    [(NSHashTable *)hideableLayouts addObject:layoutCopy];
  }
}

- (void)computeWithMeasured:(double)measured desired:(id *)desired
{
  [(TUIFlexibleLayoutController *)self _lengthToAdjustWithMeasured:desired desired:measured];
  v6 = v5;
  allKeys = [(NSMutableDictionary *)self->_priorityToLayouts allKeys];
  v8 = [allKeys sortedArrayUsingSelector:"compare:"];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v8;
  v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v58)
  {
    v57 = *v80;
    do
    {
      for (i = 0; i != v58; i = i + 1)
      {
        if (*v80 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_priorityToLayouts objectForKeyedSubscript:*(*(&v79 + 1) + 8 * i)];
        v60 = [v9 mutableCopy];

        if (fabs(v6) > 1.0)
        {
          v10 = 1;
          do
          {
            if (![v60 count])
            {
              break;
            }

            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v11 = v60;
            v12 = [v11 countByEnumeratingWithState:&v75 objects:v86 count:16];
            if (v12)
            {
              v13 = *v76;
              v14 = 0.0;
              do
              {
                for (j = 0; j != v12; j = j + 1)
                {
                  if (*v76 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v74 = *(*(&v75 + 1) + 8 * j);
                  v14 = v14 + fmax(*(sub_E428C(&self->_layoutToLength.__table_.__bucket_list_.__ptr_, &v74) + 6), 1.0);
                }

                v12 = [v11 countByEnumeratingWithState:&v75 objects:v86 count:16];
              }

              while (v12);
            }

            else
            {
              v14 = 0.0;
            }

            v16 = objc_opt_new();
            if (self->_hideableLayouts && v6 < 0.0)
            {
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v17 = v11;
              v18 = [v17 countByEnumeratingWithState:&v70 objects:v85 count:16];
              if (v18)
              {
                v19 = *v71;
                do
                {
                  for (k = 0; k != v18; k = k + 1)
                  {
                    if (*v71 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = *(*(&v70 + 1) + 8 * k);
                    v74 = v21;
                    v22 = sub_E428C(&self->_layoutToLength.__table_.__bucket_list_.__ptr_, &v74);
                    if (self->_hideableLayouts)
                    {
                      v23 = v22[6];
                      if ([(NSHashTable *)self->_hideableLayouts containsObject:v21])
                      {
                        [v21 setHidden:1];
                        [(NSMapTable *)self->_layoutToFlexed setObject:&off_274D68 forKey:v21];
                        v6 = v6 + v23;
                        v14 = v14 - v23;
                      }
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v70 objects:v85 count:16];
                }

                while (v18);
              }
            }

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v24 = v11;
            v25 = [v24 countByEnumeratingWithState:&v66 objects:v84 count:16];
            if (v25)
            {
              v26 = *v67;
              v61 = 0.0;
              v27 = 0.0;
              do
              {
                for (m = 0; m != v25; m = m + 1)
                {
                  if (*v67 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v66 + 1) + 8 * m);
                  v74 = v29;
                  v30 = sub_E428C(&self->_layoutToLength.__table_.__bucket_list_.__ptr_, &v74);
                  v31 = v30;
                  v32 = *(v30 + 3);
                  if (v6 <= 0.0)
                  {
                    v33 = COERCE_FLOAT(*(v30 + 3)) - *(&v32 + 1);
                  }

                  else
                  {
                    v33 = COERCE_FLOAT(*(v30 + 4)) - *&v32;
                  }

                  v34 = v30[6];
                  v35 = fmax(v34, 1.0);
                  v36 = fmax(v33, 0.0);
                  if (v10)
                  {
                    v37 = v35 / v14;
                  }

                  else
                  {
                    v37 = 1.0;
                  }

                  if (([v29 hidden] & 1) == 0)
                  {
                    v38 = fmin(v36, v6 * v37) + v34;
                    if (v6 <= 0.0)
                    {
                      v39 = fmax(v38, v31[7]);
                    }

                    else
                    {
                      v39 = fmin(v38, v31[8]);
                    }

                    [(TUIFlexibleLayoutController *)self _layout:v29 lengthForProposedLength:v39];
                    v41 = v40;
                    if (v6 > 0.0 && ((v42 = v31[8], v43 = vabdd_f64(v42, v41), v44 = vabdd_f64(v42, v38), v43 > 1.0) ? (v45 = v44 > 1.0) : (v45 = 0), !v45) || v6 < 0.0 && ((v46 = v31[7], v47 = vabdd_f64(v46, v41), v44 = vabdd_f64(v46, v38), v47 > 1.0) ? (v48 = v44 > 1.0) : (v48 = 0), !v48))
                    {
                      [v16 addObject:{v29, v44}];
                      v61 = v61 + v41 - v34;
                    }

                    layoutToFlexed = self->_layoutToFlexed;
                    v50 = [NSNumber numberWithDouble:v41];
                    [(NSMapTable *)layoutToFlexed setObject:v50 forKey:v29];

                    v27 = v27 + v41 - v34;
                  }
                }

                v25 = [v24 countByEnumeratingWithState:&v66 objects:v84 count:16];
              }

              while (v25);
            }

            else
            {
              v61 = 0.0;
              v27 = 0.0;
            }

            if (vabdd_f64(v27, v6) >= 1.0)
            {
              v51 = [v16 count];
              if (v51 != [v24 count])
              {
                if ([v16 count])
                {
                  v64 = 0u;
                  v65 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  v52 = v16;
                  v53 = [v52 countByEnumeratingWithState:&v62 objects:v83 count:16];
                  if (v53)
                  {
                    v54 = *v63;
                    do
                    {
                      for (n = 0; n != v53; n = n + 1)
                      {
                        if (*v63 != v54)
                        {
                          objc_enumerationMutation(v52);
                        }

                        [v24 removeObjectIdenticalTo:*(*(&v62 + 1) + 8 * n)];
                      }

                      v53 = [v52 countByEnumeratingWithState:&v62 objects:v83 count:16];
                    }

                    while (v53);
                  }

                  v6 = v6 - v61;
                }

                else
                {
                  if ((v10 & 1) == 0)
                  {
                    [v24 removeAllObjects];
                  }

                  v10 = 0;
                }

                goto LABEL_67;
              }

              [v24 removeAllObjects];
            }

            v6 = v6 - v27;
LABEL_67:
          }

          while (fabs(v6) > 1.0);
        }
      }

      v58 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v58);
  }
}

- (double)adjustedLengthForLayout:(id)layout
{
  v3 = [(NSMapTable *)self->_layoutToFlexed objectForKey:layout];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

@end