@interface _AMMotionDetectionDataSample
+ (id)zeroMotionDataWithTimestamp:(double)a3;
- (id)description;
@end

@implementation _AMMotionDetectionDataSample

+ (id)zeroMotionDataWithTimestamp:(double)a3
{
  v4 = objc_alloc_init(_AMMotionDetectionDataSample);
  [(_AMMotionDetectionDataSample *)v4 setData:&unk_285177BE0];
  [(_AMMotionDetectionDataSample *)v4 setTimestampSeconds:a3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(NSArray *)self->_data count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(NSArray *)self->_data objectAtIndexedSubscript:v6];
      [v8 floatValue];
      v10 = [v7 stringWithFormat:@"%0.3f", v9];

      if (--v5)
      {
        v11 = @" %@,";
      }

      else
      {
        v11 = @" %@");
      }

      if (v6)
      {
        v12 = v11;
      }

      else
      {
        v12 = CFSTR("( %@,");
      }

      [v3 appendFormat:v12, v10];

      ++v6;
    }

    while (v5);
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p : t=%0.3fs data=%@>", objc_opt_class(), self, *&self->_timestampSeconds, v3];

  return v13;
}

@end