@interface RTLocationOfInterestDataSource
+ (id)configureDateRangeString:(id)string dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle;
- (NSArray)recentRecords;
- (NSDateInterval)summaryInterval;
- (RTLocationOfInterestDataSource)initWithRoutineManager:(id)manager locationShifter:(id)shifter;
- (unint64_t)summaryRecordCount;
- (void)loadLocationsOfInterestWithHandler:(id)handler;
- (void)processLocationsOfInterest:(id)interest handler:(id)handler;
- (void)reset;
- (void)shiftLocationOfInterestCoordinates:(id)coordinates handler:(id)handler;
@end

@implementation RTLocationOfInterestDataSource

- (RTLocationOfInterestDataSource)initWithRoutineManager:(id)manager locationShifter:(id)shifter
{
  managerCopy = manager;
  shifterCopy = shifter;
  v9 = shifterCopy;
  if (!managerCopy)
  {
    v15 = sub_10DB8(&qword_21AA0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: routineManager";
LABEL_15:
    _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!shifterCopy)
  {
    v15 = sub_10DB8(&qword_21AA0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: locationShifter";
    goto LABEL_15;
  }

  v22.receiver = self;
  v22.super_class = RTLocationOfInterestDataSource;
  v10 = [(RTLocationOfInterestDataSource *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTLocationOfInterestDataSource *)v12 UTF8String];
    }

    else
    {
      v18 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v12];
      uTF8String = [v18 UTF8String];
    }

    v19 = dispatch_queue_create(uTF8String, v13);

    queue = v12->_queue;
    v12->_queue = v19;

    objc_storeStrong(&v12->_routineManager, manager);
    objc_storeStrong(&v12->_locationShifter, shifter);
  }

  self = v11;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (unint64_t)summaryRecordCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EF38;
  v5[3] = &unk_1D930;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDateInterval)summaryInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_F03C;
  v10 = sub_F04C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F054;
  v5[3] = &unk_1D930;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)recentRecords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_F03C;
  v10 = sub_F04C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F190;
  v5[3] = &unk_1D930;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)loadLocationsOfInterestWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_F2D8;
    v8[3] = &unk_1D9F8;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = sub_10DB8(&qword_21AA0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)processLocationsOfInterest:(id)interest handler:(id)handler
{
  interestCopy = interest;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([interestCopy count])
    {
      selfCopy = self;
      v49 = handlerCopy;
      v59 = objc_opt_new();
      v57 = objc_opt_new();
      v60 = [NSDate dateWithTimeIntervalSinceNow:-4838400.0];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v50 = interestCopy;
      obj = interestCopy;
      v54 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
      if (v54)
      {
        v53 = *v71;
        do
        {
          v8 = 0;
          do
          {
            if (*v71 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v55 = v8;
            v9 = *(*(&v70 + 1) + 8 * v8);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            visits = [v9 visits];
            v11 = [visits countByEnumeratingWithState:&v66 objects:v76 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v67;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v67 != v13)
                  {
                    objc_enumerationMutation(visits);
                  }

                  v15 = *(*(&v66 + 1) + 8 * i);
                  entryDate = [v15 entryDate];
                  v17 = [entryDate earlierDate:v60];
                  entryDate2 = [v15 entryDate];
                  v19 = [v17 isEqualToDate:entryDate2];

                  if ((v19 & 1) == 0)
                  {
                    [v59 addObject:v15];
                    identifier = [v15 identifier];
                    [v57 setObject:v9 forKeyedSubscript:identifier];
                  }
                }

                v12 = [visits countByEnumeratingWithState:&v66 objects:v76 count:16];
              }

              while (v12);
            }

            v8 = v55 + 1;
          }

          while ((v55 + 1) != v54);
          v54 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
        }

        while (v54);
      }

      v21 = [NSSortDescriptor sortDescriptorWithKey:@"entryDate" ascending:1];
      v75 = v21;
      v22 = [NSArray arrayWithObjects:&v75 count:1];
      v23 = v59;
      [v59 sortUsingDescriptors:v22];

      v24 = objc_opt_new();
      v25 = +[NSDate date];
      v26 = +[NSCalendar currentCalendar];
      v27 = [v26 components:28 fromDate:v25];
      v28 = [v26 dateFromComponents:v27];
      v29 = [NSDate dateWithTimeInterval:v28 sinceDate:-86400.0];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_FE2C;
      v61[3] = &unk_1DA20;
      v30 = v24;
      v62 = v30;
      v31 = v29;
      v63 = v31;
      v56 = v28;
      v64 = v56;
      v32 = v57;
      v65 = v32;
      [v59 enumerateObjectsWithOptions:2 usingBlock:v61];
      v33 = [v59 count];
      v34 = selfCopy;
      selfCopy->_summaryRecordCount = v33;
      if (v33)
      {
        v35 = [NSDateInterval alloc];
        firstObject = [v59 firstObject];
        entryDate3 = [firstObject entryDate];
        [v59 lastObject];
        v58 = v32;
        v39 = v38 = v27;
        [v39 exitDate];
        v40 = v31;
        v41 = v26;
        v43 = v42 = v25;
        v44 = [v35 initWithStartDate:entryDate3 endDate:v43];
        summaryInterval = selfCopy->_summaryInterval;
        selfCopy->_summaryInterval = v44;

        v25 = v42;
        v26 = v41;
        v31 = v40;

        v27 = v38;
        v32 = v58;
        v23 = v59;

        v34 = selfCopy;
      }

      recentRecords = v34->_recentRecords;
      v34->_recentRecords = v30;
      v47 = v30;

      handlerCopy = v49;
      v49[2](v49, 0);

      interestCopy = v50;
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v48 = sub_10DB8(&qword_21AA0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)shiftLocationOfInterestCoordinates:(id)coordinates handler:(id)handler
{
  coordinatesCopy = coordinates;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([coordinatesCopy count])
    {
      selfCopy = self;
      v71 = handlerCopy;
      v75 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [coordinatesCopy count]);
      v78 = objc_opt_new();
      v8 = objc_opt_new();
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v72 = coordinatesCopy;
      v9 = coordinatesCopy;
      v10 = [v9 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v92;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v92 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v91 + 1) + 8 * i);
            location = [v14 location];
            [location latitude];
            v17 = v16;
            location2 = [v14 location];
            [location2 longitude];
            v20 = v19;

            if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:v17, v20])
            {
              v21 = v8;
            }

            else
            {
              v21 = v78;
            }

            [v21 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v11);
      }

      v22 = dispatch_group_create();
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v8;
      v23 = v75;
      v79 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v79)
      {
        v24 = *v88;
        v73 = *v88;
        v74 = v22;
        do
        {
          for (j = 0; j != v79; j = j + 1)
          {
            if (*v88 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v87 + 1) + 8 * j);
            mapItem = [v26 mapItem];
            if (mapItem && (v28 = mapItem, [v26 mapItem], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "location"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "referenceFrame"), v30, v29, v28, v31 == 2))
            {
              v32 = [RTLocation alloc];
              mapItem2 = [v26 mapItem];
              location3 = [mapItem2 location];
              [location3 latitude];
              v36 = v35;
              mapItem3 = [v26 mapItem];
              location4 = [mapItem3 location];
              [location4 longitude];
              v40 = v39;
              location5 = [v26 location];
              [location5 horizontalUncertainty];
              v43 = v42;
              mapItem4 = [v26 mapItem];
              location6 = [mapItem4 location];
              v46 = [v32 initWithLatitude:0 longitude:objc_msgSend(location6 horizontalUncertainty:"referenceFrame") date:v36 referenceFrame:{v40, v43}];

              v47 = [RTLocationOfInterest alloc];
              [v26 confidence];
              v49 = v48;
              identifier = [v26 identifier];
              type = [v26 type];
              typeSource = [v26 typeSource];
              visits = [v26 visits];
              customLabel = [v26 customLabel];
              mapItem5 = [v26 mapItem];
              v56 = [v47 initWithLocation:v46 confidence:identifier identifier:type type:typeSource typeSource:visits visits:customLabel customLabel:v49 mapItem:mapItem5];

              v23 = v75;
              if (v56)
              {
                [v75 addObject:v56];
              }

              self = selfCopy;
              v24 = v73;
              v22 = v74;
            }

            else
            {
              dispatch_group_enter(v22);
              location7 = [v26 location];
              [location7 latitude];
              v59 = v58;
              location8 = [v26 location];
              [location8 longitude];
              v62 = CLLocationCoordinate2DMake(v59, v61);

              locationShifter = self->_locationShifter;
              location9 = [v26 location];
              [location9 horizontalUncertainty];
              v66 = v65;
              v84[0] = _NSConcreteStackBlock;
              v84[1] = 3221225472;
              v84[2] = sub_1087C;
              v84[3] = &unk_1DA70;
              v84[4] = self;
              v84[5] = v26;
              v85 = v23;
              v86 = v22;
              [(RTLocationShifter *)locationShifter shiftCoordinate:v84 accuracy:v62.latitude handler:v62.longitude, v66];
            }
          }

          v79 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
        }

        while (v79);
      }

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10AC4;
      block[3] = &unk_1D9A8;
      v81 = v23;
      v82 = v78;
      handlerCopy = v71;
      v83 = v71;
      v68 = v78;
      v69 = v23;
      dispatch_group_notify(v22, queue, block);

      coordinatesCopy = v72;
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    v70 = sub_10DB8(&qword_21AA0);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10C40;
  block[3] = &unk_1DA98;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (id)configureDateRangeString:(id)string dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle
{
  if (string)
  {
    stringCopy = string;
    v8 = objc_alloc_init(NSDateIntervalFormatter);
    [v8 setDateStyle:style];
    [v8 setTimeStyle:timeStyle];
    v9 = [v8 stringFromDateInterval:stringCopy];
  }

  else
  {
    v9 = &stru_1DDE0;
  }

  return v9;
}

@end