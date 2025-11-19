@interface ADVisualDepthKeyframeInput
- (ADVisualDepthKeyframeInput)init;
- (BOOL)removeKeyframeWithUUID:(id)a3;
- (void)clear;
@end

@implementation ADVisualDepthKeyframeInput

- (void)clear
{
  [(NSMutableArray *)self->_MutableKeyframes removeAllObjects];
  metricDepth = self->_metricDepth;
  self->_metricDepth = 0;
}

- (BOOL)removeKeyframeWithUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  metricDepth = self->_MutableKeyframes;
  v6 = [(NSMutableArray *)metricDepth countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(metricDepth);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          [(NSMutableArray *)self->_MutableKeyframes removeObject:v9];
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)metricDepth countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(ADVisualDepthBuffer *)self->_metricDepth uuid];
  v13 = [v12 isEqual:v4];

  if (v13)
  {
    metricDepth = self->_metricDepth;
    self->_metricDepth = 0;
LABEL_12:

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (ADVisualDepthKeyframeInput)init
{
  v7.receiver = self;
  v7.super_class = ADVisualDepthKeyframeInput;
  v2 = [(ADVisualDepthKeyframeInput *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    MutableKeyframes = v2->_MutableKeyframes;
    v2->_MutableKeyframes = v3;

    metricDepth = v2->_metricDepth;
    v2->_metricDepth = 0;
  }

  return v2;
}

@end