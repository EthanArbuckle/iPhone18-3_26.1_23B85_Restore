@interface ENEntity
- (BOOL)isEqual:(id)a3;
- (ENEntity)initWithBundleID:(id)a3 agencyColor:(id)a4 agencyHeaderStyle:(id)a5 agencyHeaderTextColor:(id)a6 localizedAgencyName:(id)a7 localizedAgencyImageURL:(id)a8 localizedAgencyTurndownMessage:(id)a9 localizedRegionName:(id)a10 region:(id)a11;
- (ENEntity)initWithBundleID:(id)a3 region:(id)a4;
- (ENEntity)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENEntity

- (ENEntity)initWithBundleID:(id)a3 agencyColor:(id)a4 agencyHeaderStyle:(id)a5 agencyHeaderTextColor:(id)a6 localizedAgencyName:(id)a7 localizedAgencyImageURL:(id)a8 localizedAgencyTurndownMessage:(id)a9 localizedRegionName:(id)a10 region:(id)a11
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v17 = a10;
  v18 = a11;
  v33.receiver = self;
  v33.super_class = ENEntity;
  v19 = [(ENEntity *)&v33 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_agencyColor, a4);
    objc_storeStrong(&v20->_agencyHeaderStyle, a5);
    objc_storeStrong(&v20->_agencyHeaderTextColor, a6);
    objc_storeStrong(&v20->_localizedAgencyName, a7);
    objc_storeStrong(&v20->_localizedAgencyTurndownMessage, a9);
    objc_storeStrong(&v20->_localizedAgencyImageURL, a8);
    objc_storeStrong(&v20->_localizedRegionName, a10);
    v21 = [v32 copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v21;

    v23 = [v18 copy];
    region = v20->_region;
    v20->_region = v23;
  }

  return v20;
}

- (ENEntity)initWithBundleID:(id)a3 region:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ENEntity;
  v8 = [(ENEntity *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [v7 copy];
    region = v8->_region;
    v8->_region = v11;
  }

  return v8;
}

- (ENEntity)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v6 = [v3 setWithArray:v5];

  v19 = v6;
  v18 = [v4 decodeObjectOfClasses:v6 forKey:@"agc"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agh"];
  v8 = [v4 decodeObjectOfClasses:v6 forKey:@"aghc"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agn"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atn"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aIu"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bun"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rgn"];

  v15 = [(ENEntity *)self initWithBundleID:v12 agencyColor:v18 agencyHeaderStyle:v7 agencyHeaderTextColor:v8 localizedAgencyName:v9 localizedAgencyImageURL:v11 localizedAgencyTurndownMessage:v10 localizedRegionName:v14 region:v13];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  agencyColor = self->_agencyColor;
  v5 = a3;
  [v5 encodeObject:agencyColor forKey:@"agc"];
  [v5 encodeObject:self->_agencyHeaderStyle forKey:@"agh"];
  [v5 encodeObject:self->_agencyHeaderTextColor forKey:@"aghc"];
  [v5 encodeObject:self->_localizedAgencyName forKey:@"agn"];
  [v5 encodeObject:self->_localizedAgencyTurndownMessage forKey:@"atn"];
  [v5 encodeObject:self->_localizedAgencyImageURL forKey:@"aIu"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bun"];
  [v5 encodeObject:self->_region forKey:@"reg"];
  [v5 encodeObject:self->_localizedRegionName forKey:@"rgn"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = 0;
    goto LABEL_48;
  }

  v5 = v4;
  region = self->_region;
  v7 = [v5 region];
  v8 = region;
  v9 = v7;
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
    v13 = [v5 bundleIdentifier];
    v14 = bundleIdentifier;
    v15 = v13;
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
    v20 = [v5 agencyColor];
    LODWORD(agencyColor) = [(NSArray *)agencyColor isEqualToArray:v20];

    if (!agencyColor)
    {
      goto LABEL_22;
    }

    agencyHeaderStyle = self->_agencyHeaderStyle;
    v22 = [v5 agencyHeaderStyle];
    v14 = agencyHeaderStyle;
    v23 = v22;
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
      v35 = [v5 agencyHeaderTextColor];
      v36 = [(NSArray *)agencyHeaderTextColor isEqualToArray:v35];

      v37 = [(NSString *)self->_localizedAgencyName length];
      v27 = v37 == 0 && v36;
      if (v37 && v36)
      {
        localizedAgencyName = self->_localizedAgencyName;
        v39 = [v5 localizedAgencyName];
        v40 = localizedAgencyName;
        v41 = v39;
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
        v52 = [v5 localizedAgencyTurndownMessage];
        v53 = localizedAgencyTurndownMessage;
        v54 = v52;
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
        v30 = [v5 localizedAgencyImageURL];
        v31 = localizedAgencyImageURL;
        v32 = v30;
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
    v46 = [v5 localizedRegionName];
    v47 = localizedRegionName;
    v48 = v46;
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