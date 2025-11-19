@interface CLPlacemark
+ (CLPlacemark)placemarkWithGEOMapItem:(id)a3;
+ (id)sourceToString:(unint64_t)a3;
- (CLPlacemark)initWithCoder:(id)a3;
- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6;
- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 category:(id)a9 meCardAddress:(id)a10;
- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 category:(id)a9 meCardAddress:(id)a10 muid:(unint64_t)a11;
- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 meCardAddress:(id)a9;
- (CLPlacemark)initWithPlacemark:(CLPlacemark *)placemark;
- (CNPostalAddress)postalAddress;
- (id)_initWithGeoMapItem:(id)a3;
- (id)_initWithRTMapItem:(id)a3 location:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchFormattedAddress:(id)a3 queue:(id)a4;
@end

@implementation CLPlacemark

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = CLPlacemark;
  [(CLPlacemark *)&v4 dealloc];
}

- (id)_initWithRTMapItem:(id)a3 location:(id)a4
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"name"), @"Name"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "thoroughfare"), @"Thoroughfare"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "subThoroughfare"), @"SubThoroughfare"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "locality"), @"City"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "subLocality"), @"SubLocality"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "administrativeArea"), @"State"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "subAdministrativeArea"), @"SubAdministrativeArea"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "postalCode"), @"ZIP"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "countryCode"), @"CountryCode"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "country"), @"Country"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "inlandWater"), @"InlandWater"}];
  [v7 setObject:objc_msgSend(objc_msgSend(a3 forKeyedSubscript:{"address"), "ocean"), @"Ocean"}];
  return -[CLPlacemark initWithLocation:addressDictionary:region:areasOfInterest:mapItemSource:geoMapItemHandle:category:meCardAddress:muid:](self, "initWithLocation:addressDictionary:region:areasOfInterest:mapItemSource:geoMapItemHandle:category:meCardAddress:muid:", a4, v7, 0, [objc_msgSend(a3 "address")], objc_msgSend(a3, "source"), objc_msgSend(a3, "geoMapItemHandle"), objc_msgSend(a3, "category"), &stru_1F0E6F140, objc_msgSend(a3, "muid"));
}

- (id)_initWithGeoMapItem:(id)a3
{
  v29.receiver = self;
  v29.super_class = CLPlacemark;
  v4 = [(CLPlacemark *)&v29 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLPlacemarkInternal);
    v4->_internal->geoMapItemStorage = [objc_msgSend(MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:{a3), "copy"}];
    v5 = [a3 referenceFrame];
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 1;
    }

    v7 = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage geoFenceMapRegion];
    if ([v7 hasNorthLat] && objc_msgSend(v7, "hasSouthLat") && objc_msgSend(v7, "hasEastLng") && objc_msgSend(v7, "hasWestLng"))
    {
      [v7 northLat];
      v9 = v8;
      [v7 southLat];
      v11 = v10;
      [v7 westLng];
      v13 = v12;
      [v7 eastLng];
      v15 = (v9 + v11) * 0.5;
      if (v13 <= v14)
      {
        v17 = (v13 + v14) * 0.5;
      }

      else
      {
        v16 = v13 + (v14 + 360.0 - v13) * 0.5;
        if (v16 <= 180.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 + -360.0;
        }
      }

      [v7 southLat];
      v19 = v18;
      [v7 westLng];
      v21 = sub_19B87E164(v15, v17, v19, v20);
      v22 = [CLCircularRegion alloc];
      v4->_internal->region = -[CLCircularRegion initWithCenter:radius:identifier:](v22, "initWithCenter:radius:identifier:", [MEMORY[0x1E696AEC0] stringWithFormat:@"<%+.8f, %+.8f> radius %.2f", *&v15, *&v17, *&v21], v15, v17, v21);
      [(CLRegion *)v4->_internal->region setReferenceFrame:v6];
    }

    [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage coordinate];
    v24 = v23;
    v26 = v25;
    v27 = objc_alloc(MEMORY[0x1E6985C40]);
    v4->_internal->location = [v27 initWithCoordinate:objc_msgSend(MEMORY[0x1E695DF00] altitude:"date") horizontalAccuracy:v6 verticalAccuracy:v24 timestamp:v26 referenceFrame:{0.0, 100.0, -1.0}];
    v4->_internal->addressDictionary = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage addressDictionary];
    v4->_internal->areasOfInterest = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage areasOfInterest];
    v4->_internal->timeZone = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage timezone];
    v4->_internal->category = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage _poiCategory];
    v4->_internal->_muid = [(GEOMapItemStorage *)v4->_internal->geoMapItemStorage _muid];
  }

  return v4;
}

- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6
{
  v11.receiver = self;
  v11.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v11 init];
  if (result)
  {
    return [(CLPlacemark *)result initWithLocation:a3 addressDictionary:a4 region:a5 areasOfInterest:a6 mapItemSource:0 geoMapItemHandle:0 meCardAddress:&stru_1F0E6F140];
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 meCardAddress:(id)a9
{
  v16.receiver = self;
  v16.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v16 init];
  if (result)
  {
    return [(CLPlacemark *)result initWithLocation:a3 addressDictionary:a4 region:a5 areasOfInterest:a6 mapItemSource:a7 geoMapItemHandle:a8 category:0 meCardAddress:a9];
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 category:(id)a9 meCardAddress:(id)a10
{
  v17.receiver = self;
  v17.super_class = CLPlacemark;
  result = [(CLPlacemark *)&v17 init];
  if (result)
  {
    return [(CLPlacemark *)result initWithLocation:a3 addressDictionary:a4 region:a5 areasOfInterest:a6 mapItemSource:a7 geoMapItemHandle:a8 category:a9 meCardAddress:a10 muid:0];
  }

  return result;
}

- (CLPlacemark)initWithLocation:(id)a3 addressDictionary:(id)a4 region:(id)a5 areasOfInterest:(id)a6 mapItemSource:(unint64_t)a7 geoMapItemHandle:(id)a8 category:(id)a9 meCardAddress:(id)a10 muid:(unint64_t)a11
{
  v19.receiver = self;
  v19.super_class = CLPlacemark;
  v17 = [(CLPlacemark *)&v19 init];
  if (v17)
  {
    v17->_internal = objc_alloc_init(CLPlacemarkInternal);
    v17->_internal->location = [a3 copy];
    v17->_internal->addressDictionary = [a4 copy];
    v17->_internal->region = [a5 copy];
    v17->_internal->areasOfInterest = [a6 copy];
    v17->_internal->_cLMapItemSource = a7;
    v17->_internal->_geoMapItemHandle = [a8 copy];
    v17->_internal->category = [a9 copy];
    v17->_internal->mecardAddress = [a10 copy];
    v17->_internal->_muid = a11;
  }

  return v17;
}

- (CLPlacemark)initWithPlacemark:(CLPlacemark *)placemark
{
  v7.receiver = self;
  v7.super_class = CLPlacemark;
  v4 = [(CLPlacemark *)&v7 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLPlacemarkInternal);
    v4->_internal->location = [(CLLocation *)[(CLPlacemark *)placemark location] copy];
    v4->_internal->addressDictionary = [(NSDictionary *)[(CLPlacemark *)placemark addressDictionary] copy];
    v4->_internal->region = [(CLRegion *)[(CLPlacemark *)placemark region] copy];
    v4->_internal->areasOfInterest = [(NSArray *)[(CLPlacemark *)placemark areasOfInterest] copy];
    if (placemark)
    {
      v4->_internal->geoMapItemStorage = [(GEOMapItemStorage *)placemark->_internal->geoMapItemStorage copy];
      v4->_internal->_geoMapItemHandle = [(NSData *)placemark->_internal->_geoMapItemHandle copy];
      v4->_internal->category = [(NSString *)placemark->_internal->category copy];
      v4->_internal->mecardAddress = [(NSString *)placemark->_internal->mecardAddress copy];
      v4->_internal->_cLMapItemSource = placemark->_internal->_cLMapItemSource;
      muid = placemark->_internal->_muid;
    }

    else
    {
      muid = 0;
      v4->_internal->geoMapItemStorage = 0;
      v4->_internal->_geoMapItemHandle = 0;
      v4->_internal->category = 0;
      v4->_internal->mecardAddress = 0;
      v4->_internal->_cLMapItemSource = 0;
    }

    v4->_internal->_muid = muid;
  }

  return v4;
}

- (CLPlacemark)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v20 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyLocation"];
  v19 = [a3 decodeObjectOfClasses:v7 forKey:@"kCLPlacemarkCodingKeyAddress"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyRegion"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"kCLPlacemarkCodingKeyAreasOfInterest"}];
  v12 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlacemarkCodingKeyMapItemSource", "unsignedIntegerValue"}];
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyGEOMapItem"];
  v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyGEOMapItemHandle"];
  v15 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyCategory"];
  v16 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLPlacemarkCodingKeyMeCardAddress"];
  v17 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"kCLPlacemarkCodingKeyMuid", "unsignedLongLongValue"}];
  if (!v13)
  {
    return [(CLPlacemark *)self initWithLocation:v20 addressDictionary:v19 region:v8 areasOfInterest:v11 mapItemSource:v12 geoMapItemHandle:v14 category:v15 meCardAddress:v16 muid:v17];
  }

  return [(CLPlacemark *)self _initWithGeoMapItem:v13];
}

- (void)encodeWithCoder:(id)a3
{
  internal = self->_internal;
  [a3 encodeObject:internal->location forKey:@"kCLPlacemarkCodingKeyLocation"];
  [a3 encodeObject:internal->addressDictionary forKey:@"kCLPlacemarkCodingKeyAddress"];
  [a3 encodeObject:internal->region forKey:@"kCLPlacemarkCodingKeyRegion"];
  [a3 encodeObject:internal->areasOfInterest forKey:@"kCLPlacemarkCodingKeyAreasOfInterest"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", internal->_cLMapItemSource), @"kCLPlacemarkCodingKeyMapItemSource"}];
  [a3 encodeObject:internal->geoMapItemStorage forKey:@"kCLPlacemarkCodingKeyGEOMapItem"];
  [a3 encodeObject:internal->_geoMapItemHandle forKey:@"kCLPlacemarkCodingKeyGEOMapItemHandle"];
  [a3 encodeObject:internal->category forKey:@"kCLPlacemarkCodingKeyCategory"];
  [a3 encodeObject:internal->mecardAddress forKey:@"kCLPlacemarkCodingKeyMeCardAddress"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:internal->_muid];

  [a3 encodeObject:v5 forKey:@"kCLPlacemarkCodingKeyMuid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return MEMORY[0x1EEE66B58](v3, sel_initWithPlacemark_);
}

- (void)fetchFormattedAddress:(id)a3 queue:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = MEMORY[0x1E69E96A0];
    }

    geoMapItemHandle = self->_internal->_geoMapItemHandle;
    if (geoMapItemHandle)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19B9C67A0;
      v8[3] = &unk_1E753E830;
      v8[4] = v5;
      v8[5] = a3;
      [CLGeocoder hydrateGeoMapItemLocallyFromHandle:geoMapItemHandle completionHandler:v8];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B9C6890;
      v7[3] = &unk_1E753CD08;
      v7[4] = self;
      v7[5] = a3;
      dispatch_async(v5, v7);
    }
  }
}

+ (id)sourceToString:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (!a3)
  {
    v6 = @"Unknown";
LABEL_44:
    [v5 addObject:v6];
    goto LABEL_45;
  }

  if (a3)
  {
    [v4 addObject:@"ReverseGeocode"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"ForwardGeocode"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"Contacts"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"User"];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"MapsSupportFavorite"];
  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"MapsSupportHistoryEntryRoute"];
  if ((a3 & 0x80) == 0)
  {
LABEL_9:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"MapsSupportHistoryEntryPlaceDisplay"];
  if ((a3 & 0x100) == 0)
  {
LABEL_10:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v5 addObject:@"EventKit"];
  if ((a3 & 0x200) == 0)
  {
LABEL_11:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v5 addObject:@"LocalSearch"];
  if ((a3 & 0x400) == 0)
  {
LABEL_12:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v5 addObject:@"MapItemHandle"];
  if ((a3 & 0x800) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v5 addObject:@"ProactiveExperts"];
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v5 addObject:@"Portrait"];
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v5 addObject:@"LearnedPlace"];
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v5 addObject:@"BluePOI"];
  if ((a3 & 0x8000) == 0)
  {
LABEL_17:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v5 addObject:@"MapItemURL"];
  if ((a3 & 0x10000) == 0)
  {
LABEL_18:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v5 addObject:@"CurrentPOI"];
  if ((a3 & 0x20000) == 0)
  {
LABEL_19:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v5 addObject:@"CurrentLocation"];
  if ((a3 & 0x40000) == 0)
  {
LABEL_20:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    [v5 addObject:@"POIHistory"];
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_41:
  [v5 addObject:@"ReverseGeocodeRelatedPlaces"];
  if ((a3 & 0x80000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((a3 & 0x100000) != 0)
  {
LABEL_43:
    v6 = @"LocalBluePOI";
    goto LABEL_44;
  }

LABEL_45:
  if (![v5 count])
  {
    return &stru_1F0E6F140;
  }

  return [v5 componentsJoinedByString:{@", "}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F0E6F140];
  v4 = [(CLPlacemark *)self name];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)v4 length])
  {
    [v3 appendString:v4];
  }

  if (self->_internal->addressDictionary)
  {
    v5 = [(CLPlacemark *)self formattedAddressLines];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 count])
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_19B9C6E90;
        v16[3] = &unk_1E753D110;
        v16[4] = v3;
        [v5 enumerateObjectsUsingBlock:v16];
      }
    }
  }

  location = self->_internal->location;
  if (location)
  {
    [(CLLocation *)location horizontalAccuracy];
    if (v7 >= 0.0)
    {
      if ([v3 length])
      {
        [v3 appendString:@" @ "];
      }

      v8 = MEMORY[0x1E696AEC0];
      [(CLLocation *)self->_internal->location coordinate];
      v10 = v9;
      [(CLLocation *)self->_internal->location coordinate];
      v12 = v11;
      [(CLLocation *)self->_internal->location horizontalAccuracy];
      [v3 appendString:{objc_msgSend(v8, "stringWithFormat:", @"<%+.8f, %+.8f> +/- %.2fm", v10, v12, v13)}];
    }
  }

  internal = self->_internal;
  if (internal->region)
  {
    if ([v3 length])
    {
      [v3 appendString:{@", region "}];
    }

    [v3 appendString:{-[CLRegion description](self->_internal->region, "description")}];
    internal = self->_internal;
  }

  if (internal->_cLMapItemSource)
  {
    if ([v3 length])
    {
      [v3 appendString:{@", source "}];
    }

    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", +[CLPlacemark sourceToString:](CLPlacemark, "sourceToString:", self->_internal->_cLMapItemSource))}];
    internal = self->_internal;
  }

  if (internal->_muid)
  {
    if ([v3 length])
    {
      [v3 appendString:{@", muid "}];
    }

    [v3 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%lu", self->_internal->_muid)}];
    internal = self->_internal;
  }

  if (internal->category)
  {
    if ([v3 length])
    {
      [v3 appendString:{@", category "}];
    }

    [v3 appendString:{-[NSString description](self->_internal->category, "description")}];
  }

  return v3;
}

+ (CLPlacemark)placemarkWithGEOMapItem:(id)a3
{
  if ([a3 isValid] && (objc_msgSend(a3, "coordinate"), CLLocationCoordinate2DIsValid(v7)))
  {
    v4 = [[CLPlacemark alloc] _initWithGeoMapItem:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CNPostalAddress)postalAddress
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CLPlacemark *)self fullThoroughfare];
  [v3 setObject:v4 forKeyedSubscript:off_1ED519098()];
  v5 = [(CLPlacemark *)self subLocality];
  [v3 setObject:v5 forKeyedSubscript:off_1ED5190A0()];
  v6 = [(CLPlacemark *)self locality];
  [v3 setObject:v6 forKeyedSubscript:off_1ED5190A8()];
  v7 = [(CLPlacemark *)self subAdministrativeArea];
  [v3 setObject:v7 forKeyedSubscript:off_1ED5190B0()];
  v8 = [(CLPlacemark *)self administrativeArea];
  [v3 setObject:v8 forKeyedSubscript:off_1ED5190B8()];
  v9 = [(CLPlacemark *)self postalCode];
  [v3 setObject:v9 forKeyedSubscript:off_1ED5190C0()];
  v10 = [(CLPlacemark *)self country];
  [v3 setObject:v10 forKeyedSubscript:off_1ED5190C8()];
  v11 = [(CLPlacemark *)self ISOcountryCode];
  [v3 setObject:v11 forKeyedSubscript:off_1ED5190D0()];
  v12 = [off_1ED5190D8() postalAddressWithDictionaryRepresentation:v3];

  return v12;
}

@end