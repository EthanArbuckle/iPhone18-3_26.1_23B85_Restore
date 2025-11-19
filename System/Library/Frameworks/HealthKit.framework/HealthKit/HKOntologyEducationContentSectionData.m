@interface HKOntologyEducationContentSectionData
- (BOOL)isEqual:(id)a3;
- (HKOntologyEducationContentSectionData)initWithCoder:(id)a3;
- (HKOntologyEducationContentSectionData)initWithStringValues:(id)a3 sectionDataType:(int64_t)a4 version:(int64_t)a5 timestamp:(double)a6 deleted:(BOOL)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOntologyEducationContentSectionData

- (HKOntologyEducationContentSectionData)initWithStringValues:(id)a3 sectionDataType:(int64_t)a4 version:(int64_t)a5 timestamp:(double)a6 deleted:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = HKOntologyEducationContentSectionData;
  v13 = [(HKOntologyEducationContentSectionData *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    stringValues = v13->_stringValues;
    v13->_stringValues = v14;

    v13->_sectionDataType = a4;
    v13->_version = a5;
    v13->_timestamp = a6;
    v13->_deleted = a7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      stringValues = self->_stringValues;
      v7 = [(HKOntologyEducationContentSectionData *)v5 stringValues];
      if ([(NSArray *)stringValues isEqual:v7]&& (sectionDataType = self->_sectionDataType, sectionDataType == [(HKOntologyEducationContentSectionData *)v5 sectionDataType]) && (version = self->_version, version == [(HKOntologyEducationContentSectionData *)v5 version]) && (timestamp = self->_timestamp, [(HKOntologyEducationContentSectionData *)v5 timestamp], timestamp == v11))
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

- (void)encodeWithCoder:(id)a3
{
  stringValues = self->_stringValues;
  v5 = a3;
  [v5 encodeObject:stringValues forKey:@"stringValues"];
  [v5 encodeInteger:self->_sectionDataType forKey:@"type"];
  [v5 encodeInteger:self->_version forKey:@"version"];
  [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v5 encodeBool:self->_deleted forKey:@"deleted"];
}

- (HKOntologyEducationContentSectionData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKOntologyEducationContentSectionData;
  v5 = [(HKOntologyEducationContentSectionData *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"stringValues"];
    stringValues = v5->_stringValues;
    v5->_stringValues = v7;

    v5->_sectionDataType = [v4 decodeIntegerForKey:@"type"];
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v9;
    v5->_deleted = [v4 decodeBoolForKey:@"deleted"];
  }

  return v5;
}

@end