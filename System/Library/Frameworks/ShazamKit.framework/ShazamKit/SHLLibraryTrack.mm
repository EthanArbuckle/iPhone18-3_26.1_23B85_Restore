@interface SHLLibraryTrack
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTrack:(id)track;
- (BOOL)validProviderIdentifier;
- (BOOL)validProviderName;
- (CLLocation)location;
- (CLLocationCoordinate2D)locationCoordinate;
- (CLLocationCoordinate2D)locationCoordinateFromCoder:(id)coder;
- (NSSet)labels;
- (SHLLibraryTrack)initWithCoder:(id)coder;
- (SHLLibraryTrack)initWithLibraryTrack:(id)track;
- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels;
- (id)_initWithRecognitionIdentifier:(id)identifier shazamKey:(id)key metadata:(id)metadata labels:(id)labels;
- (id)bundleIdentifier;
- (id)bundleName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)platformLabel;
- (unint64_t)hash;
- (void)addLabel:(id)label;
- (void)addPlatformLabel;
- (void)commonInitWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels;
- (void)encodeWithCoder:(id)coder;
- (void)removeLabel:(id)label;
@end

@implementation SHLLibraryTrack

- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  labelsCopy = labels;
  v14.receiver = self;
  v14.super_class = SHLLibraryTrack;
  v11 = [(SHLLibraryTrack *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SHLLibraryTrack *)v11 commonInitWithIdentifier:identifierCopy metadata:metadataCopy labels:labelsCopy];
  }

  return v12;
}

- (void)commonInitWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  labelsCopy = labels;
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
  self->_identifier = identifierCopy;
  v11 = identifierCopy;

  metadata = self->_metadata;
  self->_metadata = metadataCopy;
  v13 = metadataCopy;

  bundleIdentifier = [(SHLLibraryTrack *)self bundleIdentifier];
  providerIdentifier = self->_providerIdentifier;
  self->_providerIdentifier = bundleIdentifier;

  bundleName = [(SHLLibraryTrack *)self bundleName];
  providerName = self->_providerName;
  self->_providerName = bundleName;

  v18 = +[NSDate date];
  date = self->_date;
  self->_date = v18;

  v20 = [NSMutableSet setWithArray:labelsCopy];
  labelSet = self->_labelSet;
  self->_labelSet = v20;

  self->_locationCoordinate = kCLLocationCoordinate2DInvalid;
  [(SHLLibraryTrack *)self addPlatformLabel];
}

- (id)bundleIdentifier
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)bundleName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleName"];

  return v3;
}

- (NSSet)labels
{
  labelSet = [(SHLLibraryTrack *)self labelSet];
  v3 = [labelSet copy];

  return v3;
}

- (CLLocation)location
{
  [(SHLLibraryTrack *)self locationCoordinate];

  return [SHLLocationTransformer locationFromCoordinate:?];
}

- (void)addLabel:(id)label
{
  labelCopy = label;
  labelSet = [(SHLLibraryTrack *)self labelSet];
  [labelSet containsObject:labelCopy];

  labelSet2 = [(SHLLibraryTrack *)self labelSet];
  [labelSet2 addObject:labelCopy];
}

- (void)removeLabel:(id)label
{
  labelCopy = label;
  labelSet = [(SHLLibraryTrack *)self labelSet];
  [labelSet containsObject:labelCopy];

  labelSet2 = [(SHLLibraryTrack *)self labelSet];
  [labelSet2 removeObject:labelCopy];
}

- (SHLLibraryTrack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = SHLLibraryTrack;
  v5 = [(SHLLibraryTrack *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackMetadata"];
    if (v6)
    {
      v7 = [[SHLLibraryItemMetadata alloc] initWithEncodedSystemData:v6];
      metadata = v5->_metadata;
      v5->_metadata = v7;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackCompoundIdentifierKey"];
    compoundIdentifier = v5->_compoundIdentifier;
    v5->_compoundIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackShazamKey"];
    if (v11)
    {
      shazamKey = [[SHLShazamKey alloc] initWithKey:v11];
    }

    else
    {
      shazamKey = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier shazamKey];
    }

    shazamKey = v5->_shazamKey;
    v5->_shazamKey = shazamKey;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackRecognitionIdentifier"];
    v15 = v14;
    if (v14)
    {
      recognitionIdentifier = v14;
    }

    else
    {
      recognitionIdentifier = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier recognitionIdentifier];
    }

    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = recognitionIdentifier;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackIdentifier"];
    v19 = v18;
    if (v18)
    {
      libraryItemIdentifier = v18;
    }

    else
    {
      libraryItemIdentifier = [(SHLLibraryTrackCompoundIdentifier *)v5->_compoundIdentifier libraryItemIdentifier];
    }

    identifier = v5->_identifier;
    v5->_identifier = libraryItemIdentifier;

    [(SHLLibraryTrack *)v5 locationCoordinateFromCoder:coderCopy];
    v5->_locationCoordinate.latitude = v22;
    v5->_locationCoordinate.longitude = v23;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackProviderIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackProviderName"];
    providerName = v5->_providerName;
    v5->_providerName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackDate"];
    date = v5->_date;
    v5->_date = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackTitle"];
    title = v5->_title;
    v5->_title = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackAssociatedGroupIdentifier"];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v34;

    v36 = objc_opt_class();
    v37 = [NSSet setWithObjects:v36, objc_opt_class(), 0];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"SHLLibraryTrackLibrarySet"];
    v39 = [v38 mutableCopy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;
  }

  return v5;
}

- (CLLocationCoordinate2D)locationCoordinateFromCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocationLatitude"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocationLongitude"];
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
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLLibraryTrackLocation"];
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SHLLibraryTrackIdentifier"];
  [coderCopy encodeObject:self->_recognitionIdentifier forKey:@"SHLLibraryTrackRecognitionIdentifier"];
  validatedKey = [(SHLShazamKey *)self->_shazamKey validatedKey];
  [coderCopy encodeObject:validatedKey forKey:@"SHLLibraryTrackShazamKey"];

  encodedSystemData = [(SHLLibraryItemMetadata *)self->_metadata encodedSystemData];
  [coderCopy encodeObject:encodedSystemData forKey:@"SHLLibraryTrackMetadata"];

  [coderCopy encodeObject:self->_providerIdentifier forKey:@"SHLLibraryTrackProviderIdentifier"];
  [coderCopy encodeObject:self->_providerName forKey:@"SHLLibraryTrackProviderName"];
  [coderCopy encodeObject:self->_date forKey:@"SHLLibraryTrackDate"];
  [coderCopy encodeObject:self->_title forKey:@"SHLLibraryTrackTitle"];
  [coderCopy encodeObject:self->_subtitle forKey:@"SHLLibraryTrackSubtitle"];
  v7 = [NSNumber numberWithDouble:self->_locationCoordinate.latitude];
  [coderCopy encodeObject:v7 forKey:@"SHLLibraryTrackLocationLatitude"];

  v8 = [NSNumber numberWithDouble:self->_locationCoordinate.longitude];
  [coderCopy encodeObject:v8 forKey:@"SHLLibraryTrackLocationLongitude"];

  [coderCopy encodeObject:self->_associatedGroupIdentifier forKey:@"SHLLibraryTrackAssociatedGroupIdentifier"];
  v9 = [(NSMutableSet *)self->_labelSet copy];
  [coderCopy encodeObject:v9 forKey:@"SHLLibraryTrackLibrarySet"];

  [coderCopy encodeObject:self->_compoundIdentifier forKey:@"SHLLibraryTrackCompoundIdentifierKey"];
}

- (SHLLibraryTrack)initWithLibraryTrack:(id)track
{
  trackCopy = track;
  v45.receiver = self;
  v45.super_class = SHLLibraryTrack;
  v5 = [(SHLLibraryTrack *)&v45 init];
  if (v5)
  {
    identifier = [trackCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    recognitionIdentifier = [trackCopy recognitionIdentifier];
    v10 = [recognitionIdentifier copy];
    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = v10;

    shazamKey = [trackCopy shazamKey];
    v13 = [shazamKey copy];
    shazamKey = v5->_shazamKey;
    v5->_shazamKey = v13;

    metadata = [trackCopy metadata];
    v16 = [metadata copy];
    metadata = v5->_metadata;
    v5->_metadata = v16;

    providerIdentifier = [trackCopy providerIdentifier];
    v19 = [providerIdentifier copy];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v19;

    providerName = [trackCopy providerName];
    v22 = [providerName copy];
    providerName = v5->_providerName;
    v5->_providerName = v22;

    date = [trackCopy date];
    v25 = [date copy];
    date = v5->_date;
    v5->_date = v25;

    title = [trackCopy title];
    v28 = [title copy];
    title = v5->_title;
    v5->_title = v28;

    subtitle = [trackCopy subtitle];
    v31 = [subtitle copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v31;

    [trackCopy locationCoordinate];
    v5->_locationCoordinate.latitude = v33;
    v5->_locationCoordinate.longitude = v34;
    associatedGroupIdentifier = [trackCopy associatedGroupIdentifier];
    v36 = [associatedGroupIdentifier copy];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v36;

    labelSet = [trackCopy labelSet];
    v39 = [labelSet copy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;

    compoundIdentifier = [trackCopy compoundIdentifier];
    v42 = [compoundIdentifier copy];
    compoundIdentifier = v5->_compoundIdentifier;
    v5->_compoundIdentifier = v42;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHLLibraryTrack allocWithZone:zone];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SHLMutableLibraryTrack allocWithZone:zone];

  return [(SHLLibraryTrack *)v4 initWithLibraryTrack:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [(SHLLibraryTrack *)self isEqualTrack:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualTrack:(id)track
{
  trackCopy = track;
  identifier = [(SHLLibraryTrack *)self identifier];
  identifier2 = [trackCopy identifier];

  LOBYTE(trackCopy) = [identifier isEqualToString:identifier2];
  return trackCopy;
}

- (unint64_t)hash
{
  identifier = [(SHLLibraryTrack *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)validProviderIdentifier
{
  bundleIdentifier = [(SHLLibraryTrack *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(SHLLibraryTrack *)self bundleIdentifier];
    v5 = [bundleIdentifier2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)validProviderName
{
  bundleName = [(SHLLibraryTrack *)self bundleName];
  if (bundleName)
  {
    bundleName2 = [(SHLLibraryTrack *)self bundleName];
    v5 = [bundleName2 length] != 0;
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
  labels = [(SHLLibraryTrack *)self labels];
  v4 = [labels countByEnumeratingWithState:&v8 objects:v12 count:16];
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
        objc_enumerationMutation(labels);
      }

      if (![*(*(&v8 + 1) + 8 * v7) type])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [labels countByEnumeratingWithState:&v8 objects:v12 count:16];
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

    labels = [(SHLLibraryTrack *)self platformLabel];
    [(SHLLibraryTrack *)self addLabel:labels];
  }
}

- (id)_initWithRecognitionIdentifier:(id)identifier shazamKey:(id)key metadata:(id)metadata labels:(id)labels
{
  identifierCopy = identifier;
  keyCopy = key;
  metadataCopy = metadata;
  labelsCopy = labels;
  if (!keyCopy)
  {
    v21 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:@"You must have a valid Shazam key to create a library item."];
    objc_exception_throw(v21);
  }

  v15 = labelsCopy;
  v25.receiver = self;
  v25.super_class = SHLLibraryTrack;
  v16 = [(SHLLibraryTrack *)&v25 init];
  if (v16)
  {
    v17 = [[SHLLibraryTrackCompoundIdentifier alloc] initWithRecognitionIdentifier:identifierCopy shazamKey:keyCopy];
    compoundIdentifier = v16->_compoundIdentifier;
    v16->_compoundIdentifier = v17;

    if (![(SHLLibraryTrackCompoundIdentifier *)v16->_compoundIdentifier hasValidRecognitionIdentifier])
    {
      identifierCopy = [NSString stringWithFormat:@"%@ is not a valid recognition identifier.", identifierCopy];
      v23 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:identifierCopy];
      v24 = v23;

      objc_exception_throw(v23);
    }

    objc_storeStrong(&v16->_recognitionIdentifier, identifier);
    objc_storeStrong(&v16->_shazamKey, key);
    libraryItemIdentifier = [(SHLLibraryTrackCompoundIdentifier *)v16->_compoundIdentifier libraryItemIdentifier];
    [(SHLLibraryTrack *)v16 commonInitWithIdentifier:libraryItemIdentifier metadata:metadataCopy labels:v15];
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