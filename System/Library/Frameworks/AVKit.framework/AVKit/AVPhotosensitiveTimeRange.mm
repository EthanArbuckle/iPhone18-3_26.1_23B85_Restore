@interface AVPhotosensitiveTimeRange
+ (id)timeRangesFromMetadata:(id)metadata initialDate:(id)date;
- (AVPhotosensitiveTimeRange)init;
- (AVPhotosensitiveTimeRange)initWithCoder:(id)coder;
- (AVPhotosensitiveTimeRange)initWithTimeRange:(id *)range risk:(double)risk;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (AVPhotosensitiveTimeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRange"];
  v6 = v5;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (v5)
  {
    [v5 CMTimeRangeValue];
  }

  [coderCopy decodeDoubleForKey:@"risk"];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v7 = [(AVPhotosensitiveTimeRange *)self initWithTimeRange:v9 risk:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  risk = self->_risk;
  coderCopy = coder;
  [coderCopy encodeDouble:@"risk" forKey:risk];
  v6 = *&self->_timeRange.start.epoch;
  v8[0] = *&self->_timeRange.start.value;
  v8[1] = v6;
  v8[2] = *&self->_timeRange.duration.timescale;
  v7 = [MEMORY[0x1E696B098] valueWithCMTimeRange:v8];
  [coderCopy encodeObject:v7 forKey:@"timeRange"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (AVPhotosensitiveTimeRange)initWithTimeRange:(id *)range risk:(double)risk
{
  v9.receiver = self;
  v9.super_class = AVPhotosensitiveTimeRange;
  result = [(AVPhotosensitiveTimeRange *)&v9 init];
  v8 = *&range->var0.var3;
  v7 = *&range->var1.var1;
  *&result->_timeRange.start.value = *&range->var0.var0;
  *&result->_timeRange.start.epoch = v8;
  *&result->_timeRange.duration.timescale = v7;
  result->_risk = risk;
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

+ (id)timeRangesFromMetadata:(id)metadata initialDate:(id)date
{
  v58 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dateCopy = date;
  if ([metadataCopy count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(metadataCopy, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v35 = metadataCopy;
    obj = metadataCopy;
    v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      v36 = *v53;
      v37 = dateCopy;
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
          startDate = [v11 startDate];
          endDate = [v11 endDate];
          [startDate timeIntervalSinceDate:dateCopy];
          if (v14 < 0.0)
          {
            v15 = dateCopy;

            startDate = v15;
          }

          [endDate timeIntervalSinceDate:dateCopy];
          if (v16 < 0.0)
          {
            v17 = dateCopy;

            endDate = v17;
          }

          if (([startDate isEqualToDate:endDate] & 1) == 0)
          {
            memset(&v51, 0, sizeof(v51));
            [startDate timeIntervalSinceDate:dateCopy];
            CMTimeMakeWithSeconds(&v51, v18, 1000);
            memset(&v50, 0, sizeof(v50));
            v42 = endDate;
            [endDate timeIntervalSinceDate:dateCopy];
            CMTimeMakeWithSeconds(&v50, v19, 1000);
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            items = [v11 items];
            v21 = [items countByEnumeratingWithState:&v46 objects:v56 count:16];
            v22 = 0.0;
            if (v21)
            {
              v23 = v21;
              v41 = startDate;
              v24 = *v47;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v47 != v24)
                  {
                    objc_enumerationMutation(items);
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
                      numberValue = [v26 numberValue];
                      [numberValue doubleValue];
                      v22 = v31;

                      goto LABEL_23;
                    }
                  }

                  else
                  {
                  }
                }

                v23 = [items countByEnumeratingWithState:&v46 objects:v56 count:16];
              }

              while (v23);
LABEL_23:
              v9 = v36;
              dateCopy = v37;
              v8 = v38;
              startDate = v41;
            }

            v32 = [AVPhotosensitiveTimeRange alloc];
            lhs.start = v50;
            rhs = v51;
            CMTimeSubtract(&duration, &lhs.start, &rhs);
            rhs = v51;
            CMTimeRangeMake(&lhs, &rhs, &duration);
            v33 = [(AVPhotosensitiveTimeRange *)v32 initWithTimeRange:&lhs risk:v22 / 100.0];
            [v39 addObject:v33];

            endDate = v42;
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v8);
    }

    metadataCopy = v35;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

@end