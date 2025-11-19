@interface AVPhotosensitiveTimeRange
+ (id)timeRangesFromMetadata:(id)a3 initialDate:(id)a4;
- (AVPhotosensitiveTimeRange)init;
- (AVPhotosensitiveTimeRange)initWithCoder:(id)a3;
- (AVPhotosensitiveTimeRange)initWithTimeRange:(id *)a3 risk:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVPhotosensitiveTimeRange

- (id)description
{
  v3 = *&self->_timeRange.start.epoch;
  *&range.start.value = *&self->_timeRange.start.value;
  *&range.start.epoch = v3;
  *&range.duration.timescale = *&self->_timeRange.duration.timescale;
  v4 = CMTimeRangeCopyDescription(0, &range);
  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AVPhotosensitiveTimeRange;
  v6 = [(AVPhotosensitiveTimeRange *)&v10 description];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_risk];
  v8 = [v5 stringWithFormat:@"%@ timeRange: %@, risk: %@", v6, v4, v7];

  return v8;
}

- (AVPhotosensitiveTimeRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeRange"];
  v6 = v5;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (v5)
  {
    [v5 CMTimeRangeValue];
  }

  [v4 decodeDoubleForKey:@"risk"];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v7 = [(AVPhotosensitiveTimeRange *)self initWithTimeRange:v9 risk:?];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  risk = self->_risk;
  v5 = a3;
  [v5 encodeDouble:@"risk" forKey:risk];
  v6 = *&self->_timeRange.start.epoch;
  v8[0] = *&self->_timeRange.start.value;
  v8[1] = v6;
  v8[2] = *&self->_timeRange.duration.timescale;
  v7 = [MEMORY[0x1E696B098] valueWithCMTimeRange:v8];
  [v5 encodeObject:v7 forKey:@"timeRange"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[AVPhotosensitiveTimeRange allocWithZone:?]];
  v5 = *&self->_timeRange.start.epoch;
  v6 = *&self->_timeRange.duration.timescale;
  *(result + 8) = *&self->_timeRange.start.value;
  *(result + 40) = v6;
  *(result + 24) = v5;
  *(result + 7) = *&self->_risk;
  return result;
}

- (AVPhotosensitiveTimeRange)initWithTimeRange:(id *)a3 risk:(double)a4
{
  v9.receiver = self;
  v9.super_class = AVPhotosensitiveTimeRange;
  result = [(AVPhotosensitiveTimeRange *)&v9 init];
  v8 = *&a3->var0.var3;
  v7 = *&a3->var1.var1;
  *&result->_timeRange.start.value = *&a3->var0.var0;
  *&result->_timeRange.start.epoch = v8;
  *&result->_timeRange.duration.timescale = v7;
  result->_risk = a4;
  return result;
}

- (AVPhotosensitiveTimeRange)init
{
  v2 = *(MEMORY[0x1E6960CA8] + 16);
  v4[0] = *MEMORY[0x1E6960CA8];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E6960CA8] + 32);
  return [(AVPhotosensitiveTimeRange *)self initWithTimeRange:v4 risk:0.0];
}

+ (id)timeRangesFromMetadata:(id)a3 initialDate:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v35 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      v36 = *v53;
      v37 = v6;
      do
      {
        v10 = 0;
        v38 = v8;
        do
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v52 + 1) + 8 * v10);
          v12 = [v11 startDate];
          v13 = [v11 endDate];
          [v12 timeIntervalSinceDate:v6];
          if (v14 < 0.0)
          {
            v15 = v6;

            v12 = v15;
          }

          [v13 timeIntervalSinceDate:v6];
          if (v16 < 0.0)
          {
            v17 = v6;

            v13 = v17;
          }

          if (([v12 isEqualToDate:v13] & 1) == 0)
          {
            memset(&v51, 0, sizeof(v51));
            [v12 timeIntervalSinceDate:v6];
            CMTimeMakeWithSeconds(&v51, v18, 1000);
            memset(&v50, 0, sizeof(v50));
            v42 = v13;
            [v13 timeIntervalSinceDate:v6];
            CMTimeMakeWithSeconds(&v50, v19, 1000);
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v20 = [v11 items];
            v21 = [v20 countByEnumeratingWithState:&v46 objects:v56 count:16];
            v22 = 0.0;
            if (v21)
            {
              v23 = v21;
              v41 = v12;
              v24 = *v47;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v47 != v24)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v26 = *(*(&v46 + 1) + 8 * i);
                  v27 = [v26 key];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = [v26 key];
                    v29 = [v28 isEqualToString:@"X-RISK-LEVEL"];

                    if (v29)
                    {
                      v30 = [v26 numberValue];
                      [v30 doubleValue];
                      v22 = v31;

                      goto LABEL_23;
                    }
                  }

                  else
                  {
                  }
                }

                v23 = [v20 countByEnumeratingWithState:&v46 objects:v56 count:16];
              }

              while (v23);
LABEL_23:
              v9 = v36;
              v6 = v37;
              v8 = v38;
              v12 = v41;
            }

            v32 = [AVPhotosensitiveTimeRange alloc];
            lhs.start = v50;
            rhs = v51;
            CMTimeSubtract(&duration, &lhs.start, &rhs);
            rhs = v51;
            CMTimeRangeMake(&lhs, &rhs, &duration);
            v33 = [(AVPhotosensitiveTimeRange *)v32 initWithTimeRange:&lhs risk:v22 / 100.0];
            [v39 addObject:v33];

            v13 = v42;
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v8);
    }

    v5 = v35;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

@end