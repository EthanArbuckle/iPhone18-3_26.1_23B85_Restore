@interface NTKLeghornWaypoint
+ (CGRect)adjustDrawRect:(CGRect)rect forSFSymbol:(id)symbol;
+ (id)iconImageForSFSymbol:(id)symbol;
+ (id)testAppleParkLocation;
+ (id)testAppleParkWaypoints;
- (CGRect)adjustDrawRect:(CGRect)rect;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category timestampOfCreation:(id)self0;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location timestampOfCreation:(id)creation;
- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category;
- (UIImage)glyphImage;
@end

@implementation NTKLeghornWaypoint

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category timestampOfCreation:(id)self0
{
  textCopy = text;
  colorCopy = color;
  glyphColorCopy = glyphColor;
  fillColorCopy = fillColor;
  nameCopy = name;
  locationCopy = location;
  creationCopy = creation;
  v27.receiver = self;
  v27.super_class = NTKLeghornWaypoint;
  v19 = [(NTKLeghornWaypoint *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_labelText, text);
    objc_storeStrong(&v20->_labelColor, color);
    objc_storeStrong(&v20->_glyphColor, glyphColor);
    objc_storeStrong(&v20->_fillColor, fillColor);
    objc_storeStrong(&v20->_sfSymbolName, name);
    objc_storeStrong(&v20->_waypointLocation, location);
    objc_storeStrong(&v20->_timestampOfCreation, creation);
    v20->_waypointCategory = category;
  }

  return v20;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color glyphColor:(id)glyphColor fillColor:(id)fillColor sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category
{
  v15 = MEMORY[0x277CBEAA8];
  locationCopy = location;
  nameCopy = name;
  fillColorCopy = fillColor;
  glyphColorCopy = glyphColor;
  colorCopy = color;
  textCopy = text;
  v24 = objc_msgSend_now(v15, v22, v23);
  v27 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v25, v26, textCopy, colorCopy, glyphColorCopy, fillColorCopy, nameCopy, locationCopy, category, v24);

  return v27;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location waypointCategory:(unint64_t)category
{
  v12 = MEMORY[0x277D75348];
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v19 = objc_msgSend_blackColor(v12, v17, v18);
  v22 = objc_msgSend_now(MEMORY[0x277CBEAA8], v20, v21);
  v25 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v23, v24, textCopy, colorCopy, v19, colorCopy, nameCopy, locationCopy, category, v22);

  return v25;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location timestampOfCreation:(id)creation
{
  v12 = MEMORY[0x277D75348];
  creationCopy = creation;
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v20 = objc_msgSend_blackColor(v12, v18, v19);
  v23 = objc_msgSend_initWithLabelText_labelColor_glyphColor_fillColor_sfSymbolName_location_waypointCategory_timestampOfCreation_(self, v21, v22, textCopy, colorCopy, v20, colorCopy, nameCopy, locationCopy, 0, creationCopy);

  return v23;
}

- (NTKLeghornWaypoint)initWithLabelText:(id)text labelColor:(id)color sfSymbolName:(id)name location:(id)location
{
  v10 = MEMORY[0x277CBEAA8];
  locationCopy = location;
  nameCopy = name;
  colorCopy = color;
  textCopy = text;
  v16 = objc_msgSend_dateWithTimeIntervalSinceNow_(v10, v15, -259200.0);
  v19 = objc_msgSend_initWithLabelText_labelColor_sfSymbolName_location_timestampOfCreation_(self, v17, v18, textCopy, colorCopy, nameCopy, locationCopy, v16);

  return v19;
}

+ (id)iconImageForSFSymbol:(id)symbol
{
  v4 = MEMORY[0x277D75348];
  symbolCopy = symbol;
  v8 = objc_msgSend_cyanColor(v4, v6, v7);
  v11 = objc_msgSend_iconImageForSFSymbol_color_(self, v9, v10, symbolCopy, v8);

  return v11;
}

- (UIImage)glyphImage
{
  v3 = objc_msgSend_sfSymbolName(self, a2, v2);
  v4 = objc_opt_class();
  v7 = objc_msgSend_iconImageForSFSymbol_(v4, v5, v6, v3);

  return v7;
}

+ (CGRect)adjustDrawRect:(CGRect)rect forSFSymbol:(id)symbol
{
  MEMORY[0x2821F9670](rect.origin.x);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)adjustDrawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_msgSend_sfSymbolName(self, a2, rect.origin.x);
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