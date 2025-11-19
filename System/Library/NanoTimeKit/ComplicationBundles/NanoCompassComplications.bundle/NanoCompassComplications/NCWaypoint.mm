@interface NCWaypoint
+ (NCWaypoint)idealizedSmartWaypoint;
+ (NCWaypoint)idealizedWaypoint;
+ (id)databaseWaypointInDbWithUUID:(id)a3 altitude:(id)a4;
+ (id)defaultMapGuideWaypointIconColor;
+ (id)idealizedWaypointSymbolColor;
+ (id)parkedCarLabel;
+ (id)parkedCarSymbolColor;
+ (id)parkedCarWaypointWithUUID:(id)a3;
+ (id)randomizedWaypoint;
+ (id)sampleParkedCarWaypointWithLocation:(id)a3;
+ (id)waypointForCollectionPlaceItem:(id)a3 inGuide:(id)a4;
+ (id)waypointForCoreDataWaypoint:(id)a3;
+ (id)waypointForDescriptorWithUUID:(id)a3 creationTime:(id)a4 label:(id)a5 color:(id)a6 symbol:(id)a7 location:(id)a8 isEnabled:(BOOL)a9;
- (BOOL)_isEqualToNCWaypoint:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentCellularWaypoint:(id)a3;
- (BOOL)isSignificantlyDifferentFrom:(id)a3;
- (BOOL)isSystemWaypoint;
- (NCWaypoint)initWithCoder:(id)a3;
- (NCWaypoint)initWithLabel:(id)a3 shortLabel:(id)a4 explanatoryDescription:(id)a5 color:(id)a6 highlightColor:(id)a7 symbol:(id)a8 type:(int64_t)a9 location:(id)a10 altitude:(id)a11 isEnabled:(BOOL)a12;
- (NCWaypoint)initWithUUID:(id)a3 creationTime:(id)a4 label:(id)a5 shortLabel:(id)a6 explanatoryDescription:(id)a7 color:(id)a8 highlightColor:(id)a9 symbol:(id)a10 styleAttributes:(id)a11 type:(int64_t)a12 location:(id)a13 altitude:(id)a14 isEnabled:(BOOL)a15 mapKitID:(id)a16 muid:(id)a17;
- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 styleAttributes:(id)a10 type:(int64_t)a11 location:(id)a12 altitude:(id)a13 isEnabled:(BOOL)a14 mapKitID:(id)a15 muid:(id)a16;
- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 type:(int64_t)a10 location:(id)a11 altitude:(id)a12 isEnabled:(BOOL)a13;
- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 type:(int64_t)a10 location:(id)a11 altitude:(id)a12 isEnabled:(BOOL)a13 mapKitID:(id)a14 muid:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setLabelColor:(id)a3;
@end

@implementation NCWaypoint

- (BOOL)isSignificantlyDifferentFrom:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_location(self, v5, v6, v7);
  if (v8 && (v12 = v8, objc_msgSend_location(v4, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v17 = objc_msgSend_location(self, v14, v15, v16);
    v21 = objc_msgSend_location(v4, v18, v19, v20);
    objc_msgSend_distanceFromLocation_(v17, v22, v21, v23);
    v25 = v24 >= 160.93;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)parkedCarSymbolColor
{
  if (qword_27E1C5360 != -1)
  {
    sub_23BD6783C();
  }

  v3 = qword_27E1C5358;

  return v3;
}

+ (id)parkedCarLabel
{
  if (qword_27E1C5370 != -1)
  {
    sub_23BD67850();
  }

  v3 = qword_27E1C5368;

  return v3;
}

+ (id)idealizedWaypointSymbolColor
{
  if (qword_27E1C5380 != -1)
  {
    sub_23BD67864();
  }

  v3 = qword_27E1C5378;

  return v3;
}

+ (id)defaultMapGuideWaypointIconColor
{
  if (qword_27E1C5390 != -1)
  {
    sub_23BD67878();
  }

  v3 = qword_27E1C5388;

  return v3;
}

+ (NCWaypoint)idealizedWaypoint
{
  if (qword_27E1C53A0 != -1)
  {
    sub_23BD6788C();
  }

  v3 = qword_27E1C5398;

  return v3;
}

+ (NCWaypoint)idealizedSmartWaypoint
{
  if (qword_27E1C53B0 != -1)
  {
    sub_23BD678A0();
  }

  v3 = qword_27E1C53A8;

  return v3;
}

+ (id)randomizedWaypoint
{
  v2 = objc_alloc(MEMORY[0x277CE41F8]);
  v6 = objc_msgSend_initWithLatitude_longitude_(v2, v3, v4, v5, 37.280737, -121.997956);
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, 275.0);
  v11 = [NCWaypoint alloc];
  v15 = objc_msgSend_orangeColor(MEMORY[0x277D75348], v12, v13, v14);
  v19 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v11, v16, @"Tent", v15, @"house.fill", 4, v6, v10, v19);

  return isEnabled;
}

+ (id)parkedCarWaypointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7, v8);
  v13 = objc_msgSend_parkedCarLabel(NCWaypoint, v10, v11, v12);
  v17 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v14, v15, v16);
  v21 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v5, v18, v4, v9, v13, 0, 0, v17, 0, @"car.fill", 1, 0, 0, v21);

  return isEnabled;
}

+ (id)sampleParkedCarWaypointWithLocation:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9 = objc_msgSend_parkedCarLabel(NCWaypoint, v6, v7, v8);
  v13 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v10, v11, v12);
  v17 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v5, v14, v9, v13, @"car.fill", 1, v4, 0, v17);

  return isEnabled;
}

- (NCWaypoint)initWithLabel:(id)a3 shortLabel:(id)a4 explanatoryDescription:(id)a5 color:(id)a6 highlightColor:(id)a7 symbol:(id)a8 type:(int64_t)a9 location:(id)a10 altitude:(id)a11 isEnabled:(BOOL)a12
{
  v18 = MEMORY[0x277CCAD78];
  v19 = a11;
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v30 = objc_msgSend_UUID(v18, v27, v28, v29);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_mapKitID_muid_(self, v31, v30, v26, v25, v24, v23, v22, v21, a9, v20, v19, a12, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 type:(int64_t)a10 location:(id)a11 altitude:(id)a12 isEnabled:(BOOL)a13
{
  v18 = MEMORY[0x277CBEAA8];
  v19 = a12;
  v20 = a11;
  v21 = a9;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v30 = objc_msgSend_date(v18, v27, v28, v29);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v31, v26, v30, v25, v24, v23, v22, 0, v21, 0, a10, v20, v19, a13, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 type:(int64_t)a10 location:(id)a11 altitude:(id)a12 isEnabled:(BOOL)a13 mapKitID:(id)a14 muid:(id)a15
{
  v35 = MEMORY[0x277CBEAA8];
  v36 = a15;
  v32 = a14;
  v18 = a12;
  v19 = a11;
  v20 = a9;
  v21 = a8;
  v31 = a7;
  v22 = a6;
  v34 = a5;
  v23 = a4;
  v24 = a3;
  v39 = objc_msgSend_date(v35, v25, v26, v27);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v28, v24, v39, v23, v34, v22, v31, v21, v20, 0, a10, v19, v18, a13, v32, v36);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)a3 label:(id)a4 shortLabel:(id)a5 explanatoryDescription:(id)a6 color:(id)a7 highlightColor:(id)a8 symbol:(id)a9 styleAttributes:(id)a10 type:(int64_t)a11 location:(id)a12 altitude:(id)a13 isEnabled:(BOOL)a14 mapKitID:(id)a15 muid:(id)a16
{
  v36 = MEMORY[0x277CBEAA8];
  v39 = a16;
  v35 = a15;
  v31 = a13;
  v34 = a12;
  v33 = a10;
  v19 = a9;
  v20 = a8;
  v32 = a7;
  v21 = a6;
  v38 = a5;
  v22 = a4;
  v41 = a3;
  v43 = objc_msgSend_date(v36, v23, v24, v25);
  v26 = v21;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v27, v41, v43, v22, v38, v21, v32, v20, v19, v33, a11, v34, v31, a14, v35, v39);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)a3 creationTime:(id)a4 label:(id)a5 shortLabel:(id)a6 explanatoryDescription:(id)a7 color:(id)a8 highlightColor:(id)a9 symbol:(id)a10 styleAttributes:(id)a11 type:(int64_t)a12 location:(id)a13 altitude:(id)a14 isEnabled:(BOOL)a15 mapKitID:(id)a16 muid:(id)a17
{
  v22 = a3;
  v36 = a4;
  v45 = a4;
  v37 = a5;
  v44 = a5;
  v43 = a6;
  v42 = a7;
  v41 = a8;
  v40 = a9;
  v39 = a10;
  v23 = a11;
  v24 = a13;
  v25 = a14;
  v26 = a16;
  v27 = a17;
  v46.receiver = self;
  v46.super_class = NCWaypoint;
  v28 = [(NCWaypoint *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_uuid, a3);
    objc_storeStrong(&v29->_timestampOfCreation, v36);
    v29->_enabled = a15;
    objc_storeStrong(&v29->_label, v37);
    objc_storeStrong(&v29->_shortLabel, a6);
    objc_storeStrong(&v29->_explanatoryDescription, a7);
    objc_storeStrong(&v29->_labelColor, a8);
    objc_storeStrong(&v29->_highlightColor, a9);
    objc_storeStrong(&v29->_symbol, a10);
    objc_storeStrong(&v29->_styleAttributes, a11);
    v29->_type = a12;
    objc_storeStrong(&v29->_location, a13);
    if (v25)
    {
      objc_msgSend_doubleValue(v25, v30, v31, v32);
      v29->_altitude = v33;
      v29->_altitudePopulated = 1;
    }

    objc_storeStrong(&v29->_mapKitID, a16);
    objc_storeStrong(&v29->_muid, a17);
  }

  return v29;
}

- (id)description
{
  labelColorDescription = self->_labelColorDescription;
  if (!labelColorDescription)
  {
    labelColor = self->_labelColor;
    if (!labelColor)
    {
      goto LABEL_6;
    }

    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0;
    if (objc_msgSend_getRed_green_blue_alpha_(labelColor, a2, &v16, &v15, &v14, &v13))
    {
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(R:%.2f,G:%.2f,B:%.2f,a:%.2f)", v2, v16, v15, v14, v13);
      v7 = self->_labelColorDescription;
      self->_labelColorDescription = v6;
    }

    labelColorDescription = self->_labelColorDescription;
    if (!labelColorDescription)
    {
LABEL_6:
      v8 = self->_labelColorDescription;
      self->_labelColorDescription = @"nil";

      labelColorDescription = self->_labelColorDescription;
    }
  }

  uuid = self->_uuid;
  symbol = self->_symbol;
  if (self->_enabled)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<NCWaypoint:%@:%@:%@:%@ mapKitID:%@ muid:%@>", v2, uuid, symbol, labelColorDescription, @"Enabled", self->_mapKitID, self->_muid);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<NCWaypoint:%@:%@:%@:%@ mapKitID:%@ muid:%@>", v2, uuid, symbol, labelColorDescription, @"Disabled", self->_mapKitID, self->_muid);
  }
  v11 = ;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToNCWaypoint = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToNCWaypoint = objc_msgSend__isEqualToNCWaypoint_(self, v5, v4, v6);
    }

    else
    {
      isEqualToNCWaypoint = 0;
    }
  }

  return isEqualToNCWaypoint;
}

- (BOOL)_isEqualToNCWaypoint:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    goto LABEL_47;
  }

  v8 = objc_msgSend_uuid(self, v4, v5, v6);
  v12 = objc_msgSend_uuid(v7, v9, v10, v11);
  v15 = v12;
  if (v8 == v12)
  {
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v8, v13, v12, v14);

    if (!isEqual)
    {
      goto LABEL_47;
    }
  }

  v20 = objc_msgSend_timestampOfCreation(self, v17, v18, v19);
  v24 = objc_msgSend_timestampOfCreation(v7, v21, v22, v23);
  v27 = v24;
  if (v20 == v24)
  {
  }

  else
  {
    v28 = objc_msgSend_isEqual_(v20, v25, v24, v26);

    if (!v28)
    {
      goto LABEL_47;
    }
  }

  v32 = objc_msgSend_label(self, v29, v30, v31);
  v36 = objc_msgSend_label(v7, v33, v34, v35);
  v39 = v36;
  if (v32 == v36)
  {
  }

  else
  {
    v40 = objc_msgSend_isEqual_(v32, v37, v36, v38);

    if (!v40)
    {
      goto LABEL_47;
    }
  }

  v44 = objc_msgSend_shortLabel(self, v41, v42, v43);
  v48 = objc_msgSend_shortLabel(v7, v45, v46, v47);
  v51 = v48;
  if (v44 == v48)
  {
  }

  else
  {
    v52 = objc_msgSend_isEqual_(v44, v49, v48, v50);

    if (!v52)
    {
      goto LABEL_47;
    }
  }

  v56 = objc_msgSend_explanatoryDescription(self, v53, v54, v55);
  v60 = objc_msgSend_explanatoryDescription(v7, v57, v58, v59);
  v63 = v60;
  if (v56 == v60)
  {
  }

  else
  {
    v64 = objc_msgSend_isEqual_(v56, v61, v60, v62);

    if (!v64)
    {
      goto LABEL_47;
    }
  }

  v68 = objc_msgSend_labelColor(self, v65, v66, v67);
  v72 = objc_msgSend_labelColor(v7, v69, v70, v71);
  v75 = v72;
  if (v68 == v72)
  {
  }

  else
  {
    v76 = objc_msgSend_isEqual_(v68, v73, v72, v74);

    if (!v76)
    {
      goto LABEL_47;
    }
  }

  v80 = objc_msgSend_highlightColor(self, v77, v78, v79);
  v84 = objc_msgSend_highlightColor(v7, v81, v82, v83);
  v87 = v84;
  if (v80 == v84)
  {
  }

  else
  {
    v88 = objc_msgSend_isEqual_(v80, v85, v84, v86);

    if (!v88)
    {
      goto LABEL_47;
    }
  }

  v92 = objc_msgSend_symbol(self, v89, v90, v91);
  v96 = objc_msgSend_symbol(v7, v93, v94, v95);
  v99 = v96;
  if (v92 == v96)
  {
  }

  else
  {
    v100 = objc_msgSend_isEqual_(v92, v97, v96, v98);

    if (!v100)
    {
      goto LABEL_47;
    }
  }

  v104 = objc_msgSend_styleAttributes(self, v101, v102, v103);
  v108 = objc_msgSend_styleAttributes(v7, v105, v106, v107);
  v111 = v108;
  if (v104 == v108)
  {
  }

  else
  {
    v112 = objc_msgSend_isEqual_(v104, v109, v108, v110);

    if (!v112)
    {
      goto LABEL_47;
    }
  }

  v116 = objc_msgSend_type(self, v113, v114, v115);
  if (v116 != objc_msgSend_type(v7, v117, v118, v119))
  {
    goto LABEL_47;
  }

  isEnabled = objc_msgSend_isEnabled(self, v120, v121, v122);
  if (isEnabled != objc_msgSend_isEnabled(v7, v124, v125, v126))
  {
    goto LABEL_47;
  }

  v130 = objc_msgSend_location(self, v127, v128, v129);
  objc_msgSend_coordinate(v130, v131, v132, v133);
  v135 = v134;
  v139 = objc_msgSend_location(v7, v136, v137, v138);
  objc_msgSend_coordinate(v139, v140, v141, v142);
  v144 = v143;

  if (v135 != v144)
  {
    goto LABEL_47;
  }

  v148 = objc_msgSend_location(self, v145, v146, v147);
  objc_msgSend_coordinate(v148, v149, v150, v151);
  v153 = v152;
  v157 = objc_msgSend_location(v7, v154, v155, v156);
  objc_msgSend_coordinate(v157, v158, v159, v160);
  v162 = v161;

  if (v153 != v162)
  {
    goto LABEL_47;
  }

  isAltitudePopulated = objc_msgSend_isAltitudePopulated(self, v163, v164, v165);
  if (isAltitudePopulated != objc_msgSend_isAltitudePopulated(v7, v167, v168, v169))
  {
    goto LABEL_47;
  }

  if (objc_msgSend_isAltitudePopulated(self, v170, v171, v172))
  {
    objc_msgSend_altitude(self, v173, v174, v175);
    v177 = v176;
    objc_msgSend_altitude(v7, v178, v179, v180);
    if (v177 != v181)
    {
      goto LABEL_47;
    }
  }

  v182 = objc_msgSend_mapKitID(self, v173, v174, v175);
  v186 = objc_msgSend_mapKitID(v7, v183, v184, v185);
  v189 = v186;
  if (v182 == v186)
  {
  }

  else
  {
    v190 = objc_msgSend_isEqual_(v182, v187, v186, v188);

    if (!v190)
    {
LABEL_47:
      v194 = 0;
      goto LABEL_48;
    }
  }

  v196 = objc_msgSend_muid(self, v191, v192, v193);
  v202 = objc_msgSend_muid(v7, v197, v198, v199);
  if (v196 == v202)
  {
    v194 = 1;
  }

  else
  {
    v203 = v202;
    v204 = objc_msgSend_isEqual_(v196, v200, v202, v201);
    v202 = v203;
    v194 = v204;
  }

LABEL_48:
  return v194;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_uuid(self, a2, v2, v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);

  return v8;
}

- (BOOL)isSystemWaypoint
{
  if (objc_msgSend_isConnectivityWaypoint(self, a2, v2, v3))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_isParkedCarWaypoint, v5, v6);
}

- (void)setLabelColor:(id)a3
{
  v8 = a3;
  if ((objc_msgSend_isEqual_(self->_labelColor, v5, v8, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_labelColor, a3);
    labelColorDescription = self->_labelColorDescription;
    self->_labelColorDescription = 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (objc_msgSend_isAltitudePopulated(self, a2, a3, v3))
  {
    v8 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(self, v5, v6, v7);
    v60 = objc_msgSend_numberWithDouble_(v8, v9, v10, v11);
  }

  else
  {
    v60 = 0;
  }

  v12 = [NCWaypoint alloc];
  v59 = objc_msgSend_uuid(self, v13, v14, v15);
  v58 = objc_msgSend_timestampOfCreation(self, v16, v17, v18);
  v22 = objc_msgSend_label(self, v19, v20, v21);
  v57 = objc_msgSend_shortLabel(self, v23, v24, v25);
  v29 = objc_msgSend_explanatoryDescription(self, v26, v27, v28);
  v33 = objc_msgSend_labelColor(self, v30, v31, v32);
  v37 = objc_msgSend_highlightColor(self, v34, v35, v36);
  v41 = objc_msgSend_symbol(self, v38, v39, v40);
  v45 = objc_msgSend_type(self, v42, v43, v44);
  v49 = objc_msgSend_location(self, v46, v47, v48);
  isEnabled = objc_msgSend_isEnabled(self, v50, v51, v52);
  v56 = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v12, v53, v59, v58, v22, v57, v29, v33, v37, v41, v45, v49, v60, isEnabled);

  return v56;
}

- (NCWaypoint)initWithCoder:(id)a3
{
  v3 = a3;
  objc_msgSend_decodeDoubleForKey_(v3, v4, @"latitude", v5);
  v7 = v6;
  objc_msgSend_decodeDoubleForKey_(v3, v8, @"longitude", v9);
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277CE41F8]);
  v73 = objc_msgSend_initWithLatitude_longitude_(v12, v13, v14, v15, v7, v11);
  if (objc_msgSend_decodeBoolForKey_(v3, v16, @"altitudePopulated", v17))
  {
    v20 = MEMORY[0x277CCABB0];
    objc_msgSend_decodeDoubleForKey_(v3, v18, @"altitude", v19);
    v24 = objc_msgSend_numberWithDouble_(v20, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_class();
  v72 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v26, v25, @"uuid");
  v27 = objc_opt_class();
  v67 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v28, v27, @"creationTimestamp");
  v29 = objc_opt_class();
  v70 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v30, v29, @"label");
  v31 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v32, v31, @"shortLabel");
  v34 = objc_opt_class();
  v69 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v35, v34, @"explanatoryDescription");
  v36 = objc_opt_class();
  v68 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v37, v36, @"labelColor");
  v38 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v39, v38, @"highlightColor");
  v40 = objc_opt_class();
  v65 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v41, v40, @"symbol");
  v42 = objc_opt_class();
  v44 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v43, v42, @"styleAttributes");
  v47 = objc_msgSend_decodeIntegerForKey_(v3, v45, @"type", v46);
  v50 = objc_msgSend_decodeBoolForKey_(v3, v48, @"enabled", v49);
  v51 = objc_opt_class();
  v53 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v52, v51, @"mapKitID");
  v54 = objc_opt_class();
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v55, v54, @"muid");
  v64 = v50;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v57, v72, v67, v70, v33, v69, v68, v66, v65, v44, v47, v73, v24, v64, v53, v56);

  if (isEnabled_mapKitID_muid)
  {
    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v60, v59, @"guideUUID");
    guideUUID = isEnabled_mapKitID_muid->_guideUUID;
    isEnabled_mapKitID_muid->_guideUUID = v61;
  }

  return isEnabled_mapKitID_muid;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v33 = a3;
  objc_msgSend_encodeObject_forKey_(v33, v5, label, @"label");
  objc_msgSend_encodeObject_forKey_(v33, v6, self->_shortLabel, @"shortLabel");
  objc_msgSend_encodeObject_forKey_(v33, v7, self->_explanatoryDescription, @"explanatoryDescription");
  objc_msgSend_coordinate(self->_location, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(v33, v11, @"latitude", v12);
  objc_msgSend_coordinate(self->_location, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(v33, v16, @"longitude", v17, v18);
  objc_msgSend_encodeObject_forKey_(v33, v19, self->_labelColor, @"labelColor");
  objc_msgSend_encodeObject_forKey_(v33, v20, self->_highlightColor, @"highlightColor");
  objc_msgSend_encodeObject_forKey_(v33, v21, self->_symbol, @"symbol");
  objc_msgSend_encodeObject_forKey_(v33, v22, self->_styleAttributes, @"styleAttributes");
  objc_msgSend_encodeBool_forKey_(v33, v23, self->_enabled, @"enabled");
  objc_msgSend_encodeObject_forKey_(v33, v24, self->_timestampOfCreation, @"creationTimestamp");
  objc_msgSend_encodeObject_forKey_(v33, v25, self->_uuid, @"uuid");
  objc_msgSend_encodeDouble_forKey_(v33, v26, @"altitude", v27, self->_altitude);
  objc_msgSend_encodeBool_forKey_(v33, v28, self->_altitudePopulated, @"altitudePopulated");
  objc_msgSend_encodeInteger_forKey_(v33, v29, self->_type, @"type");
  objc_msgSend_encodeObject_forKey_(v33, v30, self->_guideUUID, @"guideUUID");
  objc_msgSend_encodeObject_forKey_(v33, v31, self->_mapKitID, @"mapKitID");
  objc_msgSend_encodeObject_forKey_(v33, v32, self->_muid, @"muid");
}

- (BOOL)isEquivalentCellularWaypoint:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v16 = 1;
  }

  else
  {
    v8 = objc_msgSend_type(self, v4, v5, v6);
    if (v8 == objc_msgSend_type(v7, v9, v10, v11))
    {
      isConnectivityWaypoint = objc_msgSend_isConnectivityWaypoint(self, v12, v13, v14);
    }

    else
    {
      isConnectivityWaypoint = 0;
    }

    v17 = objc_msgSend_location(self, v12, v13, v14);
    objc_msgSend_coordinate(v17, v18, v19, v20);
    v22 = v21;
    v24 = v23;

    v28 = objc_msgSend_location(v7, v25, v26, v27);
    objc_msgSend_coordinate(v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;

    v39 = objc_msgSend_labelColor(self, v36, v37, v38);
    v43 = objc_msgSend_labelColor(v7, v40, v41, v42);
    if (objc_msgSend_isEqual_(v39, v44, v43, v45))
    {
      v49 = objc_msgSend_highlightColor(self, v46, v47, v48);
      v53 = objc_msgSend_highlightColor(v7, v50, v51, v52);
      isEqual = objc_msgSend_isEqual_(v49, v54, v53, v55);
    }

    else
    {
      isEqual = 0;
    }

    if (v22 == v33)
    {
      v57 = isConnectivityWaypoint;
    }

    else
    {
      v57 = 0;
    }

    if (v24 != v35)
    {
      v57 = 0;
    }

    v16 = v57 & isEqual;
  }

  return v16;
}

+ (id)waypointForDescriptorWithUUID:(id)a3 creationTime:(id)a4 label:(id)a5 color:(id)a6 symbol:(id)a7 location:(id)a8 isEnabled:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [a1 alloc];
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v21, v22, v20, v19, v18, 0, 0, v17, 0, v16, 4, v15, 0, a9);

  return isEnabled;
}

+ (id)waypointForCoreDataWaypoint:(id)a3
{
  v4 = a3;
  if (objc_msgSend_altitudePopulated(v4, v5, v6, v7))
  {
    v11 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(v4, v8, v9, v10);
    v15 = objc_msgSend_numberWithDouble_(v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 alloc];
  v20 = objc_msgSend_uuid(v4, v17, v18, v19);
  v24 = objc_msgSend_timeOfCreation(v4, v21, v22, v23);
  v28 = objc_msgSend_label(v4, v25, v26, v27);
  v32 = objc_msgSend_labelColor(v4, v29, v30, v31);
  v36 = objc_msgSend_symbol(v4, v33, v34, v35);
  v40 = objc_msgSend_type(v4, v37, v38, v39);
  v44 = objc_msgSend_coreLocation(v4, v41, v42, v43);
  v51 = objc_msgSend_enabled(v4, v45, v46, v47);
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v16, v48, v20, v24, v28, 0, 0, v32, 0, v36, v40, v44, v15, v51);

  return isEnabled;
}

+ (id)waypointForCollectionPlaceItem:(id)a3 inGuide:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CE41F8];
  v87 = a4;
  v7 = [v6 alloc];
  v11 = objc_msgSend_latitude(v5, v8, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13, v14);
  v16 = v15;
  v20 = objc_msgSend_longitude(v5, v17, v18, v19);
  objc_msgSend_doubleValue(v20, v21, v22, v23);
  v86 = objc_msgSend_initWithLatitude_longitude_(v7, v24, v25, v26, v16, v27);

  v31 = objc_msgSend_muid(v5, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_muid(v5, v32, v33, v34);
    v39 = objc_msgSend_unsignedLongLongValue(v35, v36, v37, v38);

    v84 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v40, v39, v41);
    v42 = objc_alloc(MEMORY[0x277CD4E98]);
    v45 = objc_msgSend_initWithMUID_(v42, v43, v39, v44);
  }

  else
  {
    v45 = 0;
    v84 = 0;
  }

  v46 = objc_msgSend_customName(v5, v32, v33, v34);
  v50 = v46;
  if ((!v46 || !objc_msgSend_length(v46, v47, v48, v49)) && (objc_msgSend_mapItemName(v5, v47, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), v50, (v50 = v51) == 0) || !objc_msgSend_length(v50, v47, v48, v49))
  {
    v55 = NanoCompassLocalizedString(@"MAPS_GUIDE_WAYPOINT_NAME");

    v50 = v55;
  }

  v56 = objc_msgSend_mapItemStorage(v5, v52, v53, v54);
  v60 = v56;
  if (!v56 || (objc_msgSend__styleAttributes(v56, v57, v58, v59), (v61 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v61 = objc_msgSend_addressMarkerStyleAttributes(MEMORY[0x277D0EB18], v57, v58, v59);
  }

  v62 = objc_msgSend_fillColorFor_(NCStyleAttributes, v57, v61, v59);
  v66 = v62;
  v83 = v60;
  if (v62)
  {
    v67 = v62;
  }

  else
  {
    v67 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v63, v64, v65);
  }

  v68 = v67;
  v69 = [a1 alloc];
  v73 = objc_msgSend_identifier(v5, v70, v71, v72);
  v77 = objc_msgSend_createTime(v5, v74, v75, v76);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(v69, v78, v73, v77, v50, 0, 0, v68, 0, @"mappin", v61, 2, v86, 0, 1, v45, v84);

  objc_msgSend_setGuideUUID_(isEnabled_mapKitID_muid, v80, v87, v81);

  return isEnabled_mapKitID_muid;
}

+ (id)databaseWaypointInDbWithUUID:(id)a3 altitude:(id)a4
{
  v6 = MEMORY[0x277CE41F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v13 = objc_msgSend_initWithLatitude_longitude_(v9, v10, v11, v12, -1.0, -1.0);
  v14 = [a1 alloc];
  v18 = objc_msgSend_now(MEMORY[0x277CBEAA8], v15, v16, v17);
  v22 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v19, v20, v21);
  v26 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v23, v24, v25);
  v30 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v14, v27, v8, v18, @"Placeholder", @"Placeholder", 0, v22, v26, @"mappin", 2, v13, v7, v30);

  return isEnabled;
}

@end