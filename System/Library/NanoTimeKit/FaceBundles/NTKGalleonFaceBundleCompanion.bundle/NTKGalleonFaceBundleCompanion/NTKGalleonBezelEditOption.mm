@interface NTKGalleonBezelEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (unint64_t)bezelStyle;
@end

@implementation NTKGalleonBezelEditOption

- (unint64_t)bezelStyle
{
  if (NTKHasRegionalGeoRestrictions() && !objc_msgSend__value(self, v3, v4, v5))
  {
    return 1;
  }

  return objc_msgSend__value(self, v3, v4, v5);
}

+ (id)_orderedValuesForDevice:(id)device
{
  if (NTKHasRegionalGeoRestrictions())
  {
    return &unk_284EA80B8;
  }

  else
  {
    return &unk_284EA80D0;
  }
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278B9EDC0[value];
  }
}

- (id)localizedName
{
  v5 = objc_msgSend_bezelStyle(self, a2, v2, v3);
  if (v5)
  {
    if (v5 == 2)
    {
      objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_GALLEON_BEZEL_STYLE_EMPTY", v6, @"_COMPANION", v8);
    }

    else if (v5 == 1)
    {
      v9 = objc_msgSend_device(self, v6, v7, v8);
      v12 = objc_msgSend_supportsPDRCapability_(v9, v10, 3669496134, v11);

      if (v12)
      {
        objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_GALLEON_BEZEL_STYLE_ELEVATION", v13, @"_COMPANION", v14);
      }

      else
      {
        objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_GALLEON_BEZEL_STYLE_ELEV_INCL", v13, @"_COMPANION", v14);
      }
    }

    else
    {
      objc_msgSend_stringByAppendingString_(0, v6, @"_COMPANION", v8);
    }
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_GALLEON_BEZEL_STYLE_LAT_LONG", v6, @"_COMPANION", v8);
  }
  v15 = ;
  v17 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v16, v15, &stru_284EA1D18);

  return v17;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DD6C8 != -1)
  {
    sub_23BEA41F0();
  }

  v3 = qword_27E1DD6C0;

  return v3;
}

@end