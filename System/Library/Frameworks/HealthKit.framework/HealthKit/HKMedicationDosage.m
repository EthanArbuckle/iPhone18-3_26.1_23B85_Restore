@interface HKMedicationDosage
+ (id)dosageWithInstruction:(id)a3 timingPeriod:(id)a4;
+ (id)dosageWithInstruction:(id)a3 timingPeriod:(id)a4 siteCoding:(id)a5 routeCoding:(id)a6 methodCoding:(id)a7;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKMedicationDosage)init;
- (HKMedicationDosage)initWithCoder:(id)a3;
- (HKMedicationDosage)initWithInstruction:(id)a3 timingPeriod:(id)a4 siteCoding:(id)a5 routeCoding:(id)a6 methodCoding:(id)a7;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationDosage

+ (id)dosageWithInstruction:(id)a3 timingPeriod:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithInstruction:v7 timingPeriod:v6 siteCoding:0 routeCoding:0 methodCoding:0];

  return v8;
}

+ (id)dosageWithInstruction:(id)a3 timingPeriod:(id)a4 siteCoding:(id)a5 routeCoding:(id)a6 methodCoding:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithInstruction:v16 timingPeriod:v15 siteCoding:v14 routeCoding:v13 methodCoding:v12];

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

- (HKMedicationDosage)initWithInstruction:(id)a3 timingPeriod:(id)a4 siteCoding:(id)a5 routeCoding:(id)a6 methodCoding:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v38.receiver = self;
  v38.super_class = HKMedicationDosage;
  v17 = [(HKMedicationDosage *)&v38 init];
  if (v17)
  {
    v18 = [v12 copy];
    instruction = v17->_instruction;
    v17->_instruction = v18;

    v20 = [v13 copy];
    timingPeriod = v17->_timingPeriod;
    v17->_timingPeriod = v20;

    v22 = [v14 copy];
    siteCoding = v17->_siteCoding;
    v17->_siteCoding = v22;

    v24 = [v15 copy];
    routeCoding = v17->_routeCoding;
    v17->_routeCoding = v24;

    v26 = [v16 copy];
    methodCoding = v17->_methodCoding;
    v17->_methodCoding = v26;

    if (v17->_siteCoding)
    {
      v28 = [(HKMedicationDosage *)v17 _siteCodingCollection];
      v29 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v28];
      site = v17->_site;
      v17->_site = v29;
    }

    if (v17->_routeCoding)
    {
      v31 = [(HKMedicationDosage *)v17 _routeCodingCollection];
      v32 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v31];
      route = v17->_route;
      v17->_route = v32;
    }

    if (v17->_methodCoding)
    {
      v34 = [(HKMedicationDosage *)v17 _methodCodingCollection];
      v35 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v34];
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
      instruction = self->_instruction;
      v7 = [(HKMedicationDosage *)v5 instruction];
      v8 = v7;
      if (instruction == v7)
      {
      }

      else
      {
        v9 = [(HKMedicationDosage *)v5 instruction];
        if (!v9)
        {
          goto LABEL_44;
        }

        v10 = v9;
        v11 = self->_instruction;
        v12 = [(HKMedicationDosage *)v5 instruction];
        LODWORD(v11) = [(NSString *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_45;
        }
      }

      timingPeriod = self->_timingPeriod;
      v15 = [(HKMedicationDosage *)v5 timingPeriod];
      v8 = v15;
      if (timingPeriod == v15)
      {
      }

      else
      {
        v16 = [(HKMedicationDosage *)v5 timingPeriod];
        if (!v16)
        {
          goto LABEL_44;
        }

        v17 = v16;
        v18 = self->_timingPeriod;
        v19 = [(HKMedicationDosage *)v5 timingPeriod];
        LODWORD(v18) = [(HKMedicalDateInterval *)v18 isEqual:v19];

        if (!v18)
        {
          goto LABEL_45;
        }
      }

      siteCoding = self->_siteCoding;
      v21 = [(HKMedicationDosage *)v5 siteCoding];
      v8 = v21;
      if (siteCoding == v21)
      {
      }

      else
      {
        v22 = [(HKMedicationDosage *)v5 siteCoding];
        if (!v22)
        {
          goto LABEL_44;
        }

        v23 = v22;
        v24 = self->_siteCoding;
        v25 = [(HKMedicationDosage *)v5 siteCoding];
        LODWORD(v24) = [(HKMedicalCoding *)v24 isEqual:v25];

        if (!v24)
        {
          goto LABEL_45;
        }
      }

      routeCoding = self->_routeCoding;
      v27 = [(HKMedicationDosage *)v5 routeCoding];
      v8 = v27;
      if (routeCoding == v27)
      {
      }

      else
      {
        v28 = [(HKMedicationDosage *)v5 routeCoding];
        if (!v28)
        {
          goto LABEL_44;
        }

        v29 = v28;
        v30 = self->_routeCoding;
        v31 = [(HKMedicationDosage *)v5 routeCoding];
        LODWORD(v30) = [(HKMedicalCoding *)v30 isEqual:v31];

        if (!v30)
        {
          goto LABEL_45;
        }
      }

      methodCoding = self->_methodCoding;
      v33 = [(HKMedicationDosage *)v5 methodCoding];
      v8 = v33;
      if (methodCoding == v33)
      {
      }

      else
      {
        v34 = [(HKMedicationDosage *)v5 methodCoding];
        if (!v34)
        {
          goto LABEL_44;
        }

        v35 = v34;
        v36 = self->_methodCoding;
        v37 = [(HKMedicationDosage *)v5 methodCoding];
        LODWORD(v36) = [(HKMedicalCoding *)v36 isEqual:v37];

        if (!v36)
        {
          goto LABEL_45;
        }
      }

      site = self->_site;
      v39 = [(HKMedicationDosage *)v5 site];
      v8 = v39;
      if (site == v39)
      {
      }

      else
      {
        v40 = [(HKMedicationDosage *)v5 site];
        if (!v40)
        {
          goto LABEL_44;
        }

        v41 = v40;
        v42 = self->_site;
        v43 = [(HKMedicationDosage *)v5 site];
        LODWORD(v42) = [(HKConcept *)v42 isEqual:v43];

        if (!v42)
        {
          goto LABEL_45;
        }
      }

      route = self->_route;
      v45 = [(HKMedicationDosage *)v5 route];
      v8 = v45;
      if (route == v45)
      {
      }

      else
      {
        v46 = [(HKMedicationDosage *)v5 route];
        if (!v46)
        {
          goto LABEL_44;
        }

        v47 = v46;
        v48 = self->_route;
        v49 = [(HKMedicationDosage *)v5 route];
        LODWORD(v48) = [(HKConcept *)v48 isEqual:v49];

        if (!v48)
        {
          goto LABEL_45;
        }
      }

      method = self->_method;
      v51 = [(HKMedicationDosage *)v5 method];
      v8 = v51;
      if (method == v51)
      {

LABEL_49:
        v13 = 1;
        goto LABEL_46;
      }

      v52 = [(HKMedicationDosage *)v5 method];
      if (v52)
      {
        v53 = v52;
        v54 = self->_method;
        v55 = [(HKMedicationDosage *)v5 method];
        LOBYTE(v54) = [(HKConcept *)v54 isEqual:v55];

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

- (HKMedicationDosage)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKMedicationDosage;
  v5 = [(HKMedicationDosage *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Instruction"];
    instruction = v5->_instruction;
    v5->_instruction = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimingPeriod"];
    timingPeriod = v5->_timingPeriod;
    v5->_timingPeriod = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SiteConcept"];
    site = v5->_site;
    v5->_site = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SiteCoding"];
    siteCoding = v5->_siteCoding;
    v5->_siteCoding = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouteConcept"];
    route = v5->_route;
    v5->_route = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RouteCoding"];
    routeCoding = v5->_routeCoding;
    v5->_routeCoding = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MethodConcept"];
    method = v5->_method;
    v5->_method = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MethodCoding"];
    methodCoding = v5->_methodCoding;
    v5->_methodCoding = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  instruction = self->_instruction;
  v5 = a3;
  [v5 encodeObject:instruction forKey:@"Instruction"];
  [v5 encodeObject:self->_timingPeriod forKey:@"TimingPeriod"];
  [v5 encodeObject:self->_site forKey:@"SiteConcept"];
  [v5 encodeObject:self->_siteCoding forKey:@"SiteCoding"];
  [v5 encodeObject:self->_route forKey:@"RouteConcept"];
  [v5 encodeObject:self->_routeCoding forKey:@"RouteCoding"];
  [v5 encodeObject:self->_method forKey:@"MethodConcept"];
  [v5 encodeObject:self->_methodCoding forKey:@"MethodCoding"];
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"site"])
  {
    v7 = [(HKMedicationDosage *)self siteCoding];

    if (v7)
    {
      v8 = [(HKMedicationDosage *)self _siteCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:v8];
      v19 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v19;
LABEL_10:
      v14 = [v10 arrayWithObjects:v11 count:{1, v17, v18, v19, v20}];

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ([v6 isEqualToString:@"method"])
  {
    v12 = [(HKMedicationDosage *)self methodCoding];

    if (v12)
    {
      v8 = [(HKMedicationDosage *)self _methodCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:v8];
      v18 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v18;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([v6 isEqualToString:@"route"])
  {
    v13 = [(HKMedicationDosage *)self routeCoding];

    if (v13)
    {
      v8 = [(HKMedicationDosage *)self _routeCodingCollection];
      v9 = [HKIndexableObject indexableObjectWithObject:v8];
      v17 = v9;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v17;
      goto LABEL_10;
    }

LABEL_11:
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_13;
  }

  [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
  v14 = 0;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v9 isEqualToString:@"site"])
  {
    if ([v9 isEqualToString:@"method"])
    {
      v16 = [(HKMedicationDosage *)self methodCoding];
      v17 = HKIndexableObjectCheckCardinalityForIndexRestore(1, v16 != 0, v9, a5);

      if (v17)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        v18 = [v13 copy];
        method = self->_method;
        self->_method = v18;
        goto LABEL_10;
      }
    }

    else if ([v9 isEqualToString:@"route"])
    {
      v19 = [(HKMedicationDosage *)self routeCoding];
      v20 = HKIndexableObjectCheckCardinalityForIndexRestore(1, v19 != 0, v9, a5);

      if (v20)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        v21 = [v13 copy];
        method = self->_route;
        self->_route = v21;
        goto LABEL_10;
      }
    }

    else
    {
      [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v10 = [(HKMedicationDosage *)self siteCoding];
  v11 = HKIndexableObjectCheckCardinalityForIndexRestore(1, v10 != 0, v9, a5);

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [v8 firstObject];
  v13 = [v12 object];
  v14 = [v13 copy];
  method = self->_site;
  self->_site = v14;
LABEL_10:

  v22 = 1;
LABEL_13:

  return v22;
}

@end