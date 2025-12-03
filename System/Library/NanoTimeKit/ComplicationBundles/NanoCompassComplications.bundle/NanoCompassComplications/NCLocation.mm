@interface NCLocation
+ (NCLocation)idealizedLocation;
+ (NCLocation)locationWithLocation:(id)location error:(id)error;
+ (id)randomizedLocation;
- (BOOL)hasAcceptableAccuracy;
- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold;
- (CLLocationCoordinate2D)coordinate;
- (NCLocation)initWithLocation:(id)location;
- (NCLocation)initWithLocation:(id)location error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NCLocation

+ (NCLocation)locationWithLocation:(id)location error:(id)error
{
  errorCopy = error;
  locationCopy = location;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithLocation_error_(v8, v9, locationCopy, errorCopy);

  return v10;
}

- (NCLocation)initWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  v45.receiver = self;
  v45.super_class = NCLocation;
  v8 = [(NCLocation *)&v45 init];
  v12 = v8;
  if (v8)
  {
    if (locationCopy)
    {
      objc_msgSend_coordinate(locationCopy, v9, v10, v11);
      objc_msgSend_setCoordinate_(v12, v13, v14, v15);
      objc_msgSend_horizontalAccuracy(locationCopy, v16, v17, v18);
      objc_msgSend_setAccuracy_(v12, v19, v20, v21);
      objc_msgSend_timestamp(locationCopy, v22, v23, v24);
    }

    else
    {
      objc_msgSend_setCoordinate_(v8, v9, v10, v11, *MEMORY[0x277CE4278], *(MEMORY[0x277CE4278] + 8));
      objc_msgSend_setAccuracy_(v12, v25, v26, v27, -1.0);
      objc_msgSend_date(MEMORY[0x277CBEAA8], v28, v29, v30);
    }
    v31 = ;
    objc_msgSend_setTimestamp_(v12, v32, v31, v33);

    v37 = objc_msgSend_date(MEMORY[0x277CBEAA8], v34, v35, v36);
    objc_msgSend_setReportedTimestamp_(v12, v38, v37, v39);

    objc_msgSend_setError_(v12, v40, errorCopy, v41);
    objc_msgSend_setRawLocation_(v12, v42, locationCopy, v43);
  }

  return v12;
}

- (NCLocation)initWithLocation:(id)location
{
  locationCopy = location;
  v36.receiver = self;
  v36.super_class = NCLocation;
  v8 = [(NCLocation *)&v36 init];
  if (v8)
  {
    objc_msgSend_coordinate(locationCopy, v5, v6, v7);
    v8->_coordinate.latitude = v9;
    v8->_coordinate.longitude = v10;
    objc_msgSend_accuracy(locationCopy, v11, v12, v13);
    v8->_accuracy = v14;
    v18 = objc_msgSend_timestamp(locationCopy, v15, v16, v17);
    timestamp = v8->_timestamp;
    v8->_timestamp = v18;

    v23 = objc_msgSend_reportedTimestamp(locationCopy, v20, v21, v22);
    reportedTimestamp = v8->_reportedTimestamp;
    v8->_reportedTimestamp = v23;

    v28 = objc_msgSend_error(locationCopy, v25, v26, v27);
    error = v8->_error;
    v8->_error = v28;

    v33 = objc_msgSend_rawLocation(locationCopy, v30, v31, v32);
    rawLocation = v8->_rawLocation;
    v8->_rawLocation = v33;
  }

  return v8;
}

- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold
{
  thanCopy = than;
  objc_msgSend_coordinate(self, v10, v11, v12);
  if (!CLLocationCoordinate2DIsValid(v110))
  {
    goto LABEL_4;
  }

  if (!thanCopy)
  {
    goto LABEL_25;
  }

  v16 = objc_msgSend_timestamp(self, v13, v14, v15);
  v20 = objc_msgSend_timestamp(thanCopy, v17, v18, v19);
  objc_msgSend_timeIntervalSinceDate_(v16, v21, v20, v22);
  v24 = v23;

  if (v24 < 0.0)
  {
LABEL_4:
    v28 = 0;
    goto LABEL_26;
  }

  v29 = objc_msgSend_error(self, v25, v26, v27);
  if (v29)
  {

    goto LABEL_7;
  }

  v95 = objc_msgSend_error(thanCopy, v30, v31, v32);

  if (v95)
  {
LABEL_25:
    v28 = 1;
    goto LABEL_26;
  }

LABEL_7:
  objc_msgSend_coordinate(thanCopy, v33, v34, v35);
  if (!CLLocationCoordinate2DIsValid(v111))
  {
    goto LABEL_25;
  }

  objc_msgSend_accuracy(self, v36, v37, v38);
  if (v42 >= 0.0)
  {
    objc_msgSend_accuracy(thanCopy, v39, v40, v41);
    if (v43 < 0.0)
    {
      goto LABEL_25;
    }
  }

  hasAcceptableAccuracy = objc_msgSend_hasAcceptableAccuracy(self, v39, v40, v41);
  if (hasAcceptableAccuracy)
  {
    if (!objc_msgSend_hasAcceptableAccuracy(thanCopy, v44, v45, v46))
    {
      goto LABEL_25;
    }
  }

  objc_msgSend_accuracy(thanCopy, v44, v45, v46);
  v49 = v48;
  objc_msgSend_accuracy(self, v50, v51, v52);
  v54 = v53;
  objc_msgSend_accuracy(self, v55, v56, v57);
  if (v61 >= 0.0 && v49 - v54 > 2.22044605e-16)
  {
    goto LABEL_25;
  }

  objc_msgSend_coordinate(self, v58, v59, v60);
  v63 = v62;
  objc_msgSend_coordinate(thanCopy, v64, v65, v66);
  v71 = v63 - v70;
  if (v71 >= 0.0)
  {
    v72 = v71;
  }

  else
  {
    v72 = -v71;
  }

  objc_msgSend_coordinate(self, v67, v68, v69);
  v74 = v73;
  objc_msgSend_coordinate(thanCopy, v75, v76, v77);
  v82 = v74 - v81;
  v83 = -(v74 - v81);
  if (v82 >= 0.0)
  {
    v84 = v82;
  }

  else
  {
    v84 = v83;
  }

  v88 = objc_msgSend_error(self, v78, v79, v80);
  if (v88 || (objc_msgSend_error(thanCopy, v85, v86, v87), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = objc_msgSend_error(self, v85, v86, v87);
    v6 = objc_msgSend_error(thanCopy, v89, v90, v91);
    if (!objc_msgSend_isEqual_(v5, v92, v6, v93))
    {
      v97 = 0;
      goto LABEL_37;
    }

    v94 = 1;
  }

  else
  {
    v94 = 0;
  }

  objc_msgSend_accuracy(self, v85, v86, v87);
  v99 = v98;
  objc_msgSend_accuracy(thanCopy, v100, v101, v102);
  v104 = v99 - v103;
  if (v104 < 0.0)
  {
    v104 = -v104;
  }

  if (v104 >= 2.22044605e-16 || v72 > 2.22044605e-16 || v84 > 2.22044605e-16)
  {
    v97 = 0;
    if (!v94)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v97 = v24 > threshold;
  if (v94)
  {
LABEL_37:
  }

LABEL_38:
  if (!v88)
  {
  }

  if (v97)
  {
    goto LABEL_25;
  }

  v108 = fmax(v72, v84) > 2.22044605e-16 ? hasAcceptableAccuracy : 0;
  if (v108)
  {
    goto LABEL_25;
  }

  objc_msgSend_accuracy(self, v105, v106, v107);
  v28 = v24 > threshold && v109 >= 0.0;
LABEL_26:

  return v28;
}

- (BOOL)hasAcceptableAccuracy
{
  objc_msgSend_accuracy(self, a2, v2, v3);
  if (v8 < 0.0)
  {
    return 0;
  }

  objc_msgSend_accuracy(self, v5, v6, v7);
  return v10 < 300.0;
}

+ (NCLocation)idealizedLocation
{
  if (qword_27E1C5218 != -1)
  {
    sub_23BD66C94();
  }

  v3 = qword_27E1C5210;

  return v3;
}

+ (id)randomizedLocation
{
  v2 = objc_opt_new();
  v3 = (arc4random_uniform(0xB4u) - 90);
  v4 = arc4random_uniform(0x168u);
  v5 = CLLocationCoordinate2DMake(v3, (v4 - 180));
  objc_msgSend_setCoordinate_(v2, v6, v7, v8, v5.latitude, v5.longitude);
  v9 = arc4random_uniform(0xFA0u);
  objc_msgSend_setAccuracy_(v2, v10, v11, v12, v9);
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v13, v14, v15);
  objc_msgSend_setTimestamp_(v2, v17, v16, v18);

  v22 = objc_msgSend_timestamp(v2, v19, v20, v21);
  objc_msgSend_setReportedTimestamp_(v2, v23, v22, v24);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCLocation alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithLocation_, self, v5);
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end