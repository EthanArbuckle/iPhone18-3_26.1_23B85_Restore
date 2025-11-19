@interface ARCoachingHeuristicHasActiveFrames
- (void)updateWithFrame:(id)a3 cache:(id)a4;
@end

@implementation ARCoachingHeuristicHasActiveFrames

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  [a3 timestamp];
  v6 = v5;
  if (self->_frameCount && v5 - self->_lastFrameTimestamp > 1.0)
  {
    v7 = _ARLogCoaching_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *v21 = 138543618;
      *&v21[4] = v9;
      *&v21[12] = 2048;
      *&v21[14] = self;
      _os_log_impl(&dword_23D3AE000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Active frame updates are too old, resetting frame count", v21, 0x16u);
    }

    self->_frameCount = 0;
  }

  self->_lastFrameTimestamp = v6;
  v10 = [(ARCoachingHeuristic *)self satisfied];
  frameCount = self->_frameCount;
  self->_frameCount = frameCount + 1;
  if (!v10 && frameCount >= 4)
  {
    v12 = _ARLogCoaching_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = self->_frameCount;
      *v21 = 138543874;
      *&v21[4] = v14;
      *&v21[12] = 2048;
      *&v21[14] = self;
      *&v21[22] = 1024;
      LODWORD(v22) = v15;
      v16 = "%{public}@ <%p>: Frames are considered active after seeing %d recent frames";
      v17 = v12;
      v18 = 28;
LABEL_14:
      _os_log_impl(&dword_23D3AE000, v17, OS_LOG_TYPE_INFO, v16, v21, v18);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v10 && frameCount <= 3)
  {
    v12 = _ARLogCoaching_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v14 = NSStringFromClass(v19);
      *v21 = 138543618;
      *&v21[4] = v14;
      *&v21[12] = 2048;
      *&v21[14] = self;
      v16 = "%{public}@ <%p>: Frames are no longer considered active";
      v17 = v12;
      v18 = 22;
      goto LABEL_14;
    }

LABEL_15:
  }

  [(ARCoachingHeuristic *)self setSatisfied:frameCount > 3, *v21, *&v21[16], v22];
  v20 = *MEMORY[0x277D85DE8];
}

@end