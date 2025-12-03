@interface STKFrameTimeCalculator
+ (id)createFramesFromImages:(id)images durations:(id)durations;
- (STKFrameTimeCalculator)initWithImages:(id)images durations:(id)durations;
- (id)imageForDate:(id)date playbackStartDate:(id)startDate;
@end

@implementation STKFrameTimeCalculator

- (STKFrameTimeCalculator)initWithImages:(id)images durations:(id)durations
{
  imagesCopy = images;
  durationsCopy = durations;
  v8 = [imagesCopy count];
  if (v8 == [durationsCopy count])
  {
    v16.receiver = self;
    v16.super_class = STKFrameTimeCalculator;
    v9 = [(STKFrameTimeCalculator *)&v16 init];
    if (v9)
    {
      v10 = [objc_opt_class() createFramesFromImages:imagesCopy durations:durationsCopy];
      frames = v9->_frames;
      v9->_frames = v10;

      lastObject = [(NSArray *)v9->_frames lastObject];
      [lastObject end];
      v9->_duration = v13;

      v9->_lastFrameIndex = -1;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E69A8CE0] handleFailedAssertWithCondition:"__objc_no" functionName:"-[STKFrameTimeCalculator initWithImages:durations:]" simulateCrash:0 showAlert:0 format:{@"frame count and duration count do not match, returning nil"}];
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)createFramesFromImages:(id)images durations:(id)durations
{
  imagesCopy = images;
  durationsCopy = durations;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__STKFrameTimeCalculator_createFramesFromImages_durations___block_invoke;
  v10[3] = &unk_1E751A4A0;
  v7 = durationsCopy;
  v11 = v7;
  v12 = v13;
  v8 = [imagesCopy itk_map:v10];

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

- (id)imageForDate:(id)date playbackStartDate:(id)startDate
{
  [date timeIntervalSinceDate:startDate];
  v6 = v5;
  [(STKFrameTimeCalculator *)self duration];
  v8 = fmod(v6, v7);
  frames = [(STKFrameTimeCalculator *)self frames];
  if ([(STKFrameTimeCalculator *)self lastFrameIndex]< 0)
  {
    goto LABEL_9;
  }

  v10 = [frames objectAtIndexedSubscript:{-[STKFrameTimeCalculator lastFrameIndex](self, "lastFrameIndex")}];
  if ([v10 comparisonForTimeInterval:v8])
  {
    v11 = [(STKFrameTimeCalculator *)self lastFrameIndex]+ 1;
    v12 = v11 % [frames count];
    v13 = [frames objectAtIndexedSubscript:v12];
    if ([v13 comparisonForTimeInterval:v8])
    {
      image = 0;
    }

    else
    {
      [(STKFrameTimeCalculator *)self setLastFrameIndex:v12];
      image = [v13 image];
    }
  }

  else
  {
    image = [v10 image];
  }

  if (!image)
  {
LABEL_9:
    v15 = 0;
    v16 = [frames count] - 1;
    while (1)
    {
      v17 = v15 + (v16 - v15) / 2;
      if (v17 < 0 || v17 >= [frames count])
      {
        break;
      }

      v18 = [frames objectAtIndexedSubscript:v15 + (v16 - v15) / 2];
      v19 = [v18 comparisonForTimeInterval:v8];
      if (v19 == -1)
      {
        image = 0;
        v15 = v17 + 1;
      }

      else if (v19 == 1)
      {
        image = 0;
        v16 = v17 - 1;
      }

      else if (v19)
      {
        image = 0;
      }

      else
      {
        image = [v18 image];
        [(STKFrameTimeCalculator *)self setLastFrameIndex:v15 + (v16 - v15) / 2];
      }

      if (image)
      {
        goto LABEL_22;
      }
    }

    image = 0;
  }

LABEL_22:

  return image;
}

@end