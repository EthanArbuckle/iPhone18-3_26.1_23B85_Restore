@interface STKFrameTimeCalculator
+ (id)createFramesFromImages:(id)a3 durations:(id)a4;
- (STKFrameTimeCalculator)initWithImages:(id)a3 durations:(id)a4;
- (id)imageForDate:(id)a3 playbackStartDate:(id)a4;
@end

@implementation STKFrameTimeCalculator

- (STKFrameTimeCalculator)initWithImages:(id)a3 durations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == [v7 count])
  {
    v16.receiver = self;
    v16.super_class = STKFrameTimeCalculator;
    v9 = [(STKFrameTimeCalculator *)&v16 init];
    if (v9)
    {
      v10 = [objc_opt_class() createFramesFromImages:v6 durations:v7];
      frames = v9->_frames;
      v9->_frames = v10;

      v12 = [(NSArray *)v9->_frames lastObject];
      [v12 end];
      v9->_duration = v13;

      v9->_lastFrameIndex = -1;
    }

    self = v9;
    v14 = self;
  }

  else
  {
    [MEMORY[0x1E69A8CE0] handleFailedAssertWithCondition:"__objc_no" functionName:"-[STKFrameTimeCalculator initWithImages:durations:]" simulateCrash:0 showAlert:0 format:{@"frame count and duration count do not match, returning nil"}];
    v14 = 0;
  }

  return v14;
}

+ (id)createFramesFromImages:(id)a3 durations:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__STKFrameTimeCalculator_createFramesFromImages_durations___block_invoke;
  v10[3] = &unk_1E751A4A0;
  v7 = v6;
  v11 = v7;
  v12 = v13;
  v8 = [v5 itk_map:v10];

  _Block_object_dispose(v13, 8);

  return v8;
}

SKIFrame *__59__STKFrameTimeCalculator_createFramesFromImages_durations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  [v7 doubleValue];
  v9 = v8;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9 + v11;
  v12 = [[SKIFrame alloc] initWithStart:v6 duration:v11 image:v9];

  return v12;
}

- (id)imageForDate:(id)a3 playbackStartDate:(id)a4
{
  [a3 timeIntervalSinceDate:a4];
  v6 = v5;
  [(STKFrameTimeCalculator *)self duration];
  v8 = fmod(v6, v7);
  v9 = [(STKFrameTimeCalculator *)self frames];
  if ([(STKFrameTimeCalculator *)self lastFrameIndex]< 0)
  {
    goto LABEL_9;
  }

  v10 = [v9 objectAtIndexedSubscript:{-[STKFrameTimeCalculator lastFrameIndex](self, "lastFrameIndex")}];
  if ([v10 comparisonForTimeInterval:v8])
  {
    v11 = [(STKFrameTimeCalculator *)self lastFrameIndex]+ 1;
    v12 = v11 % [v9 count];
    v13 = [v9 objectAtIndexedSubscript:v12];
    if ([v13 comparisonForTimeInterval:v8])
    {
      v14 = 0;
    }

    else
    {
      [(STKFrameTimeCalculator *)self setLastFrameIndex:v12];
      v14 = [v13 image];
    }
  }

  else
  {
    v14 = [v10 image];
  }

  if (!v14)
  {
LABEL_9:
    v15 = 0;
    v16 = [v9 count] - 1;
    while (1)
    {
      v17 = v15 + (v16 - v15) / 2;
      if (v17 < 0 || v17 >= [v9 count])
      {
        break;
      }

      v18 = [v9 objectAtIndexedSubscript:v15 + (v16 - v15) / 2];
      v19 = [v18 comparisonForTimeInterval:v8];
      if (v19 == -1)
      {
        v14 = 0;
        v15 = v17 + 1;
      }

      else if (v19 == 1)
      {
        v14 = 0;
        v16 = v17 - 1;
      }

      else if (v19)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v18 image];
        [(STKFrameTimeCalculator *)self setLastFrameIndex:v15 + (v16 - v15) / 2];
      }

      if (v14)
      {
        goto LABEL_22;
      }
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

@end