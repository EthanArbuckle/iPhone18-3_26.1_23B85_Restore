@interface NCWaypoint
+ (NCWaypoint)idealizedSmartWaypoint;
+ (NCWaypoint)idealizedWaypoint;
+ (id)databaseWaypointInDbWithUUID:(id)d altitude:(id)altitude;
+ (id)defaultMapGuideWaypointIconColor;
+ (id)idealizedWaypointSymbolColor;
+ (id)parkedCarLabel;
+ (id)parkedCarSymbolColor;
+ (id)parkedCarWaypointWithUUID:(id)d;
+ (id)randomizedWaypoint;
+ (id)sampleParkedCarWaypointWithLocation:(id)location;
+ (id)waypointForCollectionPlaceItem:(id)item inGuide:(id)guide;
+ (id)waypointForCoreDataWaypoint:(id)waypoint;
+ (id)waypointForDescriptorWithUUID:(id)d creationTime:(id)time label:(id)label color:(id)color symbol:(id)symbol location:(id)location isEnabled:(BOOL)enabled;
- (BOOL)_isEqualToNCWaypoint:(id)waypoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentCellularWaypoint:(id)waypoint;
- (BOOL)isSignificantlyDifferentFrom:(id)from;
- (BOOL)isSystemWaypoint;
- (NCWaypoint)initWithCoder:(id)coder;
- (NCWaypoint)initWithLabel:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)type location:(id)self0 altitude:(id)self1 isEnabled:(BOOL)self2;
- (NCWaypoint)initWithUUID:(id)d creationTime:(id)time label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)self0 styleAttributes:(id)self1 type:(int64_t)self2 location:(id)self3 altitude:(id)self4 isEnabled:(BOOL)self5 mapKitID:(id)self6 muid:(id)self7;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol styleAttributes:(id)self0 type:(int64_t)self1 location:(id)self2 altitude:(id)self3 isEnabled:(BOOL)self4 mapKitID:(id)self5 muid:(id)self6;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3;
- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3 mapKitID:(id)self4 muid:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLabelColor:(id)color;
@end

@implementation NCWaypoint

- (BOOL)isSignificantlyDifferentFrom:(id)from
{
  fromCopy = from;
  v8 = objc_msgSend_location(self, v5, v6, v7);
  if (v8 && (v12 = v8, objc_msgSend_location(fromCopy, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v17 = objc_msgSend_location(self, v14, v15, v16);
    v21 = objc_msgSend_location(fromCopy, v18, v19, v20);
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

+ (id)parkedCarWaypointWithUUID:(id)d
{
  dCopy = d;
  v5 = [self alloc];
  v9 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7, v8);
  v13 = objc_msgSend_parkedCarLabel(NCWaypoint, v10, v11, v12);
  v17 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v14, v15, v16);
  v21 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v5, v18, dCopy, v9, v13, 0, 0, v17, 0, @"car.fill", 1, 0, 0, v21);

  return isEnabled;
}

+ (id)sampleParkedCarWaypointWithLocation:(id)location
{
  locationCopy = location;
  v5 = [self alloc];
  v9 = objc_msgSend_parkedCarLabel(NCWaypoint, v6, v7, v8);
  v13 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v10, v11, v12);
  v17 = 1;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v5, v14, v9, v13, @"car.fill", 1, locationCopy, 0, v17);

  return isEnabled;
}

- (NCWaypoint)initWithLabel:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)type location:(id)self0 altitude:(id)self1 isEnabled:(BOOL)self2
{
  v18 = MEMORY[0x277CCAD78];
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  v30 = objc_msgSend_UUID(v18, v27, v28, v29);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_mapKitID_muid_(self, v31, v30, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, type, locationCopy, altitudeCopy, enabled, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3
{
  v18 = MEMORY[0x277CBEAA8];
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v30 = objc_msgSend_date(v18, v27, v28, v29);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v31, dCopy, v30, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, 0, symbolCopy, 0, type, locationCopy, altitudeCopy, enabled, 0, 0);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol type:(int64_t)self0 location:(id)self1 altitude:(id)self2 isEnabled:(BOOL)self3 mapKitID:(id)self4 muid:(id)self5
{
  v35 = MEMORY[0x277CBEAA8];
  muidCopy = muid;
  iDCopy = iD;
  altitudeCopy = altitude;
  locationCopy = location;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v39 = objc_msgSend_date(v35, v25, v26, v27);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v28, dCopy, v39, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, 0, type, locationCopy, altitudeCopy, enabled, iDCopy, muidCopy);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)symbol styleAttributes:(id)self0 type:(int64_t)self1 location:(id)self2 altitude:(id)self3 isEnabled:(BOOL)self4 mapKitID:(id)self5 muid:(id)self6
{
  v36 = MEMORY[0x277CBEAA8];
  muidCopy = muid;
  iDCopy = iD;
  altitudeCopy = altitude;
  locationCopy = location;
  attributesCopy = attributes;
  symbolCopy = symbol;
  highlightColorCopy = highlightColor;
  colorCopy = color;
  descriptionCopy = description;
  shortLabelCopy = shortLabel;
  labelCopy = label;
  dCopy = d;
  v43 = objc_msgSend_date(v36, v23, v24, v25);
  v26 = descriptionCopy;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v27, dCopy, v43, labelCopy, shortLabelCopy, descriptionCopy, colorCopy, highlightColorCopy, symbolCopy, attributesCopy, type, locationCopy, altitudeCopy, enabled, iDCopy, muidCopy);

  return isEnabled_mapKitID_muid;
}

- (NCWaypoint)initWithUUID:(id)d creationTime:(id)time label:(id)label shortLabel:(id)shortLabel explanatoryDescription:(id)description color:(id)color highlightColor:(id)highlightColor symbol:(id)self0 styleAttributes:(id)self1 type:(int64_t)self2 location:(id)self3 altitude:(id)self4 isEnabled:(BOOL)self5 mapKitID:(id)self6 muid:(id)self7
{
  dCopy = d;
  timeCopy = time;
  timeCopy2 = time;
  labelCopy = label;
  labelCopy2 = label;
  shortLabelCopy = shortLabel;
  descriptionCopy = description;
  colorCopy = color;
  highlightColorCopy = highlightColor;
  symbolCopy = symbol;
  attributesCopy = attributes;
  locationCopy = location;
  altitudeCopy = altitude;
  iDCopy = iD;
  muidCopy = muid;
  v46.receiver = self;
  v46.super_class = NCWaypoint;
  v28 = [(NCWaypoint *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_uuid, d);
    objc_storeStrong(&v29->_timestampOfCreation, timeCopy);
    v29->_enabled = enabled;
    objc_storeStrong(&v29->_label, labelCopy);
    objc_storeStrong(&v29->_shortLabel, shortLabel);
    objc_storeStrong(&v29->_explanatoryDescription, description);
    objc_storeStrong(&v29->_labelColor, color);
    objc_storeStrong(&v29->_highlightColor, highlightColor);
    objc_storeStrong(&v29->_symbol, symbol);
    objc_storeStrong(&v29->_styleAttributes, attributes);
    v29->_type = type;
    objc_storeStrong(&v29->_location, location);
    if (altitudeCopy)
    {
      objc_msgSend_doubleValue(altitudeCopy, v30, v31, v32);
      v29->_altitude = v33;
      v29->_altitudePopulated = 1;
    }

    objc_storeStrong(&v29->_mapKitID, iD);
    objc_storeStrong(&v29->_muid, muid);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToNCWaypoint = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToNCWaypoint = objc_msgSend__isEqualToNCWaypoint_(self, v5, equalCopy, v6);
    }

    else
    {
      isEqualToNCWaypoint = 0;
    }
  }

  return isEqualToNCWaypoint;
}

- (BOOL)_isEqualToNCWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (!waypointCopy)
  {
    goto LABEL_47;
  }

  v8 = objc_msgSend_uuid(self, v4, v5, v6);
  v12 = objc_msgSend_uuid(waypointCopy, v9, v10, v11);
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
  v24 = objc_msgSend_timestampOfCreation(waypointCopy, v21, v22, v23);
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
  v36 = objc_msgSend_label(waypointCopy, v33, v34, v35);
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
  v48 = objc_msgSend_shortLabel(waypointCopy, v45, v46, v47);
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
  v60 = objc_msgSend_explanatoryDescription(waypointCopy, v57, v58, v59);
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
  v72 = objc_msgSend_labelColor(waypointCopy, v69, v70, v71);
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
  v84 = objc_msgSend_highlightColor(waypointCopy, v81, v82, v83);
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
  v96 = objc_msgSend_symbol(waypointCopy, v93, v94, v95);
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
  v108 = objc_msgSend_styleAttributes(waypointCopy, v105, v106, v107);
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
  if (v116 != objc_msgSend_type(waypointCopy, v117, v118, v119))
  {
    goto LABEL_47;
  }

  isEnabled = objc_msgSend_isEnabled(self, v120, v121, v122);
  if (isEnabled != objc_msgSend_isEnabled(waypointCopy, v124, v125, v126))
  {
    goto LABEL_47;
  }

  v130 = objc_msgSend_location(self, v127, v128, v129);
  objc_msgSend_coordinate(v130, v131, v132, v133);
  v135 = v134;
  v139 = objc_msgSend_location(waypointCopy, v136, v137, v138);
  objc_msgSend_coordinate(v139, v140, v141, v142);
  v144 = v143;

  if (v135 != v144)
  {
    goto LABEL_47;
  }

  v148 = objc_msgSend_location(self, v145, v146, v147);
  objc_msgSend_coordinate(v148, v149, v150, v151);
  v153 = v152;
  v157 = objc_msgSend_location(waypointCopy, v154, v155, v156);
  objc_msgSend_coordinate(v157, v158, v159, v160);
  v162 = v161;

  if (v153 != v162)
  {
    goto LABEL_47;
  }

  isAltitudePopulated = objc_msgSend_isAltitudePopulated(self, v163, v164, v165);
  if (isAltitudePopulated != objc_msgSend_isAltitudePopulated(waypointCopy, v167, v168, v169))
  {
    goto LABEL_47;
  }

  if (objc_msgSend_isAltitudePopulated(self, v170, v171, v172))
  {
    objc_msgSend_altitude(self, v173, v174, v175);
    v177 = v176;
    objc_msgSend_altitude(waypointCopy, v178, v179, v180);
    if (v177 != v181)
    {
      goto LABEL_47;
    }
  }

  v182 = objc_msgSend_mapKitID(self, v173, v174, v175);
  v186 = objc_msgSend_mapKitID(waypointCopy, v183, v184, v185);
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
  v202 = objc_msgSend_muid(waypointCopy, v197, v198, v199);
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

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(self->_labelColor, v5, colorCopy, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_labelColor, color);
    labelColorDescription = self->_labelColorDescription;
    self->_labelColorDescription = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isAltitudePopulated(self, a2, zone, v3))
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

- (NCWaypoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v4, @"latitude", v5);
  v7 = v6;
  objc_msgSend_decodeDoubleForKey_(coderCopy, v8, @"longitude", v9);
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277CE41F8]);
  v73 = objc_msgSend_initWithLatitude_longitude_(v12, v13, v14, v15, v7, v11);
  if (objc_msgSend_decodeBoolForKey_(coderCopy, v16, @"altitudePopulated", v17))
  {
    v20 = MEMORY[0x277CCABB0];
    objc_msgSend_decodeDoubleForKey_(coderCopy, v18, @"altitude", v19);
    v24 = objc_msgSend_numberWithDouble_(v20, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_class();
  v72 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"uuid");
  v27 = objc_opt_class();
  v67 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"creationTimestamp");
  v29 = objc_opt_class();
  v70 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"label");
  v31 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"shortLabel");
  v34 = objc_opt_class();
  v69 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"explanatoryDescription");
  v36 = objc_opt_class();
  v68 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"labelColor");
  v38 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v39, v38, @"highlightColor");
  v40 = objc_opt_class();
  v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"symbol");
  v42 = objc_opt_class();
  v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v43, v42, @"styleAttributes");
  v47 = objc_msgSend_decodeIntegerForKey_(coderCopy, v45, @"type", v46);
  v50 = objc_msgSend_decodeBoolForKey_(coderCopy, v48, @"enabled", v49);
  v51 = objc_opt_class();
  v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v51, @"mapKitID");
  v54 = objc_opt_class();
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"muid");
  v64 = v50;
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(self, v57, v72, v67, v70, v33, v69, v68, v66, v65, v44, v47, v73, v24, v64, v53, v56);

  if (isEnabled_mapKitID_muid)
  {
    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v60, v59, @"guideUUID");
    guideUUID = isEnabled_mapKitID_muid->_guideUUID;
    isEnabled_mapKitID_muid->_guideUUID = v61;
  }

  return isEnabled_mapKitID_muid;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, label, @"label");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_shortLabel, @"shortLabel");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_explanatoryDescription, @"explanatoryDescription");
  objc_msgSend_coordinate(self->_location, v8, v9, v10);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v11, @"latitude", v12);
  objc_msgSend_coordinate(self->_location, v13, v14, v15);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v16, @"longitude", v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, self->_labelColor, @"labelColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, self->_highlightColor, @"highlightColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v21, self->_symbol, @"symbol");
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, self->_styleAttributes, @"styleAttributes");
  objc_msgSend_encodeBool_forKey_(coderCopy, v23, self->_enabled, @"enabled");
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, self->_timestampOfCreation, @"creationTimestamp");
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, self->_uuid, @"uuid");
  objc_msgSend_encodeDouble_forKey_(coderCopy, v26, @"altitude", v27, self->_altitude);
  objc_msgSend_encodeBool_forKey_(coderCopy, v28, self->_altitudePopulated, @"altitudePopulated");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v29, self->_type, @"type");
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, self->_guideUUID, @"guideUUID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, self->_mapKitID, @"mapKitID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, self->_muid, @"muid");
}

- (BOOL)isEquivalentCellularWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (self == waypointCopy)
  {
    v16 = 1;
  }

  else
  {
    v8 = objc_msgSend_type(self, v4, v5, v6);
    if (v8 == objc_msgSend_type(waypointCopy, v9, v10, v11))
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

    v28 = objc_msgSend_location(waypointCopy, v25, v26, v27);
    objc_msgSend_coordinate(v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;

    v39 = objc_msgSend_labelColor(self, v36, v37, v38);
    v43 = objc_msgSend_labelColor(waypointCopy, v40, v41, v42);
    if (objc_msgSend_isEqual_(v39, v44, v43, v45))
    {
      v49 = objc_msgSend_highlightColor(self, v46, v47, v48);
      v53 = objc_msgSend_highlightColor(waypointCopy, v50, v51, v52);
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

+ (id)waypointForDescriptorWithUUID:(id)d creationTime:(id)time label:(id)label color:(id)color symbol:(id)symbol location:(id)location isEnabled:(BOOL)enabled
{
  locationCopy = location;
  symbolCopy = symbol;
  colorCopy = color;
  labelCopy = label;
  timeCopy = time;
  dCopy = d;
  v21 = [self alloc];
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v21, v22, dCopy, timeCopy, labelCopy, 0, 0, colorCopy, 0, symbolCopy, 4, locationCopy, 0, enabled);

  return isEnabled;
}

+ (id)waypointForCoreDataWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if (objc_msgSend_altitudePopulated(waypointCopy, v5, v6, v7))
  {
    v11 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(waypointCopy, v8, v9, v10);
    v15 = objc_msgSend_numberWithDouble_(v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [self alloc];
  v20 = objc_msgSend_uuid(waypointCopy, v17, v18, v19);
  v24 = objc_msgSend_timeOfCreation(waypointCopy, v21, v22, v23);
  v28 = objc_msgSend_label(waypointCopy, v25, v26, v27);
  v32 = objc_msgSend_labelColor(waypointCopy, v29, v30, v31);
  v36 = objc_msgSend_symbol(waypointCopy, v33, v34, v35);
  v40 = objc_msgSend_type(waypointCopy, v37, v38, v39);
  v44 = objc_msgSend_coreLocation(waypointCopy, v41, v42, v43);
  v51 = objc_msgSend_enabled(waypointCopy, v45, v46, v47);
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v16, v48, v20, v24, v28, 0, 0, v32, 0, v36, v40, v44, v15, v51);

  return isEnabled;
}

+ (id)waypointForCollectionPlaceItem:(id)item inGuide:(id)guide
{
  itemCopy = item;
  v6 = MEMORY[0x277CE41F8];
  guideCopy = guide;
  v7 = [v6 alloc];
  v11 = objc_msgSend_latitude(itemCopy, v8, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13, v14);
  v16 = v15;
  v20 = objc_msgSend_longitude(itemCopy, v17, v18, v19);
  objc_msgSend_doubleValue(v20, v21, v22, v23);
  v86 = objc_msgSend_initWithLatitude_longitude_(v7, v24, v25, v26, v16, v27);

  v31 = objc_msgSend_muid(itemCopy, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_muid(itemCopy, v32, v33, v34);
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

  v46 = objc_msgSend_customName(itemCopy, v32, v33, v34);
  v50 = v46;
  if ((!v46 || !objc_msgSend_length(v46, v47, v48, v49)) && (objc_msgSend_mapItemName(itemCopy, v47, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), v50, (v50 = v51) == 0) || !objc_msgSend_length(v50, v47, v48, v49))
  {
    v55 = NanoCompassLocalizedString(@"MAPS_GUIDE_WAYPOINT_NAME");

    v50 = v55;
  }

  v56 = objc_msgSend_mapItemStorage(itemCopy, v52, v53, v54);
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
  v69 = [self alloc];
  v73 = objc_msgSend_identifier(itemCopy, v70, v71, v72);
  v77 = objc_msgSend_createTime(itemCopy, v74, v75, v76);
  isEnabled_mapKitID_muid = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_styleAttributes_type_location_altitude_isEnabled_mapKitID_muid_(v69, v78, v73, v77, v50, 0, 0, v68, 0, @"mappin", v61, 2, v86, 0, 1, v45, v84);

  objc_msgSend_setGuideUUID_(isEnabled_mapKitID_muid, v80, guideCopy, v81);

  return isEnabled_mapKitID_muid;
}

+ (id)databaseWaypointInDbWithUUID:(id)d altitude:(id)altitude
{
  v6 = MEMORY[0x277CE41F8];
  altitudeCopy = altitude;
  dCopy = d;
  v9 = [v6 alloc];
  v13 = objc_msgSend_initWithLatitude_longitude_(v9, v10, v11, v12, -1.0, -1.0);
  v14 = [self alloc];
  v18 = objc_msgSend_now(MEMORY[0x277CBEAA8], v15, v16, v17);
  v22 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v19, v20, v21);
  v26 = objc_msgSend_defaultMapGuideWaypointIconColor(NCWaypoint, v23, v24, v25);
  v30 = 1;
  isEnabled = objc_msgSend_initWithUUID_creationTime_label_shortLabel_explanatoryDescription_color_highlightColor_symbol_type_location_altitude_isEnabled_(v14, v27, dCopy, v18, @"Placeholder", @"Placeholder", 0, v22, v26, @"mappin", 2, v13, altitudeCopy, v30);

  return isEnabled;
}

@end