@interface HKMedicationDosage
+ (id)dosageWithInstruction:(id)instruction timingPeriod:(id)period;
+ (id)dosageWithInstruction:(id)instruction timingPeriod:(id)period siteCoding:(id)coding routeCoding:(id)routeCoding methodCoding:(id)methodCoding;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKMedicationDosage)init;
- (HKMedicationDosage)initWithCoder:(id)coder;
- (HKMedicationDosage)initWithInstruction:(id)instruction timingPeriod:(id)period siteCoding:(id)coding routeCoding:(id)routeCoding methodCoding:(id)methodCoding;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationDosage

+ (id)dosageWithInstruction:(id)instruction timingPeriod:(id)period
{
  periodCopy = period;
  instructionCopy = instruction;
  v8 = [[self alloc] initWithInstruction:instructionCopy timingPeriod:periodCopy siteCoding:0 routeCoding:0 methodCoding:0];

  return v8;
}

+ (id)dosageWithInstruction:(id)instruction timingPeriod:(id)period siteCoding:(id)coding routeCoding:(id)routeCoding methodCoding:(id)methodCoding
{
  methodCodingCopy = methodCoding;
  routeCodingCopy = routeCoding;
  codingCopy = coding;
  periodCopy = period;
  instructionCopy = instruction;
  v17 = [[self alloc] initWithInstruction:instructionCopy timingPeriod:periodCopy siteCoding:codingCopy routeCoding:routeCodingCopy methodCoding:methodCodingCopy];

  return v17;
}

- (HKMedicationDosage)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationDosage)initWithInstruction:(id)instruction timingPeriod:(id)period siteCoding:(id)coding routeCoding:(id)routeCoding methodCoding:(id)methodCoding
{
  instructionCopy = instruction;
  periodCopy = period;
  codingCopy = coding;
  routeCodingCopy = routeCoding;
  methodCodingCopy = methodCoding;
  v38.receiver = self;
  v38.super_class = HKMedicationDosage;
  v17 = [(HKMedicationDosage *)&v38 init];
  if (v17)
  {
    v18 = [instructionCopy copy];
    instruction = v17->_instruction;
    v17->_instruction = v18;

    v20 = [periodCopy copy];
    timingPeriod = v17->_timingPeriod;
    v17->_timingPeriod = v20;

    v22 = [codingCopy copy];
    siteCoding = v17->_siteCoding;
    v17->_siteCoding = v22;

    v24 = [routeCodingCopy copy];
    routeCoding = v17->_routeCoding;
    v17->_routeCoding = v24;

    v26 = [methodCodingCopy copy];
    methodCoding = v17->_methodCoding;
    v17->_methodCoding = v26;

    if (v17->_siteCoding)
    {
      _siteCodingCollection = [(HKMedicationDosage *)v17 _siteCodingCollection];
      v29 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:_siteCodingCollection];
      site = v17->_site;
      v17->_site = v29;
    }

    if (v17->_routeCoding)
    {
      _routeCodingCollection = [(HKMedicationDosage *)v17 _routeCodingCollection];
      v32 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:_routeCodingCollection];
      route = v17->_route;
      v17->_route = v32;
    }

    if (v17->_methodCoding)
    {
      _methodCodingCollection = [(HKMedicationDosage *)v17 _methodCodingCollection];
      v35 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:_methodCodingCollection];
      method = v17->_method;
      v17->_method = v35;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_instruction hash];
  v4 = [(HKMedicalDateInterval *)self->_timingPeriod hash]^ v3;
  v5 = [(HKConcept *)self->_site hash];
  v6 = v4 ^ v5 ^ [(HKMedicalCoding *)self->_siteCoding hash];
  v7 = [(HKConcept *)self->_route hash];
  v8 = v7 ^ [(HKMedicalCoding *)self->_routeCoding hash];
  v9 = v6 ^ v8 ^ [(HKConcept *)self->_method hash];
  return v9 ^ [(HKMedicalCoding *)self->_methodCoding hash];
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
      instruction = self->_instruction;
      instruction = [(HKMedicationDosage *)v5 instruction];
      v8 = instruction;
      if (instruction == instruction)
      {
      }

      else
      {
        instruction2 = [(HKMedicationDosage *)v5 instruction];
        if (!instruction2)
        {
          goto LABEL_44;
        }

        v10 = instruction2;
        v11 = self->_instruction;
        instruction3 = [(HKMedicationDosage *)v5 instruction];
        LODWORD(v11) = [(NSString *)v11 isEqual:instruction3];

        if (!v11)
        {
          goto LABEL_45;
        }
      }

      timingPeriod = self->_timingPeriod;
      timingPeriod = [(HKMedicationDosage *)v5 timingPeriod];
      v8 = timingPeriod;
      if (timingPeriod == timingPeriod)
      {
      }

      else
      {
        timingPeriod2 = [(HKMedicationDosage *)v5 timingPeriod];
        if (!timingPeriod2)
        {
          goto LABEL_44;
        }

        v17 = timingPeriod2;
        v18 = self->_timingPeriod;
        timingPeriod3 = [(HKMedicationDosage *)v5 timingPeriod];
        LODWORD(v18) = [(HKMedicalDateInterval *)v18 isEqual:timingPeriod3];

        if (!v18)
        {
          goto LABEL_45;
        }
      }

      siteCoding = self->_siteCoding;
      siteCoding = [(HKMedicationDosage *)v5 siteCoding];
      v8 = siteCoding;
      if (siteCoding == siteCoding)
      {
      }

      else
      {
        siteCoding2 = [(HKMedicationDosage *)v5 siteCoding];
        if (!siteCoding2)
        {
          goto LABEL_44;
        }

        v23 = siteCoding2;
        v24 = self->_siteCoding;
        siteCoding3 = [(HKMedicationDosage *)v5 siteCoding];
        LODWORD(v24) = [(HKMedicalCoding *)v24 isEqual:siteCoding3];

        if (!v24)
        {
          goto LABEL_45;
        }
      }

      routeCoding = self->_routeCoding;
      routeCoding = [(HKMedicationDosage *)v5 routeCoding];
      v8 = routeCoding;
      if (routeCoding == routeCoding)
      {
      }

      else
      {
        routeCoding2 = [(HKMedicationDosage *)v5 routeCoding];
        if (!routeCoding2)
        {
          goto LABEL_44;
        }

        v29 = routeCoding2;
        v30 = self->_routeCoding;
        routeCoding3 = [(HKMedicationDosage *)v5 routeCoding];
        LODWORD(v30) = [(HKMedicalCoding *)v30 isEqual:routeCoding3];

        if (!v30)
        {
          goto LABEL_45;
        }
      }

      methodCoding = self->_methodCoding;
      methodCoding = [(HKMedicationDosage *)v5 methodCoding];
      v8 = methodCoding;
      if (methodCoding == methodCoding)
      {
      }

      else
      {
        methodCoding2 = [(HKMedicationDosage *)v5 methodCoding];
        if (!methodCoding2)
        {
          goto LABEL_44;
        }

        v35 = methodCoding2;
        v36 = self->_methodCoding;
        methodCoding3 = [(HKMedicationDosage *)v5 methodCoding];
        LODWORD(v36) = [(HKMedicalCoding *)v36 isEqual:methodCoding3];

        if (!v36)
        {
          goto LABEL_45;
        }
      }

      site = self->_site;
      site = [(HKMedicationDosage *)v5 site];
      v8 = site;
      if (site == site)
      {
      }

      else
      {
        site2 = [(HKMedicationDosage *)v5 site];
        if (!site2)
        {
          goto LABEL_44;
        }

        v41 = site2;
        v42 = self->_site;
        site3 = [(HKMedicationDosage *)v5 site];
        LODWORD(v42) = [(HKConcept *)v42 isEqual:site3];

        if (!v42)
        {
          goto LABEL_45;
        }
      }

      route = self->_route;
      route = [(HKMedicationDosage *)v5 route];
      v8 = route;
      if (route == route)
      {
      }

      else
      {
        route2 = [(HKMedicationDosage *)v5 route];
        if (!route2)
        {
          goto LABEL_44;
        }

        v47 = route2;
        v48 = self->_route;
        route3 = [(HKMedicationDosage *)v5 route];
        LODWORD(v48) = [(HKConcept *)v48 isEqual:route3];

        if (!v48)
        {
          goto LABEL_45;
        }
      }

      method = self->_method;
      method = [(HKMedicationDosage *)v5 method];
      v8 = method;
      if (method == method)
      {

LABEL_49:
        v13 = 1;
        goto LABEL_46;
      }

      method2 = [(HKMedicationDosage *)v5 method];
      if (method2)
      {
        v53 = method2;
        v54 = self->_method;
        method3 = [(HKMedicationDosage *)v5 method];
        LOBYTE(v54) = [(HKConcept *)v54 isEqual:method3];

        if (v54)
        {
          goto LABEL_49;
        }

LABEL_45:
        v13 = 0;
LABEL_46:

        goto LABEL_47;
      }

LABEL_44:

      goto LABEL_45;
    }

    v13 = 0;
  }

LABEL_47:

  return v13;
}

- (HKMedicationDosage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKMedicationDosage;
  v5 = [(HKMedicationDosage *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Instruction"];
    instruction = v5->_instruction;
    v5->_instruction = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimingPeriod"];
    timingPeriod = v5->_timingPeriod;
    v5->_timingPeriod = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiteConcept"];
    site = v5->_site;
    v5->_site = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SiteCoding"];
    siteCoding = v5->_siteCoding;
    v5->_siteCoding = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouteConcept"];
    route = v5->_route;
    v5->_route = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RouteCoding"];
    routeCoding = v5->_routeCoding;
    v5->_routeCoding = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MethodConcept"];
    method = v5->_method;
    v5->_method = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MethodCoding"];
    methodCoding = v5->_methodCoding;
    v5->_methodCoding = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  instruction = self->_instruction;
  coderCopy = coder;
  [coderCopy encodeObject:instruction forKey:@"Instruction"];
  [coderCopy encodeObject:self->_timingPeriod forKey:@"TimingPeriod"];
  [coderCopy encodeObject:self->_site forKey:@"SiteConcept"];
  [coderCopy encodeObject:self->_siteCoding forKey:@"SiteCoding"];
  [coderCopy encodeObject:self->_route forKey:@"RouteConcept"];
  [coderCopy encodeObject:self->_routeCoding forKey:@"RouteCoding"];
  [coderCopy encodeObject:self->_method forKey:@"MethodConcept"];
  [coderCopy encodeObject:self->_methodCoding forKey:@"MethodCoding"];
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"site"])
  {
    siteCoding = [(HKMedicationDosage *)self siteCoding];

    if (siteCoding)
    {
      _siteCodingCollection = [(HKMedicationDosage *)self _siteCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:_siteCodingCollection];
      v19 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v19;
LABEL_10:
      v14 = [v10 arrayWithObjects:v11 count:{1, v17, v18, v19, v20}];

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:@"method"])
  {
    methodCoding = [(HKMedicationDosage *)self methodCoding];

    if (methodCoding)
    {
      _siteCodingCollection = [(HKMedicationDosage *)self _methodCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:_siteCodingCollection];
      v18 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v18;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:@"route"])
  {
    routeCoding = [(HKMedicationDosage *)self routeCoding];

    if (routeCoding)
    {
      _siteCodingCollection = [(HKMedicationDosage *)self _routeCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:_siteCodingCollection];
      v17 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v17;
      goto LABEL_10;
    }

LABEL_11:
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_13;
  }

  [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  if (![pathCopy isEqualToString:@"site"])
  {
    if ([pathCopy isEqualToString:@"method"])
    {
      methodCoding = [(HKMedicationDosage *)self methodCoding];
      v17 = HKIndexableObjectCheckCardinalityForIndexRestore(1, methodCoding != 0, pathCopy, error);

      if (v17)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        v18 = [object copy];
        method = self->_method;
        self->_method = v18;
        goto LABEL_10;
      }
    }

    else if ([pathCopy isEqualToString:@"route"])
    {
      routeCoding = [(HKMedicationDosage *)self routeCoding];
      v20 = HKIndexableObjectCheckCardinalityForIndexRestore(1, routeCoding != 0, pathCopy, error);

      if (v20)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        v21 = [object copy];
        method = self->_route;
        self->_route = v21;
        goto LABEL_10;
      }
    }

    else
    {
      [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  siteCoding = [(HKMedicationDosage *)self siteCoding];
  v11 = HKIndexableObjectCheckCardinalityForIndexRestore(1, siteCoding != 0, pathCopy, error);

  if (!v11)
  {
    goto LABEL_12;
  }

  firstObject = [conceptsCopy firstObject];
  object = [firstObject object];
  v14 = [object copy];
  method = self->_site;
  self->_site = v14;
LABEL_10:

  v22 = 1;
LABEL_13:

  return v22;
}

@end