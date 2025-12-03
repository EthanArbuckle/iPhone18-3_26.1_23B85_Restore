@interface ResultRefinementsAnalyticsManager
- (ResultRefinementsAnalyticsManager)initWithRefinementsFromWaypointEditor:(BOOL)editor;
- (void)logRefinementsEvent:(unint64_t)event fromSource:(unint64_t)source;
- (void)resultRefinementTappedWithKey:(id)key source:(unint64_t)source refinementType:(unint64_t)type isSelected:(BOOL)selected;
@end

@implementation ResultRefinementsAnalyticsManager

- (void)resultRefinementTappedWithKey:(id)key source:(unint64_t)source refinementType:(unint64_t)type isSelected:(BOOL)selected
{
  selectedCopy = selected;
  keyCopy = key;
  if (source == 2)
  {
    v11 = 176;
    v12 = 197;
    v10 = 22;
  }

  else if (source == 1)
  {
    v11 = 176;
    v12 = 197;
    v10 = 23;
  }

  else if (source)
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    if ([(ResultRefinementsAnalyticsManager *)self isFromWaypointEditor])
    {
      v10 = 58;
    }

    else
    {
      v10 = 21;
    }

    v11 = 190;
    v12 = 200;
  }

  if (selectedCopy)
  {
    v13 = 158;
  }

  else
  {
    v13 = 202;
  }

  if (selectedCopy)
  {
    v11 = v12;
  }

  if (type)
  {
    v11 = 0;
  }

  if (type == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = +[MKMapService sharedService];
  [v15 captureUserAction:v14 onTarget:v10 eventValue:keyCopy];
}

- (void)logRefinementsEvent:(unint64_t)event fromSource:(unint64_t)source
{
  if (source == 2)
  {
    v6 = 22;
  }

  else if (source == 1)
  {
    v6 = 23;
  }

  else if (source)
  {
    v6 = 0;
  }

  else if ([(ResultRefinementsAnalyticsManager *)self isFromWaypointEditor])
  {
    v6 = 58;
  }

  else
  {
    v6 = 21;
  }

  if (event == 3)
  {
    v7 = 157;
  }

  else
  {
    v7 = 0;
  }

  if (event == 2)
  {
    v8 = 155;
  }

  else
  {
    v8 = v7;
  }

  if (source == 1)
  {
    v9 = 186;
  }

  else
  {
    v9 = 205;
  }

  if (source == 1)
  {
    v10 = 168;
  }

  else
  {
    v10 = 167;
  }

  if (event != 1)
  {
    v10 = 0;
  }

  if (event)
  {
    v9 = v10;
  }

  if (event <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = +[MKMapService sharedService];
  [v12 captureUserAction:v11 onTarget:v6 eventValue:0];
}

- (ResultRefinementsAnalyticsManager)initWithRefinementsFromWaypointEditor:(BOOL)editor
{
  v5.receiver = self;
  v5.super_class = ResultRefinementsAnalyticsManager;
  result = [(ResultRefinementsAnalyticsManager *)&v5 init];
  if (result)
  {
    result->_isFromWaypointEditor = editor;
  }

  return result;
}

@end