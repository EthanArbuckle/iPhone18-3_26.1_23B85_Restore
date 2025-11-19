@interface CarClusterUpdateLaneGuidanceLaneInfo
+ (id)_enumProperties;
+ (id)_integersKeyed;
+ (id)laneGuidanceLaneInfoUpdateWithComposedRouteLaneInfos:(id)a3;
- (CarClusterUpdateLaneGuidanceLaneInfo)initWithComposedRouteLaneInfo:(id)a3 atIndex:(unint64_t)a4 highlightFirstAngle:(BOOL)a5;
- (double)_angleFromLaneDirection:(int)a3;
@end

@implementation CarClusterUpdateLaneGuidanceLaneInfo

- (double)_angleFromLaneDirection:(int)a3
{
  result = 0.0;
  if (a3 > 31)
  {
    if (a3 > 127)
    {
      if (a3 == 256)
      {
        return 180.0;
      }

      else if (a3 == 128)
      {
        return -45.0;
      }
    }

    else if (a3 == 32)
    {
      return -135.0;
    }

    else if (a3 == 64)
    {
      return -90.0;
    }
  }

  else if (a3 > 7)
  {
    if (a3 == 8)
    {
      return 135.0;
    }

    else if (a3 == 16)
    {
      return -180.0;
    }
  }

  else if (a3 == 2)
  {
    return 45.0;
  }

  else if (a3 == 4)
  {
    return 90.0;
  }

  return result;
}

- (CarClusterUpdateLaneGuidanceLaneInfo)initWithComposedRouteLaneInfo:(id)a3 atIndex:(unint64_t)a4 highlightFirstAngle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v37.receiver = self;
  v37.super_class = CarClusterUpdateLaneGuidanceLaneInfo;
  v9 = [(CarClusterUpdateLaneGuidanceLaneInfo *)&v37 init];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  index = v9->_index;
  v9->_index = v11;

  v9->_status = 0;
  if ([v8 isPreferredLaneForManeuver])
  {
    v13 = 2;
LABEL_6:
    v9->_status = v13;
    goto LABEL_7;
  }

  if ([v8 isLaneForManeuver])
  {
    v13 = 1;
    goto LABEL_6;
  }

LABEL_7:
  v32 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v8 directions];
  v14 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      v17 = 0;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v33 + 1) + 8 * v17);
        -[CarClusterUpdateLaneGuidanceLaneInfo _angleFromLaneDirection:](v9, "_angleFromLaneDirection:", [v18 direction]);
        v20 = v19;
        if (v5 && ([v8 directions], v21 = v5, v22 = v10, v23 = v8, v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "firstObject"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v8 = v23, v10 = v22, v5 = v21, v18 == v25))
        {
          v27 = [v10[445] numberWithDouble:v20];
          angleHighlight = v9->_angleHighlight;
          v9->_angleHighlight = v27;
        }

        else
        {
          angleHighlight = [v10[445] numberWithDouble:v20];
          [(NSArray *)v32 addObject:angleHighlight];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      v15 = v28;
    }

    while (v28);
  }

  angle = v9->_angle;
  v9->_angle = v32;

LABEL_20:
  return v9;
}

+ (id)_integersKeyed
{
  if (qword_10195F9F0 != -1)
  {
    dispatch_once(&qword_10195F9F0, &stru_101660700);
  }

  v3 = qword_10195F9F8;

  return v3;
}

+ (id)_enumProperties
{
  if (qword_10195F9E0 != -1)
  {
    dispatch_once(&qword_10195F9E0, &stru_1016606E0);
  }

  v3 = qword_10195F9E8;

  return v3;
}

+ (id)laneGuidanceLaneInfoUpdateWithComposedRouteLaneInfos:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) isPreferredLaneForManeuver])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FDB228;
  v9[3] = &unk_1016606C0;
  v7 = v11 = v4;
  v10 = v7;
  [v3 enumerateObjectsUsingBlock:v9];

  return v7;
}

@end