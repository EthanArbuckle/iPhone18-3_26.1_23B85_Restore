@interface HKOntologyShardRegistryEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)unitTesting_isIdentical:(id)identical;
- (HKOntologyShardRegistryEntry)init;
- (HKOntologyShardRegistryEntry)initWithCoder:(id)coder;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version availableURL:(id)l;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version desiredState:(int64_t)state;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version settings:(unint64_t)settings slot:(int64_t)slot desiredState:(int64_t)state desiredStateDate:(id)date currentVersion:(int64_t)self0 currentVersionDate:(id)self1 currentRegion:(id)self2 currentRegionDate:(id)self3 currentLocale:(id)self4 currentLocaleDate:(id)self5 availableVersion:(int64_t)self6 availableVersionDate:(id)self7 availableRegion:(id)self8 availableRegionDate:(id)self9 availableLocale:(id)availableLocale availableLocaleDate:(id)availableLocaleDate availableURL:(id)l availableURLDate:(id)lDate availableChecksum:(id)checksum availableChecksumDate:(id)checksumDate availableSize:(int64_t)size availableSizeDate:(id)sizeDate availableState:(int64_t)availableState availableStateDate:(id)stateDate;
- (id)copyWithAvailableState:(int64_t)state;
- (id)copyWithAvailableStateImported;
- (id)copyWithAvailableStateNotImportedForDate:(id)date;
- (id)copyWithAvailableVersion:(int64_t)version;
- (id)copyWithAvailableVersion:(int64_t)version availableState:(int64_t)state;
- (id)copyWithCurrentVersionUndeterminedForDate:(id)date;
- (id)copyWithDesiredState:(int64_t)state;
- (id)copyWithSlot:(int64_t)slot;
- (id)debugDescription;
- (id)description;
- (id)updatedCopyWithAvailableVersion:(int64_t)version availableRegion:(id)region availableLocale:(id)locale availableURL:(id)l availableChecksum:(id)checksum availableSize:(int64_t)size date:(id)date;
- (uint64_t)_copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKOntologyShardRegistryEntry

- (HKOntologyShardRegistryEntry)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version settings:(unint64_t)settings slot:(int64_t)slot desiredState:(int64_t)state desiredStateDate:(id)date currentVersion:(int64_t)self0 currentVersionDate:(id)self1 currentRegion:(id)self2 currentRegionDate:(id)self3 currentLocale:(id)self4 currentLocaleDate:(id)self5 availableVersion:(int64_t)self6 availableVersionDate:(id)self7 availableRegion:(id)self8 availableRegionDate:(id)self9 availableLocale:(id)availableLocale availableLocaleDate:(id)availableLocaleDate availableURL:(id)l availableURLDate:(id)lDate availableChecksum:(id)checksum availableChecksumDate:(id)checksumDate availableSize:(int64_t)size availableSizeDate:(id)sizeDate availableState:(int64_t)availableState availableStateDate:(id)stateDate
{
  identifierCopy = identifier;
  typeCopy = type;
  dateCopy = date;
  versionDateCopy = versionDate;
  regionCopy = region;
  regionDateCopy = regionDate;
  localeCopy = locale;
  localeDateCopy = localeDate;
  availableVersionDateCopy = availableVersionDate;
  availableRegionCopy = availableRegion;
  availableRegionDateCopy = availableRegionDate;
  availableLocaleCopy = availableLocale;
  availableLocaleDateCopy = availableLocaleDate;
  lCopy = l;
  lDateCopy = lDate;
  checksumCopy = checksum;
  checksumDateCopy = checksumDate;
  sizeDateCopy = sizeDate;
  stateDateCopy = stateDate;
  v94.receiver = self;
  v94.super_class = HKOntologyShardRegistryEntry;
  v39 = [(HKOntologyShardRegistryEntry *)&v94 init];
  if (v39)
  {
    v40 = [identifierCopy copy];
    identifier = v39->_identifier;
    v39->_identifier = v40;

    v42 = [typeCopy copy];
    schemaType = v39->_schemaType;
    v39->_schemaType = v42;

    v39->_schemaVersion = version;
    v39->_settings = settings;
    v39->_slot = slot;
    v39->_desiredState = state;
    v44 = [dateCopy copy];
    desiredStateDate = v39->_desiredStateDate;
    v39->_desiredStateDate = v44;

    v39->_currentVersion = currentVersion;
    v46 = [versionDateCopy copy];
    currentVersionDate = v39->_currentVersionDate;
    v39->_currentVersionDate = v46;

    v48 = [regionCopy copy];
    currentRegion = v39->_currentRegion;
    v39->_currentRegion = v48;

    v50 = [regionDateCopy copy];
    currentRegionDate = v39->_currentRegionDate;
    v39->_currentRegionDate = v50;

    v52 = [localeCopy copy];
    currentLocale = v39->_currentLocale;
    v39->_currentLocale = v52;

    v54 = [localeDateCopy copy];
    currentLocaleDate = v39->_currentLocaleDate;
    v39->_currentLocaleDate = v54;

    v39->_availableVersion = availableVersion;
    v56 = [availableVersionDateCopy copy];
    availableVersionDate = v39->_availableVersionDate;
    v39->_availableVersionDate = v56;

    v58 = [availableRegionCopy copy];
    availableRegion = v39->_availableRegion;
    v39->_availableRegion = v58;

    v60 = [availableRegionDateCopy copy];
    availableRegionDate = v39->_availableRegionDate;
    v39->_availableRegionDate = v60;

    v62 = [availableLocaleCopy copy];
    availableLocale = v39->_availableLocale;
    v39->_availableLocale = v62;

    v64 = [availableLocaleDateCopy copy];
    availableLocaleDate = v39->_availableLocaleDate;
    v39->_availableLocaleDate = v64;

    v66 = [lCopy copy];
    availableURL = v39->_availableURL;
    v39->_availableURL = v66;

    v68 = [lDateCopy copy];
    availableURLDate = v39->_availableURLDate;
    v39->_availableURLDate = v68;

    v70 = [checksumCopy copy];
    availableChecksum = v39->_availableChecksum;
    v39->_availableChecksum = v70;

    v72 = [checksumDateCopy copy];
    availableChecksumDate = v39->_availableChecksumDate;
    v39->_availableChecksumDate = v72;

    v39->_availableSize = size;
    v74 = [sizeDateCopy copy];
    availableSizeDate = v39->_availableSizeDate;
    v39->_availableSizeDate = v74;

    v39->_availableState = availableState;
    v76 = [stateDateCopy copy];
    availableStateDate = v39->_availableStateDate;
    v39->_availableStateDate = v76;
  }

  return v39;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  identifier = self->_identifier;
  schemaType = self->_schemaType;
  schemaVersion = self->_schemaVersion;
  v6 = HKStringFromOntologyShardSettings(self->_settings);
  slot = self->_slot;
  if (slot == -1)
  {
    v8 = @"none";
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_slot];
  }

  v9 = HKStringFromOntologyShardState(self->_desiredState);
  currentVersion = self->_currentVersion;
  availableVersion = self->_availableVersion;
  v12 = HKStringFromOntologyShardState(self->_availableState);
  v13 = [v16 stringWithFormat:@"<%@: (%@:%@:%ld), %@, %@, %@, %ld, %ld, %@>", v15, identifier, schemaType, schemaVersion, v6, v8, v9, currentVersion, availableVersion, v12];

  if (slot != -1)
  {
  }

  return v13;
}

- (id)debugDescription
{
  v45 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  identifier = self->_identifier;
  v44 = v3;
  schemaVersion = self->_schemaVersion;
  schemaType = self->_schemaType;
  v4 = HKStringFromOntologyShardSettings(self->_settings);
  slot = self->_slot;
  v48 = v4;
  if (slot == -1)
  {
    v46 = @"none";
  }

  else
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  v58 = HKStringFromOntologyShardState(self->_desiredState);
  v57 = HKDiagnosticStringFromDate(self->_desiredStateDate);
  [(NSDate *)self->_desiredStateDate timeIntervalSinceReferenceDate];
  v40 = v5;
  v56 = HKStringFromOntologyShardVersion(self->_currentVersion);
  v55 = HKDiagnosticStringFromDate(self->_currentVersionDate);
  [(NSDate *)self->_currentVersionDate timeIntervalSinceReferenceDate];
  v39 = v6;
  currentRegion = self->_currentRegion;
  v54 = HKDiagnosticStringFromDate(self->_currentRegionDate);
  [(NSDate *)self->_currentRegionDate timeIntervalSinceReferenceDate];
  v8 = v7;
  currentLocale = self->_currentLocale;
  v53 = HKDiagnosticStringFromDate(self->_currentLocaleDate);
  [(NSDate *)self->_currentLocaleDate timeIntervalSinceReferenceDate];
  v10 = v9;
  v52 = HKStringFromOntologyShardVersion(self->_availableVersion);
  v51 = HKDiagnosticStringFromDate(self->_availableVersionDate);
  [(NSDate *)self->_availableVersionDate timeIntervalSinceReferenceDate];
  v12 = v11;
  availableRegion = self->_availableRegion;
  v50 = HKDiagnosticStringFromDate(self->_availableRegionDate);
  [(NSDate *)self->_availableRegionDate timeIntervalSinceReferenceDate];
  v14 = v13;
  availableLocale = self->_availableLocale;
  v49 = HKDiagnosticStringFromDate(self->_availableLocaleDate);
  [(NSDate *)self->_availableLocaleDate timeIntervalSinceReferenceDate];
  v16 = v15;
  availableURL = self->_availableURL;
  v18 = HKDiagnosticStringFromDate(self->_availableURLDate);
  [(NSDate *)self->_availableURLDate timeIntervalSinceReferenceDate];
  v20 = v19;
  availableChecksum = self->_availableChecksum;
  v22 = HKDiagnosticStringFromDate(self->_availableChecksumDate);
  [(NSDate *)self->_availableChecksumDate timeIntervalSinceReferenceDate];
  v24 = v23;
  availableSize = self->_availableSize;
  if (availableSize == -1)
  {
    v26 = @"unknown";
  }

  else
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_availableSize];
  }

  v27 = HKDiagnosticStringFromDate(self->_availableSizeDate);
  [(NSDate *)self->_availableSizeDate timeIntervalSinceReferenceDate];
  v29 = v28;
  v30 = HKStringFromOntologyShardState(self->_availableState);
  v31 = HKDiagnosticStringFromDate(self->_availableStateDate);
  [(NSDate *)self->_availableStateDate timeIntervalSinceReferenceDate];
  v33 = [v45 stringWithFormat:@"<%@:%p id: %@, schema: %@, scheamVersion: %ld, settings:%@, slot:%@, desired:%@, desiredDate:%@ (%f), currentVersion:%@, currentVersionDate:%@ (%f), currentRegion:%@, currentRegionDate:%@ (%f), currentLocale:%@, currentLocaleDate:%@ (%f), availableVersion:%@, availableVersionDate:%@ (%f), availableRegion:%@, availableRegionDate:%@ (%f), availableLocale:%@, availableLocaleDate:%@ (%f), availableURL:%@, availableURLDate:%@ (%f), availableChecksum:%@, availableChecksumDate:%@ (%f), availableSize:%@, availableSizeDate:%@ (%f), availableState:%@, availableStateDate:%@ (%f)>", v44, self, identifier, schemaType, schemaVersion, v48, v46, v58, v57, v40, v56, v55, v39, currentRegion, v54, v8, currentLocale, v53, v10, v52, v51, v12, availableRegion, v50, v14, availableLocale, v49, v16, availableURL, v18, v20, availableChecksum, v22, v24, v26, v27, v29, v30, v31, v32];

  if (availableSize != -1)
  {
  }

  if (slot != -1)
  {
  }

  return v33;
}

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version desiredState:(int64_t)state
{
  v10 = MEMORY[0x1E695DF00];
  typeCopy = type;
  identifierCopy = identifier;
  date = [v10 date];
  v14 = [(HKOntologyShardRegistryEntry *)self initWithIdentifier:identifierCopy schemaType:typeCopy schemaVersion:version settings:0 slot:-1 desiredState:state desiredStateDate:date currentVersion:0 currentVersionDate:date currentRegion:@"XX" currentRegionDate:date currentLocale:0 currentLocaleDate:date availableVersion:-1 availableVersionDate:date availableRegion:@"XX" availableRegionDate:date availableLocale:0 availableLocaleDate:date availableURL:0 availableURLDate:date availableChecksum:0 availableChecksumDate:date availableSize:-1 availableSizeDate:date availableState:0 availableStateDate:date];

  return v14;
}

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version availableURL:(id)l
{
  v10 = MEMORY[0x1E695DF00];
  lCopy = l;
  typeCopy = type;
  identifierCopy = identifier;
  date = [v10 date];
  v15 = [(HKOntologyShardRegistryEntry *)self initWithIdentifier:identifierCopy schemaType:typeCopy schemaVersion:version settings:0 slot:-1 desiredState:3 desiredStateDate:date currentVersion:0 currentVersionDate:date currentRegion:@"XX" currentRegionDate:date currentLocale:0 currentLocaleDate:date availableVersion:-1 availableVersionDate:date availableRegion:@"XX" availableRegionDate:date availableLocale:0 availableLocaleDate:date availableURL:lCopy availableURLDate:date availableChecksum:0 availableChecksumDate:date availableSize:-1 availableSizeDate:date availableState:1 availableStateDate:date];

  return v15;
}

- (id)copyWithAvailableState:(int64_t)state
{
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  _copy[26] = state;
  date = [MEMORY[0x1E695DF00] date];
  v6 = _copy[27];
  _copy[27] = date;

  return _copy;
}

- (id)updatedCopyWithAvailableVersion:(int64_t)version availableRegion:(id)region availableLocale:(id)locale availableURL:(id)l availableChecksum:(id)checksum availableSize:(int64_t)size date:(id)date
{
  regionCopy = region;
  localeCopy = locale;
  v16 = regionCopy;
  v17 = localeCopy;
  lCopy = l;
  checksumCopy = checksum;
  dateCopy = date;
  availableVersion = self->_availableVersion;
  availableRegion = self->_availableRegion;
  if (availableRegion == v16)
  {
    v51 = 1;
  }

  else if (availableRegion)
  {
    v51 = [(NSString *)v16 isEqualToString:?];
  }

  else
  {
    v51 = 0;
  }

  availableLocale = self->_availableLocale;
  if (availableLocale == v17)
  {
    v50 = 1;
  }

  else if (availableLocale)
  {
    v50 = [(NSString *)v17 isEqualToString:?];
  }

  else
  {
    v50 = 0;
  }

  absoluteString = [lCopy absoluteString];
  absoluteString2 = [(NSURL *)self->_availableURL absoluteString];
  if (absoluteString == absoluteString2)
  {
    v49 = 1;
  }

  else
  {
    absoluteString3 = [(NSURL *)self->_availableURL absoluteString];
    if (absoluteString3)
    {
      [lCopy absoluteString];
      v46 = checksumCopy;
      obja = dateCopy;
      v26 = v17;
      v28 = v27 = v16;
      [(NSURL *)self->_availableURL absoluteString];
      sizeCopy = size;
      v31 = v30 = lCopy;
      v49 = [v28 isEqualToString:v31];

      lCopy = v30;
      size = sizeCopy;

      v16 = v27;
      v17 = v26;
      checksumCopy = v46;
      dateCopy = obja;
    }

    else
    {
      v49 = 0;
    }
  }

  availableChecksum = self->_availableChecksum;
  if (availableChecksum == checksumCopy)
  {
    v33 = 1;
  }

  else if (availableChecksum)
  {
    v33 = [(NSString *)checksumCopy isEqualToString:?];
  }

  else
  {
    v33 = 0;
  }

  availableSize = self->_availableSize;
  if (availableVersion != version || ((v51 ^ 1) & 1) != 0 || ((v50 ^ 1) & 1) != 0 || ((v49 ^ 1) & 1) != 0 || !v33 || availableSize != size)
  {
    selfCopy = [(HKOntologyShardRegistryEntry *)self _copy];
    v37 = [dateCopy copy];
    obj = v37;
    if (availableVersion != version)
    {
      selfCopy->_availableVersion = version;
      objc_storeStrong(&selfCopy->_availableVersionDate, v37);
    }

    if ((v51 & 1) == 0)
    {
      v38 = [(NSString *)v16 copy];
      v39 = selfCopy->_availableRegion;
      selfCopy->_availableRegion = v38;

      objc_storeStrong(&selfCopy->_availableRegionDate, obj);
    }

    if ((v50 & 1) == 0)
    {
      v40 = [(NSString *)v17 copy];
      v41 = selfCopy->_availableLocale;
      selfCopy->_availableLocale = v40;

      objc_storeStrong(&selfCopy->_availableLocaleDate, obj);
    }

    if ((v49 & 1) == 0)
    {
      v42 = [lCopy copy];
      availableURL = selfCopy->_availableURL;
      selfCopy->_availableURL = v42;

      objc_storeStrong(&selfCopy->_availableURLDate, obj);
    }

    if ((v33 & 1) == 0)
    {
      v44 = [(NSString *)checksumCopy copy];
      v45 = selfCopy->_availableChecksum;
      selfCopy->_availableChecksum = v44;

      objc_storeStrong(&selfCopy->_availableChecksumDate, obj);
    }

    if (availableSize != size)
    {
      selfCopy->_availableSize = size;
      objc_storeStrong(&selfCopy->_availableSizeDate, obj);
    }

    if (self->_availableState != 1)
    {
      selfCopy->_availableState = 1;
      objc_storeStrong(&selfCopy->_availableStateDate, obj);
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v7 = v5->_identifier;
      v10 = (identifier == v7 || v7 && [(NSString *)identifier isEqualToString:?]) && ((schemaType = self->_schemaType, v9 = v5->_schemaType, schemaType == v9) || v9 && [(NSString *)schemaType isEqualToString:?]) && self->_schemaVersion == v5->_schemaVersion;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_schemaType forKey:@"schema"];
  [coderCopy encodeInteger:self->_schemaVersion forKey:@"schemaVersion"];
  [coderCopy encodeInteger:self->_settings forKey:@"settings"];
  [coderCopy encodeInteger:self->_slot forKey:@"slot"];
  [coderCopy encodeInteger:self->_desiredState forKey:@"desired_state"];
  [coderCopy encodeObject:self->_desiredStateDate forKey:@"desired_state_date"];
  [coderCopy encodeInteger:self->_currentVersion forKey:@"current_version"];
  [coderCopy encodeObject:self->_currentVersionDate forKey:@"current_version_date"];
  [coderCopy encodeObject:self->_currentRegion forKey:@"current_region"];
  [coderCopy encodeObject:self->_currentRegionDate forKey:@"current_region_date"];
  [coderCopy encodeObject:self->_currentLocale forKey:@"current_locale"];
  [coderCopy encodeObject:self->_currentLocaleDate forKey:@"current_locale_date"];
  [coderCopy encodeInteger:self->_availableVersion forKey:@"available_version"];
  [coderCopy encodeObject:self->_availableVersionDate forKey:@"available_version_date"];
  [coderCopy encodeObject:self->_availableRegion forKey:@"available_region"];
  [coderCopy encodeObject:self->_availableRegionDate forKey:@"available_region_date"];
  [coderCopy encodeObject:self->_availableLocale forKey:@"available_locale"];
  [coderCopy encodeObject:self->_availableLocaleDate forKey:@"available_locale_date"];
  [coderCopy encodeObject:self->_availableURL forKey:@"available_url"];
  [coderCopy encodeObject:self->_availableURLDate forKey:@"available_url_date"];
  [coderCopy encodeObject:self->_availableChecksum forKey:@"available_checksum"];
  [coderCopy encodeObject:self->_availableChecksumDate forKey:@"available_checksum_date"];
  [coderCopy encodeInteger:self->_availableSize forKey:@"available_size"];
  [coderCopy encodeObject:self->_availableSizeDate forKey:@"available_size_date"];
  [coderCopy encodeInteger:self->_availableState forKey:@"available_state"];
  [coderCopy encodeObject:self->_availableStateDate forKey:@"available_state_date"];
}

- (HKOntologyShardRegistryEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = HKOntologyShardRegistryEntry;
  v5 = [(HKOntologyShardRegistryEntry *)&v45 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema"];
    schemaType = v5->_schemaType;
    v5->_schemaType = v8;

    v5->_schemaVersion = [coderCopy decodeIntegerForKey:@"schemaVersion"];
    v5->_settings = [coderCopy decodeIntegerForKey:@"settings"];
    v5->_slot = [coderCopy decodeIntegerForKey:@"slot"];
    v5->_desiredState = [coderCopy decodeIntegerForKey:@"desired_state"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"desired_state_date"];
    desiredStateDate = v5->_desiredStateDate;
    v5->_desiredStateDate = v10;

    v5->_currentVersion = [coderCopy decodeIntegerForKey:@"current_version"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_version_date"];
    currentVersionDate = v5->_currentVersionDate;
    v5->_currentVersionDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_region"];
    currentRegion = v5->_currentRegion;
    v5->_currentRegion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_region_date"];
    currentRegionDate = v5->_currentRegionDate;
    v5->_currentRegionDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_locale"];
    currentLocale = v5->_currentLocale;
    v5->_currentLocale = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"current_locale_date"];
    currentLocaleDate = v5->_currentLocaleDate;
    v5->_currentLocaleDate = v20;

    v5->_availableVersion = [coderCopy decodeIntegerForKey:@"available_version"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_version_date"];
    availableVersionDate = v5->_availableVersionDate;
    v5->_availableVersionDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_region"];
    availableRegion = v5->_availableRegion;
    v5->_availableRegion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_region_date"];
    availableRegionDate = v5->_availableRegionDate;
    v5->_availableRegionDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_locale"];
    availableLocale = v5->_availableLocale;
    v5->_availableLocale = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_locale_date"];
    availableLocaleDate = v5->_availableLocaleDate;
    v5->_availableLocaleDate = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_url"];
    availableURL = v5->_availableURL;
    v5->_availableURL = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_url_date"];
    availableURLDate = v5->_availableURLDate;
    v5->_availableURLDate = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_checksum"];
    availableChecksum = v5->_availableChecksum;
    v5->_availableChecksum = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_checksum_date"];
    availableChecksumDate = v5->_availableChecksumDate;
    v5->_availableChecksumDate = v38;

    v5->_availableSize = [coderCopy decodeIntegerForKey:@"available_size"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_size_date"];
    availableSizeDate = v5->_availableSizeDate;
    v5->_availableSizeDate = v40;

    v5->_availableState = [coderCopy decodeIntegerForKey:@"available_state"];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"available_state_date"];
    availableStateDate = v5->_availableStateDate;
    v5->_availableStateDate = v42;
  }

  return v5;
}

- (BOOL)unitTesting_isIdentical:(id)identical
{
  identicalCopy = identical;
  if ([(HKOntologyShardRegistryEntry *)self isEqual:identicalCopy])
  {
    identifier = self->_identifier;
    v9 = *(identicalCopy + 1);
    if (identifier == v9 || v9 && [(NSString *)identifier isEqualToString:?])
    {
      schemaType = self->_schemaType;
      v11 = *(identicalCopy + 2);
      if ((schemaType == v11 || v11 && [(NSString *)schemaType isEqualToString:?]) && self->_schemaVersion == *(identicalCopy + 3) && self->_settings == *(identicalCopy + 4) && self->_slot == *(identicalCopy + 5) && self->_desiredState == *(identicalCopy + 6))
      {
        desiredStateDate = self->_desiredStateDate;
        v13 = *(identicalCopy + 7);
        if ((desiredStateDate == v13 || v13 && [(NSDate *)desiredStateDate isEqualToDate:?]) && self->_currentVersion == *(identicalCopy + 8))
        {
          currentVersionDate = self->_currentVersionDate;
          v15 = *(identicalCopy + 9);
          if (currentVersionDate == v15 || v15 && [(NSDate *)currentVersionDate isEqualToDate:?])
          {
            currentRegion = self->_currentRegion;
            v17 = *(identicalCopy + 10);
            if (currentRegion == v17 || v17 && [(NSString *)currentRegion isEqualToString:?])
            {
              currentRegionDate = self->_currentRegionDate;
              v19 = *(identicalCopy + 11);
              if (currentRegionDate == v19 || v19 && [(NSDate *)currentRegionDate isEqualToDate:?])
              {
                currentLocale = self->_currentLocale;
                v21 = *(identicalCopy + 12);
                if (currentLocale == v21 || v21 && [(NSString *)currentLocale isEqualToString:?])
                {
                  currentLocaleDate = self->_currentLocaleDate;
                  v23 = *(identicalCopy + 13);
                  if ((currentLocaleDate == v23 || v23 && [(NSDate *)currentLocaleDate isEqualToDate:?]) && self->_availableVersion == *(identicalCopy + 14))
                  {
                    availableVersionDate = self->_availableVersionDate;
                    v25 = *(identicalCopy + 15);
                    if (availableVersionDate == v25 || v25 && [(NSDate *)availableVersionDate isEqualToDate:?])
                    {
                      availableRegion = self->_availableRegion;
                      v27 = *(identicalCopy + 16);
                      if (availableRegion == v27 || v27 && [(NSString *)availableRegion isEqualToString:?])
                      {
                        availableRegionDate = self->_availableRegionDate;
                        v29 = *(identicalCopy + 17);
                        if (availableRegionDate == v29 || v29 && [(NSDate *)availableRegionDate isEqualToDate:?])
                        {
                          availableLocale = self->_availableLocale;
                          v31 = *(identicalCopy + 18);
                          if (availableLocale == v31 || v31 && [(NSString *)availableLocale isEqualToString:?])
                          {
                            availableLocaleDate = self->_availableLocaleDate;
                            v33 = *(identicalCopy + 19);
                            if (availableLocaleDate == v33 || v33 && [(NSDate *)availableLocaleDate isEqualToDate:?])
                            {
                              absoluteString = [(NSURL *)self->_availableURL absoluteString];
                              absoluteString2 = [*(identicalCopy + 20) absoluteString];
                              if (absoluteString != absoluteString2)
                              {
                                absoluteString3 = [*(identicalCopy + 20) absoluteString];
                                if (!absoluteString3)
                                {
                                  v37 = 0;
                                  goto LABEL_74;
                                }

                                v3 = absoluteString3;
                                absoluteString4 = [(NSURL *)self->_availableURL absoluteString];
                                absoluteString5 = [*(identicalCopy + 20) absoluteString];
                                if (![absoluteString4 isEqual:absoluteString5])
                                {
                                  v37 = 0;
                                  goto LABEL_72;
                                }
                              }

                              availableURLDate = self->_availableURLDate;
                              v40 = *(identicalCopy + 21);
                              if (availableURLDate == v40 || v40 && [(NSDate *)availableURLDate isEqualToDate:?])
                              {
                                availableChecksum = self->_availableChecksum;
                                v42 = *(identicalCopy + 22);
                                if (availableChecksum == v42 || v42 && [(NSString *)availableChecksum isEqualToString:?])
                                {
                                  availableChecksumDate = self->_availableChecksumDate;
                                  v44 = *(identicalCopy + 23);
                                  if ((availableChecksumDate == v44 || v44 && [(NSDate *)availableChecksumDate isEqualToDate:?]) && self->_availableSize == *(identicalCopy + 24))
                                  {
                                    availableSizeDate = self->_availableSizeDate;
                                    v46 = *(identicalCopy + 25);
                                    if ((availableSizeDate == v46 || v46 && [(NSDate *)availableSizeDate isEqualToDate:?]) && self->_availableState == *(identicalCopy + 26))
                                    {
                                      availableStateDate = self->_availableStateDate;
                                      v48 = *(identicalCopy + 27);
                                      if (availableStateDate == v48)
                                      {
                                        v37 = 1;
LABEL_71:
                                        if (absoluteString == absoluteString2)
                                        {
LABEL_74:

                                          goto LABEL_52;
                                        }

LABEL_72:

                                        goto LABEL_74;
                                      }

                                      if (v48)
                                      {
                                        v37 = [(NSDate *)availableStateDate isEqualToDate:?];
                                        goto LABEL_71;
                                      }
                                    }
                                  }
                                }
                              }

                              v37 = 0;
                              goto LABEL_71;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v37 = 0;
LABEL_52:

  return v37;
}

- (uint64_t)_copy
{
  if (result)
  {
    v1 = result;
    v2 = [HKOntologyShardRegistryEntry alloc];
    v3 = *(v1 + 56);
    v4 = *(v1 + 88);
    v5 = *(v1 + 120);
    v6 = *(v1 + 152);
    return [(HKOntologyShardRegistryEntry *)v2 initWithIdentifier:*(v1 + 8) schemaType:*(v1 + 16) schemaVersion:*(v1 + 24) settings:*(v1 + 32) slot:*(v1 + 40) desiredState:*(v1 + 48) desiredStateDate:*(v1 + 56) currentVersion:*(v1 + 64) currentVersionDate:*(v1 + 72) currentRegion:*(v1 + 80) currentRegionDate:*(v1 + 88) currentLocale:*(v1 + 96) currentLocaleDate:*(v1 + 104) availableVersion:*(v1 + 112) availableVersionDate:*(v1 + 120) availableRegion:*(v1 + 128) availableRegionDate:*(v1 + 136) availableLocale:*(v1 + 144) availableLocaleDate:*(v1 + 152) availableURL:*(v1 + 160) availableURLDate:*(v1 + 168) availableChecksum:*(v1 + 176) availableChecksumDate:*(v1 + 184) availableSize:*(v1 + 192) availableSizeDate:*(v1 + 200) availableState:*(v1 + 208) availableStateDate:*(v1 + 216)];
  }

  return result;
}

- (id)copyWithAvailableVersion:(int64_t)version
{
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  _copy[14] = version;
  date = [MEMORY[0x1E695DF00] date];
  v6 = _copy[15];
  _copy[15] = date;

  return _copy;
}

- (id)copyWithAvailableVersion:(int64_t)version availableState:(int64_t)state
{
  date = [MEMORY[0x1E695DF00] date];
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  *(_copy + 112) = version;
  objc_storeStrong((_copy + 120), date);
  v9 = *(_copy + 216);
  *(_copy + 208) = state;
  *(_copy + 216) = date;

  return _copy;
}

- (id)copyWithAvailableStateImported
{
  date = [MEMORY[0x1E695DF00] date];
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  *(_copy + 64) = *(_copy + 112);
  objc_storeStrong((_copy + 72), date);
  objc_storeStrong((_copy + 80), *(_copy + 128));
  objc_storeStrong((_copy + 88), date);
  objc_storeStrong((_copy + 96), *(_copy + 144));
  objc_storeStrong((_copy + 104), date);
  v5 = *(_copy + 216);
  *(_copy + 208) = 3;
  *(_copy + 216) = date;

  return _copy;
}

- (id)copyWithAvailableStateNotImportedForDate:(id)date
{
  dateCopy = date;
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  *(_copy + 40) = -1;
  *(_copy + 64) = 0;
  objc_storeStrong((_copy + 72), date);
  objc_storeStrong((_copy + 80), @"XX");
  objc_storeStrong((_copy + 88), date);
  v7 = *(_copy + 96);
  *(_copy + 96) = 0;

  objc_storeStrong((_copy + 104), date);
  if (self->_availableState == 3)
  {
    *(_copy + 208) = 1;
    objc_storeStrong((_copy + 216), date);
  }

  return _copy;
}

- (id)copyWithCurrentVersionUndeterminedForDate:(id)date
{
  dateCopy = date;
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  *(_copy + 64) = -1;
  objc_storeStrong((_copy + 72), date);
  objc_storeStrong((_copy + 80), @"XX");
  objc_storeStrong((_copy + 88), date);
  v7 = *(_copy + 96);
  *(_copy + 96) = 0;

  v8 = *(_copy + 104);
  *(_copy + 104) = dateCopy;

  return _copy;
}

- (id)copyWithDesiredState:(int64_t)state
{
  date = [MEMORY[0x1E695DF00] date];
  _copy = [(HKOntologyShardRegistryEntry *)self _copy];
  v7 = _copy[7];
  _copy[6] = state;
  _copy[7] = date;

  return _copy;
}

- (id)copyWithSlot:(int64_t)slot
{
  result = [(HKOntologyShardRegistryEntry *)self _copy];
  *(result + 5) = slot;
  return result;
}

@end