@interface VNPersonsModelConfiguration
- (BOOL)isEqual:(id)equal;
- (VNPersonsModelConfiguration)init;
- (VNPersonsModelConfiguration)initWithCoder:(id)coder;
- (id)algorithmOfClass:(Class)class error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedAlgorithmAndReturnError:(id *)error;
- (int)faceID2ModelMaximumElementsPerID;
- (int)faceID3IndexMode;
- (int)faceID3ModelMaximumElementsPerID;
- (int)faceID3ModelMaximumIDs;
- (unint64_t)maximumIdentities;
- (unint64_t)maximumTrainingFaceprintsPerIdentity;
- (void)encodeWithCoder:(id)coder;
- (void)setMaximumIdentities:(unint64_t)identities;
- (void)setMaximumTrainingFaceprintsPerIdentity:(unint64_t)identity;
@end

@implementation VNPersonsModelConfiguration

- (int)faceID2ModelMaximumElementsPerID
{
  maximumTrainingFaceprintsPerIdentity = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity];
  if (maximumTrainingFaceprintsPerIdentity >= 0x7FFFFFFF)
  {
    LODWORD(maximumTrainingFaceprintsPerIdentity) = 0x7FFFFFFF;
  }

  return maximumTrainingFaceprintsPerIdentity;
}

- (VNPersonsModelConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VNPersonsModelConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v6;

    v5->_faceprintRequestRevision = [coderCopy decodeIntegerForKey:@"faceprintRequestRevision"];
    if ([coderCopy containsValueForKey:@"maxIdentities"])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"maxIdentities"}];
      explicitlySetMaximumIdentities = v5->_explicitlySetMaximumIdentities;
      v5->_explicitlySetMaximumIdentities = v8;
    }

    if ([coderCopy containsValueForKey:@"faceprintsPerIdentity"])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"faceprintsPerIdentity"}];
      explicitlySetMaximumTrainingFaceprintsPerIdentity = v5->_explicitlySetMaximumTrainingFaceprintsPerIdentity;
      v5->_explicitlySetMaximumTrainingFaceprintsPerIdentity = v10;
    }

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_algorithm forKey:@"algorithm"];
  [coderCopy encodeInteger:self->_faceprintRequestRevision forKey:@"faceprintRequestRevision"];
  explicitlySetMaximumIdentities = self->_explicitlySetMaximumIdentities;
  if (explicitlySetMaximumIdentities)
  {
    [coderCopy encodeInteger:-[NSNumber integerValue](explicitlySetMaximumIdentities forKey:{"integerValue"), @"maxIdentities"}];
  }

  explicitlySetMaximumTrainingFaceprintsPerIdentity = self->_explicitlySetMaximumTrainingFaceprintsPerIdentity;
  if (explicitlySetMaximumTrainingFaceprintsPerIdentity)
  {
    [coderCopy encodeInteger:-[NSNumber integerValue](explicitlySetMaximumTrainingFaceprintsPerIdentity forKey:{"integerValue"), @"faceprintsPerIdentity"}];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = VNPersonsModelConfiguration;
  v4 = [(VNPersonsModelConfiguration *)&v9 description];
  [v3 appendString:v4];

  v5 = [(VNPersonsModelConfiguration *)self resolvedAlgorithmAndReturnError:0];
  [v3 appendFormat:@"\n                              algorithm = %@", v5];

  [v3 appendFormat:@"\n                      maximumIdentities = %lu", -[VNPersonsModelConfiguration maximumIdentities](self, "maximumIdentities")];
  [v3 appendFormat:@"\n   maximumTrainingFaceprintsPerIdentity = %lu", -[VNPersonsModelConfiguration maximumTrainingFaceprintsPerIdentity](self, "maximumTrainingFaceprintsPerIdentity")];
  v6 = objc_opt_class();
  v7 = VNRequestRevisionString(v6, [(VNPersonsModelConfiguration *)self faceprintRequestRevision]);
  [v3 appendFormat:@"\n               faceprintRequestRevision = %@", v7];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      algorithm = [(VNPersonsModelConfiguration *)self algorithm];
      algorithm2 = [(VNPersonsModelConfiguration *)v5 algorithm];
      v8 = VisionCoreEqualOrNilObjects();

      if ((v8 & 1) != 0 && (v9 = [(VNPersonsModelConfiguration *)self maximumIdentities], v9 == [(VNPersonsModelConfiguration *)v5 maximumIdentities]) && (v10 = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity], v10 == [(VNPersonsModelConfiguration *)v5 maximumTrainingFaceprintsPerIdentity]))
      {
        faceprintRequestRevision = [(VNPersonsModelConfiguration *)self faceprintRequestRevision];
        v12 = faceprintRequestRevision == [(VNPersonsModelConfiguration *)v5 faceprintRequestRevision];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(VNPersonsModelAlgorithm *)self->_algorithm copy];
    v6 = v4[1];
    v4[1] = v5;

    v4[2] = self->_faceprintRequestRevision;
    v7 = [(NSNumber *)self->_explicitlySetMaximumIdentities copy];
    v8 = v4[3];
    v4[3] = v7;

    v9 = [(NSNumber *)self->_explicitlySetMaximumTrainingFaceprintsPerIdentity copy];
    v10 = v4[4];
    v4[4] = v9;
  }

  return v4;
}

- (id)algorithmOfClass:(Class)class error:(id *)error
{
  errorCopy = error;
  v6 = [(VNPersonsModelConfiguration *)self resolvedAlgorithmAndReturnError:error];
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
  algorithm = [(VNPersonsModelConfiguration *)self algorithm];
  if (!algorithm)
  {
    algorithm = objc_alloc_init(VNPersonsModelAlgorithmVIPv2);
  }

  return algorithm;
}

- (void)setMaximumTrainingFaceprintsPerIdentity:(unint64_t)identity
{
  self->_explicitlySetMaximumTrainingFaceprintsPerIdentity = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identity];

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)maximumTrainingFaceprintsPerIdentity
{
  explicitlySetMaximumTrainingFaceprintsPerIdentity = self->_explicitlySetMaximumTrainingFaceprintsPerIdentity;
  if (explicitlySetMaximumTrainingFaceprintsPerIdentity)
  {
    return [(NSNumber *)explicitlySetMaximumTrainingFaceprintsPerIdentity unsignedIntegerValue];
  }

  else
  {
    return 20;
  }
}

- (void)setMaximumIdentities:(unint64_t)identities
{
  self->_explicitlySetMaximumIdentities = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identities];

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)maximumIdentities
{
  explicitlySetMaximumIdentities = self->_explicitlySetMaximumIdentities;
  if (explicitlySetMaximumIdentities)
  {
    return [(NSNumber *)explicitlySetMaximumIdentities unsignedIntegerValue];
  }

  else
  {
    return 10000;
  }
}

- (VNPersonsModelConfiguration)init
{
  v3.receiver = self;
  v3.super_class = VNPersonsModelConfiguration;
  result = [(VNPersonsModelConfiguration *)&v3 init];
  if (result)
  {
    result->_faceprintRequestRevision = 0;
  }

  return result;
}

- (int)faceID3IndexMode
{
  v2 = [(VNPersonsModelConfiguration *)self algorithmOfClass:objc_opt_class() error:0];
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
  maximumTrainingFaceprintsPerIdentity = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity];
  if (maximumTrainingFaceprintsPerIdentity >= 0x7FFFFFFF)
  {
    LODWORD(maximumTrainingFaceprintsPerIdentity) = 0x7FFFFFFF;
  }

  return maximumTrainingFaceprintsPerIdentity;
}

- (int)faceID3ModelMaximumIDs
{
  maximumIdentities = [(VNPersonsModelConfiguration *)self maximumIdentities];
  if (maximumIdentities >= 0x7FFFFFFF)
  {
    LODWORD(maximumIdentities) = 0x7FFFFFFF;
  }

  return maximumIdentities;
}

@end