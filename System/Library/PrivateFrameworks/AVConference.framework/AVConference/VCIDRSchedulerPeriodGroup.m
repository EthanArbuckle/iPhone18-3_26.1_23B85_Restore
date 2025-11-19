@interface VCIDRSchedulerPeriodGroup
- (VCIDRSchedulerPeriodGroup)initWithPeriodCount:(unsigned int)a3 framesPerBasePeriod:(unsigned int)a4;
- (id)computeScheduleItemList;
- (void)computeStreamsIDRPosition;
- (void)dealloc;
@end

@implementation VCIDRSchedulerPeriodGroup

- (VCIDRSchedulerPeriodGroup)initWithPeriodCount:(unsigned int)a3 framesPerBasePeriod:(unsigned int)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCIDRSchedulerPeriodGroup;
  v6 = [(VCIDRSchedulerPeriodGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_basePeriodCount = a3;
    v6->_framesPerBasePeriod = a4;
    v6->_streams = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCIDRSchedulerPeriodGroup;
  [(VCIDRSchedulerPeriodGroup *)&v3 dealloc];
}

- (id)computeScheduleItemList
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_streams sortedArrayUsingSelector:sel_compareWeightFactor_];

  self->_schedulerItems = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{(objc_msgSend(v3, "count") + self->_basePeriodCount - 1) / self->_basePeriodCount}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (!v6)
        {
          v6 = objc_alloc_init(VCIDRSchedulerItem);
          [(NSMutableArray *)self->_schedulerItems addObject:v6];
        }

        [(VCIDRSchedulerItem *)v6 addStream:v9];
        if ([(NSArray *)[(VCIDRSchedulerItem *)v6 streams] count]== self->_basePeriodCount)
        {
          v6 = 0;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  return self->_schedulerItems;
}

- (void)computeStreamsIDRPosition
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_schedulerItems;
  v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v21)
  {
    v20 = *v40;
    v3 = 1;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * v4);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          v8 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v31 = v6;
              v32 = 2080;
              v33 = "[VCIDRSchedulerPeriodGroup computeStreamsIDRPosition]";
              v34 = 1024;
              v35 = 62;
              v36 = 2112;
              v37 = v5;
              _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Assign IDR slot for streams in item: %@", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v31 = v6;
            v32 = 2080;
            v33 = "[VCIDRSchedulerPeriodGroup computeStreamsIDRPosition]";
            v34 = 1024;
            v35 = 62;
            v36 = 2112;
            v37 = v5;
            _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Assign IDR slot for streams in item: %@", buf, 0x26u);
          }
        }

        v23 = v3;
        v22 = v4;
        if (v3)
        {
          v9 = 0;
        }

        else
        {
          v9 = self->_basePeriodCount - 1;
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = [v5 streams];
        v10 = [v24 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          if (v3)
          {
            v13 = 1;
          }

          else
          {
            v13 = -1;
          }

          do
          {
            v14 = 0;
            do
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v24);
              }

              v15 = *(*(&v26 + 1) + 8 * v14);
              [v15 setFramePosition:{objc_msgSend(v5, "framePosition") + self->_framesPerBasePeriod * v9}];
              [v15 setFramesPerIdrPeriod:self->_basePeriodCount * self->_framesPerBasePeriod];
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v16 = VRTraceErrorLogLevelToCSTR();
                v17 = *MEMORY[0x1E6986650];
                v18 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v31 = v16;
                    v32 = 2080;
                    v33 = "[VCIDRSchedulerPeriodGroup computeStreamsIDRPosition]";
                    v34 = 1024;
                    v35 = 67;
                    v36 = 2112;
                    v37 = v15;
                    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting position and period: %@", buf, 0x26u);
                  }
                }

                else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315906;
                  v31 = v16;
                  v32 = 2080;
                  v33 = "[VCIDRSchedulerPeriodGroup computeStreamsIDRPosition]";
                  v34 = 1024;
                  v35 = 67;
                  v36 = 2112;
                  v37 = v15;
                  _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setting position and period: %@", buf, 0x26u);
                }
              }

              v9 += v13;
              ++v14;
            }

            while (v11 != v14);
            v11 = [v24 countByEnumeratingWithState:&v26 objects:v25 count:16];
          }

          while (v11);
        }

        v3 = v23 ^ 1;
        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v21);
  }
}

@end