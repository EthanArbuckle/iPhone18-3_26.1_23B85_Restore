@interface NTKCompassWaypointManager
+ (id)_filterNCWaypoints:(id)a3 location:(id)a4 radius:(double)a5;
+ (id)_filterNCWaypoints:(id)a3 query:(id)a4;
- (NSArray)waypoints;
- (NTKCompassWaypointManager)init;
- (void)_removeObservers;
- (void)_updateSubscriber;
- (void)_waypointListDidChange:(id)a3;
- (void)dealloc;
- (void)setQueryCenterLocation:(id)a3 radius:(double)a4 poiFilter:(id)a5 completion:(id)a6;
- (void)startUpdatingDelegate:(id)a3;
- (void)stopUpdating;
@end

@implementation NTKCompassWaypointManager

- (NTKCompassWaypointManager)init
{
  v10.receiver = self;
  v10.super_class = NTKCompassWaypointManager;
  v2 = [(NTKCompassWaypointManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    filteredWaypoints = v2->_filteredWaypoints;
    v2->_filteredWaypoints = 0;

    v7 = objc_msgSend_invalidQuery(NTKLeghornWaypointQuery, v5, v6);
    currentQuery = v3->_currentQuery;
    v3->_currentQuery = v7;
  }

  return v3;
}

- (void)dealloc
{
  objc_msgSend__removeObservers(self, a2, v2);
  v4.receiver = self;
  v4.super_class = NTKCompassWaypointManager;
  [(NTKCompassWaypointManager *)&v4 dealloc];
}

+ (id)_filterNCWaypoints:(id)a3 location:(id)a4 radius:(double)a5
{
  v5 = objc_opt_new();
  v8 = objc_msgSend_copy(v5, v6, v7);

  return v8;
}

+ (id)_filterNCWaypoints:(id)a3 query:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (objc_msgSend_isValid(v6, v8, v9))
  {
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    objc_msgSend_centerCoordinate(v6, v13, v14);
    v16 = v15;
    objc_msgSend_centerCoordinate(v6, v17, v15);
    v19 = objc_msgSend_initWithLatitude_longitude_(v12, v18, v16);
  }

  else
  {
    v19 = 0;
  }

  objc_msgSend_radius(v6, v10, v11);
  v22 = objc_msgSend__filterNCWaypoints_location_radius_(a1, v20, v21, v7, v19);

  return v22;
}

- (void)_updateSubscriber
{
  delegate = self->_delegate;
  if (delegate)
  {
    objc_msgSend_storeDidChangeWithCategories_(delegate, a2, v2, 1);
  }
}

- (void)_waypointListDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NTKCompassWaypointManager _waypointListDidChange:]";
    _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "%s: waypoints did change", &v8, 0xCu);
  }

  compassWaypoints = self->_compassWaypoints;
  self->_compassWaypoints = 0;

  objc_msgSend__updateSubscriber(self, v6, v7);
}

- (void)_removeObservers
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], a2, v2);
  objc_msgSend_removeObserver_(v6, v4, v5, self);
}

- (NSArray)waypoints
{
  if (!self->_compassWaypoints)
  {
    v4 = objc_msgSend_poiFilter(self->_currentQuery, a2, v2);
    objc_msgSend_includesCategory_(v4, v5, v6, 1);

    filteredWaypoints = self->_filteredWaypoints;
    self->_filteredWaypoints = 0;
  }

  v8 = self->_filteredWaypoints;
  if (!v8)
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend__filterNCWaypoints_query_(v9, v10, v11, self->_compassWaypoints, self->_currentQuery);
    v13 = self->_filteredWaypoints;
    self->_filteredWaypoints = v12;

    v8 = self->_filteredWaypoints;
  }

  return v8;
}

- (void)setQueryCenterLocation:(id)a3 radius:(double)a4 poiFilter:(id)a5 completion:(id)a6
{
  v40 = a3;
  v10 = a5;
  v12 = a6;
  if ((v40 || a4 <= 0.0) && (a4 <= 0.0 || (v13 = 50.0, a4 >= 50.0)))
  {
    v14 = objc_msgSend_copyIncludingCategories_(v10, v11, v13, 1);
    v15 = self->_currentQuery;
    objc_msgSend_coordinate(v40, v16, v17);
    v20 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v18, v19, v14);
    if ((objc_msgSend_matchesQuery_(v15, v21, v22, v20) & 1) == 0)
    {
      v25 = objc_msgSend_poiFilter(self->_currentQuery, v23, v24);
      v28 = objc_msgSend_includesCategory_(v25, v26, v27, 1);

      v31 = objc_msgSend_poiFilter(v20, v29, v30);
      v34 = objc_msgSend_includesCategory_(v31, v32, v33, 1);

      v35 = 24;
      if (v28 != v34)
      {
        v35 = 16;
      }

      v36 = *(&self->super.isa + v35);
      *(&self->super.isa + v35) = 0;

      objc_msgSend__updateSubscriber(self, v37, v38);
      objc_storeStrong(&self->_currentQuery, v20);
    }

    if (v12)
    {
      v39 = objc_msgSend_waypoints(self, v23, v24);
      v12[2](v12, self->_filteredWaypoints != 0);
    }
  }

  else if (v12)
  {
    v12[2](v12, 0);
  }
}

- (void)startUpdatingDelegate:(id)a3
{
  objc_storeStrong(&self->_delegate, a3);

  MEMORY[0x2821F9670](v3);
}

- (void)stopUpdating
{
  objc_msgSend__removeObservers(self, a2, v2);
  delegate = self->_delegate;
  self->_delegate = 0;
}

@end