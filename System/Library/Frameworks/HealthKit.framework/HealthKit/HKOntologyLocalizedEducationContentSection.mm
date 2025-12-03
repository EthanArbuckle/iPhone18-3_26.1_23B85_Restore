@interface HKOntologyLocalizedEducationContentSection
+ (id)sectionByMerging:(id)merging sectionToMergeFrom:(id)from options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (HKOntologyLocalizedEducationContentSection)init;
- (HKOntologyLocalizedEducationContentSection)initWithCoder:(id)coder;
- (HKOntologyLocalizedEducationContentSection)initWithSectionDataTypeMapping:(id)mapping sectionType:(int64_t)type;
- (NSString)identifier;
- (NSString)localeIdentifier;
- (NSString)localizedText;
- (id)_arrayOfStringOfTypeOrNil:(int64_t)nil;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKOntologyLocalizedEducationContentSection)initWithSectionDataTypeMapping:(id)mapping sectionType:(int64_t)type
{
  mappingCopy = mapping;
  v8 = [mappingCopy objectForKeyedSubscript:&unk_1F0683AF8];

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
    v9->_sectionType = type;
    v11 = [mappingCopy copy];
    sectionDataTypeMapping = v10->_sectionDataTypeMapping;
    v10->_sectionDataTypeMapping = v11;
  }

  return v10;
}

- (NSString)identifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  localeIdentifier = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", self->_sectionType, localeIdentifier];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"/"];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)localizedText
{
  v2 = [(NSDictionary *)self->_sectionDataTypeMapping objectForKeyedSubscript:&unk_1F0683B10];
  stringValues = [v2 stringValues];
  firstObject = [stringValues firstObject];

  return firstObject;
}

- (NSString)localeIdentifier
{
  v2 = [(NSDictionary *)self->_sectionDataTypeMapping objectForKeyedSubscript:&unk_1F0683AF8];
  stringValues = [v2 stringValues];
  firstObject = [stringValues firstObject];

  return firstObject;
}

- (id)_arrayOfStringOfTypeOrNil:(int64_t)nil
{
  sectionDataTypeMapping = self->_sectionDataTypeMapping;
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:nil];
  v5 = [(NSDictionary *)sectionDataTypeMapping objectForKeyedSubscript:v4];

  if (v5)
  {
    stringValues = [v5 stringValues];
  }

  else
  {
    stringValues = 0;
  }

  return stringValues;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  localizedText = [(HKOntologyLocalizedEducationContentSection *)self localizedText];
  v5 = [localizedText length];
  localeIdentifier = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v7 = [v3 stringWithFormat:@"'Length of education content: %li, localeIdentifier: %@, '", v5, localeIdentifier];

  validRegionCodes = [(HKOntologyLocalizedEducationContentSection *)self validRegionCodes];
  v9 = [validRegionCodes count];

  if (v9)
  {
    [v7 appendString:{@", ["}];
    validRegionCodes2 = [(HKOntologyLocalizedEducationContentSection *)self validRegionCodes];
    v11 = [validRegionCodes2 componentsJoinedByString:{@", "}];
    [v7 appendString:v11];

    [v7 appendString:@"]"];
  }

  attributions = [(HKOntologyLocalizedEducationContentSection *)self attributions];
  v13 = [attributions count];

  if (v13)
  {
    [v7 appendString:{@", ["}];
    attributions2 = [(HKOntologyLocalizedEducationContentSection *)self attributions];
    v15 = [attributions2 componentsJoinedByString:{@", "}];
    [v7 appendString:v15];

    [v7 appendString:@"]"];
  }

  citations = [(HKOntologyLocalizedEducationContentSection *)self citations];
  v17 = [citations count];

  if (v17)
  {
    [v7 appendString:{@", ["}];
    citations2 = [(HKOntologyLocalizedEducationContentSection *)self citations];
    v19 = [citations2 componentsJoinedByString:{@", "}];
    [v7 appendString:v19];

    [v7 appendString:@"]"];
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)sectionByMerging:(id)merging sectionToMergeFrom:(id)from options:(unint64_t)options
{
  optionsCopy = options;
  v45 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  fromCopy = from;
  v10 = fromCopy;
  if (!mergingCopy)
  {
    v32 = fromCopy;
LABEL_24:
    v33 = v32;
    goto LABEL_28;
  }

  if (!fromCopy)
  {
    v32 = mergingCopy;
    goto LABEL_24;
  }

  sectionType = [mergingCopy sectionType];
  if (sectionType != [v10 sectionType])
  {
    [HKOntologyLocalizedEducationContentSection sectionByMerging:a2 sectionToMergeFrom:self options:?];
  }

  sectionDataTypeMapping = [mergingCopy sectionDataTypeMapping];
  sectionDataTypeMapping2 = [v10 sectionDataTypeMapping];
  v39 = [sectionDataTypeMapping mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = sectionDataTypeMapping2;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v15)
  {

LABEL_26:
    v31 = mergingCopy;
    goto LABEL_27;
  }

  v16 = v15;
  v36 = v10;
  v37 = mergingCopy;
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
      v21 = [sectionDataTypeMapping objectForKeyedSubscript:{v20, v36, v37}];
      v22 = [v14 objectForKeyedSubscript:v20];
      v23 = v22;
      if (!v21 || (v24 = [v22 version], v24 > objc_msgSend(v21, "version")) || (v25 = objc_msgSend(v23, "version"), v26 = objc_msgSend(v21, "version"), (optionsCopy & 1) == 0) && v25 == v26 && (objc_msgSend(v23, "timestamp"), v28 = v27, objc_msgSend(v21, "timestamp"), v28 > v29))
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
  mergingCopy = v37;
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
  localeIdentifier = [(HKOntologyLocalizedEducationContentSection *)self localeIdentifier];
  v4 = [localeIdentifier hash];

  return v4 ^ sectionType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(HKOntologyLocalizedEducationContentSection *)self identifier];
      identifier2 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
      if (identifier == identifier2)
      {
        v11 = 1;
      }

      else
      {
        identifier3 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
        if (identifier3)
        {
          identifier4 = [(HKOntologyLocalizedEducationContentSection *)self identifier];
          identifier5 = [(HKOntologyLocalizedEducationContentSection *)v5 identifier];
          v11 = [identifier4 isEqual:identifier5];
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

- (void)encodeWithCoder:(id)coder
{
  sectionType = self->_sectionType;
  coderCopy = coder;
  [coderCopy encodeInteger:sectionType forKey:@"sectionType"];
  [coderCopy encodeObject:self->_sectionDataTypeMapping forKey:@"sectionDataTypeMapping"];
}

- (HKOntologyLocalizedEducationContentSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKOntologyLocalizedEducationContentSection;
  v5 = [(HKOntologyLocalizedEducationContentSection *)&v12 init];
  if (v5)
  {
    v5->_sectionType = [coderCopy decodeIntegerForKey:@"sectionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 hk_typesForDictionaryMapping:v7 to:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sectionDataTypeMapping"];
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