@interface HKContactsLensSpecification
- (BOOL)isEqual:(id)a3;
- (HKContactsLensSpecification)initWithCoder:(id)a3;
- (HKContactsLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower baseCurve:(HKQuantity *)baseCurve diameter:(HKQuantity *)diameter;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(diameter) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(HKLensSpecification *)self sphere];
      v9 = [(HKLensSpecification *)v7 sphere];
      if (v8 != v9)
      {
        v52 = [(HKLensSpecification *)v7 sphere];
        if (!v52)
        {
          LOBYTE(diameter) = 0;
          goto LABEL_69;
        }

        v3 = [(HKLensSpecification *)self sphere];
        v10 = [(HKLensSpecification *)v7 sphere];
        v51 = v3;
        if (![v3 isEqual:v10])
        {
          LOBYTE(diameter) = 0;
LABEL_68:

          goto LABEL_69;
        }

        v50 = v10;
      }

      v11 = [(HKLensSpecification *)self cylinder];
      v53 = [(HKLensSpecification *)v7 cylinder];
      if (v11 != v53)
      {
        diameter = [(HKLensSpecification *)v7 cylinder];
        if (!diameter)
        {
LABEL_66:

          goto LABEL_67;
        }

        v3 = [(HKLensSpecification *)self cylinder];
        v12 = [(HKLensSpecification *)v7 cylinder];
        if (([v3 isEqual:v12] & 1) == 0)
        {

          goto LABEL_35;
        }

        v46 = v12;
        v47 = v3;
      }

      v13 = [(HKLensSpecification *)self axis];
      v49 = [(HKLensSpecification *)v7 axis];
      if (v13 == v49)
      {
LABEL_20:
        v18 = [(HKLensSpecification *)self addPower];
        v48 = [(HKLensSpecification *)v7 addPower];
        if (v18 == v48)
        {
          v43 = v3;
          v44 = v11;
LABEL_27:
          baseCurve = self->_baseCurve;
          v41 = [(HKContactsLensSpecification *)v7 baseCurve];
          v42 = diameter;
          v38 = baseCurve;
          if (baseCurve == v41)
          {
            v37 = v18;
          }

          else
          {
            v23 = [(HKContactsLensSpecification *)v7 baseCurve];
            if (!v23)
            {
              LOBYTE(diameter) = 0;
              v30 = v47;
              v31 = v43;
              goto LABEL_52;
            }

            v34 = v23;
            v24 = self->_baseCurve;
            baseCurve = [(HKContactsLensSpecification *)v7 baseCurve];
            if (![(HKQuantity *)v24 isEqual:baseCurve])
            {

              LOBYTE(diameter) = 0;
LABEL_60:
              v25 = v49;
              v3 = v43;
              if (v18 == v48)
              {

                v11 = v44;
                if (v13 == v49)
                {
LABEL_64:

                  if (v11 != v53)
                  {
                  }

                  goto LABEL_66;
                }

LABEL_63:

                goto LABEL_64;
              }

              v11 = v44;
LABEL_62:

              if (v13 == v25)
              {
                goto LABEL_64;
              }

              goto LABEL_63;
            }

            v37 = v18;
          }

          diameter = self->_diameter;
          v26 = [(HKContactsLensSpecification *)v7 diameter];
          LOBYTE(diameter) = diameter == v26;
          if (!diameter)
          {
            v27 = [(HKContactsLensSpecification *)v7 diameter];
            if (v27)
            {
              diameter = self->_diameter;
              v28 = v27;
              v29 = [(HKContactsLensSpecification *)v7 diameter];
              LOBYTE(diameter) = [diameter isEqual:v29];

              if (v38 != v41)
              {
              }

              v18 = v37;
              goto LABEL_60;
            }
          }

          if (v38 == v41)
          {

            v18 = v37;
            v30 = v47;
            v32 = v48;
            v31 = v43;
            if (v37 == v48)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }

          v30 = v47;
          v31 = v43;
          v18 = v37;
LABEL_52:

          v32 = v48;
          if (v18 == v48)
          {
LABEL_54:

            if (v13 != v49)
            {
            }

            if (v44 != v53)
            {
            }

LABEL_67:
            v10 = v50;
            if (v8 != v9)
            {
              goto LABEL_68;
            }

LABEL_69:

            goto LABEL_70;
          }

LABEL_53:

          v32 = v48;
          goto LABEL_54;
        }

        v19 = [(HKLensSpecification *)v7 addPower];
        if (!v19)
        {
          v42 = diameter;
          LOBYTE(diameter) = 0;
          v25 = v49;
          goto LABEL_62;
        }

        v43 = v3;
        v44 = v11;
        v39 = v19;
        v20 = [(HKLensSpecification *)self addPower];
        v21 = [(HKLensSpecification *)v7 addPower];
        if ([v20 isEqual:v21])
        {
          v35 = v20;
          v36 = v21;
          goto LABEL_27;
        }

        if (v13 != v49)
        {
        }

        if (v44 != v53)
        {
        }

LABEL_36:
        LOBYTE(diameter) = 0;
        goto LABEL_67;
      }

      v14 = [(HKLensSpecification *)v7 axis];
      if (v14)
      {
        v15 = v13;
        v45 = v14;
        v16 = [(HKLensSpecification *)self axis];
        v17 = [(HKLensSpecification *)v7 axis];
        if ([v16 isEqual:v17])
        {
          v40 = v16;
          v3 = v17;
          v13 = v15;
          goto LABEL_20;
        }
      }

      else
      {
      }

      if (v11 != v53)
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HKLensSpecification *)self sphere];
  [v8 encodeObject:v4 forKey:@"Sphere"];

  v5 = [(HKLensSpecification *)self cylinder];
  [v8 encodeObject:v5 forKey:@"Cyclinder"];

  v6 = [(HKLensSpecification *)self axis];
  [v8 encodeObject:v6 forKey:@"Axis"];

  v7 = [(HKLensSpecification *)self addPower];
  [v8 encodeObject:v7 forKey:@"AddPower"];

  [v8 encodeObject:self->_baseCurve forKey:@"BaseCurve"];
  [v8 encodeObject:self->_diameter forKey:@"Diameter"];
}

- (HKContactsLensSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sphere"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Cyclinder"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Axis"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AddPower"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BaseCurve"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Diameter"];

  v11 = [(HKContactsLensSpecification *)self initWithSphere:v5 cylinder:v6 axis:v7 addPower:v8 baseCurve:v9 diameter:v10];
  return v11;
}

@end