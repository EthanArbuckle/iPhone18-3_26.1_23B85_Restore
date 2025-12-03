@interface NCWaypointWithDistance
- (NCWaypointWithDistance)initWithWaypoint:(id)waypoint distance:(double)distance;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
@end

@implementation NCWaypointWithDistance

- (NCWaypointWithDistance)initWithWaypoint:(id)waypoint distance:(double)distance
{
  waypointCopy = waypoint;
  v11.receiver = self;
  v11.super_class = NCWaypointWithDistance;
  v8 = [(NCWaypointWithDistance *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_waypoint, waypoint);
    v9->_distance = distance;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_msgSend_distance(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_distance(compareCopy, v10, v11, v12);
  if (v9 == v16)
  {
    v17 = objc_msgSend_waypoint(self, v13, v14, v15);
    v21 = objc_msgSend_uuid(v17, v18, v19, v20);
    v25 = objc_msgSend_waypoint(compareCopy, v22, v23, v24);
    v29 = objc_msgSend_uuid(v25, v26, v27, v28);
    v32 = objc_msgSend_compare_(v21, v30, v29, v31);
  }

  else
  {
    objc_msgSend_distance(self, v13, v14, v15);
    v34 = v33;
    objc_msgSend_distance(compareCopy, v35, v36, v37);
    if (v34 >= v38)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }
  }

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_waypoint(self, a2, zone, v3);
  isAltitudePopulated = objc_msgSend_isAltitudePopulated(v5, v6, v7, v8);

  if (isAltitudePopulated)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = objc_msgSend_waypoint(self, v10, v11, v12);
    objc_msgSend_altitude(v14, v15, v16, v17);
    v120 = objc_msgSend_numberWithDouble_(v13, v18, v19, v20);
  }

  else
  {
    v120 = 0;
  }

  v21 = [NCWaypoint alloc];
  v117 = objc_msgSend_waypoint(self, v22, v23, v24);
  v119 = objc_msgSend_uuid(v117, v25, v26, v27);
  v116 = objc_msgSend_waypoint(self, v28, v29, v30);
  v118 = objc_msgSend_timestampOfCreation(v116, v31, v32, v33);
  v115 = objc_msgSend_waypoint(self, v34, v35, v36);
  v40 = objc_msgSend_label(v115, v37, v38, v39);
  v114 = objc_msgSend_waypoint(self, v41, v42, v43);
  v109 = objc_msgSend_shortLabel(v114, v44, v45, v46);
  v113 = objc_msgSend_waypoint(self, v47, v48, v49);
  v108 = objc_msgSend_explanatoryDescription(v113, v50, v51, v52);
  v112 = objc_msgSend_waypoint(self, v53, v54, v55);
  v106 = objc_msgSend_labelColor(v112, v56, v57, v58);
  v110 = objc_msgSend_waypoint(self, v59, v60, v61);
  v105 = objc_msgSend_highlightColor(v110, v62, v63, v64);
  v107 = objc_msgSend_waypoint(self, v65, v66, v67);
  v71 = objc_msgSend_symbol(v107, v68, v69, v70);
  v75 = objc_msgSend_waypoint(self, v72, v73, v74);
  v79 = objc_msgSend_type(v75, v76, v77, v78);
  v83 = objc_msgSend_waypoint(self, v80, v81, v82);
  v87 = objc_msgSend_location(v83, v84, v85, v86);
  v91 = objc_msgSend_waypoint(self, v88, v89, v90);
  isEnabled = objc_msgSend_isEnabled(v91, v92, v93, v94);
  v111 = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v21, v95, v119, v118, v40, v109, v108, v106, v105, v71, v79, v87, v120, isEnabled);

  v96 = [NCWaypointWithDistance alloc];
  objc_msgSend_distance(self, v97, v98, v99);
  v102 = objc_msgSend_initWithWaypoint_distance_(v96, v100, v111, v101);

  return v102;
}

@end