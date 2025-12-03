@interface _VehiclePOI
- (_VehiclePOI)initWithRTVehicleEvent:(id)event;
- (void)showInfo;
@end

@implementation _VehiclePOI

- (_VehiclePOI)initWithRTVehicleEvent:(id)event
{
  eventCopy = event;
  v5 = NTKFoghornFaceLocalizedString(@"LEGHORN_MAPS_PARKED_CAR");
  v7 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, 0.180392157, 0.419607843, 0.97254902, 1.0);
  v10 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v8, v9);
  v13 = objc_msgSend_location(eventCopy, v11, v12);
  objc_msgSend_latitude(v13, v14, v15);
  v17 = v16;

  v20 = objc_msgSend_location(eventCopy, v18, v19);

  objc_msgSend_longitude(v20, v21, v22);
  v24 = v23;

  v25 = objc_alloc(MEMORY[0x277CE41F8]);
  v27 = objc_msgSend_initWithLatitude_longitude_(v25, v26, v17, v24);
  location = self->_location;
  self->_location = v27;
  v29 = v27;

  v32 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_(self, v30, v31, v5, v7, v10, v7, @"car.fill", v29, 32);
  return v32;
}

- (void)showInfo
{
  v3 = objc_alloc(MEMORY[0x277CD4E80]);
  v13 = objc_msgSend_initWithCLLocation_(v3, v4, v5, self->_location);
  v8 = objc_msgSend_labelText(self, v6, v7);
  objc_msgSend_setName_(v13, v9, v10, v8);

  objc_msgSend_openInMapsWithLaunchOptions_(v13, v11, v12, 0);
}

@end