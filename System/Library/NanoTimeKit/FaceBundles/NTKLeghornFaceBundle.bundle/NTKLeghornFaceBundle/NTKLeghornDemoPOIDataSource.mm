@interface NTKLeghornDemoPOIDataSource
+ (id)_filterWaypoints:(id)waypoints userGuides:(id)guides location:(id)location radius:(double)radius poiFilter:(id)filter;
+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location filterBy:(id)by filterRadius:(double)radius ensureNorthPOI:(BOOL)i useMetric:(BOOL)metric userGuides:(id *)self0;
+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location useMetric:(BOOL)metric userGuides:(id *)guides;
- (NSArray)waypoints;
- (NTKLeghornDemoPOIDataSource)initWithDataSet:(const NTKLeghornPOIDataSet *)set;
- (void)fetchUserGuidesWithCompletion:(id)completion;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
@end

@implementation NTKLeghornDemoPOIDataSource

+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location useMetric:(BOOL)metric userGuides:(id *)guides
{
  metricCopy = metric;
  locationCopy = location;
  v57 = objc_opt_new();
  v55 = objc_opt_new();
  if (count)
  {
    countCopy = count;
    do
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      sub_23BEDDCE8(&v60, s);
      v13 = &v63 + 1;
      if (metricCopy)
      {
        v13 = &v63;
      }

      v59 = objc_msgSend_ntk_locationAtDistance_bearing_(locationCopy, v12, *v13, *(&v62 + 1));
      v14 = NTKFoghornFaceLocalizedString(*(&v60 + 1));
      v15 = sub_23BEDDD60(*(&v61 + 1));
      v16 = sub_23BEDDD60(v62);
      v17 = v61;
      v18 = v60;
      v19 = v64;
      if (objc_msgSend_hasPrefix_(v17, v20, v21, @"sa:"))
      {
        v24 = objc_msgSend_substringFromIndex_(v17, v22, v23, 3);
        v27 = objc_msgSend_ntk_styleAttributesNamed_(MEMORY[0x277D0EB18], v25, v26, v24);
        v28 = [GEOFeatureStyleAttributesPOI alloc];
        v31 = objc_msgSend_initWithStyleAttributes_category_labelText_location_(v28, v29, v30, v27, v18, v14, v59);
      }

      else
      {
        v34 = [NTKLeghornWaypoint alloc];
        v31 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_(v34, v35, v36, v14, v15, v16, v15, v17, v59, v18);
      }

      objc_msgSend_addObject_(v57, v32, v33, v31);
      v37 = countCopy;
      if (v19)
      {
        v38 = NTKFoghornFaceLocalizedString(v19);
        v42 = objc_msgSend_objectForKeyedSubscript_(v55, v39, v40, v38);
        if (!v42)
        {
          v44 = [_LeghornDemoPOICollection alloc];
          v42 = objc_msgSend_initWithTitle_(v44, v45, v46, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v55, v47, v48, v42, v38);
        }

        objc_msgSend_addPoi_(v42, v41, v43, v31);

        v37 = countCopy;
      }

      sub_23BEDE070(&v60);
      ++s;
      countCopy = v37 - 1;
    }

    while (v37 != 1);
  }

  if (guides)
  {
    v49 = objc_msgSend_allValues(v55, v9, v10);
    *guides = objc_msgSend_copy(v49, v50, v51);
  }

  v52 = objc_msgSend_copy(v57, v9, v10);

  return v52;
}

+ (id)_relativePOIS:(id *)s count:(unsigned int)count atLocation:(id)location filterBy:(id)by filterRadius:(double)radius ensureNorthPOI:(BOOL)i useMetric:(BOOL)metric userGuides:(id *)self0
{
  metricCopy = metric;
  iCopy = i;
  guidesCopy4 = guides;
  locationCopy = location;
  byCopy = by;
  countCopy = count;
  v20 = malloc_type_calloc(count, 0x48uLL, 0x108004074F8D4EEuLL);
  v21 = byCopy;
  if (!count)
  {
    v22 = 0;
LABEL_18:
    selfCopy2 = self;
    goto LABEL_19;
  }

  v32 = iCopy;
  v22 = 0;
  v23 = 0;
  do
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    memset(v34, 0, sizeof(v34));
    sub_23BEDDCE8(v34, s);
    if (radius == 0.0)
    {
      goto LABEL_26;
    }

    v26 = 56;
    if (metricCopy)
    {
      v26 = 48;
    }

    v25 = *(v34 + v26);
    if (v25 <= radius)
    {
LABEL_26:
      if (!v21 || objc_msgSend_includesCategory_(v21, v24, v25, *&v34[0]))
      {
        sub_23BEDE970(&v20[9 * v22], v34);
        if (*(&v35 + 1) == 0.0)
        {
          v23 = 1;
        }

        v22 = (v22 + 1);
      }
    }

    sub_23BEDE070(v34);
    ++s;
    --countCopy;
  }

  while (countCopy);
  if (v23)
  {
    guidesCopy4 = guides;
    goto LABEL_18;
  }

  selfCopy2 = self;
  if (v32)
  {
    guidesCopy4 = guides;
    if (v22)
    {
      qsort(v20, v22, 0x48uLL, sub_23BEDE9F0);
      v20[5] = 0;
    }
  }

  else
  {
    guidesCopy4 = guides;
  }

LABEL_19:

  v30 = objc_msgSend__relativePOIS_count_atLocation_useMetric_userGuides_(selfCopy2, v28, v29, v20, v22, locationCopy, metricCopy, guidesCopy4);
  free(v20);

  return v30;
}

- (NTKLeghornDemoPOIDataSource)initWithDataSet:(const NTKLeghornPOIDataSet *)set
{
  v9.receiver = self;
  v9.super_class = NTKLeghornDemoPOIDataSource;
  v4 = [(NTKLeghornDemoPOIDataSource *)&v9 init];
  v5 = v4;
  if (v4)
  {
    waypoints = v4->_waypoints;
    v4->_waypoints = 0;

    allWaypoints = v5->_allWaypoints;
    v5->_allWaypoints = 0;

    v5->_dataSet = set;
  }

  return v5;
}

- (NSArray)waypoints
{
  waypoints = self->_waypoints;
  if (waypoints)
  {
    v4 = waypoints;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)_filterWaypoints:(id)waypoints userGuides:(id)guides location:(id)location radius:(double)radius poiFilter:(id)filter
{
  v70 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  guidesCopy = guides;
  locationCopy = location;
  filterCopy = filter;
  v15 = filterCopy;
  if (radius <= 0.0 && filterCopy == 0)
  {
    v56 = waypointsCopy;
  }

  else
  {
    v17 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v59 = waypointsCopy;
    v18 = waypointsCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, &v64, v69, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v65;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v27 = *(*(&v64 + 1) + 8 * i);
          v28 = objc_msgSend_waypointCategory(v27, v22, v23);
          if (objc_msgSend_includesCategory_(v15, v29, v30, v28))
          {
            if (radius <= 0.0 || (objc_msgSend_waypointLocation(v27, v22, v23), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_distanceFromLocation_(locationCopy, v32, v33, v31), v35 = v34, v31, v35 <= radius))
            {
              objc_msgSend_addObject_(v17, v22, v23, v27);
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, v23, &v64, v69, 16);
      }

      while (v24);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = guidesCopy;
    v36 = guidesCopy;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, v38, &v60, v68, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v61;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v61 != v43)
          {
            objc_enumerationMutation(v36);
          }

          v45 = *(*(&v60 + 1) + 8 * j);
          v46 = objc_msgSend_title(v45, v40, v41, v58);
          if (objc_msgSend_includesCategory_named_(v15, v47, v48, 2, v46))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = objc_msgSend_pois(v45, v49, v50);
              objc_msgSend_addObjectsFromArray_(v17, v52, v53, v51);
            }
          }
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v40, v41, &v60, v68, 16);
      }

      while (v42);
    }

    v56 = objc_msgSend_allObjects(v17, v54, v55);

    guidesCopy = v58;
    waypointsCopy = v59;
  }

  return v56;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  if (!self->_allWaypoints)
  {
    v15 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v12, v14);
    v18 = objc_msgSend_objectForKey_(v15, v16, v17, *MEMORY[0x277CBE718]);
    v21 = objc_msgSend_BOOLValue(v18, v19, v20);

    v22 = objc_opt_class();
    dataSet = self->_dataSet;
    v42 = 0;
    v26 = objc_msgSend_demoPOIsFromDataSet_relativeToLocation_useMetric_userGuides_(v22, v24, v25, dataSet, locationCopy, v21, &v42);
    v27 = v42;
    allWaypoints = self->_allWaypoints;
    self->_allWaypoints = v26;

    allUserGuides = self->_allUserGuides;
    self->_allUserGuides = v27;
  }

  v30 = self->_currentQuery;
  objc_msgSend_coordinate(locationCopy, v31, v32);
  v35 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v33, v34, filterCopy);
  if (!objc_msgSend_matchesQuery_(v30, v36, v37, v35))
  {
    objc_storeStrong(&self->_currentQuery, v35);
    v38 = objc_opt_class();
    v40 = objc_msgSend__filterWaypoints_userGuides_location_radius_poiFilter_(v38, v39, radius, self->_allWaypoints, self->_allUserGuides, locationCopy, filterCopy);
    waypoints = self->_waypoints;
    self->_waypoints = v40;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)fetchUserGuidesWithCompletion:(id)completion
{
  if (completion)
  {
    allUserGuides = self->_allUserGuides;
    if (!allUserGuides)
    {
      allUserGuides = MEMORY[0x277CBEBF8];
    }

    (*(completion + 2))(completion, 0, allUserGuides);
  }
}

@end