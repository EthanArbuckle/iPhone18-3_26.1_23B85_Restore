@interface MZUPPMetrics
- (id)metricsDictionary;
@end

@implementation MZUPPMetrics

- (id)metricsDictionary
{
  v28[0] = @"success";
  v3 = [NSNumber numberWithBool:[(MZUPPMetrics *)self success]];
  v29[0] = v3;
  v28[1] = @"synctaskfailingsubtask";
  v4 = [NSNumber numberWithUnsignedInteger:[(MZUPPMetrics *)self latestUPPSubtask]];
  v29[1] = v4;
  v28[2] = @"numlocalitems";
  v5 = [NSNumber numberWithInteger:[(MZUPPMetrics *)self numMetadataItemsFromDataSource]];
  v29[2] = v5;
  v28[3] = @"numremoteitems";
  v6 = [NSNumber numberWithInteger:[(MZUPPMetrics *)self numMetadataItemsFromKVSStorage]];
  v29[3] = v6;
  v28[4] = @"numitemstocommitlocally";
  v7 = [NSNumber numberWithInteger:[(MZUPPMetrics *)self numMetadataItemsToCommitToDataSource]];
  v29[4] = v7;
  v28[5] = @"numitemstocommitremotely";
  v8 = [NSNumber numberWithInteger:[(MZUPPMetrics *)self numMetadataItemsToCommitToKVSStorage]];
  v29[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:6];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  v11 = [(MZUPPMetrics *)self errorDomain];
  if (v11)
  {

LABEL_4:
    v12 = [(MZUPPMetrics *)self errorDomain];
    [v10 setObject:v12 forKey:@"errordomain"];

    v13 = [NSNumber numberWithInteger:[(MZUPPMetrics *)self errorCode]];
    [v10 setObject:v13 forKey:@"errorcode"];

    goto LABEL_5;
  }

  if ([(MZUPPMetrics *)self errorCode])
  {
    goto LABEL_4;
  }

LABEL_5:
  [(MZUPPMetrics *)self bagLookupStartTime];
  if (v14 != 0.0)
  {
    [(MZUPPMetrics *)self bagLookupEndTime];
    if (v15 != 0.0)
    {
      [(MZUPPMetrics *)self bagLookupEndTime];
      v17 = v16;
      [(MZUPPMetrics *)self bagLookupStartTime];
      v19 = [NSNumber numberWithDouble:v17 - v18];
      [v10 setObject:v19 forKey:@"bagloadduration"];
    }
  }

  [(MZUPPMetrics *)self syncTaskStartTime];
  if (v20 != 0.0)
  {
    [(MZUPPMetrics *)self syncTaskEndTime];
    if (v21 != 0.0)
    {
      [(MZUPPMetrics *)self syncTaskEndTime];
      v23 = v22;
      [(MZUPPMetrics *)self syncTaskStartTime];
      v25 = [NSNumber numberWithDouble:v23 - v24];
      [v10 setObject:v25 forKey:@"synctaskduration"];
    }
  }

  v26 = [v10 copy];

  return v26;
}

@end