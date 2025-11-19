@interface NTKLeghornWaypoint
+ (CGRect)adjustDrawRect:(CGRect)a3 forSFSymbol:(id)a4;
+ (id)iconImageForSFSymbol:(id)a3;
+ (id)testAppleParkLocation;
+ (id)testAppleParkWaypoints;
- (CGRect)adjustDrawRect:(CGRect)a3;
- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 glyphColor:(id)a5 fillColor:(id)a6 sfSymbolName:(id)a7 location:(id)a8 waypointCategory:(unint64_t)a9;
- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 glyphColor:(id)a5 fillColor:(id)a6 sfSymbolName:(id)a7 location:(id)a8 waypointCategory:(unint64_t)a9 timestampOfCreation:(id)a10;
- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6;
- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6 timestampOfCreation:(id)a7;
- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6 waypointCategory:(unint64_t)a7;
- (UIImage)glyphImage;
@end

@implementation NTKLeghornWaypoint

- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 glyphColor:(id)a5 fillColor:(id)a6 sfSymbolName:(id)a7 location:(id)a8 waypointCategory:(unint64_t)a9 timestampOfCreation:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a10;
  v27.receiver = self;
  v27.super_class = NTKLeghornWaypoint;
  v19 = [(NTKLeghornWaypoint *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_labelText, a3);
    objc_storeStrong(&v20->_labelColor, a4);
    objc_storeStrong(&v20->_glyphColor, a5);
    objc_storeStrong(&v20->_fillColor, a6);
    objc_storeStrong(&v20->_sfSymbolName, a7);
    objc_storeStrong(&v20->_waypointLocation, a8);
    objc_storeStrong(&v20->_timestampOfCreation, a10);
    v20->_waypointCategory = a9;
  }

  return v20;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 glyphColor:(id)a5 fillColor:(id)a6 sfSymbolName:(id)a7 location:(id)a8 waypointCategory:(unint64_t)a9
{
  v15 = MEMORY[0x277CBEAA8];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v24 = objc_msgSend_now(v15, v22, v23);
  v27 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v25, v26, v21, v20, v19, v18, v17, v16, a9, v24);

  return v27;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6 waypointCategory:(unint64_t)a7
{
  v12 = MEMORY[0x277D75348];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v19 = objc_msgSend_blackColor(v12, v17, v18);
  v22 = objc_msgSend_now(MEMORY[0x277CBEAA8], v20, v21);
  v25 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v23, v24, v16, v15, v19, v15, v14, v13, a7, v22);

  return v25;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6 timestampOfCreation:(id)a7
{
  v12 = MEMORY[0x277D75348];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v20 = objc_msgSend_blackColor(v12, v18, v19);
  v23 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v21, v22, v17, v16, v20, v16, v15, v14, 0, v13);

  return v23;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)a3 labelColor:(id)a4 sfSymbolName:(id)a5 location:(id)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = objc_msgSend_dateWithTimeIntervalSinceNow_(v10, v15, -259200.0);
  v19 = objc_msgSend_initWithLabelText_labelColor_sfSymbolName_location_timestampOfCreation_(self, v17, v18, v14, v13, v12, v11, v16);

  return v19;
}

+ (id)iconImageForSFSymbol:(id)a3
{
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  v8 = objc_msgSend_cyanColor(v4, v6, v7);
  v11 = objc_msgSend_iconImageForSFSymbol_color_(a1, v9, v10, v5, v8);

  return v11;
}

- (UIImage)glyphImage
{
  v3 = objc_msgSend_sfSymbolName(self, a2, v2);
  v4 = objc_opt_class();
  v7 = objc_msgSend_iconImageForSFSymbol_(v4, v5, v6, v3);

  return v7;
}

+ (CGRect)adjustDrawRect:(CGRect)a3 forSFSymbol:(id)a4
{
  MEMORY[0x2821F9670](a3.origin.x);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)adjustDrawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_msgSend_sfSymbolName(self, a2, a3.origin.x);
  v8 = objc_opt_class();
  objc_msgSend_adjustDrawRect_forSFSymbol_(v8, v9, x, v7, y, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (id)testAppleParkWaypoints
{
  v2 = objc_opt_new();
  v3 = &unk_27E1DE7D0;
  v4 = 6;
  do
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_23BEDD69C(&v37, v3);
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    v7 = objc_msgSend_initWithLatitude_longitude_(v5, v6, *&v37, *(&v37 + 1));
    v8 = v39;
    if (objc_msgSend_isEqualToString_(v8, v9, v10, @"green"))
    {
      v13 = objc_msgSend_greenColor(MEMORY[0x277D75348], v11, v12);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(v8, v11, v12, @"red"))
    {
      v13 = objc_msgSend_redColor(MEMORY[0x277D75348], v15, v16);
      goto LABEL_12;
    }

    if (objc_msgSend_isEqualToString_(v8, v15, v16, @"yellow"))
    {
      v13 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v17, v18);
      goto LABEL_12;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v8, v17, v18, @"blue");
    v20 = 1.0;
    v21 = 0.466666667;
    v22 = 0.564705882;
    if (isEqualToString)
    {
      goto LABEL_9;
    }

    if (objc_msgSend_isEqualToString_(v8, v14, 0.466666667, @"cyan", 0.564705882, 1.0))
    {
      v13 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v23, v24);
LABEL_12:
      v25 = v13;
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v34 = objc_msgSend_isEqualToString_(v8, v23, v24, @"highlight");
    v21 = 0.729411765;
    v22 = 0.31372549;
    v20 = 0.552941176;
    if (v34)
    {
LABEL_9:
      v13 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v14, v21, v22, v20, 1.0);
      goto LABEL_12;
    }

LABEL_13:
    v25 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v14, 1.0, 0.623529412, 0.866666667, 1.0);
LABEL_14:
    v26 = [NTKLeghornWaypoint alloc];
    v29 = objc_msgSend_initWithLabelText_labelColor_sfSymbolName_location_(v26, v27, v28, v38, v25, *(&v38 + 1), v7);
    objc_msgSend_addObject_(v2, v30, v31, v29);

    v3 += 40;
    --v4;
  }

  while (v4);
  v35 = objc_msgSend_copy(v2, v32, v33);

  return v35;
}

+ (id)testAppleParkLocation
{
  v2 = CLLocationCoordinate2DMake(37.33416, -122.011406);
  v4 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v3, -180.0);
  v5 = objc_alloc(MEMORY[0x277CE41F8]);
  v7 = objc_msgSend_initWithCoordinate_altitude_horizontalAccuracy_verticalAccuracy_timestamp_(v5, v6, v2.latitude, v4, v2.longitude, 50.0, 50.0, 10.0);

  return v7;
}

@end