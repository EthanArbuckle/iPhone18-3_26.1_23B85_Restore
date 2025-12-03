@interface CMMotionActivityFiltering
+ (BOOL)isActivity:(id)activity sustainedForAttribute:(int64_t)attribute;
+ (BOOL)isTimeFromActivity:(id)activity toActivity:(id)toActivity withinLimitForAttribute:(int64_t)attribute;
- (CMMotionActivityFiltering)init;
- (void)evaluateNextActivity:(id)activity attribute:(int64_t)attribute result:(id)result;
@end

@implementation CMMotionActivityFiltering

- (CMMotionActivityFiltering)init
{
  v9.receiver = self;
  v9.super_class = CMMotionActivityFiltering;
  v2 = [(CMMotionActivityFiltering *)&v9 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setTrueWalkInBout_(v2, v3, v4, 0.0);
    objc_msgSend_setTrueRunInBout_(v5, v6, v7, 0.0);
  }

  return v5;
}

+ (BOOL)isActivity:(id)activity sustainedForAttribute:(int64_t)attribute
{
  if (attribute == 1)
  {
    if (objc_msgSend_unknown(activity, a2, activity) & 1) != 0 || (objc_msgSend_stationary(activity, v6, v7) & 1) != 0 || (objc_msgSend_walking(activity, v6, v7) & 1) != 0 || (objc_msgSend_running(activity, v6, v7) & 1) != 0 || (objc_msgSend_cycling(activity, v6, v7))
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_msgSend_automotive(activity, v6, v7) ^ 1;
    }

    if (objc_msgSend_unknown(activity, v6, v7))
    {
      v11 = objc_msgSend_endDate(activity, v9, v10);
      started = objc_msgSend_startDate(activity, v12, v13);
      objc_msgSend_timeIntervalSinceDate_(v11, v15, started);
      if (v16 >= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_stationary(activity, v9, v10))
    {
      v19 = objc_msgSend_endDate(activity, v17, v18);
      v22 = objc_msgSend_startDate(activity, v20, v21);
      objc_msgSend_timeIntervalSinceDate_(v19, v23, v22);
      if (v24 >= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (v8)
    {
      v25 = objc_msgSend_endDate(activity, v17, v18);
      v28 = objc_msgSend_startDate(activity, v26, v27);
      objc_msgSend_timeIntervalSinceDate_(v25, v29, v28);
      if (v30 >= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_walking(activity, v17, v18))
    {
      v33 = objc_msgSend_endDate(activity, v31, v32);
      v36 = objc_msgSend_startDate(activity, v34, v35);
      objc_msgSend_timeIntervalSinceDate_(v33, v37, v36);
      if (v38 >= 180.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_running(activity, v31, v32) && (v41 = objc_msgSend_endDate(activity, v39, v40), v44 = objc_msgSend_startDate(activity, v42, v43), objc_msgSend_timeIntervalSinceDate_(v41, v45, v44), v46 >= 120.0) || objc_msgSend_cycling(activity, v39, v40) && (v49 = objc_msgSend_endDate(activity, v47, v48), v52 = objc_msgSend_startDate(activity, v50, v51), objc_msgSend_timeIntervalSinceDate_(v49, v53, v52), v54 >= 300.0))
    {
LABEL_23:
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = objc_msgSend_automotive(activity, v47, v48);
      if (v4)
      {
        v57 = objc_msgSend_endDate(activity, v55, v56);
        v60 = objc_msgSend_startDate(activity, v58, v59);
        objc_msgSend_timeIntervalSinceDate_(v57, v61, v60);
        LOBYTE(v4) = v62 >= 30.0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = attribute == 0;
  }

  return v4;
}

+ (BOOL)isTimeFromActivity:(id)activity toActivity:(id)toActivity withinLimitForAttribute:(int64_t)attribute
{
  if (attribute == 1)
  {
    if (objc_msgSend_unknown(activity, a2, activity) & 1) != 0 || (objc_msgSend_stationary(activity, v8, v9) & 1) != 0 || (objc_msgSend_walking(activity, v8, v9) & 1) != 0 || (objc_msgSend_running(activity, v8, v9) & 1) != 0 || (objc_msgSend_cycling(activity, v8, v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = objc_msgSend_automotive(activity, v8, v9) ^ 1;
    }

    if (objc_msgSend_unknown(activity, v8, v9))
    {
      started = objc_msgSend_startDate(toActivity, v11, v12);
      v16 = objc_msgSend_endDate(activity, v14, v15);
      objc_msgSend_timeIntervalSinceDate_(started, v17, v16);
      if (v18 <= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_stationary(activity, v11, v12))
    {
      v21 = objc_msgSend_startDate(toActivity, v19, v20);
      v24 = objc_msgSend_endDate(activity, v22, v23);
      objc_msgSend_timeIntervalSinceDate_(v21, v25, v24);
      if (v26 <= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (v10)
    {
      v27 = objc_msgSend_startDate(toActivity, v19, v20);
      v30 = objc_msgSend_endDate(activity, v28, v29);
      objc_msgSend_timeIntervalSinceDate_(v27, v31, v30);
      if (v32 <= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_walking(activity, v19, v20))
    {
      v35 = objc_msgSend_startDate(toActivity, v33, v34);
      v38 = objc_msgSend_endDate(activity, v36, v37);
      objc_msgSend_timeIntervalSinceDate_(v35, v39, v38);
      if (v40 <= 300.0)
      {
        goto LABEL_23;
      }
    }

    if (objc_msgSend_running(activity, v33, v34) && (v43 = objc_msgSend_startDate(toActivity, v41, v42), v46 = objc_msgSend_endDate(activity, v44, v45), objc_msgSend_timeIntervalSinceDate_(v43, v47, v46), v48 <= 300.0) || objc_msgSend_cycling(activity, v41, v42) && (v51 = objc_msgSend_startDate(toActivity, v49, v50), v54 = objc_msgSend_endDate(activity, v52, v53), objc_msgSend_timeIntervalSinceDate_(v51, v55, v54), v56 <= 300.0))
    {
LABEL_23:
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = objc_msgSend_automotive(activity, v49, v50);
      if (v5)
      {
        v59 = objc_msgSend_startDate(toActivity, v57, v58);
        v62 = objc_msgSend_endDate(activity, v60, v61);
        objc_msgSend_timeIntervalSinceDate_(v59, v63, v62);
        LOBYTE(v5) = v64 <= 300.0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = attribute == 0;
  }

  return v5;
}

- (void)evaluateNextActivity:(id)activity attribute:(int64_t)attribute result:(id)result
{
  if (objc_msgSend_automotive(activity, a2, activity))
  {
    *objc_msgSend_motionActivity(activity, v9, v10) = 5;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v25 = sub_19B70C16C;
  v26 = &unk_1E7532A00;
  activityCopy = activity;
  selfCopy = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = sub_19B70C26C;
  v18 = &unk_1E7535620;
  resultCopy = result;
  activityCopy2 = activity;
  v22 = v24;
  attributeCopy = attribute;
  selfCopy2 = self;
  isActivity_sustainedForAttribute = objc_msgSend_isActivity_sustainedForAttribute_(CMMotionActivityFiltering, v9, activity, attribute);
  v14 = objc_msgSend_count(result, v12, v13);
  if (isActivity_sustainedForAttribute)
  {
    if (!v14 || ((v17)(v16) & 1) == 0)
    {
      objc_msgSend_addObject_(result, v15, activity);
      (v25)(v24);
    }
  }

  else if (v14)
  {
    (v17)(v16);
  }
}

@end