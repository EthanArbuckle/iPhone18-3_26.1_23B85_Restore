@interface NavSignLaneGuidanceInfo
+ (_NSRange)highlightedLaneRangeForLanes:(id)a3;
+ (id)_createFakeLanes;
+ (id)fakeInfoForManeuver:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (NavSignLaneGuidanceInfo)initWithGuidanceLaneInfo:(id)a3;
- (NavSignLaneGuidanceInfo)initWithLaneInfoId:(id)a3 lanes:(id)a4 forManeuver:(BOOL)a5 midStepTitles:(id)a6 details:(id)a7;
- (_NSRange)highlightedLaneRange;
- (id)description;
- (id)highlightedLanes;
@end

@implementation NavSignLaneGuidanceInfo

- (id)highlightedLanes
{
  lanes = self->_lanes;
  v4 = [(NavSignLaneGuidanceInfo *)self highlightedLaneRange];

  return [(NSArray *)lanes subarrayWithRange:v4, v3];
}

- (_NSRange)highlightedLaneRange
{
  v3 = objc_opt_class();
  v4 = [(NavSignLaneGuidanceInfo *)self lanes];
  v5 = [v3 highlightedLaneRangeForLanes:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)description
{
  v3 = [(NavSignLaneGuidanceInfo *)self laneInfoId];
  v4 = [(NavSignLaneGuidanceInfo *)self lanes];
  v5 = [v4 count];
  v6 = [(NavSignLaneGuidanceInfo *)self isForManeuver];
  v7 = [(NavSignLaneGuidanceInfo *)self textAlternatives];
  if ([v7 count])
  {
    v8 = [(NavSignLaneGuidanceInfo *)self textAlternatives];
    v9 = [NSString stringWithFormat:@"laneInfoID: [%@] %d lanes (forManeuver:%d) %@", v3, v5, v6, v8];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"laneInfoID: [%@] %d lanes (forManeuver:%d) %@", v3, v5, v6, &stru_1016631F0];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NavSignLaneGuidanceInfo *)self laneInfoId];
    v7 = [v5 laneInfoId];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NavSignLaneGuidanceInfo)initWithLaneInfoId:(id)a3 lanes:(id)a4 forManeuver:(BOOL)a5 midStepTitles:(id)a6 details:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v21.receiver = self;
    v21.super_class = NavSignLaneGuidanceInfo;
    v17 = [(NavSignLaneGuidanceInfo *)&v21 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_laneInfoId, a3);
      objc_storeStrong(&v18->_lanes, a4);
      v18->_isForManeuver = a5;
      objc_storeStrong(&v18->_textAlternatives, a7);
      objc_storeStrong(&v18->_midStepTitles, a6);
    }

    self = v18;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NavSignLaneGuidanceInfo)initWithGuidanceLaneInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MKServerFormattedStringParameters alloc];
    v6 = [v4 distanceDetailLevel];
    v7 = [v4 variableOverrides];
    v8 = [v5 initWithInstructionsDistanceDetailLevel:v6 variableOverrides:v7];

    v9 = [v4 secondaryStrings];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v4 secondaryStrings];
      v12 = sub_100021DB0(v11, &stru_10165CB90);
    }

    else
    {
      v14 = [v4 instructions];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100F01F14;
      v25[3] = &unk_10165CBB8;
      v26 = v8;
      v12 = sub_100021DB0(v14, v25);
    }

    v15 = [v4 primaryStrings];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [v4 primaryStrings];
      v18 = sub_100021DB0(v17, &stru_10165CBD8);
    }

    else
    {
      v19 = [v4 titles];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100F01F7C;
      v23[3] = &unk_10165CBB8;
      v24 = v8;
      v18 = sub_100021DB0(v19, v23);

      v17 = v24;
    }

    v20 = [v4 uniqueID];
    v21 = [v4 lanes];
    self = -[NavSignLaneGuidanceInfo initWithLaneInfoId:lanes:forManeuver:midStepTitles:details:](self, "initWithLaneInfoId:lanes:forManeuver:midStepTitles:details:", v20, v21, [v4 isForManeuver], v18, v12);

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (_NSRange)highlightedLaneRangeForLanes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v5 = +[NSMutableArray array];
    if ([v3 count])
    {
      v6 = 0;
      do
      {
        v7 = [v3 objectAtIndexedSubscript:v6];
        v8 = v4;
        if (([v7 isPreferredLaneForManeuver] & 1) != 0 || (v8 = v5, objc_msgSend(v7, "isLaneForManeuver")))
        {
          v9 = [NSNumber numberWithUnsignedInteger:v6];
          [v8 addObject:v9];
        }

        ++v6;
      }

      while (v6 < [v3 count]);
    }

    v10 = [v4 count];
    v11 = v4;
    if (!v10)
    {
      if ([v5 count])
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }
    }

    v12 = v11;
    if ([v12 count])
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 unsignedIntegerValue];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ([v12 count])
    {
      v16 = [v12 lastObject];
      v17 = [v16 unsignedIntegerValue];
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v18 = v14 != 0x7FFFFFFFFFFFFFFFLL;
    v19 = v17 != 0x7FFFFFFFFFFFFFFFLL;
    if (v18 && v19)
    {
      v15 = v17 - v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    if (!v18 || !v19)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v14;
  v21 = v15;
  result.length = v21;
  result.location = v20;
  return result;
}

+ (id)_createFakeLanes
{
  v2 = arc4random_uniform(9u);
  v3 = v2 + 2;
  v4 = arc4random_uniform(v2 + 2);
  v5 = v4;
  v6 = arc4random_uniform(v3 - v4 + 1);
  v7 = v6 + v4;
  v8 = [NSMutableArray arrayWithCapacity:v3];
  v9 = 0;
  do
  {
    if (v9 < v5 || v9 > v7)
    {
      v10 = +[GEOComposedRouteLaneInfo _debug_straightLane];
    }

    else
    {
      v10 = [GEOComposedRouteLaneInfo _debug_laneWithDirections:&off_1016EDB20 good:1 preferred:v6 == 0];
    }

    v11 = v10;
    [v8 addObject:v10];

    ++v9;
  }

  while (v3 != v9);

  return v8;
}

+ (id)fakeInfoForManeuver:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSUUID UUID];
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [@"Continue straight [DEBUG]" mkServerFormattedString];
    v11 = v7;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
  }

  v8 = [a1 _createFakeLanes];
  v9 = [[NavSignLaneGuidanceInfo alloc] initWithLaneInfoId:v5 lanes:v8 forManeuver:v3 midStepTitles:0 details:v6];

  return v9;
}

@end