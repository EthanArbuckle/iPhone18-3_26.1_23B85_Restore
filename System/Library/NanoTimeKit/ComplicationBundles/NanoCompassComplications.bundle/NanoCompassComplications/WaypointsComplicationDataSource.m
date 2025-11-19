@interface WaypointsComplicationDataSource
+ (id)_descriptorUserInfoForWaypoint:(id)a3;
+ (id)complicationDescriptors;
- (WaypointsComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_getWaypointFromDescriptor:(id)a3;
- (id)_getWaypointUUIDFromDescriptor:(id)a3;
- (id)_guidesWaypointWithUUID:(id)a3;
- (id)alwaysOnTemplate;
- (id)sampleTemplate;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation WaypointsComplicationDataSource

+ (id)complicationDescriptors
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedManager(NCGuidesManager, a2, v2, v3);
  v8 = objc_msgSend_allEnabledWaypoints(v4, v5, v6, v7);

  v51 = v8;
  v11 = objc_msgSend_sortedArrayUsingComparator_(v8, v9, &unk_284E80200, v10);
  v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = v11;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v52, v60, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        v23 = objc_msgSend_uuid(v22, v16, v17, v18);

        if (v23)
        {
          v24 = objc_alloc(MEMORY[0x277CBB718]);
          v28 = objc_msgSend_uuid(v22, v25, v26, v27);
          v32 = objc_msgSend_UUIDString(v28, v29, v30, v31);
          v36 = objc_msgSend_label(v22, v33, v34, v35);
          v39 = objc_msgSend__descriptorUserInfoForWaypoint_(WaypointsComplicationDataSource, v37, v22, v38);
          v41 = objc_msgSend_initWithIdentifier_displayName_supportedFamilies_userInfo_(v24, v40, v32, v36, &unk_284E8B118, v39);

          objc_msgSend_addObject_(v12, v42, v41, v43);
        }

        else
        {
          v41 = NCLogForCategory(7uLL);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v47 = objc_msgSend_label(v22, v44, v45, v46);
            v48 = v47;
            *buf = 136315394;
            v49 = @"also nil";
            if (v47)
            {
              v49 = v47;
            }

            v57 = "+[WaypointsComplicationDataSource complicationDescriptors]";
            v58 = 2112;
            v59 = v49;
            _os_log_impl(&dword_23BD26000, v41, OS_LOG_TYPE_DEFAULT, "%s: We have a waypoint without a UUID, skipping.  Label is %@", buf, 0x16u);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v52, v60, 16);
    }

    while (v19);
  }

  return v12;
}

- (WaypointsComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = WaypointsComplicationDataSource;
  v5 = [(SmartWaypointComplicationDataSource *)&v30 initWithComplication:a3 family:a4 forDevice:a5];
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_complicationDescriptor(v5, v6, v7, v8);
    v13 = objc_msgSend__getWaypointFromDescriptor_(v9, v11, v10, v12);
    objc_msgSend_setWaypoint_(v9, v14, v13, v15);

    v19 = objc_msgSend_waypoint(v9, v16, v17, v18);

    if (v19)
    {
      v20 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_msgSend_identifier(v10, v21, v22, v23);
        v28 = objc_msgSend_waypoint(v9, v25, v26, v27);
        *buf = 136315650;
        v32 = "[WaypointsComplicationDataSource initWithComplication:family:forDevice:]";
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_DEFAULT, "%s descriptor identifier: %@ init waypoint complication %@", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WaypointsComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v2 dealloc];
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v10 = objc_msgSend_waypoint(self, v7, v8, v9);

  if (v10)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_waypoint(self, v11, v12, v13);
    v19 = objc_msgSend_uuid(v15, v16, v17, v18);
    v23 = objc_msgSend_UUIDString(v19, v20, v21, v22);
    v26 = objc_msgSend_stringWithFormat_(v14, v24, @"nanocompass://launch?uuid=%@", v25, v23);

    v29 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v27, v26, v28);
  }

  else
  {
    v29 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v11, @"nanocompass://launch", v13);
  }

  v30 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_waypoint(self, v31, v32, v33);
    v38 = objc_msgSend_label(v34, v35, v36, v37);
    *buf = 136315650;
    v40 = "[WaypointsComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v38;
    _os_log_impl(&dword_23BD26000, v30, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@, launching to waypoint %@", buf, 0x20u);
  }

  v6[2](v6, v29);
}

- (id)sampleTemplate
{
  v8 = objc_msgSend_waypoint(self, a2, v2, v3);
  if (v8)
  {
    objc_msgSend_waypoint(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_idealizedWaypoint(NCWaypoint, v5, v6, v7);
  }
  v9 = ;

  v13 = objc_msgSend_label(v9, v10, v11, v12);
  v17 = objc_msgSend_symbol(v9, v14, v15, v16);
  v21 = objc_msgSend_labelColor(v9, v18, v19, v20);
  v23 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v22, v13, v17, v21);

  return v23;
}

- (id)alwaysOnTemplate
{
  v8 = objc_msgSend_waypoint(self, a2, v2, v3);
  if (v8)
  {
    v54 = objc_msgSend__complicationTargetingIsActive(self, v5, v6, v7) ^ 1;
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  v12 = objc_msgSend_waypoint(self, v9, v10, v11);
  v13 = v12 == 0;

  v17 = objc_msgSend_waypoint(self, v14, v15, v16);
  v21 = objc_msgSend_copy(v17, v18, v19, v20);
  v25 = objc_msgSend_location(self, v22, v23, v24);
  v29 = objc_msgSend_copy(v25, v26, v27, v28);
  v33 = objc_msgSend_heading(self, v30, v31, v32);
  v37 = objc_msgSend_copy(v33, v34, v35, v36);
  v41 = objc_msgSend_altitude(self, v38, v39, v40);
  v45 = objc_msgSend_copy(v41, v42, v43, v44);
  v49 = objc_msgSend_calibrated(self, v46, v47, v48);
  *(&v53 + 1) = 1;
  LOBYTE(v53) = v54;
  v51 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v50, v21, v29, v37, v45, v49, v13, v53);

  return v51;
}

+ (id)_descriptorUserInfoForWaypoint:(id)a3
{
  v113[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v109 = 0.0;
  v110 = 0.0;
  v107 = 0.0;
  v108 = 0.0;
  v7 = objc_msgSend_labelColor(v3, v4, v5, v6);
  objc_msgSend_getRed_green_blue_alpha_(v7, v8, &v110, &v109, &v108, &v107);

  v9 = MEMORY[0x277CCABB0];
  v13 = objc_msgSend_timestampOfCreation(v3, v10, v11, v12);
  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15, v16);
  v106 = objc_msgSend_numberWithDouble_(v9, v17, v18, v19);

  v23 = objc_msgSend_label(v3, v20, v21, v22);
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = NanoCompassLocalizedString(@"WAYPOINT_NAME");
  }

  v26 = v25;

  v30 = objc_msgSend_symbol(v3, v27, v28, v29);
  v34 = v30;
  if (v30)
  {
    v35 = v30;
  }

  else
  {
    v36 = objc_msgSend_idealizedWaypoint(NCWaypoint, v31, v32, v33);
    v35 = objc_msgSend_symbol(v36, v37, v38, v39);
  }

  v112[0] = @"waypointUuid";
  v105 = objc_msgSend_uuid(v3, v40, v41, v42);
  v104 = objc_msgSend_UUIDString(v105, v43, v44, v45);
  v113[0] = v104;
  v113[1] = v26;
  v112[1] = @"waypointLabel";
  v112[2] = @"waypointColor";
  HIDWORD(v46) = HIDWORD(v110);
  *&v46 = v110;
  v103 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v47, v48, v49, v46);
  v111[0] = v103;
  HIDWORD(v50) = HIDWORD(v109);
  *&v50 = v109;
  v102 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v51, v52, v53, v50);
  v111[1] = v102;
  HIDWORD(v54) = HIDWORD(v108);
  *&v54 = v108;
  v101 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v55, v56, v57, v54);
  v111[2] = v101;
  HIDWORD(v58) = HIDWORD(v107);
  *&v58 = v107;
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v61, v58);
  v111[3] = v99;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, v111, 4);
  v113[2] = v63;
  v112[3] = @"waypointLatitude";
  v100 = v26;
  v64 = MEMORY[0x277CCABB0];
  v68 = objc_msgSend_location(v3, v65, v66, v67);
  objc_msgSend_coordinate(v68, v69, v70, v71);
  v75 = objc_msgSend_numberWithDouble_(v64, v72, v73, v74);
  v113[3] = v75;
  v112[4] = @"waypointLongitude";
  v76 = MEMORY[0x277CCABB0];
  v80 = objc_msgSend_location(v3, v77, v78, v79);
  objc_msgSend_coordinate(v80, v81, v82, v83);
  v88 = objc_msgSend_numberWithDouble_(v76, v84, v85, v86, v87);
  v113[4] = v88;
  v113[5] = v35;
  v112[5] = @"waypointSymbol";
  v112[6] = @"waypointEnabled";
  isEnabled = objc_msgSend_isEnabled(v3, v89, v90, v91);
  v95 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v93, isEnabled, v94);
  v112[7] = @"dateOfCreation";
  v113[6] = v95;
  v113[7] = v106;
  v97 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, v113, v112, 8);

  return v97;
}

- (id)_getWaypointUUIDFromDescriptor:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3 && (objc_msgSend_userInfo(v3, v4, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v12 = objc_msgSend_userInfo(v7, v9, v10, v11);
    v15 = objc_msgSend_objectForKey_(v12, v13, @"waypointUuid", v14);

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = objc_msgSend_initWithUUIDString_(v16, v17, v15, v18);
    }

    else
    {
      v20 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_23BD674E4(v20);
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_getWaypointFromDescriptor:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3 && (objc_msgSend_userInfo(v3, v4, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v12 = objc_msgSend_userInfo(v7, v9, v10, v11);
    v15 = objc_msgSend_objectForKey_(v12, v13, @"waypointUuid", v14);

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v134 = objc_msgSend_initWithUUIDString_(v16, v17, v15, v18);
      v22 = objc_msgSend_userInfo(v7, v19, v20, v21);
      v133 = objc_msgSend_objectForKey_(v22, v23, @"waypointLabel", v24);

      v28 = objc_msgSend_userInfo(v7, v25, v26, v27);
      v132 = objc_msgSend_objectForKey_(v28, v29, @"waypointLatitude", v30);

      v34 = objc_msgSend_userInfo(v7, v31, v32, v33);
      v131 = objc_msgSend_objectForKey_(v34, v35, @"waypointLongitude", v36);

      v37 = objc_alloc(MEMORY[0x277CE41F8]);
      objc_msgSend_doubleValue(v132, v38, v39, v40);
      v42 = v41;
      objc_msgSend_doubleValue(v131, v43, v44, v45);
      v130 = objc_msgSend_initWithLatitude_longitude_(v37, v46, v47, v48, v42, v49);
      v53 = objc_msgSend_userInfo(v7, v50, v51, v52);
      v56 = objc_msgSend_objectForKey_(v53, v54, @"waypointSymbol", v55);

      v60 = objc_msgSend_userInfo(v7, v57, v58, v59);
      v129 = objc_msgSend_objectForKey_(v60, v61, @"dateOfCreation", v62);

      v63 = MEMORY[0x277CBEAA8];
      objc_msgSend_doubleValue(v129, v64, v65, v66);
      v70 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v63, v67, v68, v69);
      v74 = objc_msgSend_userInfo(v7, v71, v72, v73);
      v77 = objc_msgSend_objectForKey_(v74, v75, @"waypointColor", v76);

      v78 = objc_alloc(MEMORY[0x277D75348]);
      v81 = objc_msgSend_objectAtIndexedSubscript_(v77, v79, 0, v80);
      objc_msgSend_doubleValue(v81, v82, v83, v84);
      v86 = v85;
      v89 = objc_msgSend_objectAtIndexedSubscript_(v77, v87, 1, v88);
      objc_msgSend_doubleValue(v89, v90, v91, v92);
      v94 = v93;
      v97 = objc_msgSend_objectAtIndexedSubscript_(v77, v95, 2, v96);
      objc_msgSend_doubleValue(v97, v98, v99, v100);
      v102 = v101;
      v105 = objc_msgSend_objectAtIndexedSubscript_(v77, v103, 3, v104);
      objc_msgSend_doubleValue(v105, v106, v107, v108);
      v113 = objc_msgSend_initWithRed_green_blue_alpha_(v78, v109, v110, v111, v86, v94, v102, v112);

      v117 = objc_msgSend_userInfo(v7, v114, v115, v116);
      v120 = objc_msgSend_objectForKey_(v117, v118, @"waypointEnabled", v119);

      v128 = objc_msgSend_intValue(v120, v121, v122, v123) == 1;
      v125 = objc_msgSend_waypointForDescriptorWithUUID_creationTime_label_color_symbol_location_isEnabled_(NCWaypoint, v124, v134, v70, v133, v113, v56, v130, v128);
    }

    else
    {
      v126 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        sub_23BD67568(v126);
      }

      v125 = 0;
    }
  }

  else
  {
    v125 = 0;
  }

  return v125;
}

- (id)_guidesWaypointWithUUID:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_sharedManager(NCGuidesManager, v5, v6, v7);
  v12 = objc_msgSend_allEnabledWaypoints(v8, v9, v10, v11);

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_23BD51BEC;
  v34[3] = &unk_278B949B0;
  v13 = v4;
  v35 = v13;
  v16 = objc_msgSend_indexOfObjectPassingTest_(v12, v14, v34, v15);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_UUIDString(v13, v20, v21, v22);
      *buf = 134218498;
      v37 = self;
      v38 = 2080;
      v39 = "[WaypointsComplicationDataSource _guidesWaypointWithUUID:]";
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEFAULT, "(%p) %s Did not find waypoint complication with uuid %@ in guide manager.", buf, 0x20u);
    }

    v24 = 0;
  }

  else
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v12, v17, v16, v18);
    v19 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_msgSend_label(v24, v25, v26, v27);
      v32 = objc_msgSend_UUIDString(v13, v29, v30, v31);
      *buf = 136315650;
      v37 = "[WaypointsComplicationDataSource _guidesWaypointWithUUID:]";
      v38 = 2112;
      v39 = v28;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEFAULT, "%s found waypoint complication %@ with uuid %@ in guide manager.", buf, 0x20u);
    }
  }

  return v24;
}

@end