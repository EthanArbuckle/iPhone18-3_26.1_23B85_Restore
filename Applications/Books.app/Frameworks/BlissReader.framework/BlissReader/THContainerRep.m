@interface THContainerRep
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (id)childRepsForHitTesting;
@end

@implementation THContainerRep

- (BOOL)containsPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  if (([(THContainerRep *)self hitTestOptions]& 1) != 0 && ([(THContainerRep *)self naturalBoundsForHitTesting], v27.x = x, v27.y = y, CGRectContainsPoint(v28, v27)))
  {
    LOBYTE(v4) = 1;
  }

  else if ((-[THContainerRep hitTestOptions](self, "hitTestOptions") & 4) != 0 && (v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, v5 = [*&self->TSDContainerRep_opaque[OBJC_IVAR___TSDContainerRep_mChildReps] reverseObjectEnumerator], (v6 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v22, v26, 16)) != 0))
  {
    v7 = v6;
    v4 = 0;
    v8 = *v23;
    v17 = vdupq_lane_s64(*&x, 0);
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [objc_msgSend(v10 layout];
        if (v11)
        {
          [v11 inverseTransform];
          v12 = v19;
          v13 = v20;
          v14 = v21;
        }

        else
        {
          v14 = 0uLL;
          v12 = 0uLL;
          v13 = 0uLL;
        }

        v4 |= [v10 containsPoint:{vaddq_f64(v14, vmlaq_f64(vmulq_n_f64(v13, y), v17, v12))}];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v27 = *&a3.x;
  y = a3.y;
  if (([(THContainerRep *)self hitTestOptions]& 1) != 0 && (TSDRectWithCenterAndSize(), v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(THContainerRep *)self naturalBoundsForHitTesting], v39.origin.x = v8, v39.origin.y = v10, v39.size.width = v12, v39.size.height = v14, CGRectIntersectsRect(v38, v39)))
  {
    LOBYTE(v15) = 1;
  }

  else if ((-[THContainerRep hitTestOptions](self, "hitTestOptions") & 4) != 0 && (v35 = 0u, v36 = 0u, v33 = 0u, v34 = 0u, v16 = [*&self->TSDContainerRep_opaque[OBJC_IVAR___TSDContainerRep_mChildReps] reverseObjectEnumerator], (v17 = objc_msgSend(v16, "countByEnumeratingWithState:objects:count:", &v33, v37, 16)) != 0))
  {
    v18 = v17;
    v15 = 0;
    v19 = *v34;
    v28 = vdupq_lane_s64(v27, 0);
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [objc_msgSend(v21 layout];
        if (v22)
        {
          [v22 inverseTransform];
          v23 = v30;
          v24 = v31;
          v25 = v32;
        }

        else
        {
          v25 = 0uLL;
          v23 = 0uLL;
          v24 = 0uLL;
        }

        v15 |= [v21 containsPoint:vaddq_f64(v25 withSlop:{vmlaq_f64(vmulq_n_f64(v24, y), v28, v23)), width, height}];
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

- (id)childRepsForHitTesting
{
  if (([(THContainerRep *)self hitTestOptions]& 4) == 0)
  {
    return 0;
  }

  return [(THContainerRep *)self childReps];
}

@end