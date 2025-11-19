@interface VNPersonsModelConfiguration
- (BOOL)isEqual:(id)a3;
- (VNPersonsModelConfiguration)init;
- (VNPersonsModelConfiguration)initWithCoder:(id)a3;
- (id)algorithmOfClass:(Class)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedAlgorithmAndReturnError:(id *)a3;
- (int)faceID2ModelMaximumElementsPerID;
- (int)faceID3IndexMode;
- (int)faceID3ModelMaximumElementsPerID;
- (int)faceID3ModelMaximumIDs;
- (unint64_t)maximumIdentities;
- (unint64_t)maximumTrainingFaceprintsPerIdentity;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumIdentities:(unint64_t)a3;
- (void)setMaximumTrainingFaceprintsPerIdentity:(unint64_t)a3;
@end

@implementation VNPersonsModelConfiguration

- (int)faceID2ModelMaximumElementsPerID
{
  v2 = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

- (VNPersonsModelConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VNPersonsModelConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v6;

    v5->_faceprintRequestRevision = [v4 decodeIntegerForKey:@"faceprintRequestRevision"];
    if ([v4 containsValueForKey:@"maxIdentities"])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "decodeIntegerForKey:", @"maxIdentities"}];
      explicitlySetMaximumIdentities = v5->_explicitlySetMaximumIdentities;
      v5->_explicitlySetMaximumIdentities = v8;
    }

    if ([v4 containsValueForKey:@"faceprintsPerIdentity"])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "decodeIntegerForKey:", @"faceprintsPerIdentity"}];
      explicitlySetMaximumTrainingFaceprintsPerIdentity = v5->_explicitlySetMaximumTrainingFaceprintsPerIdentity;
      v5->_explicitlySetMaximumTrainingFaceprintsPerIdentity = v10;
    }

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_algorithm forKey:@"algorithm"];
  [v6 encodeInteger:self->_faceprintRequestRevision forKey:@"faceprintRequestRevision"];
  explicitlySetMaximumIdentities = self->_explicitlySetMaximumIdentities;
  if (explicitlySetMaximumIdentities)
  {
    [v6 encodeInteger:-[NSNumber integerValue](explicitlySetMaximumIdentities forKey:{"integerValue"), @"maxIdentities"}];
  }

  explicitlySetMaximumTrainingFaceprintsPerIdentity = self->_explicitlySetMaximumTrainingFaceprintsPerIdentity;
  if (explicitlySetMaximumTrainingFaceprintsPerIdentity)
  {
    [v6 encodeInteger:-[NSNumber integerValue](explicitlySetMaximumTrainingFaceprintsPerIdentity forKey:{"integerValue"), @"faceprintsPerIdentity"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNPersonsModelConfiguration *)self algorithm];
      v7 = [(VNPersonsModelConfiguration *)v5 algorithm];
      v8 = VisionCoreEqualOrNilObjects();

      if ((v8 & 1) != 0 && (v9 = [(VNPersonsModelConfiguration *)self maximumIdentities], v9 == [(VNPersonsModelConfiguration *)v5 maximumIdentities]) && (v10 = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity], v10 == [(VNPersonsModelConfiguration *)v5 maximumTrainingFaceprintsPerIdentity]))
      {
        v11 = [(VNPersonsModelConfiguration *)self faceprintRequestRevision];
        v12 = v11 == [(VNPersonsModelConfiguration *)v5 faceprintRequestRevision];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (id)algorithmOfClass:(Class)a3 error:(id *)a4
{
  v4 = a4;
  v6 = [(VNPersonsModelConfiguration *)self resolvedAlgorithmAndReturnError:a4];
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
  v3 = [(VNPersonsModelConfiguration *)self algorithm];
  if (!v3)
  {
    v3 = objc_alloc_init(VNPersonsModelAlgorithmVIPv2);
  }

  return v3;
}

- (void)setMaximumTrainingFaceprintsPerIdentity:(unint64_t)a3
{
  self->_explicitlySetMaximumTrainingFaceprintsPerIdentity = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

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

- (void)setMaximumIdentities:(unint64_t)a3
{
  self->_explicitlySetMaximumIdentities = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];

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
  v2 = [(VNPersonsModelConfiguration *)self maximumTrainingFaceprintsPerIdentity];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

- (int)faceID3ModelMaximumIDs
{
  v2 = [(VNPersonsModelConfiguration *)self maximumIdentities];
  if (v2 >= 0x7FFFFFFF)
  {
    LODWORD(v2) = 0x7FFFFFFF;
  }

  return v2;
}

@end