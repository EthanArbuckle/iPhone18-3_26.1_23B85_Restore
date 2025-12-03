@interface TSDContainerRep
+ (id)childrenFromLayoutInContainerRep:(id)rep;
+ (id)containerRep:(id)rep hitRep:(CGPoint)hitRep withGesture:(id)gesture passingTest:(id)test;
- (BOOL)shouldHitTestChildImageRep:(id)rep;
@end

@implementation TSDContainerRep

+ (id)childrenFromLayoutInContainerRep:(id)rep
{
  childReps = [rep childReps];
  v5 = [objc_msgSend(rep "layout")];
  v6 = [v5 count];
  if (v6 == [childReps count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v28;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        if ([objc_msgSend(childReps objectAtIndex:{v9), "layout"}] != v12)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = [v5 count];
      if (!v13)
      {
        goto LABEL_27;
      }

      v14 = v13;
      v15 = 0;
      while ([objc_msgSend(childReps objectAtIndex:{v15), "parentRep"}] == rep)
      {
        if (v14 == ++v15)
        {
          goto LABEL_27;
        }
      }
    }
  }

  childReps = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        v21 = [objc_msgSend(rep "canvas")];
        if (v21)
        {
          goto LABEL_24;
        }

        v21 = [objc_alloc(objc_msgSend(v20 "repClassOverride"))];
        [objc_msgSend(rep "canvas")];
        if (objc_opt_respondsToSelector())
        {
          [objc_msgSend(objc_msgSend(rep "canvas")];
        }

        if (v21)
        {
LABEL_24:
          [childReps addObject:v21];
        }

        [v21 setParentRep:rep];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

LABEL_27:
  [childReps makeObjectsPerformSelector:"updateChildrenFromLayout"];
  return childReps;
}

+ (id)containerRep:(id)rep hitRep:(CGPoint)hitRep withGesture:(id)gesture passingTest:(id)test
{
  y = hitRep.y;
  x = hitRep.x;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [objc_msgSend(rep "childRepsForHitTesting")];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    v24 = vdupq_lane_s64(*&x, 0);
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [objc_msgSend(v14 "layout")];
        if (v15)
        {
          [v15 inverseTransform];
          v16 = v26;
          v17 = v27;
          v18 = v28;
        }

        else
        {
          v18 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
        }

        v19 = [v14 hitRep:gesture withGesture:test passingTest:{vaddq_f64(v18, vmlaq_f64(vmulq_n_f64(v17, y), v24, v16))}];
        if (v19)
        {
          return v19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = [rep hitRep:{x, y}];
  v21 = v20;
  if (test && v20 && !(*(test + 2))(test, v20))
  {
    return 0;
  }

  return v21;
}

- (BOOL)shouldHitTestChildImageRep:(id)rep
{
  objc_opt_class();
  [(TSDContainerRep *)self parentRep];
  v5 = TSUDynamicCast();

  return [v5 shouldHitTestChildImageRep:rep];
}

@end