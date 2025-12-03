@interface HKOntologyEducationContentSectionData
- (BOOL)isEqual:(id)equal;
- (HKOntologyEducationContentSectionData)initWithCoder:(id)coder;
- (HKOntologyEducationContentSectionData)initWithStringValues:(id)values sectionDataType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKOntologyEducationContentSectionData

- (HKOntologyEducationContentSectionData)initWithStringValues:(id)values sectionDataType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  valuesCopy = values;
  v17.receiver = self;
  v17.super_class = HKOntologyEducationContentSectionData;
  v13 = [(HKOntologyEducationContentSectionData *)&v17 init];
  if (v13)
  {
    v14 = [valuesCopy copy];
    stringValues = v13->_stringValues;
    v13->_stringValues = v14;

    v13->_sectionDataType = type;
    v13->_version = version;
    v13->_timestamp = timestamp;
    v13->_deleted = deleted;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_deleted)
  {
    v4 = @" DELETED";
  }

  else
  {
    v4 = &stru_1F05FF230;
  }

  sectionDataType = self->_sectionDataType;
  v6 = [(NSArray *)self->_stringValues componentsJoinedByString:@", "];
  version = self->_version;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_timestamp];
  v9 = HKDiagnosticStringFromDate(v8);
  v10 = [v3 stringWithFormat:@"<%ld%@ %@ %ld, (%@)>", sectionDataType, v4, v6, version, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stringValues = self->_stringValues;
      stringValues = [(HKOntologyEducationContentSectionData *)v5 stringValues];
      if ([(NSArray *)stringValues isEqual:stringValues]&& (sectionDataType = self->_sectionDataType, sectionDataType == [(HKOntologyEducationContentSectionData *)v5 sectionDataType]) && (version = self->_version, version == [(HKOntologyEducationContentSectionData *)v5 version]) && (timestamp = self->_timestamp, [(HKOntologyEducationContentSectionData *)v5 timestamp], timestamp == v11))
      {
        deleted = self->_deleted;
        v13 = deleted == [(HKOntologyEducationContentSectionData *)v5 deleted];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  stringValues = self->_stringValues;
  coderCopy = coder;
  [coderCopy encodeObject:stringValues forKey:@"stringValues"];
  [coderCopy encodeInteger:self->_sectionDataType forKey:@"type"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
}

- (HKOntologyEducationContentSectionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKOntologyEducationContentSectionData;
  v5 = [(HKOntologyEducationContentSectionData *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"stringValues"];
    stringValues = v5->_stringValues;
    v5->_stringValues = v7;

    v5->_sectionDataType = [coderCopy decodeIntegerForKey:@"type"];
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v9;
    v5->_deleted = [coderCopy decodeBoolForKey:@"deleted"];
  }

  return v5;
}

@end