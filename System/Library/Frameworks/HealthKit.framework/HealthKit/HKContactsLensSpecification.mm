@interface HKContactsLensSpecification
- (BOOL)isEqual:(id)equal;
- (HKContactsLensSpecification)initWithCoder:(id)coder;
- (HKContactsLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower baseCurve:(HKQuantity *)baseCurve diameter:(HKQuantity *)diameter;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKContactsLensSpecification

- (HKContactsLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower baseCurve:(HKQuantity *)baseCurve diameter:(HKQuantity *)diameter
{
  v14 = baseCurve;
  v15 = diameter;
  v22.receiver = self;
  v22.super_class = HKContactsLensSpecification;
  v16 = [(HKLensSpecification *)&v22 _initWithSphere:sphere cylinder:cylinder axis:axis addPower:addPower];
  if (v16)
  {
    v17 = [(HKQuantity *)v14 copy];
    v18 = v16->_baseCurve;
    v16->_baseCurve = v17;

    v19 = [(HKQuantity *)v15 copy];
    v20 = v16->_diameter;
    v16->_diameter = v19;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  baseCurve = self->_baseCurve;
  v7 = [v3 stringWithFormat:@"<%@:%p BaseCurve=%@, Diameter=%@>", v5, self, baseCurve, self->_diameter];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(diameter) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      sphere = [(HKLensSpecification *)self sphere];
      sphere2 = [(HKLensSpecification *)v7 sphere];
      if (sphere != sphere2)
      {
        sphere3 = [(HKLensSpecification *)v7 sphere];
        if (!sphere3)
        {
          LOBYTE(diameter) = 0;
          goto LABEL_69;
        }

        sphere4 = [(HKLensSpecification *)self sphere];
        sphere5 = [(HKLensSpecification *)v7 sphere];
        v51 = sphere4;
        if (![sphere4 isEqual:sphere5])
        {
          LOBYTE(diameter) = 0;
LABEL_68:

          goto LABEL_69;
        }

        v50 = sphere5;
      }

      cylinder = [(HKLensSpecification *)self cylinder];
      cylinder2 = [(HKLensSpecification *)v7 cylinder];
      if (cylinder != cylinder2)
      {
        diameter = [(HKLensSpecification *)v7 cylinder];
        if (!diameter)
        {
LABEL_66:

          goto LABEL_67;
        }

        sphere4 = [(HKLensSpecification *)self cylinder];
        cylinder3 = [(HKLensSpecification *)v7 cylinder];
        if (([sphere4 isEqual:cylinder3] & 1) == 0)
        {

          goto LABEL_35;
        }

        v46 = cylinder3;
        v47 = sphere4;
      }

      axis = [(HKLensSpecification *)self axis];
      axis2 = [(HKLensSpecification *)v7 axis];
      if (axis == axis2)
      {
LABEL_20:
        addPower = [(HKLensSpecification *)self addPower];
        addPower2 = [(HKLensSpecification *)v7 addPower];
        if (addPower == addPower2)
        {
          v43 = sphere4;
          v44 = cylinder;
LABEL_27:
          baseCurve = self->_baseCurve;
          baseCurve = [(HKContactsLensSpecification *)v7 baseCurve];
          v42 = diameter;
          v38 = baseCurve;
          if (baseCurve == baseCurve)
          {
            v37 = addPower;
          }

          else
          {
            baseCurve2 = [(HKContactsLensSpecification *)v7 baseCurve];
            if (!baseCurve2)
            {
              LOBYTE(diameter) = 0;
              v30 = v47;
              v31 = v43;
              goto LABEL_52;
            }

            v34 = baseCurve2;
            v24 = self->_baseCurve;
            baseCurve = [(HKContactsLensSpecification *)v7 baseCurve];
            if (![(HKQuantity *)v24 isEqual:baseCurve])
            {

              LOBYTE(diameter) = 0;
LABEL_60:
              v25 = axis2;
              sphere4 = v43;
              if (addPower == addPower2)
              {

                cylinder = v44;
                if (axis == axis2)
                {
LABEL_64:

                  if (cylinder != cylinder2)
                  {
                  }

                  goto LABEL_66;
                }

LABEL_63:

                goto LABEL_64;
              }

              cylinder = v44;
LABEL_62:

              if (axis == v25)
              {
                goto LABEL_64;
              }

              goto LABEL_63;
            }

            v37 = addPower;
          }

          diameter = self->_diameter;
          diameter = [(HKContactsLensSpecification *)v7 diameter];
          LOBYTE(diameter) = diameter == diameter;
          if (!diameter)
          {
            diameter2 = [(HKContactsLensSpecification *)v7 diameter];
            if (diameter2)
            {
              diameter = self->_diameter;
              v28 = diameter2;
              diameter3 = [(HKContactsLensSpecification *)v7 diameter];
              LOBYTE(diameter) = [diameter isEqual:diameter3];

              if (v38 != baseCurve)
              {
              }

              addPower = v37;
              goto LABEL_60;
            }
          }

          if (v38 == baseCurve)
          {

            addPower = v37;
            v30 = v47;
            v32 = addPower2;
            v31 = v43;
            if (v37 == addPower2)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }

          v30 = v47;
          v31 = v43;
          addPower = v37;
LABEL_52:

          v32 = addPower2;
          if (addPower == addPower2)
          {
LABEL_54:

            if (axis != axis2)
            {
            }

            if (v44 != cylinder2)
            {
            }

LABEL_67:
            sphere5 = v50;
            if (sphere != sphere2)
            {
              goto LABEL_68;
            }

LABEL_69:

            goto LABEL_70;
          }

LABEL_53:

          v32 = addPower2;
          goto LABEL_54;
        }

        addPower3 = [(HKLensSpecification *)v7 addPower];
        if (!addPower3)
        {
          v42 = diameter;
          LOBYTE(diameter) = 0;
          v25 = axis2;
          goto LABEL_62;
        }

        v43 = sphere4;
        v44 = cylinder;
        v39 = addPower3;
        addPower4 = [(HKLensSpecification *)self addPower];
        addPower5 = [(HKLensSpecification *)v7 addPower];
        if ([addPower4 isEqual:addPower5])
        {
          v35 = addPower4;
          v36 = addPower5;
          goto LABEL_27;
        }

        if (axis != axis2)
        {
        }

        if (v44 != cylinder2)
        {
        }

LABEL_36:
        LOBYTE(diameter) = 0;
        goto LABEL_67;
      }

      axis3 = [(HKLensSpecification *)v7 axis];
      if (axis3)
      {
        v15 = axis;
        v45 = axis3;
        axis4 = [(HKLensSpecification *)self axis];
        axis5 = [(HKLensSpecification *)v7 axis];
        if ([axis4 isEqual:axis5])
        {
          v40 = axis4;
          sphere4 = axis5;
          axis = v15;
          goto LABEL_20;
        }
      }

      else
      {
      }

      if (cylinder != cylinder2)
      {
      }

LABEL_35:
      goto LABEL_36;
    }

    LOBYTE(diameter) = 0;
  }

LABEL_70:

  return diameter;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sphere = [(HKLensSpecification *)self sphere];
  [coderCopy encodeObject:sphere forKey:@"Sphere"];

  cylinder = [(HKLensSpecification *)self cylinder];
  [coderCopy encodeObject:cylinder forKey:@"Cyclinder"];

  axis = [(HKLensSpecification *)self axis];
  [coderCopy encodeObject:axis forKey:@"Axis"];

  addPower = [(HKLensSpecification *)self addPower];
  [coderCopy encodeObject:addPower forKey:@"AddPower"];

  [coderCopy encodeObject:self->_baseCurve forKey:@"BaseCurve"];
  [coderCopy encodeObject:self->_diameter forKey:@"Diameter"];
}

- (HKContactsLensSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sphere"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Cyclinder"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Axis"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AddPower"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BaseCurve"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Diameter"];

  v11 = [(HKContactsLensSpecification *)self initWithSphere:v5 cylinder:v6 axis:v7 addPower:v8 baseCurve:v9 diameter:v10];
  return v11;
}

@end