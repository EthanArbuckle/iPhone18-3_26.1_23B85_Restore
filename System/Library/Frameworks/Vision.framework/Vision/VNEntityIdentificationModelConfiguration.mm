@interface VNEntityIdentificationModelConfiguration
+ (id)newConfigurationForEntityPrintsGeneratedByRequest:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)acceptableEntityPrintOriginatingRequestSpecifiers;
- (VNEntityIdentificationModelConfiguration)initWithCoder:(id)a3;
- (VNEntityIdentificationModelConfiguration)initWithEntityPrintOriginatingRequestSpecifier:(id)a3;
- (id)algorithmOfClass:(Class)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedAlgorithmAndReturnError:(id *)a3;
- (int)faceID3IndexMode;
- (int)faceID3ModelMaximumElementsPerID;
- (int)faceID3ModelMaximumIDs;
- (int)faceIDModelMaximumElementsPerID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumEntities:(unint64_t)a3;
- (void)setMaximumTrainingPrintsPerEntity:(unint64_t)a3;
@end

@implementation VNEntityIdentificationModelConfiguration

- (VNEntityIdentificationModelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VNEntityIdentificationModelConfiguration *)self init];
  if (v5)
  {
    v5->_maximumEntities = [v4 decodeIntegerForKey:@"maximumEntities"];
    v5->_maximumTrainingPrintsPerEntity = [v4 decodeIntegerForKey:@"printsPerEntity"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"printOriginatingRequest"];
    entityPrintOriginatingRequestSpecifier = v5->_entityPrintOriginatingRequestSpecifier;
    v5->_entityPrintOriginatingRequestSpecifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  maximumEntities = self->_maximumEntities;
  v5 = a3;
  [v5 encodeInteger:maximumEntities forKey:@"maximumEntities"];
  [v5 encodeInteger:self->_maximumTrainingPrintsPerEntity forKey:@"printsPerEntity"];
  [v5 encodeObject:self->_entityPrintOriginatingRequestSpecifier forKey:@"printOriginatingRequest"];
  [v5 encodeObject:self->_algorithm forKey:@"algorithm"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNEntityIdentificationModelConfiguration *)self algorithm];
      v7 = [(VNEntityIdentificationModelConfiguration *)v5 algorithm];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8 && (v9 = [(VNEntityIdentificationModelConfiguration *)self maximumEntities], v9 == [(VNEntityIdentificationModelConfiguration *)v5 maximumEntities]) && (v10 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity], v10 == [(VNEntityIdentificationModelConfiguration *)v5 maximumTrainingPrintsPerEntity]))
      {
        v11 = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
        v12 = [(VNEntityIdentificationModelConfiguration *)v5 entityPrintOriginatingRequestSpecifier];
        v13 = [v11 isEqual:v12];
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
  v3 = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
  v4 = [v3 hash];

  v5 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity]^ __ROR8__([(VNEntityIdentificationModelConfiguration *)self maximumEntities]^ __ROR8__(v4, 51), 51);
  v6 = [(VNEntityIdentificationModelConfiguration *)self algorithm];
  v7 = [v6 hash] ^ __ROR8__(v5, 51);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setMaximumTrainingPrintsPerEntity:(unint64_t)a3
{
  v5 = [objc_opt_class() maximumAllowableFaceprintsPerIdentity];
  v6 = 20;
  if (a3)
  {
    v6 = a3;
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  self->_maximumTrainingPrintsPerEntity = v6;
}

- (void)setMaximumEntities:(unint64_t)a3
{
  v5 = [objc_opt_class() maximumAllowableEntities];
  if (a3 - 1 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  self->_maximumEntities = v6;
}

- (NSArray)acceptableEntityPrintOriginatingRequestSpecifiers
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self entityPrintOriginatingRequestSpecifier];
  v3 = [v2 allModelEquivalents];

  return v3;
}

- (id)algorithmOfClass:(Class)a3 error:(id *)a4
{
  v4 = a4;
  v6 = [(VNEntityIdentificationModelConfiguration *)self resolvedAlgorithmAndReturnError:a4];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromClass(a3);
    v11 = [v7 initWithFormat:@"configuration %@ cannot provide a %@", v9, v10];

    *v4 = [VNError errorForInvalidOperationWithLocalizedDescription:v11];

LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (id)resolvedAlgorithmAndReturnError:(id *)a3
{
  v3 = [(VNEntityIdentificationModelConfiguration *)self algorithm];
  if (!v3)
  {
    v3 = objc_alloc_init(VNEntityIdentificationModelAlgorithmVIPv2);
  }

  return v3;
}

- (VNEntityIdentificationModelConfiguration)initWithEntityPrintOriginatingRequestSpecifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VNEntityIdentificationModelConfiguration;
  v5 = [(VNEntityIdentificationModelConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_1A6038C10;
    v7 = [v4 copy];
    entityPrintOriginatingRequestSpecifier = v6->_entityPrintOriginatingRequestSpecifier;
    v6->_entityPrintOriginatingRequestSpecifier = v7;
  }

  return v6;
}

+ (id)newConfigurationForEntityPrintsGeneratedByRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = VNEntityUniqueIdentifierSupportedRequestSpecifiers();
  v8 = [v6 specifier];
  if ([v7 containsObject:v8])
  {
    v9 = [a1 alloc];
    v10 = [v6 specifier];
    v11 = [v9 initWithEntityPrintOriginatingRequestSpecifier:v10];
  }

  else
  {
    if (!a4)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported", v8];
    VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(2, v10, 0);
    *a4 = v11 = 0;
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
  v2 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

- (int)faceID3ModelMaximumIDs
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self maximumEntities];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

- (int)faceIDModelMaximumElementsPerID
{
  v2 = [(VNEntityIdentificationModelConfiguration *)self maximumTrainingPrintsPerEntity];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

@end