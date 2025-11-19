@interface CarCardTestConfig
- (CGSize)size;
- (CarCardTestConfig)initWithNotification:(id)a3;
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
  v3 = [(CarCardTestConfig *)self stackAlignment];
  if (v3 > 5)
  {
    v4 = &stru_1016631F0;
  }

  else
  {
    v4 = *(&off_10165DD58 + v3);
  }

  v58 = v4;
  v57 = objc_opt_class();
  v5 = [(CarCardTestConfig *)self layout];
  if ([v5 edgePosition] && (v6 = objc_msgSend(v5, "edgePosition"), (v6 - 1) <= 7))
  {
    v7 = *(&off_10165DD88 + (v6 - 1));
  }

  else
  {
    v7 = @"None";
  }

  v55 = v7;
  if ([v5 cornerPosition] && (v8 = objc_msgSend(v5, "cornerPosition"), (v8 - 1) <= 7))
  {
    v9 = *(&off_10165DDC8 + (v8 - 1));
  }

  else
  {
    v9 = @"none";
  }

  v54 = v9;
  v10 = [v5 primaryAxis];
  v11 = @"Vertical";
  if (!v10)
  {
    v11 = @"Horizontal";
  }

  v53 = v11;
  v12 = objc_opt_new();
  if ([v5 pinnedEdges])
  {
    [v12 addObject:@"Top"];
  }

  if (([v5 pinnedEdges] & 2) != 0)
  {
    [v12 addObject:@"Left"];
  }

  if (([v5 pinnedEdges] & 4) != 0)
  {
    [v12 addObject:@"Bottom"];
  }

  if (([v5 pinnedEdges] & 8) != 0)
  {
    [v12 addObject:@"Right"];
  }

  v13 = [v12 componentsJoinedByString:{@", "}];
  v52 = [NSString stringWithFormat:@"[%@]", v13];

  v14 = [v5 primaryAxisFillMode];
  if (v14 > 3)
  {
    v15 = @".Unknown";
  }

  else
  {
    v15 = *(&off_10165DE08 + v14);
  }

  v50 = v15;
  v16 = [v5 secondaryAxisFillMode];
  if (v16 > 3)
  {
    v17 = @".Unknown";
  }

  else
  {
    v17 = *(&off_10165DE08 + v16);
  }

  v51 = v17;
  [v5 margins];
  v19 = v18;
  [v5 margins];
  v21 = v20;
  [v5 margins];
  v23 = v22;
  [v5 margins];
  v25 = [NSString stringWithFormat:@"(t:%.1f l:%.1f b:%.1f r:%.1f)", v19, v21, v23, v24];
  v26 = [v5 flipForRightHandDrive];
  v27 = @"NO";
  if (v26)
  {
    v27 = @"YES";
  }

  v28 = v27;
  v29 = objc_opt_new();
  if ([v5 edgesAffectingMapInsets])
  {
    [v29 addObject:@"Top"];
  }

  if (([v5 edgesAffectingMapInsets] & 2) != 0)
  {
    [v29 addObject:@"Left"];
  }

  if (([v5 edgesAffectingMapInsets] & 4) != 0)
  {
    [v29 addObject:@"Bottom"];
  }

  if (([v5 edgesAffectingMapInsets] & 8) != 0)
  {
    [v29 addObject:@"Right"];
  }

  v30 = [v29 componentsJoinedByString:{@", "}];
  v31 = [NSString stringWithFormat:@"[%@]", v30];

  [v5 primaryAxisFillModePriority];
  v33 = v32;
  [v5 secondaryAxisFillModePriority];
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
  v43 = [(CarCardTestConfig *)self stackCount];
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

  v48 = [NSString stringWithFormat:@"<%@: %p layout=%@ size=%@ grows=%@ compresses=%@ stackCount=%lu stackUseCardLayout=%@ stackAxis=%@ stackAlignment=%@ staysOnTop=%@>", v57, self, v56, v38, v40, v42, v43, v45, v46, v58, v47];

  return v48;
}

- (CarCardTestConfig)initWithNotification:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CarCardTestConfig;
  v5 = [(CarCardTestConfig *)&v28 init];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"Layout"];

    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"Size"];

    [(CarCardLayout *)v7 setEdgesAffectingMapInsets:15];
    layout = v5->_layout;
    v5->_layout = v7;

    [v9 CGSizeValue];
    v5->_size.width = v11;
    v5->_size.height = v12;
    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"StaysOnTop"];
    v5->_staysOnTop = [v14 BOOLValue];

    v15 = [v4 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"Grows"];
    v5->_grows = [v16 BOOLValue];

    v17 = [v4 userInfo];
    v18 = [v17 objectForKeyedSubscript:@"Compresses"];
    v5->_compresses = [v18 BOOLValue];

    v19 = [v4 userInfo];
    v20 = [v19 objectForKeyedSubscript:@"StackCount"];
    v5->_stackCount = [v20 unsignedIntegerValue];

    v21 = [v4 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"StackUseCardLayout"];
    v5->_stackUseCardLayout = [v22 BOOLValue];

    v23 = [v4 userInfo];
    v24 = [v23 objectForKeyedSubscript:@"StackAxis"];
    v5->_stackAxis = [v24 integerValue];

    v25 = [v4 userInfo];
    v26 = [v25 objectForKeyedSubscript:@"StackAlignment"];
    v5->_stackAlignment = [v26 integerValue];
  }

  return v5;
}

@end