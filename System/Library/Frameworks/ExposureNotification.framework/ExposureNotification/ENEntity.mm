@interface ENEntity
- (BOOL)isEqual:(id)equal;
- (ENEntity)initWithBundleID:(id)d agencyColor:(id)color agencyHeaderStyle:(id)style agencyHeaderTextColor:(id)textColor localizedAgencyName:(id)name localizedAgencyImageURL:(id)l localizedAgencyTurndownMessage:(id)message localizedRegionName:(id)self0 region:(id)self1;
- (ENEntity)initWithBundleID:(id)d region:(id)region;
- (ENEntity)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENEntity

- (ENEntity)initWithBundleID:(id)d agencyColor:(id)color agencyHeaderStyle:(id)style agencyHeaderTextColor:(id)textColor localizedAgencyName:(id)name localizedAgencyImageURL:(id)l localizedAgencyTurndownMessage:(id)message localizedRegionName:(id)self0 region:(id)self1
{
  dCopy = d;
  colorCopy = color;
  styleCopy = style;
  textColorCopy = textColor;
  nameCopy = name;
  lCopy = l;
  messageCopy = message;
  regionNameCopy = regionName;
  regionCopy = region;
  v33.receiver = self;
  v33.super_class = ENEntity;
  v19 = [(ENEntity *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_agencyColor, color);
    objc_storeStrong(&v20->_agencyHeaderStyle, style);
    objc_storeStrong(&v20->_agencyHeaderTextColor, textColor);
    objc_storeStrong(&v20->_localizedAgencyName, name);
    objc_storeStrong(&v20->_localizedAgencyTurndownMessage, message);
    objc_storeStrong(&v20->_localizedAgencyImageURL, l);
    objc_storeStrong(&v20->_localizedRegionName, regionName);
    v21 = [dCopy copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v21;

    v23 = [regionCopy copy];
    region = v20->_region;
    v20->_region = v23;
  }

  return v20;
}

- (ENEntity)initWithBundleID:(id)d region:(id)region
{
  dCopy = d;
  regionCopy = region;
  v14.receiver = self;
  v14.super_class = ENEntity;
  v8 = [(ENEntity *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [regionCopy copy];
    region = v8->_region;
    v8->_region = v11;
  }

  return v8;
}

- (ENEntity)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v6 = [v3 setWithArray:v5];

  v19 = v6;
  v18 = [coderCopy decodeObjectOfClasses:v6 forKey:@"agc"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agh"];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"aghc"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agn"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atn"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aIu"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bun"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rgn"];

  v15 = [(ENEntity *)self initWithBundleID:v12 agencyColor:v18 agencyHeaderStyle:v7 agencyHeaderTextColor:v8 localizedAgencyName:v9 localizedAgencyImageURL:v11 localizedAgencyTurndownMessage:v10 localizedRegionName:v14 region:v13];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  agencyColor = self->_agencyColor;
  coderCopy = coder;
  [coderCopy encodeObject:agencyColor forKey:@"agc"];
  [coderCopy encodeObject:self->_agencyHeaderStyle forKey:@"agh"];
  [coderCopy encodeObject:self->_agencyHeaderTextColor forKey:@"aghc"];
  [coderCopy encodeObject:self->_localizedAgencyName forKey:@"agn"];
  [coderCopy encodeObject:self->_localizedAgencyTurndownMessage forKey:@"atn"];
  [coderCopy encodeObject:self->_localizedAgencyImageURL forKey:@"aIu"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bun"];
  [coderCopy encodeObject:self->_region forKey:@"reg"];
  [coderCopy encodeObject:self->_localizedRegionName forKey:@"rgn"];
}

- (unint64_t)hash
{
  if ([(NSString *)self->_bundleIdentifier length])
  {
    v3 = [(NSString *)self->_bundleIdentifier hash];
    return [(ENRegion *)self->_region hash]^ v3;
  }

  else
  {
    region = self->_region;

    return [(ENRegion *)region hash];
  }
}

- (id)description
{
  bundleIdentifier = self->_bundleIdentifier;
  agencyColor = self->_agencyColor;
  if (!bundleIdentifier)
  {
    bundleIdentifier = @"<>";
  }

  localizedRegionName = self->_localizedRegionName;
  region = self->_region;
  if (!region)
  {
    region = @"<>";
  }

  localizedAgencyTurndownMessage = self->_localizedAgencyTurndownMessage;
  localizedAgencyImageURL = self->_localizedAgencyImageURL;
  if (!localizedRegionName)
  {
    localizedRegionName = @"<>";
  }

  localizedAgencyName = self->_localizedAgencyName;
  if (!localizedAgencyName)
  {
    localizedAgencyName = @"<>";
  }

  if (!localizedAgencyTurndownMessage)
  {
    localizedAgencyTurndownMessage = @"<>";
  }

  if (!localizedAgencyImageURL)
  {
    localizedAgencyImageURL = @"<>";
  }

  if (!agencyColor)
  {
    agencyColor = @"<>";
  }

  agencyHeaderStyle = self->_agencyHeaderStyle;
  agencyHeaderTextColor = self->_agencyHeaderTextColor;
  if (!agencyHeaderStyle)
  {
    agencyHeaderStyle = @"<>";
  }

  if (!agencyHeaderTextColor)
  {
    agencyHeaderTextColor = @"<>";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"App: %@, Region: %@ (%@), \nPHA: %@, \nMessage: %@, \n%@, \n%@, \n%@, \n%@", bundleIdentifier, region, localizedRegionName, localizedAgencyName, localizedAgencyTurndownMessage, localizedAgencyImageURL, agencyColor, agencyHeaderStyle, agencyHeaderTextColor];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = 0;
    goto LABEL_48;
  }

  v5 = equalCopy;
  region = self->_region;
  region = [v5 region];
  v8 = region;
  v9 = region;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v8 != 0) != (v9 == 0) && [(ENRegion *)v8 isEqual:v9];
  }

  if ([(NSString *)self->_bundleIdentifier length])
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    bundleIdentifier = self->_bundleIdentifier;
    bundleIdentifier = [v5 bundleIdentifier];
    v14 = bundleIdentifier;
    v15 = bundleIdentifier;
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_4();
      if (v17 == (v16 == 0))
      {
        goto LABEL_21;
      }

      v18 = [(NSNumber *)v14 isEqual:v16];

      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    agencyColor = self->_agencyColor;
    agencyColor = [v5 agencyColor];
    LODWORD(agencyColor) = [(NSArray *)agencyColor isEqualToArray:agencyColor];

    if (!agencyColor)
    {
      goto LABEL_22;
    }

    agencyHeaderStyle = self->_agencyHeaderStyle;
    agencyHeaderStyle = [v5 agencyHeaderStyle];
    v14 = agencyHeaderStyle;
    v23 = agencyHeaderStyle;
    v16 = v23;
    if (v14 == v23)
    {

      goto LABEL_32;
    }

    OUTLINED_FUNCTION_0_4();
    if (v24 != (v16 == 0))
    {
      v25 = [(NSNumber *)v14 isEqual:v16];

      if (!v25)
      {
        goto LABEL_22;
      }

LABEL_32:
      agencyHeaderTextColor = self->_agencyHeaderTextColor;
      agencyHeaderTextColor = [v5 agencyHeaderTextColor];
      v36 = [(NSArray *)agencyHeaderTextColor isEqualToArray:agencyHeaderTextColor];

      v37 = [(NSString *)self->_localizedAgencyName length];
      v27 = v37 == 0 && v36;
      if (v37 && v36)
      {
        localizedAgencyName = self->_localizedAgencyName;
        localizedAgencyName = [v5 localizedAgencyName];
        v40 = localizedAgencyName;
        v41 = localizedAgencyName;
        if (v40 == v41)
        {
          v27 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          if (v42 == (v41 == 0))
          {
            v27 = 0;
          }

          else
          {
            v27 = [(NSString *)v40 isEqual:v41];
          }
        }
      }

      if ([(NSString *)self->_localizedAgencyTurndownMessage length])
      {
        if (!v27)
        {
          goto LABEL_23;
        }

        localizedAgencyTurndownMessage = self->_localizedAgencyTurndownMessage;
        localizedAgencyTurndownMessage = [v5 localizedAgencyTurndownMessage];
        v53 = localizedAgencyTurndownMessage;
        v54 = localizedAgencyTurndownMessage;
        if (v53 == v54)
        {
          v27 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          if (v55 == (v54 == 0))
          {
            v27 = 0;
          }

          else
          {
            v27 = [(NSString *)v53 isEqual:v54];
          }
        }
      }

LABEL_25:
      v28 = [(NSString *)self->_localizedAgencyImageURL length];
      v26 = (v28 == 0) & v27;
      if (v28 && v27)
      {
        localizedAgencyImageURL = self->_localizedAgencyImageURL;
        localizedAgencyImageURL = [v5 localizedAgencyImageURL];
        v31 = localizedAgencyImageURL;
        v32 = localizedAgencyImageURL;
        v33 = v32;
        if (v31 == v32)
        {
          v26 = 1;
        }

        else if ((v31 != 0) == (v32 == 0))
        {
          v26 = 0;
        }

        else
        {
          v26 = [(NSString *)v31 isEqual:v32];
        }
      }

      goto LABEL_39;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v11)
  {
    goto LABEL_16;
  }

LABEL_22:
  [(NSString *)self->_localizedAgencyName length];
  if (![(NSString *)self->_localizedAgencyTurndownMessage length])
  {
    v27 = 0;
    goto LABEL_25;
  }

LABEL_23:
  [(NSString *)self->_localizedAgencyImageURL length];
  v26 = 0;
LABEL_39:
  v43 = [(NSString *)self->_localizedRegionName length];
  v44 = (v43 == 0) & v26;
  if (v43 && v26)
  {
    localizedRegionName = self->_localizedRegionName;
    localizedRegionName = [v5 localizedRegionName];
    v47 = localizedRegionName;
    v48 = localizedRegionName;
    v49 = v48;
    if (v47 == v48)
    {
      v44 = 1;
    }

    else if ((v47 != 0) == (v48 == 0))
    {
      v44 = 0;
    }

    else
    {
      v44 = [(NSString *)v47 isEqual:v48];
    }
  }

LABEL_48:
  return v44;
}

@end