@interface GEOFeatureStyleAttributesPOI
- (GEOFeatureStyleAttributesPOI)initWithStyleAttributes:(id)attributes category:(unint64_t)category labelText:(id)text location:(id)location;
- (UIColor)fillColor;
- (UIColor)glyphColor;
- (UIImage)glyphImage;
@end

@implementation GEOFeatureStyleAttributesPOI

- (GEOFeatureStyleAttributesPOI)initWithStyleAttributes:(id)attributes category:(unint64_t)category labelText:(id)text location:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  textCopy = text;
  locationCopy = location;
  v21.receiver = self;
  v21.super_class = GEOFeatureStyleAttributesPOI;
  v14 = [(GEOFeatureStyleAttributesPOI *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleAttributes, attributes);
    objc_storeStrong(&v15->_labelText, text);
    v15->_category = category;
    objc_storeStrong(&v15->_location, location);
    v16 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_description(attributesCopy, v17, v18);
      *buf = 136315650;
      v23 = "[GEOFeatureStyleAttributesPOI initWithStyleAttributes:category:labelText:location:]";
      v24 = 2112;
      v25 = textCopy;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_23BEB1000, v16, OS_LOG_TYPE_DEFAULT, "%s: waypoint.name = %@, style.attr = %@", buf, 0x20u);
    }
  }

  return v15;
}

- (UIColor)glyphColor
{
  glyphColor = self->_glyphColor;
  if (!glyphColor)
  {
    v4 = self->_styleAttributes;
    v7 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, v6, self->_styleAttributes);
    v10 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v8, v9);
    v13 = objc_msgSend_glyphColorForStyleAttributes_key_(v10, v11, v12, v4, v7);
    if (!v13)
    {
      v13 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v14, v15);
    }

    v16 = self->_glyphColor;
    self->_glyphColor = v13;

    glyphColor = self->_glyphColor;
  }

  return glyphColor;
}

- (UIColor)fillColor
{
  fillColor = self->_fillColor;
  if (!fillColor)
  {
    v4 = self->_styleAttributes;
    v7 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, v6, self->_styleAttributes);
    v10 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v8, v9);
    v13 = objc_msgSend_fillColorForStyleAttributes_key_(v10, v11, v12, v4, v7);
    if (!v13)
    {
      v13 = objc_msgSend_greenColor(MEMORY[0x277D75348], v14, v15);
    }

    v16 = self->_fillColor;
    self->_fillColor = v13;

    fillColor = self->_fillColor;
  }

  return fillColor;
}

- (UIImage)glyphImage
{
  image = self->_image;
  if (!image)
  {
    v4 = self->_styleAttributes;
    v7 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, v6, self->_styleAttributes);
    v10 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v8, v9);
    v13 = objc_msgSend_imageForStyleAttributes_key_(v10, v11, v12, v4, v7);
    if (!v13)
    {
      v13 = objc_msgSend_iconImageForSFSymbol_(NTKLeghornWaypoint, v14, v15, @"pin");
    }

    v16 = self->_image;
    self->_image = v13;

    image = self->_image;
  }

  return image;
}

@end