@interface VNEntityIdentificationModelConfiguration
+ (id)newConfigurationForEntityPrintsGeneratedByRequest:(id)request error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)acceptableEntityPrintOriginatingRequestSpecifiers;
- (VNEntityIdentificationModelConfiguration)initWithCoder:(id)coder;
- (VNEntityIdentificationModelConfiguration)initWithEntityPrintOriginatingRequestSpecifier:(id)specifier;
- (id)algorithmOfClass:(Class)class error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedAlgorithmAndReturnError:(id *)error;
- (int)faceID3IndexMode;
- (int)faceID3ModelMaximumElementsPerID;
- (int)faceID3ModelMaximumIDs;
- (int)faceIDModelMaximumElementsPerID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMaximumEntities:(unint64_t)entities;
- (void)setMaximumTrainingPrintsPerEntity:(unint64_t)entity;
@end

@implementation VNEntityIdentificationModelConfiguration

- (VNEntityIdentificationModelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VNEntityIdentificationModelConfiguration *)self init];
  if (v5)
  {
    v5->_maximumEntities = [coderCopy decodeIntegerForKey:@"maximumEntities"];
    v5->_maximumTrainingPrintsPerEntity = [coderCopy decodeIntegerForKey:@"printsPerEntity"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"printOriginatingRequest"];
    entityPrintOriginatingRequestSpecifier = v5->_entityPrintOriginatingRequestSpecifier;
    v5->_entityPrintOriginatingRequestSpecifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  maximumEntities = self->_maximumEntities;
  coderCopy = coder;
  [coderCopy encodeInteger:maximumEntities forKey:@"maximumEntities"];
  [coderCopy encodeInteger:self->_maximumTrainingPrintsPerEntity forKey:@"printsPerEntity"];
  [coderCopy encodeObject:self->_entityPrintOriginatingRequestSpecifier forKey:@"printOriginatingRequest"];
  [coderCopy encodeObject:self->_algorithm forKey:@"algorithm"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = VNEntityIdentificationModelConfiguration;
  v4 = [(VNEntityIdentificationModelConfiguration *)&v7 description];
  [v3 appendString:v4];

  v5 = [(VNEntityIdentificationModelConfiguration *)self resolvedAlgorithmAndReturnError:0];
  [v3 appendFormat:@"\n                        algorithm = %@", v5];

  [v3 appendFormat:@"\n                  maximumEntities = %lu", -[VNEntityIdentificationModelConfiguration maximumEntities](self, "maximumEntities")];
  [v3 appendFormat:@"\n   maximumTrainingPrintsPerEntity = %lu", -[VNEntityIdentificationModelConfiguration maximumTrainingPrintsPerEntity](self, "maximumTrainingPrintsPerEntity")];
  [v3 appendFormat:@"\n    entityPrintOriginatingRequest = %@", self->_entityPrintOriginatingRequestSpecifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      algorithm = [(VNEntityIdentificationModelConfiguration *)self algorithm];
      algorithm2 = [(VNEntityIdentificationModelConfiguration *)v5 algorithm];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8 && (v9 = [(VNEntityIdentificationModelConfiguration *)self maximumEntities], v9 == [(VNEntityIdentificationModelConfiguration *)v5 maximumEntities]) && (v10 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity], v10 == [(VNEntityIdentificationModelConfiguration *)v5 maximumTrainingPrintsPerEntity]))
      {
        entityPrintOriginatingRequestSpecifier = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
        entityPrintOriginatingRequestSpecifier2 = [(VNEntityIdentificationModelConfiguration *)v5 entityPrintOriginatingRequestSpecifier];
        v13 = [entityPrintOriginatingRequestSpecifier isEqual:entityPrintOriginatingRequestSpecifier2];
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

- (unint64_t)hash
{
  entityPrintOriginatingRequestSpecifier = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
  v4 = [entityPrintOriginatingRequestSpecifier hash];

  v5 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity]^ __ROR8__([(VNEntityIdentificationModelConfiguration *)self maximumEntities]^ __ROR8__(v4, 51), 51);
  algorithm = [(VNEntityIdentificationModelConfiguration *)self algorithm];
  v7 = [algorithm hash] ^ __ROR8__(v5, 51);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_maximumEntities;
    *(v4 + 16) = self->_maximumTrainingPrintsPerEntity;
    v6 = [(VNRequestSpecifier *)self->_entityPrintOriginatingRequestSpecifier copy];
    v7 = v5[3];
    v5[3] = v6;

    v8 = [(VNEntityIdentificationModelAlgorithm *)self->_algorithm copy];
    v9 = v5[4];
    v5[4] = v8;
  }

  return v5;
}

- (void)setMaximumTrainingPrintsPerEntity:(unint64_t)entity
{
  maximumAllowableFaceprintsPerIdentity = [objc_opt_class() maximumAllowableFaceprintsPerIdentity];
  entityCopy = 20;
  if (entity)
  {
    entityCopy = entity;
  }

  if (entityCopy >= maximumAllowableFaceprintsPerIdentity)
  {
    entityCopy = maximumAllowableFaceprintsPerIdentity;
  }

  self->_maximumTrainingPrintsPerEntity = entityCopy;
}

- (void)setMaximumEntities:(unint64_t)entities
{
  maximumAllowableEntities = [objc_opt_class() maximumAllowableEntities];
  if (entities - 1 >= maximumAllowableEntities)
  {
    entitiesCopy = maximumAllowableEntities;
  }

  else
  {
    entitiesCopy = entities;
  }

  self->_maximumEntities = entitiesCopy;
}

- (NSArray)acceptableEntityPrintOriginatingRequestSpecifiers
{
  entityPrintOriginatingRequestSpecifier = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
  allModelEquivalents = [entityPrintOriginatingRequestSpecifier allModelEquivalents];

  return allModelEquivalents;
}

- (id)algorithmOfClass:(Class)class error:(id *)error
{
  errorCopy = error;
  v6 = [(VNEntityIdentificationModelConfiguration *)self resolvedAlgorithmAndReturnError:error];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (objc_opt_isKindOfClass())
  {
    errorCopy = v6;
    goto LABEL_7;
  }

  if (errorCopy)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromClass(class);
    v11 = [v7 initWithFormat:@"configuration %@ cannot provide a %@", v9, v10];

    *errorCopy = [VNError errorForInvalidOperationWithLocalizedDescription:v11];

LABEL_6:
    errorCopy = 0;
  }

LABEL_7:

  return errorCopy;
}

- (id)resolvedAlgorithmAndReturnError:(id *)error
{
  algorithm = [(VNEntityIdentificationModelConfiguration *)self algorithm];
  if (!algorithm)
  {
    algorithm = objc_alloc_init(VNEntityIdentificationModelAlgorithmVIPv2);
  }

  return algorithm;
}

- (VNEntityIdentificationModelConfiguration)initWithEntityPrintOriginatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = VNEntityIdentificationModelConfiguration;
  v5 = [(VNEntityIdentificationModelConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_1A6038C10;
    v7 = [specifierCopy copy];
    entityPrintOriginatingRequestSpecifier = v6->_entityPrintOriginatingRequestSpecifier;
    v6->_entityPrintOriginatingRequestSpecifier = v7;
  }

  return v6;
}

+ (id)newConfigurationForEntityPrintsGeneratedByRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = VNEntityUniqueIdentifierSupportedRequestSpecifiers();
  specifier = [requestCopy specifier];
  if ([v7 containsObject:specifier])
  {
    v9 = [self alloc];
    specifier2 = [requestCopy specifier];
    v11 = [v9 initWithEntityPrintOriginatingRequestSpecifier:specifier2];
  }

  else
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_6;
    }

    specifier2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported", specifier];
    VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, specifier2, 0);
    *error = v11 = 0;
  }

LABEL_6:
  return v11;
}

- (int)faceID3IndexMode
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self algorithmOfClass:objc_opt_class() error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 indexType] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)faceID3ModelMaximumElementsPerID
{
  maximumTrainingPrintsPerEntity = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity];
  if (maximumTrainingPrintsPerEntity >= 0x7FFFFFFF)
  {
    LODWORD(maximumTrainingPrintsPerEntity) = 0x7FFFFFFF;
  }

  return maximumTrainingPrintsPerEntity;
}

- (int)faceID3ModelMaximumIDs
{
  maximumEntities = [(VNEntityIdentificationModelConfiguration *)self maximumEntities];
  if (maximumEntities >= 0x7FFFFFFF)
  {
    LODWORD(maximumEntities) = 0x7FFFFFFF;
  }

  return maximumEntities;
}

- (int)faceIDModelMaximumElementsPerID
{
  maximumTrainingPrintsPerEntity = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity];
  if (maximumTrainingPrintsPerEntity >= 0x7FFFFFFF)
  {
    LODWORD(maximumTrainingPrintsPerEntity) = 0x7FFFFFFF;
  }

  return maximumTrainingPrintsPerEntity;
}

@end