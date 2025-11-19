@interface HKLensSpecification
- (BOOL)isEqual:(id)a3;
- (id)_initWithSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 addPower:(id)a6;
- (id)description;
@end

@implementation HKLensSpecification

- (id)_initWithSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 addPower:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKLensSpecification;
  v14 = [(HKLensSpecification *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    sphere = v14->_sphere;
    v14->_sphere = v15;

    v17 = [v11 copy];
    cylinder = v14->_cylinder;
    v14->_cylinder = v17;

    v19 = [v12 copy];
    axis = v14->_axis;
    v14->_axis = v19;

    v21 = [v13 copy];
    addPower = v14->_addPower;
    v14->_addPower = v21;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p Sphere=%@, Cylinder=%@, Axis=%@, Power=%@>", v5, self, self->_sphere, self->_cylinder, self->_axis, self->_addPower];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      sphere = self->_sphere;
      v8 = [(HKLensSpecification *)v6 sphere];
      if (sphere != v8)
      {
        v9 = [(HKLensSpecification *)v6 sphere];
        if (!v9)
        {
          LOBYTE(v12) = 0;
          goto LABEL_41;
        }

        v3 = v9;
        v10 = self->_sphere;
        v11 = [(HKLensSpecification *)v6 sphere];
        if (![(HKQuantity *)v10 isEqual:v11])
        {
          LOBYTE(v12) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v40 = v11;
      }

      cylinder = self->_cylinder;
      v14 = [(HKLensSpecification *)v6 cylinder];
      v41 = cylinder;
      if (cylinder != v14)
      {
        v15 = [(HKLensSpecification *)v6 cylinder];
        if (!v15)
        {
          LOBYTE(v12) = 0;
          goto LABEL_38;
        }

        v16 = v15;
        v17 = self->_cylinder;
        v12 = [(HKLensSpecification *)v6 cylinder];
        if (![(HKQuantity *)v17 isEqual:v12])
        {

          LOBYTE(v12) = 0;
          goto LABEL_39;
        }

        v37 = v12;
        v38 = v16;
      }

      axis = self->_axis;
      v39 = [(HKLensSpecification *)v6 axis];
      if (axis == v39)
      {
        v36 = v3;
      }

      else
      {
        v12 = [(HKLensSpecification *)v6 axis];
        if (!v12)
        {
          v30 = v37;
          v31 = v38;
          v29 = v39;
          goto LABEL_30;
        }

        v19 = self->_axis;
        v20 = [(HKLensSpecification *)v6 axis];
        v21 = v19;
        v22 = v20;
        if (![(HKQuantity *)v21 isEqual:v20])
        {

          LOBYTE(v12) = 0;
          v28 = v41 == v14;
          goto LABEL_33;
        }

        v33 = v22;
        v35 = v12;
        v36 = v3;
      }

      addPower = self->_addPower;
      v24 = [(HKLensSpecification *)v6 addPower];
      LOBYTE(v12) = addPower == v24;
      if (addPower != v24)
      {
        v25 = [(HKLensSpecification *)v6 addPower];
        if (v25)
        {
          v26 = v25;
          v12 = self->_addPower;
          v27 = [(HKLensSpecification *)v6 addPower];
          LOBYTE(v12) = [v12 isEqual:v27];

          if (axis != v39)
          {
          }

          v28 = v41 == v14;
          v3 = v36;
LABEL_33:
          v31 = v38;
          if (!v28)
          {

LABEL_37:
          }

LABEL_38:

LABEL_39:
          v11 = v40;
          if (sphere != v8)
          {
            goto LABEL_40;
          }

LABEL_41:

          goto LABEL_42;
        }
      }

      v29 = v39;
      if (axis == v39)
      {

        v3 = v36;
        v30 = v37;
        v31 = v38;
        if (v41 == v14)
        {
          goto LABEL_38;
        }

LABEL_36:

        goto LABEL_37;
      }

      v3 = v36;
      v30 = v37;
      v31 = v38;
LABEL_30:

      if (v41 == v14)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    LOBYTE(v12) = 0;
  }

LABEL_42:

  return v12;
}

@end