@interface HKUserDomainConcept
+ (id)deletedUserDomainConceptWithUUID:(id)d creationTimestamp:(double)timestamp;
- (BOOL)isAdHocUserDomainConcept;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSemanticallyEquivalent:(id)equivalent;
- (BOOL)unitTesting_isIdentical:(id)identical ignoreModificationTimestamp:(BOOL)timestamp;
- (HKUserDomainConcept)initWithCoder:(id)coder;
- (HKUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection;
- (HKUserDomainConceptSemanticIdentifier)semanticIdentifier;
- (id)_dataDescriptionAllowedForPublic:(BOOL)public;
- (id)_deepCopy;
- (id)_firstCodingForSystem:(id)system;
- (id)_init;
- (id)copyUserDomainConceptByMergingInConcept:(id)concept;
- (id)copyUserDomainConceptByMergingInPropertyCollection:(id)collection;
- (id)copyUserDomainConceptBySettingProperties:(id)properties;
- (id)firstAdhocCoding;
- (id)firstConceptIdentifier;
- (id)firstOntologyCoding;
- (id)modificationCopy;
- (id)unitTesting_duplicate;
- (id)userDomainConceptByAddingCodings:(id)codings;
- (id)userDomainConceptByReplacingCodings:(id)codings;
- (id)userDomainConceptByReplacingLinks:(id)links;
- (id)userDomainConceptByReplacingLinks:(id)links andCodings:(id)codings;
- (void)_setBuild:(id)build;
- (void)_setCodingCollection:(id)collection;
- (void)_setIdentifier:(id)identifier;
- (void)_setLinkCollection:(id)collection;
- (void)_setOperatingSystemVersion:(id *)version;
- (void)_setPropertyCollection:(id)collection;
- (void)_setUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConcept

- (HKUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection
{
  collectionCopy = collection;
  linkCollectionCopy = linkCollection;
  propertyCollectionCopy = propertyCollection;
  v30.receiver = self;
  v30.super_class = HKUserDomainConcept;
  v11 = [(HKUserDomainConcept *)&v30 init];
  if (v11)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v13 = *(v11 + 2);
    *(v11 + 2) = uUID;

    _typeIdentifier = [objc_opt_class() _typeIdentifier];
    v15 = *(v11 + 5);
    *(v11 + 5) = _typeIdentifier;

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
    currentOSBuild = [v18 currentOSBuild];
    v20 = *(v11 + 8);
    *(v11 + 8) = currentOSBuild;

    v11[8] = 0;
    v21 = [collectionCopy copy];
    v22 = *(v11 + 3);
    *(v11 + 3) = v21;

    v23 = [linkCollectionCopy copy];
    v24 = *(v11 + 4);
    *(v11 + 4) = v23;

    v25 = [propertyCollectionCopy copy];
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

- (id)userDomainConceptByAddingCodings:(id)codings
{
  codingsCopy = codings;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  codingCollection = self->_codingCollection;
  if (codingCollection)
  {
    v7 = [(HKMedicalCodingCollection *)codingCollection collectionByAddingCodings:codingsCopy];
  }

  else
  {
    v7 = [[HKMedicalCodingCollection alloc] initWithCodings:codingsCopy];
  }

  v8 = v7;
  [modificationCopy _setCodingCollection:v7];

  return modificationCopy;
}

- (id)userDomainConceptByReplacingCodings:(id)codings
{
  codingsCopy = codings;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  v6 = [[HKMedicalCodingCollection alloc] initWithCodings:codingsCopy];

  [modificationCopy _setCodingCollection:v6];

  return modificationCopy;
}

- (id)userDomainConceptByReplacingLinks:(id)links
{
  linksCopy = links;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  [modificationCopy _setLinkCollection:linksCopy];

  return modificationCopy;
}

- (id)userDomainConceptByReplacingLinks:(id)links andCodings:(id)codings
{
  codingsCopy = codings;
  linksCopy = links;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  [modificationCopy _setLinkCollection:linksCopy];

  v9 = [[HKMedicalCodingCollection alloc] initWithCodings:codingsCopy];
  [modificationCopy _setCodingCollection:v9];

  return modificationCopy;
}

- (id)copyUserDomainConceptBySettingProperties:(id)properties
{
  propertiesCopy = properties;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  v6 = [[HKUserDomainConceptPropertyCollection alloc] initWithProperties:propertiesCopy];

  [modificationCopy _setPropertyCollection:v6];
  return modificationCopy;
}

- (id)copyUserDomainConceptByMergingInPropertyCollection:(id)collection
{
  collectionCopy = collection;
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  v6 = [HKUserDomainConceptPropertyCollection propertyCollectionByMergingCollection:propertyCollection otherCollection:collectionCopy];

  if (v6 == propertyCollection)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(HKUserDomainConcept *)self modificationCopy];
    [(HKUserDomainConcept *)selfCopy _setPropertyCollection:v6];
  }

  return selfCopy;
}

- (id)copyUserDomainConceptByMergingInConcept:(id)concept
{
  conceptCopy = concept;
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  propertyCollection2 = [conceptCopy propertyCollection];
  v7 = [HKUserDomainConceptPropertyCollection propertyCollectionByMergingCollection:propertyCollection otherCollection:propertyCollection2];

  linkCollection = [(HKUserDomainConcept *)self linkCollection];
  linkCollection2 = [conceptCopy linkCollection];

  v10 = [HKUserDomainConceptLinkCollection collectionByMergingCollection:linkCollection otherCollection:linkCollection2];

  if (v10 == linkCollection)
  {
    v11 = 1;
  }

  else
  {
    if (!linkCollection)
    {
      LOBYTE(v11) = 0;
      goto LABEL_9;
    }

    v11 = [v10 isEqual:linkCollection];
  }

  if (v7 == propertyCollection && v11)
  {
    selfCopy = self;
    goto LABEL_13;
  }

LABEL_9:
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  selfCopy = modificationCopy;
  if (v7 != propertyCollection)
  {
    [(HKUserDomainConcept *)modificationCopy _setPropertyCollection:v7];
  }

  if ((v11 & 1) == 0)
  {
    [(HKUserDomainConcept *)selfCopy _setLinkCollection:v10];
  }

LABEL_13:

  return selfCopy;
}

+ (id)deletedUserDomainConceptWithUUID:(id)d creationTimestamp:(double)timestamp
{
  dCopy = d;
  v6 = objc_alloc_init(HKUserDomainConcept);
  v7 = [dCopy copy];

  [(HKUserDomainConcept *)v6 _setUUID:v7];
  [(HKUserDomainConcept *)v6 _setDeleted:1];
  [(HKUserDomainConcept *)v6 _setCreationTimestamp:timestamp];

  return v6;
}

- (id)modificationCopy
{
  _deepCopy = [(HKUserDomainConcept *)self _deepCopy];
  [_deepCopy _setModificationTimestamp:CFAbsoluteTimeGetCurrent()];
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

  [_deepCopy _setOperatingSystemVersion:v7];
  currentOSBuild = [v4 currentOSBuild];
  [_deepCopy _setBuild:currentOSBuild];

  return _deepCopy;
}

- (BOOL)isAdHocUserDomainConcept
{
  firstAdhocCoding = [(HKUserDomainConcept *)self firstAdhocCoding];
  v3 = firstAdhocCoding != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UUID = self->_UUID;
      uUID = [(HKUserDomainConcept *)equalCopy UUID];
      v7 = [(NSUUID *)UUID isEqual:uUID];
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
  _initBareObject = [objc_alloc(objc_opt_class()) _initBareObject];
  v4 = [(HKUserDomainConceptTypeIdentifier *)self->_identifier copy];
  [_initBareObject _setIdentifier:v4];

  v5 = [(NSUUID *)self->_UUID copy];
  [_initBareObject _setUUID:v5];

  [_initBareObject _setDeleted:self->_deleted];
  [_initBareObject _setCreationTimestamp:self->_creationTimestamp];
  [_initBareObject _setModificationTimestamp:self->_modificationTimestamp];
  operatingSystemVersion = self->_operatingSystemVersion;
  [_initBareObject _setOperatingSystemVersion:&operatingSystemVersion];
  v6 = [(NSString *)self->_build copy];
  [_initBareObject _setBuild:v6];

  [_initBareObject _setCodingCollection:self->_codingCollection];
  [_initBareObject _setLinkCollection:self->_linkCollection];
  [_initBareObject _setPropertyCollection:self->_propertyCollection];

  return _initBareObject;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)public
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

- (BOOL)isSemanticallyEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  semanticIdentifier = [(HKUserDomainConcept *)self semanticIdentifier];
  semanticIdentifier2 = [equivalentCopy semanticIdentifier];

  LOBYTE(equivalentCopy) = [semanticIdentifier isEqual:semanticIdentifier2];
  return equivalentCopy;
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
  firstOntologyCoding = [(HKUserDomainConcept *)self firstOntologyCoding];
  code = [firstOntologyCoding code];

  if (code)
  {
    v4 = -[HKConceptIdentifier initWithRawIdentifier:]([HKConceptIdentifier alloc], "initWithRawIdentifier:", [code intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_firstCodingForSystem:(id)system
{
  v27 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  codingCollection = [(HKUserDomainConcept *)self codingCollection];
  codings = [codingCollection codings];

  v7 = [codings countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(codings);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      codingSystem = [v12 codingSystem];
      v14 = codingSystem;
      if (codingSystem == systemCopy)
      {

        if (v9)
        {
LABEL_12:
          code = [v9 code];
          code2 = [v12 code];
          v19 = [code compare:code2];

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

      if (systemCopy)
      {
        codingSystem2 = [v12 codingSystem];
        v16 = [codingSystem2 isEqual:systemCopy];

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

    v8 = [codings countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"created" forKey:self->_creationTimestamp];
  [coderCopy encodeDouble:@"modified" forKey:self->_modificationTimestamp];
  [coderCopy encodeInteger:self->_operatingSystemVersion.majorVersion forKey:@"major_version"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.minorVersion forKey:@"minor_version"];
  [coderCopy encodeInteger:self->_operatingSystemVersion.patchVersion forKey:@"patch_version"];
  [coderCopy encodeObject:self->_build forKey:@"build"];
  [coderCopy encodeBool:self->_deleted forKey:@"deleted"];
  [coderCopy encodeObject:self->_codingCollection forKey:@"codingCollection"];
  [coderCopy encodeObject:self->_linkCollection forKey:@"linkCollection"];
  [coderCopy encodeObject:self->_propertyCollection forKey:@"propertyCollection"];
}

- (HKUserDomainConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coderCopy decodeDoubleForKey:@"created"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"modified"];
  v10 = v9;
  v21 = [coderCopy decodeIntegerForKey:@"major_version"];
  v20 = [coderCopy decodeIntegerForKey:@"minor_version"];
  v11 = [coderCopy decodeIntegerForKey:@"patch_version"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v13 = [coderCopy decodeBoolForKey:@"deleted"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingCollection"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkCollection"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyCollection"];

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

- (void)_setUUID:(id)d
{
  dCopy = d;
  v8 = dCopy;
  if (!dCopy)
  {
    [(HKUserDomainConcept *)a2 _setUUID:?];
    dCopy = 0;
  }

  v6 = [dCopy copy];
  UUID = self->_UUID;
  self->_UUID = v6;
}

- (void)_setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (!identifierCopy)
  {
    [(HKUserDomainConcept *)a2 _setIdentifier:?];
    identifierCopy = 0;
  }

  v6 = [identifierCopy copy];
  identifier = self->_identifier;
  self->_identifier = v6;
}

- (void)_setOperatingSystemVersion:(id *)version
{
  v3 = *&version->var0;
  self->_operatingSystemVersion.patchVersion = version->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

- (void)_setBuild:(id)build
{
  v4 = [build copy];
  build = self->_build;
  self->_build = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCodingCollection:(id)collection
{
  v4 = [collection copy];
  codingCollection = self->_codingCollection;
  self->_codingCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLinkCollection:(id)collection
{
  v4 = [collection copy];
  linkCollection = self->_linkCollection;
  self->_linkCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPropertyCollection:(id)collection
{
  v4 = [collection copy];
  propertyCollection = self->_propertyCollection;
  self->_propertyCollection = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)unitTesting_isIdentical:(id)identical ignoreModificationTimestamp:(BOOL)timestamp
{
  identicalCopy = identical;
  if ([(HKUserDomainConcept *)self isEqual:identicalCopy]&& (timestamp || self->_modificationTimestamp == *(identicalCopy + 7)))
  {
    UUID = self->_UUID;
    v9 = *(identicalCopy + 2);
    if (UUID == v9 || v9 && [(NSUUID *)UUID isEqual:?])
    {
      identifier = self->_identifier;
      v11 = *(identicalCopy + 5);
      if ((identifier == v11 || v11 && [(HKUserDomainConceptTypeIdentifier *)identifier isEqual:?]) && self->_deleted == identicalCopy[8] && self->_creationTimestamp == *(identicalCopy + 6))
      {
        v36 = *&self->_operatingSystemVersion.majorVersion;
        patchVersion = self->_operatingSystemVersion.patchVersion;
        v34 = *(identicalCopy + 88);
        v35 = *(identicalCopy + 13);
        if (HKNSOperatingSystemVersionsEqual(&v36, &v34))
        {
          build = self->_build;
          v13 = *(identicalCopy + 8);
          if (build == v13 || v13 && [(NSString *)build isEqual:?])
          {
            codingsSet = [(HKMedicalCodingCollection *)self->_codingCollection codingsSet];
            codingsSet2 = [*(identicalCopy + 3) codingsSet];
            if (codingsSet == codingsSet2)
            {
              [(HKUserDomainConceptLinkCollection *)self->_linkCollection links:v30];
            }

            else
            {
              codingsSet3 = [*(identicalCopy + 3) codingsSet];
              if (!codingsSet3)
              {
                v19 = 0;
LABEL_40:

                goto LABEL_21;
              }

              v4 = codingsSet3;
              codingsSet4 = [(HKMedicalCodingCollection *)self->_codingCollection codingsSet];
              codingsSet5 = [*(identicalCopy + 3) codingsSet];
              if (![codingsSet4 isEqualToSet:codingsSet5])
              {
                v19 = 0;
LABEL_39:

                goto LABEL_40;
              }

              [(HKUserDomainConceptLinkCollection *)self->_linkCollection links:codingsSet5];
            }
            v21 = ;
            links = [*(identicalCopy + 4) links];
            if (v21 == links)
            {
              propertyCollection = self->_propertyCollection;
              v29 = *(identicalCopy + 10);
              v19 = propertyCollection == v29;
              if (propertyCollection != v29 && v29)
              {
                v19 = [(HKUserDomainConceptPropertyCollection *)propertyCollection isEqual:?];
              }
            }

            else
            {
              links2 = [*(identicalCopy + 4) links];
              if (links2)
              {
                links3 = [(HKUserDomainConceptLinkCollection *)self->_linkCollection links];
                links4 = [*(identicalCopy + 4) links];
                if ([links3 isEqual:links4])
                {
                  v26 = self->_propertyCollection;
                  v27 = *(identicalCopy + 10);
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

            codingsSet5 = v31;
            codingsSet4 = v33;
            if (codingsSet == codingsSet2)
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
  _deepCopy = [(HKUserDomainConcept *)self _deepCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [_deepCopy _setUUID:uUID];

  return _deepCopy;
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