@interface HKOntologyShardRegistryEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)unitTesting_isIdentical:(id)a3;
- (HKOntologyShardRegistryEntry)init;
- (HKOntologyShardRegistryEntry)initWithCoder:(id)a3;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 availableURL:(id)a6;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 desiredState:(int64_t)a6;
- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 settings:(unint64_t)a6 slot:(int64_t)a7 desiredState:(int64_t)a8 desiredStateDate:(id)a9 currentVersion:(int64_t)a10 currentVersionDate:(id)a11 currentRegion:(id)a12 currentRegionDate:(id)a13 currentLocale:(id)a14 currentLocaleDate:(id)a15 availableVersion:(int64_t)a16 availableVersionDate:(id)a17 availableRegion:(id)a18 availableRegionDate:(id)a19 availableLocale:(id)a20 availableLocaleDate:(id)a21 availableURL:(id)a22 availableURLDate:(id)a23 availableChecksum:(id)a24 availableChecksumDate:(id)a25 availableSize:(int64_t)a26 availableSizeDate:(id)a27 availableState:(int64_t)a28 availableStateDate:(id)a29;
- (id)copyWithAvailableState:(int64_t)a3;
- (id)copyWithAvailableStateImported;
- (id)copyWithAvailableStateNotImportedForDate:(id)a3;
- (id)copyWithAvailableVersion:(int64_t)a3;
- (id)copyWithAvailableVersion:(int64_t)a3 availableState:(int64_t)a4;
- (id)copyWithCurrentVersionUndeterminedForDate:(id)a3;
- (id)copyWithDesiredState:(int64_t)a3;
- (id)copyWithSlot:(int64_t)a3;
- (id)debugDescription;
- (id)description;
- (id)updatedCopyWithAvailableVersion:(int64_t)a3 availableRegion:(id)a4 availableLocale:(id)a5 availableURL:(id)a6 availableChecksum:(id)a7 availableSize:(int64_t)a8 date:(id)a9;
- (uint64_t)_copy;
- (void)encodeWithCoder:(id)a3;
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

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 settings:(unint64_t)a6 slot:(int64_t)a7 desiredState:(int64_t)a8 desiredStateDate:(id)a9 currentVersion:(int64_t)a10 currentVersionDate:(id)a11 currentRegion:(id)a12 currentRegionDate:(id)a13 currentLocale:(id)a14 currentLocaleDate:(id)a15 availableVersion:(int64_t)a16 availableVersionDate:(id)a17 availableRegion:(id)a18 availableRegionDate:(id)a19 availableLocale:(id)a20 availableLocaleDate:(id)a21 availableURL:(id)a22 availableURLDate:(id)a23 availableChecksum:(id)a24 availableChecksumDate:(id)a25 availableSize:(int64_t)a26 availableSizeDate:(id)a27 availableState:(int64_t)a28 availableStateDate:(id)a29
{
  v93 = a3;
  v92 = a4;
  v30 = a9;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v91 = a20;
  v90 = a21;
  v89 = a22;
  v88 = a23;
  v87 = a24;
  v86 = a25;
  v85 = a27;
  v84 = a29;
  v94.receiver = self;
  v94.super_class = HKOntologyShardRegistryEntry;
  v39 = [(HKOntologyShardRegistryEntry *)&v94 init];
  if (v39)
  {
    v40 = [v93 copy];
    identifier = v39->_identifier;
    v39->_identifier = v40;

    v42 = [v92 copy];
    schemaType = v39->_schemaType;
    v39->_schemaType = v42;

    v39->_schemaVersion = a5;
    v39->_settings = a6;
    v39->_slot = a7;
    v39->_desiredState = a8;
    v44 = [v30 copy];
    desiredStateDate = v39->_desiredStateDate;
    v39->_desiredStateDate = v44;

    v39->_currentVersion = a10;
    v46 = [v31 copy];
    currentVersionDate = v39->_currentVersionDate;
    v39->_currentVersionDate = v46;

    v48 = [v32 copy];
    currentRegion = v39->_currentRegion;
    v39->_currentRegion = v48;

    v50 = [v33 copy];
    currentRegionDate = v39->_currentRegionDate;
    v39->_currentRegionDate = v50;

    v52 = [v34 copy];
    currentLocale = v39->_currentLocale;
    v39->_currentLocale = v52;

    v54 = [v35 copy];
    currentLocaleDate = v39->_currentLocaleDate;
    v39->_currentLocaleDate = v54;

    v39->_availableVersion = a16;
    v56 = [v36 copy];
    availableVersionDate = v39->_availableVersionDate;
    v39->_availableVersionDate = v56;

    v58 = [v37 copy];
    availableRegion = v39->_availableRegion;
    v39->_availableRegion = v58;

    v60 = [v38 copy];
    availableRegionDate = v39->_availableRegionDate;
    v39->_availableRegionDate = v60;

    v62 = [v91 copy];
    availableLocale = v39->_availableLocale;
    v39->_availableLocale = v62;

    v64 = [v90 copy];
    availableLocaleDate = v39->_availableLocaleDate;
    v39->_availableLocaleDate = v64;

    v66 = [v89 copy];
    availableURL = v39->_availableURL;
    v39->_availableURL = v66;

    v68 = [v88 copy];
    availableURLDate = v39->_availableURLDate;
    v39->_availableURLDate = v68;

    v70 = [v87 copy];
    availableChecksum = v39->_availableChecksum;
    v39->_availableChecksum = v70;

    v72 = [v86 copy];
    availableChecksumDate = v39->_availableChecksumDate;
    v39->_availableChecksumDate = v72;

    v39->_availableSize = a26;
    v74 = [v85 copy];
    availableSizeDate = v39->_availableSizeDate;
    v39->_availableSizeDate = v74;

    v39->_availableState = a28;
    v76 = [v84 copy];
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

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 desiredState:(int64_t)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a4;
  v12 = a3;
  v13 = [v10 date];
  v14 = [(HKOntologyShardRegistryEntry *)self initWithIdentifier:v12 schemaType:v11 schemaVersion:a5 settings:0 slot:-1 desiredState:a6 desiredStateDate:v13 currentVersion:0 currentVersionDate:v13 currentRegion:@"XX" currentRegionDate:v13 currentLocale:0 currentLocaleDate:v13 availableVersion:-1 availableVersionDate:v13 availableRegion:@"XX" availableRegionDate:v13 availableLocale:0 availableLocaleDate:v13 availableURL:0 availableURLDate:v13 availableChecksum:0 availableChecksumDate:v13 availableSize:-1 availableSizeDate:v13 availableState:0 availableStateDate:v13];

  return v14;
}

- (HKOntologyShardRegistryEntry)initWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 availableURL:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 date];
  v15 = [(HKOntologyShardRegistryEntry *)self initWithIdentifier:v13 schemaType:v12 schemaVersion:a5 settings:0 slot:-1 desiredState:3 desiredStateDate:v14 currentVersion:0 currentVersionDate:v14 currentRegion:@"XX" currentRegionDate:v14 currentLocale:0 currentLocaleDate:v14 availableVersion:-1 availableVersionDate:v14 availableRegion:@"XX" availableRegionDate:v14 availableLocale:0 availableLocaleDate:v14 availableURL:v11 availableURLDate:v14 availableChecksum:0 availableChecksumDate:v14 availableSize:-1 availableSizeDate:v14 availableState:1 availableStateDate:v14];

  return v15;
}

- (id)copyWithAvailableState:(int64_t)a3
{
  v4 = [(HKOntologyShardRegistryEntry *)self _copy];
  v4[26] = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = v4[27];
  v4[27] = v5;

  return v4;
}

- (id)updatedCopyWithAvailableVersion:(int64_t)a3 availableRegion:(id)a4 availableLocale:(id)a5 availableURL:(id)a6 availableChecksum:(id)a7 availableSize:(int64_t)a8 date:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = v14;
  v17 = v15;
  v18 = a6;
  v19 = a7;
  v20 = a9;
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

  v23 = [v18 absoluteString];
  v24 = [(NSURL *)self->_availableURL absoluteString];
  if (v23 == v24)
  {
    v49 = 1;
  }

  else
  {
    v25 = [(NSURL *)self->_availableURL absoluteString];
    if (v25)
    {
      [v18 absoluteString];
      v46 = v19;
      obja = v20;
      v26 = v17;
      v28 = v27 = v16;
      [(NSURL *)self->_availableURL absoluteString];
      v29 = a8;
      v31 = v30 = v18;
      v49 = [v28 isEqualToString:v31];

      v18 = v30;
      a8 = v29;

      v16 = v27;
      v17 = v26;
      v19 = v46;
      v20 = obja;
    }

    else
    {
      v49 = 0;
    }
  }

  availableChecksum = self->_availableChecksum;
  if (availableChecksum == v19)
  {
    v33 = 1;
  }

  else if (availableChecksum)
  {
    v33 = [(NSString *)v19 isEqualToString:?];
  }

  else
  {
    v33 = 0;
  }

  availableSize = self->_availableSize;
  if (availableVersion != a3 || ((v51 ^ 1) & 1) != 0 || ((v50 ^ 1) & 1) != 0 || ((v49 ^ 1) & 1) != 0 || !v33 || availableSize != a8)
  {
    v35 = [(HKOntologyShardRegistryEntry *)self _copy];
    v37 = [v20 copy];
    obj = v37;
    if (availableVersion != a3)
    {
      v35->_availableVersion = a3;
      objc_storeStrong(&v35->_availableVersionDate, v37);
    }

    if ((v51 & 1) == 0)
    {
      v38 = [(NSString *)v16 copy];
      v39 = v35->_availableRegion;
      v35->_availableRegion = v38;

      objc_storeStrong(&v35->_availableRegionDate, obj);
    }

    if ((v50 & 1) == 0)
    {
      v40 = [(NSString *)v17 copy];
      v41 = v35->_availableLocale;
      v35->_availableLocale = v40;

      objc_storeStrong(&v35->_availableLocaleDate, obj);
    }

    if ((v49 & 1) == 0)
    {
      v42 = [v18 copy];
      availableURL = v35->_availableURL;
      v35->_availableURL = v42;

      objc_storeStrong(&v35->_availableURLDate, obj);
    }

    if ((v33 & 1) == 0)
    {
      v44 = [(NSString *)v19 copy];
      v45 = v35->_availableChecksum;
      v35->_availableChecksum = v44;

      objc_storeStrong(&v35->_availableChecksumDate, obj);
    }

    if (availableSize != a8)
    {
      v35->_availableSize = a8;
      objc_storeStrong(&v35->_availableSizeDate, obj);
    }

    if (self->_availableState != 1)
    {
      v35->_availableState = 1;
      objc_storeStrong(&v35->_availableStateDate, obj);
    }
  }

  else
  {
    v35 = self;
  }

  return v35;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_schemaType forKey:@"schema"];
  [v5 encodeInteger:self->_schemaVersion forKey:@"schemaVersion"];
  [v5 encodeInteger:self->_settings forKey:@"settings"];
  [v5 encodeInteger:self->_slot forKey:@"slot"];
  [v5 encodeInteger:self->_desiredState forKey:@"desired_state"];
  [v5 encodeObject:self->_desiredStateDate forKey:@"desired_state_date"];
  [v5 encodeInteger:self->_currentVersion forKey:@"current_version"];
  [v5 encodeObject:self->_currentVersionDate forKey:@"current_version_date"];
  [v5 encodeObject:self->_currentRegion forKey:@"current_region"];
  [v5 encodeObject:self->_currentRegionDate forKey:@"current_region_date"];
  [v5 encodeObject:self->_currentLocale forKey:@"current_locale"];
  [v5 encodeObject:self->_currentLocaleDate forKey:@"current_locale_date"];
  [v5 encodeInteger:self->_availableVersion forKey:@"available_version"];
  [v5 encodeObject:self->_availableVersionDate forKey:@"available_version_date"];
  [v5 encodeObject:self->_availableRegion forKey:@"available_region"];
  [v5 encodeObject:self->_availableRegionDate forKey:@"available_region_date"];
  [v5 encodeObject:self->_availableLocale forKey:@"available_locale"];
  [v5 encodeObject:self->_availableLocaleDate forKey:@"available_locale_date"];
  [v5 encodeObject:self->_availableURL forKey:@"available_url"];
  [v5 encodeObject:self->_availableURLDate forKey:@"available_url_date"];
  [v5 encodeObject:self->_availableChecksum forKey:@"available_checksum"];
  [v5 encodeObject:self->_availableChecksumDate forKey:@"available_checksum_date"];
  [v5 encodeInteger:self->_availableSize forKey:@"available_size"];
  [v5 encodeObject:self->_availableSizeDate forKey:@"available_size_date"];
  [v5 encodeInteger:self->_availableState forKey:@"available_state"];
  [v5 encodeObject:self->_availableStateDate forKey:@"available_state_date"];
}

- (HKOntologyShardRegistryEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = HKOntologyShardRegistryEntry;
  v5 = [(HKOntologyShardRegistryEntry *)&v45 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schema"];
    schemaType = v5->_schemaType;
    v5->_schemaType = v8;

    v5->_schemaVersion = [v4 decodeIntegerForKey:@"schemaVersion"];
    v5->_settings = [v4 decodeIntegerForKey:@"settings"];
    v5->_slot = [v4 decodeIntegerForKey:@"slot"];
    v5->_desiredState = [v4 decodeIntegerForKey:@"desired_state"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desired_state_date"];
    desiredStateDate = v5->_desiredStateDate;
    v5->_desiredStateDate = v10;

    v5->_currentVersion = [v4 decodeIntegerForKey:@"current_version"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"current_version_date"];
    currentVersionDate = v5->_currentVersionDate;
    v5->_currentVersionDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"current_region"];
    currentRegion = v5->_currentRegion;
    v5->_currentRegion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"current_region_date"];
    currentRegionDate = v5->_currentRegionDate;
    v5->_currentRegionDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"current_locale"];
    currentLocale = v5->_currentLocale;
    v5->_currentLocale = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"current_locale_date"];
    currentLocaleDate = v5->_currentLocaleDate;
    v5->_currentLocaleDate = v20;

    v5->_availableVersion = [v4 decodeIntegerForKey:@"available_version"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_version_date"];
    availableVersionDate = v5->_availableVersionDate;
    v5->_availableVersionDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_region"];
    availableRegion = v5->_availableRegion;
    v5->_availableRegion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_region_date"];
    availableRegionDate = v5->_availableRegionDate;
    v5->_availableRegionDate = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_locale"];
    availableLocale = v5->_availableLocale;
    v5->_availableLocale = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_locale_date"];
    availableLocaleDate = v5->_availableLocaleDate;
    v5->_availableLocaleDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_url"];
    availableURL = v5->_availableURL;
    v5->_availableURL = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_url_date"];
    availableURLDate = v5->_availableURLDate;
    v5->_availableURLDate = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_checksum"];
    availableChecksum = v5->_availableChecksum;
    v5->_availableChecksum = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_checksum_date"];
    availableChecksumDate = v5->_availableChecksumDate;
    v5->_availableChecksumDate = v38;

    v5->_availableSize = [v4 decodeIntegerForKey:@"available_size"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_size_date"];
    availableSizeDate = v5->_availableSizeDate;
    v5->_availableSizeDate = v40;

    v5->_availableState = [v4 decodeIntegerForKey:@"available_state"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"available_state_date"];
    availableStateDate = v5->_availableStateDate;
    v5->_availableStateDate = v42;
  }

  return v5;
}

- (BOOL)unitTesting_isIdentical:(id)a3
{
  v7 = a3;
  if ([(HKOntologyShardRegistryEntry *)self isEqual:v7])
  {
    identifier = self->_identifier;
    v9 = *(v7 + 1);
    if (identifier == v9 || v9 && [(NSString *)identifier isEqualToString:?])
    {
      schemaType = self->_schemaType;
      v11 = *(v7 + 2);
      if ((schemaType == v11 || v11 && [(NSString *)schemaType isEqualToString:?]) && self->_schemaVersion == *(v7 + 3) && self->_settings == *(v7 + 4) && self->_slot == *(v7 + 5) && self->_desiredState == *(v7 + 6))
      {
        desiredStateDate = self->_desiredStateDate;
        v13 = *(v7 + 7);
        if ((desiredStateDate == v13 || v13 && [(NSDate *)desiredStateDate isEqualToDate:?]) && self->_currentVersion == *(v7 + 8))
        {
          currentVersionDate = self->_currentVersionDate;
          v15 = *(v7 + 9);
          if (currentVersionDate == v15 || v15 && [(NSDate *)currentVersionDate isEqualToDate:?])
          {
            currentRegion = self->_currentRegion;
            v17 = *(v7 + 10);
            if (currentRegion == v17 || v17 && [(NSString *)currentRegion isEqualToString:?])
            {
              currentRegionDate = self->_currentRegionDate;
              v19 = *(v7 + 11);
              if (currentRegionDate == v19 || v19 && [(NSDate *)currentRegionDate isEqualToDate:?])
              {
                currentLocale = self->_currentLocale;
                v21 = *(v7 + 12);
                if (currentLocale == v21 || v21 && [(NSString *)currentLocale isEqualToString:?])
                {
                  currentLocaleDate = self->_currentLocaleDate;
                  v23 = *(v7 + 13);
                  if ((currentLocaleDate == v23 || v23 && [(NSDate *)currentLocaleDate isEqualToDate:?]) && self->_availableVersion == *(v7 + 14))
                  {
                    availableVersionDate = self->_availableVersionDate;
                    v25 = *(v7 + 15);
                    if (availableVersionDate == v25 || v25 && [(NSDate *)availableVersionDate isEqualToDate:?])
                    {
                      availableRegion = self->_availableRegion;
                      v27 = *(v7 + 16);
                      if (availableRegion == v27 || v27 && [(NSString *)availableRegion isEqualToString:?])
                      {
                        availableRegionDate = self->_availableRegionDate;
                        v29 = *(v7 + 17);
                        if (availableRegionDate == v29 || v29 && [(NSDate *)availableRegionDate isEqualToDate:?])
                        {
                          availableLocale = self->_availableLocale;
                          v31 = *(v7 + 18);
                          if (availableLocale == v31 || v31 && [(NSString *)availableLocale isEqualToString:?])
                          {
                            availableLocaleDate = self->_availableLocaleDate;
                            v33 = *(v7 + 19);
                            if (availableLocaleDate == v33 || v33 && [(NSDate *)availableLocaleDate isEqualToDate:?])
                            {
                              v34 = [(NSURL *)self->_availableURL absoluteString];
                              v35 = [*(v7 + 20) absoluteString];
                              if (v34 != v35)
                              {
                                v36 = [*(v7 + 20) absoluteString];
                                if (!v36)
                                {
                                  v37 = 0;
                                  goto LABEL_74;
                                }

                                v3 = v36;
                                v4 = [(NSURL *)self->_availableURL absoluteString];
                                v5 = [*(v7 + 20) absoluteString];
                                if (![v4 isEqual:v5])
                                {
                                  v37 = 0;
                                  goto LABEL_72;
                                }
                              }

                              availableURLDate = self->_availableURLDate;
                              v40 = *(v7 + 21);
                              if (availableURLDate == v40 || v40 && [(NSDate *)availableURLDate isEqualToDate:?])
                              {
                                availableChecksum = self->_availableChecksum;
                                v42 = *(v7 + 22);
                                if (availableChecksum == v42 || v42 && [(NSString *)availableChecksum isEqualToString:?])
                                {
                                  availableChecksumDate = self->_availableChecksumDate;
                                  v44 = *(v7 + 23);
                                  if ((availableChecksumDate == v44 || v44 && [(NSDate *)availableChecksumDate isEqualToDate:?]) && self->_availableSize == *(v7 + 24))
                                  {
                                    availableSizeDate = self->_availableSizeDate;
                                    v46 = *(v7 + 25);
                                    if ((availableSizeDate == v46 || v46 && [(NSDate *)availableSizeDate isEqualToDate:?]) && self->_availableState == *(v7 + 26))
                                    {
                                      availableStateDate = self->_availableStateDate;
                                      v48 = *(v7 + 27);
                                      if (availableStateDate == v48)
                                      {
                                        v37 = 1;
LABEL_71:
                                        if (v34 == v35)
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

- (id)copyWithAvailableVersion:(int64_t)a3
{
  v4 = [(HKOntologyShardRegistryEntry *)self _copy];
  v4[14] = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = v4[15];
  v4[15] = v5;

  return v4;
}

- (id)copyWithAvailableVersion:(int64_t)a3 availableState:(int64_t)a4
{
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(HKOntologyShardRegistryEntry *)self _copy];
  *(v8 + 112) = a3;
  objc_storeStrong((v8 + 120), v7);
  v9 = *(v8 + 216);
  *(v8 + 208) = a4;
  *(v8 + 216) = v7;

  return v8;
}

- (id)copyWithAvailableStateImported
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(HKOntologyShardRegistryEntry *)self _copy];
  *(v4 + 64) = *(v4 + 112);
  objc_storeStrong((v4 + 72), v3);
  objc_storeStrong((v4 + 80), *(v4 + 128));
  objc_storeStrong((v4 + 88), v3);
  objc_storeStrong((v4 + 96), *(v4 + 144));
  objc_storeStrong((v4 + 104), v3);
  v5 = *(v4 + 216);
  *(v4 + 208) = 3;
  *(v4 + 216) = v3;

  return v4;
}

- (id)copyWithAvailableStateNotImportedForDate:(id)a3
{
  v5 = a3;
  v6 = [(HKOntologyShardRegistryEntry *)self _copy];
  *(v6 + 40) = -1;
  *(v6 + 64) = 0;
  objc_storeStrong((v6 + 72), a3);
  objc_storeStrong((v6 + 80), @"XX");
  objc_storeStrong((v6 + 88), a3);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  objc_storeStrong((v6 + 104), a3);
  if (self->_availableState == 3)
  {
    *(v6 + 208) = 1;
    objc_storeStrong((v6 + 216), a3);
  }

  return v6;
}

- (id)copyWithCurrentVersionUndeterminedForDate:(id)a3
{
  v5 = a3;
  v6 = [(HKOntologyShardRegistryEntry *)self _copy];
  *(v6 + 64) = -1;
  objc_storeStrong((v6 + 72), a3);
  objc_storeStrong((v6 + 80), @"XX");
  objc_storeStrong((v6 + 88), a3);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  v8 = *(v6 + 104);
  *(v6 + 104) = v5;

  return v6;
}

- (id)copyWithDesiredState:(int64_t)a3
{
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(HKOntologyShardRegistryEntry *)self _copy];
  v7 = v6[7];
  v6[6] = a3;
  v6[7] = v5;

  return v6;
}

- (id)copyWithSlot:(int64_t)a3
{
  result = [(HKOntologyShardRegistryEntry *)self _copy];
  *(result + 5) = a3;
  return result;
}

@end