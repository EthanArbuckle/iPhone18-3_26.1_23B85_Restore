@interface SHLLibraryTrack
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTrack:(id)a3;
- (BOOL)validProviderIdentifier;
- (BOOL)validProviderName;
- (CLLocation)location;
- (CLLocationCoordinate2D)locationCoordinate;
- (CLLocationCoordinate2D)locationCoordinateFromCoder:(id)a3;
- (NSSet)labels;
- (SHLLibraryTrack)initWithCoder:(id)a3;
- (SHLLibraryTrack)initWithLibraryTrack:(id)a3;
- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5;
- (id)_initWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4 metadata:(id)a5 labels:(id)a6;
- (id)bundleIdentifier;
- (id)bundleName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)platformLabel;
- (unint64_t)hash;
- (void)addLabel:(id)a3;
- (void)addPlatformLabel;
- (void)commonInitWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)removeLabel:(id)a3;
@end

@implementation SHLLibraryTrack

- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SHLLibraryTrack;
  v11 = [(SHLLibraryTrack *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SHLLibraryTrack *)v11 commonInitWithIdentifier:v8 metadata:v9 labels:v10];
  }

  return v12;
}

- (void)commonInitWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25 = a5;
  if (![(SHLLibraryTrack *)self validProviderIdentifier])
  {
    v22 = NSInvalidArgumentException;
    v23 = @"You must have a valid CFBundleIdentifier key set in the bundle’s information property list.";
    goto LABEL_8;
  }

  if (![(SHLLibraryTrack *)self validProviderName])
  {
    v22 = NSInvalidArgumentException;
    v23 = @"You must have a valid CFBundleName key set in the bundle’s information property list.";
LABEL_8:
    v24 = [NSException shl_exceptionWithName:v22 reason:v23];
    objc_exception_throw(v24);
  }

  identifier = self->_identifier;
  self->_identifier = v8;
  v11 = v8;

  metadata = self->_metadata;
  self->_metadata = v9;
  v13 = v9;

  v14 = [(SHLLibraryTrack *)self bundleIdentifier];
  providerIdentifier = self->_providerIdentifier;
  self->_providerIdentifier = v14;

  v16 = [(SHLLibraryTrack *)self bundleName];
  providerName = self->_providerName;
  self->_providerName = v16;

  v18 = +[NSDate date];
  date = self->_date;
  self->_date = v18;

  v20 = [NSMutableSet setWithArray:v25];
  labelSet = self->_labelSet;
  self->_labelSet = v20;

  self->_locationCoordinate = kCLLocationCoordinate2DInvalid;
  [(SHLLibraryTrack *)self addPlatformLabel];
}

- (id)bundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)bundleName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleName"];

  return v3;
}

- (NSSet)labels
{
  v2 = [(SHLLibraryTrack *)self labelSet];
  v3 = [v2 copy];

  return v3;
}

- (CLLocation)location
{
  [(SHLLibraryTrack *)self locationCoordinate];

  return [SHLLocationTransformer locationFromCoordinate:?];
}

- (void)addLabel:(id)a3
{
  v4 = a3;
  v5 = [(SHLLibraryTrack *)self labelSet];
  [v5 containsObject:v4];

  v6 = [(SHLLibraryTrack *)self labelSet];
  [v6 addObject:v4];
}

- (void)removeLabel:(id)a3
{
  v4 = a3;
  v5 = [(SHLLibraryTrack *)self labelSet];
  [v5 containsObject:v4];

  v6 = [(SHLLibraryTrack *)self labelSet];
  [v6 removeObject:v4];
}

- (SHLLibraryTrack)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = SHLLibraryTrack;
  v5 = [(SHLLibraryTrack *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackMetadata"];
    if (v6)
    {
      v7 = [[SHLLibraryItemMetadata alloc] initWithEncodedSystemData:v6];
      metadata = v5->_metadata;
      v5->_metadata = v7;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackCompoundIdentifierKey"];
    compoundIdentifier = v5->_compoundIdentifier;
    v5->_compoundIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackShazamKey"];
    if (v11)
    {
      v12 = [[SHLShazamKey alloc] initWithKey:v11];
    }

    else
    {
      v12 = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier shazamKey];
    }

    shazamKey = v5->_shazamKey;
    v5->_shazamKey = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackRecognitionIdentifier"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier recognitionIdentifier];
    }

    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackIdentifier"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier libraryItemIdentifier];
    }

    identifier = v5->_identifier;
    v5->_identifier = v20;

    [(SHLLibraryTrack *)v5 locationCoordinateFromCoder:v4];
    v5->_locationCoordinate.latitude = v22;
    v5->_locationCoordinate.longitude = v23;
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackProviderIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackProviderName"];
    providerName = v5->_providerName;
    v5->_providerName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackDate"];
    date = v5->_date;
    v5->_date = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackTitle"];
    title = v5->_title;
    v5->_title = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackAssociatedGroupIdentifier"];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v34;

    v36 = objc_opt_class();
    v37 = [NSSet setWithObjects:v36, objc_opt_class(), 0];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"SHLLibraryTrackLibrarySet"];
    v39 = [v38 mutableCopy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;
  }

  return v5;
}

- (CLLocationCoordinate2D)locationCoordinateFromCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocationLatitude"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocationLongitude"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocation"];
    [SHLLocationTransformer coordinateFromLocation:v8];
    latitude = v9;
    longitude = v10;
  }

  else
  {
    [v4 doubleValue];
    v12 = v11;
    [v6 doubleValue];
    v14 = CLLocationCoordinate2DMake(v12, v13);
    latitude = v14.latitude;
    longitude = v14.longitude;
  }

  v17 = latitude;
  v18 = longitude;
  result.longitude = v18;
  result.latitude = v17;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v10 = a3;
  [v10 encodeObject:identifier forKey:@"SHLLibraryTrackIdentifier"];
  [v10 encodeObject:self->_recognitionIdentifier forKey:@"SHLLibraryTrackRecognitionIdentifier"];
  v5 = [(SHLShazamKey *)self->_shazamKey validatedKey];
  [v10 encodeObject:v5 forKey:@"SHLLibraryTrackShazamKey"];

  v6 = [(SHLLibraryItemMetadata *)self->_metadata encodedSystemData];
  [v10 encodeObject:v6 forKey:@"SHLLibraryTrackMetadata"];

  [v10 encodeObject:self->_providerIdentifier forKey:@"SHLLibraryTrackProviderIdentifier"];
  [v10 encodeObject:self->_providerName forKey:@"SHLLibraryTrackProviderName"];
  [v10 encodeObject:self->_date forKey:@"SHLLibraryTrackDate"];
  [v10 encodeObject:self->_title forKey:@"SHLLibraryTrackTitle"];
  [v10 encodeObject:self->_subtitle forKey:@"SHLLibraryTrackSubtitle"];
  v7 = [NSNumber numberWithDouble:self->_locationCoordinate.latitude];
  [v10 encodeObject:v7 forKey:@"SHLLibraryTrackLocationLatitude"];

  v8 = [NSNumber numberWithDouble:self->_locationCoordinate.longitude];
  [v10 encodeObject:v8 forKey:@"SHLLibraryTrackLocationLongitude"];

  [v10 encodeObject:self->_associatedGroupIdentifier forKey:@"SHLLibraryTrackAssociatedGroupIdentifier"];
  v9 = [(NSMutableSet *)self->_labelSet copy];
  [v10 encodeObject:v9 forKey:@"SHLLibraryTrackLibrarySet"];

  [v10 encodeObject:self->_compoundIdentifier forKey:@"SHLLibraryTrackCompoundIdentifierKey"];
}

- (SHLLibraryTrack)initWithLibraryTrack:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SHLLibraryTrack;
  v5 = [(SHLLibraryTrack *)&v45 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 recognitionIdentifier];
    v10 = [v9 copy];
    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = v10;

    v12 = [v4 shazamKey];
    v13 = [v12 copy];
    shazamKey = v5->_shazamKey;
    v5->_shazamKey = v13;

    v15 = [v4 metadata];
    v16 = [v15 copy];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    v18 = [v4 providerIdentifier];
    v19 = [v18 copy];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v19;

    v21 = [v4 providerName];
    v22 = [v21 copy];
    providerName = v5->_providerName;
    v5->_providerName = v22;

    v24 = [v4 date];
    v25 = [v24 copy];
    date = v5->_date;
    v5->_date = v25;

    v27 = [v4 title];
    v28 = [v27 copy];
    title = v5->_title;
    v5->_title = v28;

    v30 = [v4 subtitle];
    v31 = [v30 copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v31;

    [v4 locationCoordinate];
    v5->_locationCoordinate.latitude = v33;
    v5->_locationCoordinate.longitude = v34;
    v35 = [v4 associatedGroupIdentifier];
    v36 = [v35 copy];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v36;

    v38 = [v4 labelSet];
    v39 = [v38 copy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;

    v41 = [v4 compoundIdentifier];
    v42 = [v41 copy];
    compoundIdentifier = v5->_compoundIdentifier;
    v5->_compoundIdentifier = v42;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHLLibraryTrack allocWithZone:a3];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SHLMutableLibraryTrack allocWithZone:a3];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [(SHLLibraryTrack *)self isEqualTrack:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualTrack:(id)a3
{
  v4 = a3;
  v5 = [(SHLLibraryTrack *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SHLLibraryTrack *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)validProviderIdentifier
{
  v3 = [(SHLLibraryTrack *)self bundleIdentifier];
  if (v3)
  {
    v4 = [(SHLLibraryTrack *)self bundleIdentifier];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)validProviderName
{
  v3 = [(SHLLibraryTrack *)self bundleName];
  if (v3)
  {
    v4 = [(SHLLibraryTrack *)self bundleName];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)platformLabel
{
  v2 = [SHLLibraryLabel alloc];
  v3 = [NSString stringWithFormat:@"%@_ios", @"platform"];
  v4 = [(SHLLibraryLabel *)v2 initWithName:v3];

  return v4;
}

- (void)addPlatformLabel
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SHLLibraryTrack *)self labels];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (![*(*(&v8 + 1) + 8 * v7) type])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v3 = [(SHLLibraryTrack *)self platformLabel];
    [(SHLLibraryTrack *)self addLabel:v3];
  }
}

- (id)_initWithRecognitionIdentifier:(id)a3 shazamKey:(id)a4 metadata:(id)a5 labels:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v21 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must have a valid Shazam key to create a library item."];
    objc_exception_throw(v21);
  }

  v15 = v14;
  v25.receiver = self;
  v25.super_class = SHLLibraryTrack;
  v16 = [(SHLLibraryTrack *)&v25 init];
  if (v16)
  {
    v17 = [[SHLLibraryTrackCompoundIdentifier alloc] initWithRecognitionIdentifier:v11 shazamKey:v12];
    compoundIdentifier = v16->_compoundIdentifier;
    v16->_compoundIdentifier = v17;

    if (![(SHLLibraryTrackCompoundIdentifier *)v16->_compoundIdentifier hasValidRecognitionIdentifier])
    {
      v22 = [NSString stringWithFormat:@"%@ is not a valid recognition identifier.", v11];
      v23 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v22];
      v24 = v23;

      objc_exception_throw(v23);
    }

    objc_storeStrong(&v16->_recognitionIdentifier, a3);
    objc_storeStrong(&v16->_shazamKey, a4);
    v19 = [(SHLLibraryTrackCompoundIdentifier *)v16->_compoundIdentifier libraryItemIdentifier];
    [(SHLLibraryTrack *)v16 commonInitWithIdentifier:v19 metadata:v13 labels:v15];
  }

  return v16;
}

- (CLLocationCoordinate2D)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end