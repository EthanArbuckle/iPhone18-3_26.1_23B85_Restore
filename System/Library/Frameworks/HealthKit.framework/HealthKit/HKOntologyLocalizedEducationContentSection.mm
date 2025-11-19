@interface HKOntologyLocalizedEducationContentSection
+ (id)sectionByMerging:(id)a3 sectionToMergeFrom:(id)a4 options:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (HKOntologyLocalizedEducationContentSection)init;
- (HKOntologyLocalizedEducationContentSection)initWithCoder:(id)a3;
- (HKOntologyLocalizedEducationContentSection)initWithSectionDataTypeMapping:(id)a3 sectionType:(int64_t)a4;
- (NSString)identifier;
- (NSString)localeIdentifier;
- (NSString)localizedText;
- (id)_arrayOfStringOfTypeOrNil:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOntologyLocalizedEducationContentSection

- (HKOntologyLocalizedEducationContentSection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOntologyLocalizedEducationContentSection)initWithSectionDataTypeMapping:(id)a3 sectionType:(int64_t)a4
{
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:&unk_1F0683AF8];

  if (!v8)
  {
    [HKOntologyLocalizedEducationContentSection initWithSectionDataTypeMapping:a2 sectionType:self];
  }

  v14.receiver = self;
  v14.super_class = HKOntologyLocalizedEducationContentSection;
  v9 = [(HKOntologyLocalizedEducationContentSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_sectionType = a4;
    v11 = [v7 copy];
    sectionDataTypeMapping = v10->_sectionDataTypeMapping;
    v10->_sectionDataTypeMapping = v11;
  }

  return v10;
}

- (NSString)identifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", self->_sectionType, v3];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"/"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)localizedText
{
  v2 = [(NSDictionary *)self->_sectionDataTypeMapping objectForKeyedSubscript:&unk_1F0683B10];
  v3 = [v2 stringValues];
  v4 = [v3 firstObject];

  return v4;
}

- (NSString)localeIdentifier
{
  v2 = [(NSDictionary *)self->_sectionDataTypeMapping objectForKeyedSubscript:&unk_1F0683AF8];
  v3 = [v2 stringValues];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_arrayOfStringOfTypeOrNil:(int64_t)a3
{
  sectionDataTypeMapping = self->_sectionDataTypeMapping;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [(NSDictionary *)sectionDataTypeMapping objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 stringValues];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(HKOntologyLocalizedEducationContentSection *)self localizedText];
  v5 = [v4 length];
  v6 = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v7 = [v3 stringWithFormat:@"'Length of education content: %li, localeIdentifier: %@, '", v5, v6];

  v8 = [(HKOntologyLocalizedEducationContentSection *)self validRegionCodes];
  v9 = [v8 count];

  if (v9)
  {
    [v7 appendString:{@", ["}];
    v10 = [(HKOntologyLocalizedEducationContentSection *)self validRegionCodes];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [v7 appendString:v11];

    [v7 appendString:@"]"];
  }

  v12 = [(HKOntologyLocalizedEducationContentSection *)self attributions];
  v13 = [v12 count];

  if (v13)
  {
    [v7 appendString:{@", ["}];
    v14 = [(HKOntologyLocalizedEducationContentSection *)self attributions];
    v15 = [v14 componentsJoinedByString:{@", "}];
    [v7 appendString:v15];

    [v7 appendString:@"]"];
  }

  v16 = [(HKOntologyLocalizedEducationContentSection *)self citations];
  v17 = [v16 count];

  if (v17)
  {
    [v7 appendString:{@", ["}];
    v18 = [(HKOntologyLocalizedEducationContentSection *)self citations];
    v19 = [v18 componentsJoinedByString:{@", "}];
    [v7 appendString:v19];

    [v7 appendString:@"]"];
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)sectionByMerging:(id)a3 sectionToMergeFrom:(id)a4 options:(unint64_t)a5
{
  v38 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v32 = v9;
LABEL_24:
    v33 = v32;
    goto LABEL_28;
  }

  if (!v9)
  {
    v32 = v8;
    goto LABEL_24;
  }

  v11 = [v8 sectionType];
  if (v11 != [v10 sectionType])
  {
    [HKOntologyLocalizedEducationContentSection sectionByMerging:a2 sectionToMergeFrom:a1 options:?];
  }

  v12 = [v8 sectionDataTypeMapping];
  v13 = [v10 sectionDataTypeMapping];
  v39 = [v12 mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v15)
  {

LABEL_26:
    v31 = v8;
    goto LABEL_27;
  }

  v16 = v15;
  v36 = v10;
  v37 = v8;
  v17 = 0;
  v18 = *v41;
  do
  {
    v19 = 0;
    do
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v40 + 1) + 8 * v19);
      v21 = [v12 objectForKeyedSubscript:{v20, v36, v37}];
      v22 = [v14 objectForKeyedSubscript:v20];
      v23 = v22;
      if (!v21 || (v24 = [v22 version], v24 > objc_msgSend(v21, "version")) || (v25 = objc_msgSend(v23, "version"), v26 = objc_msgSend(v21, "version"), (v38 & 1) == 0) && v25 == v26 && (objc_msgSend(v23, "timestamp"), v28 = v27, objc_msgSend(v21, "timestamp"), v28 > v29))
      {
        [v39 setObject:v23 forKeyedSubscript:v20];
        v17 = 1;
      }

      ++v19;
    }

    while (v16 != v19);
    v30 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v16 = v30;
  }

  while (v30);

  v10 = v36;
  v8 = v37;
  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = -[HKOntologyLocalizedEducationContentSection initWithSectionDataTypeMapping:sectionType:]([HKOntologyLocalizedEducationContentSection alloc], "initWithSectionDataTypeMapping:sectionType:", v39, [v37 sectionType]);
LABEL_27:
  v33 = v31;

LABEL_28:
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (unint64_t)hash
{
  sectionType = self->_sectionType;
  v3 = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v4 = [v3 hash];

  return v4 ^ sectionType;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKOntologyLocalizedEducationContentSection *)self identifier];
      v7 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
        if (v8)
        {
          v9 = [(HKOntologyLocalizedEducationContentSection *)self identifier];
          v10 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
          v11 = [v9 isEqual:v10];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  sectionType = self->_sectionType;
  v5 = a3;
  [v5 encodeInteger:sectionType forKey:@"sectionType"];
  [v5 encodeObject:self->_sectionDataTypeMapping forKey:@"sectionDataTypeMapping"];
}

- (HKOntologyLocalizedEducationContentSection)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKOntologyLocalizedEducationContentSection;
  v5 = [(HKOntologyLocalizedEducationContentSection *)&v12 init];
  if (v5)
  {
    v5->_sectionType = [v4 decodeIntegerForKey:@"sectionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 hk_typesForDictionaryMapping:v7 to:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sectionDataTypeMapping"];
    sectionDataTypeMapping = v5->_sectionDataTypeMapping;
    v5->_sectionDataTypeMapping = v9;
  }

  return v5;
}

- (void)initWithSectionDataTypeMapping:(uint64_t)a1 sectionType:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOntologyLocalizedEducationContentSection.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sectionDataTypeMapping[@(HKOntologyEducationContentSectionDataTypeLocaleIdentifier)] != nil"}];
}

+ (void)sectionByMerging:(uint64_t)a1 sectionToMergeFrom:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOntologyLocalizedEducationContentSection.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"sectionToMergeInto.sectionType == sectionToMergeFrom.sectionType"}];
}

@end