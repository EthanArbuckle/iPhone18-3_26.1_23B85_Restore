@interface HKUserDomainConcept
+ (id)deletedUserDomainConceptWithUUID:(id)a3 creationTimestamp:(double)a4;
- (BOOL)isAdHocUserDomainConcept;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSemanticallyEquivalent:(id)a3;
- (BOOL)unitTesting_isIdentical:(id)a3 ignoreModificationTimestamp:(BOOL)a4;
- (HKUserDomainConcept)initWithCoder:(id)a3;
- (HKUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5;
- (HKUserDomainConceptSemanticIdentifier)semanticIdentifier;
- (id)_dataDescriptionAllowedForPublic:(BOOL)a3;
- (id)_deepCopy;
- (id)_firstCodingForSystem:(id)a3;
- (id)_init;
- (id)copyUserDomainConceptByMergingInConcept:(id)a3;
- (id)copyUserDomainConceptByMergingInPropertyCollection:(id)a3;
- (id)copyUserDomainConceptBySettingProperties:(id)a3;
- (id)firstAdhocCoding;
- (id)firstConceptIdentifier;
- (id)firstOntologyCoding;
- (id)modificationCopy;
- (id)unitTesting_duplicate;
- (id)userDomainConceptByAddingCodings:(id)a3;
- (id)userDomainConceptByReplacingCodings:(id)a3;
- (id)userDomainConceptByReplacingLinks:(id)a3;
- (id)userDomainConceptByReplacingLinks:(id)a3 andCodings:(id)a4;
- (void)_setBuild:(id)a3;
- (void)_setCodingCollection:(id)a3;
- (void)_setIdentifier:(id)a3;
- (void)_setLinkCollection:(id)a3;
- (void)_setOperatingSystemVersion:(id *)a3;
- (void)_setPropertyCollection:(id)a3;
- (void)_setUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserDomainConcept

- (HKUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = HKUserDomainConcept;
  v11 = [(HKUserDomainConcept *)&v30 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    v14 = [objc_opt_class() _typeIdentifier];
    v15 = *(v11 + 5);
    *(v11 + 5) = v14;

    Current = CFAbsoluteTimeGetCurrent();
    *(v11 + 6) = Current;
    *(v11 + 7) = Current;
    v17 = +[_HKBehavior sharedBehavior];
    v18 = v17;
    if (v17)
    {
      [v17 currentOSVersionStruct];
    }

    else
    {
      v28 = 0uLL;
      v29 = 0;
    }

    *(v11 + 88) = v28;
    *(v11 + 13) = v29;
    v19 = [v18 currentOSBuild];
    v20 = *(v11 + 8);
    *(v11 + 8) = v19;

    v11[8] = 0;
    v21 = [v8 copy];
    v22 = *(v11 + 3);
    *(v11 + 3) = v21;

    v23 = [v9 copy];
    v24 = *(v11 + 4);
    *(v11 + 4) = v23;

    v25 = [v10 copy];
    v26 = *(v11 + 10);
    *(v11 + 10) = v25;
  }

  return v11;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKUserDomainConcept;
  return [(HKUserDomainConcept *)&v3 init];
}

- (id)userDomainConceptByAddingCodings:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  codingCollection = self->_codingCollection;
  if (codingCollection)
  {
    v7 = [(HKMedicalCodingCollection *)codingCollection collectionByAddingCodings:v4];
  }

  else
  {
    v7 = [[HKMedicalCodingCollection alloc] initWithCodings:v4];
  }

  v8 = v7;
  [v5 _setCodingCollection:v7];

  return v5;
}

- (id)userDomainConceptByReplacingCodings:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  v6 = [[HKMedicalCodingCollection alloc] initWithCodings:v4];

  [v5 _setCodingCollection:v6];

  return v5;
}

- (id)userDomainConceptByReplacingLinks:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  [v5 _setLinkCollection:v4];

  return v5;
}

- (id)userDomainConceptByReplacingLinks:(id)a3 andCodings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKUserDomainConcept *)self modificationCopy];
  [v8 _setLinkCollection:v7];

  v9 = [[HKMedicalCodingCollection alloc] initWithCodings:v6];
  [v8 _setCodingCollection:v9];

  return v8;
}

- (id)copyUserDomainConceptBySettingProperties:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  v6 = [[HKUserDomainConceptPropertyCollection alloc] initWithProperties:v4];

  [v5 _setPropertyCollection:v6];
  return v5;
}

- (id)copyUserDomainConceptByMergingInPropertyCollection:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self propertyCollection];
  v6 = [HKUserDomainConceptPropertyCollection propertyCollectionByMergingCollection:v5 otherCollection:v4];

  if (v6 == v5)
  {
    v7 = self;
  }

  else
  {
    v7 = [(HKUserDomainConcept *)self modificationCopy];
    [(HKUserDomainConcept *)v7 _setPropertyCollection:v6];
  }

  return v7;
}

- (id)copyUserDomainConceptByMergingInConcept:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self propertyCollection];
  v6 = [v4 propertyCollection];
  v7 = [HKUserDomainConceptPropertyCollection propertyCollectionByMergingCollection:v5 otherCollection:v6];

  v8 = [(HKUserDomainConcept *)self linkCollection];
  v9 = [v4 linkCollection];

  v10 = [HKUserDomainConceptLinkCollection collectionByMergingCollection:v8 otherCollection:v9];

  if (v10 == v8)
  {
    v11 = 1;
  }

  else
  {
    if (!v8)
    {
      LOBYTE(v11) = 0;
      goto LABEL_9;
    }

    v11 = [v10 isEqual:v8];
  }

  if (v7 == v5 && v11)
  {
    v12 = self;
    goto LABEL_13;
  }

LABEL_9:
  v13 = [(HKUserDomainConcept *)self modificationCopy];
  v12 = v13;
  if (v7 != v5)
  {
    [(HKUserDomainConcept *)v13 _setPropertyCollection:v7];
  }

  if ((v11 & 1) == 0)
  {
    [(HKUserDomainConcept *)v12 _setLinkCollection:v10];
  }

LABEL_13:

  return v12;
}

+ (id)deletedUserDomainConceptWithUUID:(id)a3 creationTimestamp:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HKUserDomainConcept);
  v7 = [v5 copy];

  [(HKUserDomainConcept *)v6 _setUUID:v7];
  [(HKUserDomainConcept *)v6 _setDeleted:1];
  [(HKUserDomainConcept *)v6 _setCreationTimestamp:a4];

  return v6;
}

- (id)modificationCopy
{
  v2 = [(HKUserDomainConcept *)self _deepCopy];
  [v2 _setModificationTimestamp:CFAbsoluteTimeGetCurrent()];
  v3 = +[_HKBehavior sharedBehavior];
  v4 = v3;
  if (v3)
  {
    [v3 currentOSVersionStruct];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [v2 _setOperatingSystemVersion:v7];
  v5 = [v4 currentOSBuild];
  [v2 _setBuild:v5];

  return v2;
}

- (BOOL)isAdHocUserDomainConcept
{
  v2 = [(HKUserDomainConcept *)self firstAdhocCoding];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UUID = self->_UUID;
      v6 = [(HKUserDomainConcept *)v4 UUID];
      v7 = [(NSUUID *)UUID isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_deepCopy
{
  v3 = [objc_alloc(objc_opt_class()) _initBareObject];
  v4 = [(HKUserDomainConceptTypeIdentifier *)self->_identifier copy];
  [v3 _setIdentifier:v4];

  v5 = [(NSUUID *)self->_UUID copy];
  [v3 _setUUID:v5];

  [v3 _setDeleted:self->_deleted];
  [v3 _setCreationTimestamp:self->_creationTimestamp];
  [v3 _setModificationTimestamp:self->_modificationTimestamp];
  operatingSystemVersion = self->_operatingSystemVersion;
  [v3 _setOperatingSystemVersion:&operatingSystemVersion];
  v6 = [(NSString *)self->_build copy];
  [v3 _setBuild:v6];

  [v3 _setCodingCollection:self->_codingCollection];
  [v3 _setLinkCollection:self->_linkCollection];
  [v3 _setPropertyCollection:self->_propertyCollection];

  return v3;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)a3
{
  if (self->_deleted)
  {
    return @"DELETED";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isSemanticallyEquivalent:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self semanticIdentifier];
  v6 = [v4 semanticIdentifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (HKUserDomainConceptSemanticIdentifier)semanticIdentifier
{
  v2 = [[HKBaseUserDomainConceptSemanticIdentifier alloc] initWithUUID:self->_UUID];

  return v2;
}

- (id)firstOntologyCoding
{
  v3 = +[HKMedicalCodingSystem appleOntologySystem];
  v4 = [(HKUserDomainConcept *)self _firstCodingForSystem:v3];

  return v4;
}

- (id)firstAdhocCoding
{
  v3 = +[HKMedicalCodingSystem adHocConceptSystem];
  v4 = [(HKUserDomainConcept *)self _firstCodingForSystem:v3];

  return v4;
}

- (id)firstConceptIdentifier
{
  v2 = [(HKUserDomainConcept *)self firstOntologyCoding];
  v3 = [v2 code];

  if (v3)
  {
    v4 = -[HKConceptIdentifier initWithRawIdentifier:]([HKConceptIdentifier alloc], "initWithRawIdentifier:", [v3 intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_firstCodingForSystem:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(HKUserDomainConcept *)self codingCollection];
  v6 = [v5 codings];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      v13 = [v12 codingSystem];
      v14 = v13;
      if (v13 == v4)
      {

        if (v9)
        {
LABEL_12:
          v17 = [v9 code];
          v18 = [v12 code];
          v19 = [v17 compare:v18];

          if (v19 != 1)
          {
            continue;
          }
        }

LABEL_13:
        v14 = v9;
        v9 = v12;
        goto LABEL_14;
      }

      if (v4)
      {
        v15 = [v12 codingSystem];
        v16 = [v15 isEqual:v4];

        if (!v16)
        {
          continue;
        }

        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

LABEL_14:
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"uuid"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeDouble:@"created" forKey:self->_creationTimestamp];
  [v5 encodeDouble:@"modified" forKey:self->_modificationTimestamp];
  [v5 encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"major_version"];
  [v5 encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"minor_version"];
  [v5 encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"patch_version"];
  [v5 encodeObject:self->_build forKey:@"build"];
  [v5 encodeBool:self->_deleted forKey:@"deleted"];
  [v5 encodeObject:self->_codingCollection forKey:@"codingCollection"];
  [v5 encodeObject:self->_linkCollection forKey:@"linkCollection"];
  [v5 encodeObject:self->_propertyCollection forKey:@"propertyCollection"];
}

- (HKUserDomainConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [v4 decodeDoubleForKey:@"created"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"modified"];
  v10 = v9;
  v21 = [v4 decodeIntegerForKey:@"major_version"];
  v20 = [v4 decodeIntegerForKey:@"minor_version"];
  v11 = [v4 decodeIntegerForKey:@"patch_version"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v13 = [v4 decodeBoolForKey:@"deleted"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingCollection"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkCollection"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyCollection"];

  v22.receiver = self;
  v22.super_class = HKUserDomainConcept;
  v17 = [(HKUserDomainConcept *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_UUID, v5);
    objc_storeStrong(&v18->_identifier, v6);
    v18->_creationTimestamp = v8;
    v18->_modificationTimestamp = v10;
    v18->_operatingSystemVersion.majorVersion = v21;
    v18->_operatingSystemVersion.minorVersion = v20;
    v18->_operatingSystemVersion.patchVersion = v11;
    objc_storeStrong(&v18->_build, v12);
    v18->_deleted = v13;
    objc_storeStrong(&v18->_codingCollection, v14);
    objc_storeStrong(&v18->_linkCollection, v15);
    objc_storeStrong(&v18->_propertyCollection, v16);
  }

  return v18;
}

- (void)_setUUID:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(HKUserDomainConcept *)a2 _setUUID:?];
    v5 = 0;
  }

  v6 = [v5 copy];
  UUID = self->_UUID;
  self->_UUID = v6;
}

- (void)_setIdentifier:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(HKUserDomainConcept *)a2 _setIdentifier:?];
    v5 = 0;
  }

  v6 = [v5 copy];
  identifier = self->_identifier;
  self->_identifier = v6;
}

- (void)_setOperatingSystemVersion:(id *)a3
{
  v3 = *&a3->var0;
  self->_operatingSystemVersion.patchVersion = a3->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

- (void)_setBuild:(id)a3
{
  v4 = [a3 copy];
  build = self->_build;
  self->_build = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCodingCollection:(id)a3
{
  v4 = [a3 copy];
  codingCollection = self->_codingCollection;
  self->_codingCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLinkCollection:(id)a3
{
  v4 = [a3 copy];
  linkCollection = self->_linkCollection;
  self->_linkCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPropertyCollection:(id)a3
{
  v4 = [a3 copy];
  propertyCollection = self->_propertyCollection;
  self->_propertyCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)unitTesting_isIdentical:(id)a3 ignoreModificationTimestamp:(BOOL)a4
{
  v7 = a3;
  if ([(HKUserDomainConcept *)self isEqual:v7]&& (a4 || self->_modificationTimestamp == *(v7 + 7)))
  {
    UUID = self->_UUID;
    v9 = *(v7 + 2);
    if (UUID == v9 || v9 && [(NSUUID *)UUID isEqual:?])
    {
      identifier = self->_identifier;
      v11 = *(v7 + 5);
      if ((identifier == v11 || v11 && [(HKUserDomainConceptTypeIdentifier *)identifier isEqual:?]) && self->_deleted == v7[8] && self->_creationTimestamp == *(v7 + 6))
      {
        v36 = *&self->_operatingSystemVersion.majorVersion;
        patchVersion = self->_operatingSystemVersion.patchVersion;
        v34 = *(v7 + 88);
        v35 = *(v7 + 13);
        if (HKNSOperatingSystemVersionsEqual(&v36, &v34))
        {
          build = self->_build;
          v13 = *(v7 + 8);
          if (build == v13 || v13 && [(NSString *)build isEqual:?])
          {
            v14 = [(HKMedicalCodingCollection *)self->_codingCollection codingsSet];
            v15 = [*(v7 + 3) codingsSet];
            if (v14 == v15)
            {
              [(HKUserDomainConceptLinkCollection *)self->_linkCollection links:v30];
            }

            else
            {
              v16 = [*(v7 + 3) codingsSet];
              if (!v16)
              {
                v19 = 0;
LABEL_40:

                goto LABEL_21;
              }

              v4 = v16;
              v17 = [(HKMedicalCodingCollection *)self->_codingCollection codingsSet];
              v18 = [*(v7 + 3) codingsSet];
              if (![v17 isEqualToSet:v18])
              {
                v19 = 0;
LABEL_39:

                goto LABEL_40;
              }

              [(HKUserDomainConceptLinkCollection *)self->_linkCollection links:v18];
            }
            v21 = ;
            v22 = [*(v7 + 4) links];
            if (v21 == v22)
            {
              propertyCollection = self->_propertyCollection;
              v29 = *(v7 + 10);
              v19 = propertyCollection == v29;
              if (propertyCollection != v29 && v29)
              {
                v19 = [(HKUserDomainConceptPropertyCollection *)propertyCollection isEqual:?];
              }
            }

            else
            {
              v23 = [*(v7 + 4) links];
              if (v23)
              {
                v24 = [(HKUserDomainConceptLinkCollection *)self->_linkCollection links];
                v25 = [*(v7 + 4) links];
                if ([v24 isEqual:v25])
                {
                  v26 = self->_propertyCollection;
                  v27 = *(v7 + 10);
                  v19 = v26 == v27;
                  if (v26 != v27 && v27)
                  {
                    v19 = [(HKUserDomainConceptPropertyCollection *)v26 isEqual:?];
                  }
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            v18 = v31;
            v17 = v33;
            if (v14 == v15)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }
        }
      }
    }
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (id)unitTesting_duplicate
{
  v2 = [(HKUserDomainConcept *)self _deepCopy];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [v2 _setUUID:v3];

  return v2;
}

- (void)_setUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConcept.m" lineNumber:450 description:{@"Invalid parameter not satisfying: %@", @"UUID != nil"}];
}

- (void)_setIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConcept.m" lineNumber:456 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end