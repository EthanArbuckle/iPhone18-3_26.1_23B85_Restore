@interface CMViewObstructedStateEvent
- (id)description;
- (void)dealloc;
@end

@implementation CMViewObstructedStateEvent

- (id)description
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"[");
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  meanProbabilities = self->_meanProbabilities;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(meanProbabilities, v5, &v23, v27, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(meanProbabilities);
        }

        objc_msgSend_floatValue(*(*(&v23 + 1) + 8 * i), v7, v8);
        v3 = objc_msgSend_stringByAppendingFormat_(v3, v13, @"%f,", v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(meanProbabilities, v7, &v23, v27, 16);
    }

    while (v9);
  }

  v14 = objc_msgSend_length(v3, v7, v8);
  v16 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v3, v15, v14 - 1, 1, @"]");
  v17 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  result = objc_msgSend_stringWithFormat_(v17, v20, @"%@ shouldSuppress=%u,CurrentState=%u,Orientation=%@,MotionType=%@,Lux=%f,PocketProbability=%f,MeanProbabilities=%@", v19, self->_shouldSuppress, self->_currentState, self->_orientation, self->_motionType, self->_lux, self->_pocketProbability, v16);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMViewObstructedStateEvent;
  [(CMViewObstructedStateEvent *)&v3 dealloc];
}

@end