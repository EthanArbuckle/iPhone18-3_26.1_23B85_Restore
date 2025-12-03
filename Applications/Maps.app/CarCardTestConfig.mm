@interface CarCardTestConfig
- (CGSize)size;
- (CarCardTestConfig)initWithNotification:(id)notification;
- (id)description;
@end

@implementation CarCardTestConfig

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  stackAlignment = [(CarCardTestConfig *)self stackAlignment];
  if (stackAlignment > 5)
  {
    v4 = &stru_1016631F0;
  }

  else
  {
    v4 = *(&off_10165DD58 + stackAlignment);
  }

  v58 = v4;
  v57 = objc_opt_class();
  layout = [(CarCardTestConfig *)self layout];
  if ([layout edgePosition] && (v6 = objc_msgSend(layout, "edgePosition"), (v6 - 1) <= 7))
  {
    v7 = *(&off_10165DD88 + (v6 - 1));
  }

  else
  {
    v7 = @"None";
  }

  v55 = v7;
  if ([layout cornerPosition] && (v8 = objc_msgSend(layout, "cornerPosition"), (v8 - 1) <= 7))
  {
    v9 = *(&off_10165DDC8 + (v8 - 1));
  }

  else
  {
    v9 = @"none";
  }

  v54 = v9;
  primaryAxis = [layout primaryAxis];
  v11 = @"Vertical";
  if (!primaryAxis)
  {
    v11 = @"Horizontal";
  }

  v53 = v11;
  v12 = objc_opt_new();
  if ([layout pinnedEdges])
  {
    [v12 addObject:@"Top"];
  }

  if (([layout pinnedEdges] & 2) != 0)
  {
    [v12 addObject:@"Left"];
  }

  if (([layout pinnedEdges] & 4) != 0)
  {
    [v12 addObject:@"Bottom"];
  }

  if (([layout pinnedEdges] & 8) != 0)
  {
    [v12 addObject:@"Right"];
  }

  v13 = [v12 componentsJoinedByString:{@", "}];
  v52 = [NSString stringWithFormat:@"[%@]", v13];

  primaryAxisFillMode = [layout primaryAxisFillMode];
  if (primaryAxisFillMode > 3)
  {
    v15 = @".Unknown";
  }

  else
  {
    v15 = *(&off_10165DE08 + primaryAxisFillMode);
  }

  v50 = v15;
  secondaryAxisFillMode = [layout secondaryAxisFillMode];
  if (secondaryAxisFillMode > 3)
  {
    v17 = @".Unknown";
  }

  else
  {
    v17 = *(&off_10165DE08 + secondaryAxisFillMode);
  }

  v51 = v17;
  [layout margins];
  v19 = v18;
  [layout margins];
  v21 = v20;
  [layout margins];
  v23 = v22;
  [layout margins];
  v25 = [NSString stringWithFormat:@"(t:%.1f l:%.1f b:%.1f r:%.1f)", v19, v21, v23, v24];
  flipForRightHandDrive = [layout flipForRightHandDrive];
  v27 = @"NO";
  if (flipForRightHandDrive)
  {
    v27 = @"YES";
  }

  v28 = v27;
  v29 = objc_opt_new();
  if ([layout edgesAffectingMapInsets])
  {
    [v29 addObject:@"Top"];
  }

  if (([layout edgesAffectingMapInsets] & 2) != 0)
  {
    [v29 addObject:@"Left"];
  }

  if (([layout edgesAffectingMapInsets] & 4) != 0)
  {
    [v29 addObject:@"Bottom"];
  }

  if (([layout edgesAffectingMapInsets] & 8) != 0)
  {
    [v29 addObject:@"Right"];
  }

  v30 = [v29 componentsJoinedByString:{@", "}];
  v31 = [NSString stringWithFormat:@"[%@]", v30];

  [layout primaryAxisFillModePriority];
  v33 = v32;
  [layout secondaryAxisFillModePriority];
  v56 = [NSString stringWithFormat:@"<CarCardLayout edgePosition=%@ cornerPosition=%@ primaryAxis=%@ pinnedEdges=%@ primaryAxisFillMode=%@, priority:%lu, secondaryAxisFillMode=%@, priority:%lu, margins=%@ flipForRightHandDrive=%@ edgesAffectingMapInsets=%@", v55, v54, v53, v52, v50, v33, v51, v34, v25, v28, v31];

  [(CarCardTestConfig *)self size];
  v36 = v35;
  [(CarCardTestConfig *)self size];
  v38 = [NSString stringWithFormat:@"(%.1fx %.1fy)", v36, v37];
  if ([(CarCardTestConfig *)self grows])
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v40 = v39;
  if ([(CarCardTestConfig *)self compresses])
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  v42 = v41;
  stackCount = [(CarCardTestConfig *)self stackCount];
  if ([(CarCardTestConfig *)self stackUseCardLayout])
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  v45 = v44;
  if ([(CarCardTestConfig *)self stackAxis])
  {
    v46 = @"Vertical";
  }

  else
  {
    v46 = @"Horizontal";
  }

  if ([(CarCardTestConfig *)self staysOnTop])
  {
    v47 = @"YES";
  }

  else
  {
    v47 = @"NO";
  }

  v48 = [NSString stringWithFormat:@"<%@: %p layout=%@ size=%@ grows=%@ compresses=%@ stackCount=%lu stackUseCardLayout=%@ stackAxis=%@ stackAlignment=%@ staysOnTop=%@>", v57, self, v56, v38, v40, v42, stackCount, v45, v46, v58, v47];

  return v48;
}

- (CarCardTestConfig)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v28.receiver = self;
  v28.super_class = CarCardTestConfig;
  v5 = [(CarCardTestConfig *)&v28 init];
  if (v5)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"Layout"];

    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:@"Size"];

    [(CarCardLayout *)v7 setEdgesAffectingMapInsets:15];
    layout = v5->_layout;
    v5->_layout = v7;

    [v9 CGSizeValue];
    v5->_size.width = v11;
    v5->_size.height = v12;
    userInfo3 = [notificationCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:@"StaysOnTop"];
    v5->_staysOnTop = [v14 BOOLValue];

    userInfo4 = [notificationCopy userInfo];
    v16 = [userInfo4 objectForKeyedSubscript:@"Grows"];
    v5->_grows = [v16 BOOLValue];

    userInfo5 = [notificationCopy userInfo];
    v18 = [userInfo5 objectForKeyedSubscript:@"Compresses"];
    v5->_compresses = [v18 BOOLValue];

    userInfo6 = [notificationCopy userInfo];
    v20 = [userInfo6 objectForKeyedSubscript:@"StackCount"];
    v5->_stackCount = [v20 unsignedIntegerValue];

    userInfo7 = [notificationCopy userInfo];
    v22 = [userInfo7 objectForKeyedSubscript:@"StackUseCardLayout"];
    v5->_stackUseCardLayout = [v22 BOOLValue];

    userInfo8 = [notificationCopy userInfo];
    v24 = [userInfo8 objectForKeyedSubscript:@"StackAxis"];
    v5->_stackAxis = [v24 integerValue];

    userInfo9 = [notificationCopy userInfo];
    v26 = [userInfo9 objectForKeyedSubscript:@"StackAlignment"];
    v5->_stackAlignment = [v26 integerValue];
  }

  return v5;
}

@end