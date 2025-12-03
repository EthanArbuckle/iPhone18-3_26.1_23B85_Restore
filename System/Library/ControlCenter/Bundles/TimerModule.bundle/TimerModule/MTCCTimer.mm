@interface MTCCTimer
- (BOOL)isEqual:(id)equal;
- (MTCCTimer)initWithMTTimer:(id)timer;
- (MTCCTimer)initWithState:(unint64_t)state duration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MTCCTimer

- (MTCCTimer)initWithMTTimer:(id)timer
{
  timerCopy = timer;
  v7 = objc_msgSend_state(timerCopy, v5, v6);
  objc_msgSend_duration(timerCopy, v8, v9);
  v13 = objc_msgSend_initWithState_duration_(self, v10, v7);
  if (v13)
  {
    v14 = objc_msgSend_timerID(timerCopy, v11, v12);
    objc_msgSend_setTimerID_(v13, v15, v14);

    v18 = objc_msgSend_fireDate(timerCopy, v16, v17);
    objc_msgSend_setFireDate_(v13, v19, v18);

    objc_msgSend_remainingTime(timerCopy, v20, v21);
    objc_msgSend_setRemainingTime_(v13, v22, v23);
    v26 = objc_msgSend_title(timerCopy, v24, v25);
    v29 = objc_msgSend_copy(v26, v27, v28);
    objc_msgSend_setTimerLabel_(v13, v30, v29);
  }

  return v13;
}

- (MTCCTimer)initWithState:(unint64_t)state duration:(double)duration
{
  v14.receiver = self;
  v14.super_class = MTCCTimer;
  v6 = [(MTCCTimer *)&v14 init];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setState_(v6, v7, state);
    objc_msgSend_setDuration_(v8, v9, v10, duration);
    objc_msgSend_setRemainingTime_(v8, v11, v12, duration);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v11 = objc_msgSend_state(self, v9, v10);
    if (v11 == objc_msgSend_state(v8, v12, v13) && (objc_msgSend_duration(self, v14, v15), v17 = v16, objc_msgSend_duration(v8, v18, v19), v17 == v22) && (objc_msgSend_remainingTime(self, v20, v21), v24 = v23, objc_msgSend_remainingTime(v8, v25, v26), v24 == v29))
    {
      v30 = objc_msgSend_timerID(self, v27, v28);
      v33 = objc_msgSend_timerID(v8, v31, v32);
      if (objc_msgSend_isEqual_(v30, v34, v33))
      {
        v37 = objc_msgSend_fireDate(self, v35, v36);
        v40 = objc_msgSend_fireDate(v8, v38, v39);
        isEqual = objc_msgSend_isEqual_(v37, v41, v40);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  objc_msgSend_duration(self, a2, v2);
  v5 = v4;
  objc_msgSend_remainingTime(self, v6, v7);
  v9 = v8;
  v14 = objc_msgSend_timerID(self, v10, v11);
  if (v14)
  {
    v15 = objc_msgSend_timerID(self, v12, v13);
    v18 = objc_msgSend_hash(v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  v23 = objc_msgSend_fireDate(self, v19, v20);
  if (v23)
  {
    v24 = objc_msgSend_fireDate(self, v21, v22);
    v27 = objc_msgSend_hash(v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = (v9 + (31 * (v5 + 31.0)));
  v29 = v27 - (v18 - v28 + 32 * v28) + 32 * (v18 - v28 + 32 * v28);

  return v29;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_state(self, v5, v6);
  objc_msgSend_setState_(v4, v8, v7);
  objc_msgSend_duration(self, v9, v10);
  objc_msgSend_setDuration_(v4, v11, v12);
  v15 = objc_msgSend_fireDate(self, v13, v14);
  objc_msgSend_setFireDate_(v4, v16, v15);

  objc_msgSend_remainingTime(self, v17, v18);
  objc_msgSend_setRemainingTime_(v4, v19, v20);
  v23 = objc_msgSend_timerLabel(self, v21, v22);
  v26 = objc_msgSend_copy(v23, v24, v25);
  objc_msgSend_setTimerLabel_(v4, v27, v26);

  v30 = objc_msgSend_timerID(self, v28, v29);
  objc_msgSend_setTimerID_(v4, v31, v30);

  v34 = objc_msgSend_editingTimer(self, v32, v33);
  objc_msgSend_setEditingTimer_(v4, v35, v34);

  return v4;
}

@end