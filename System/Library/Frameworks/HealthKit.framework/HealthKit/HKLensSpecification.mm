@interface HKLensSpecification
- (BOOL)isEqual:(id)equal;
- (id)_initWithSphere:(id)sphere cylinder:(id)cylinder axis:(id)axis addPower:(id)power;
- (id)description;
@end

@implementation HKLensSpecification

- (id)_initWithSphere:(id)sphere cylinder:(id)cylinder axis:(id)axis addPower:(id)power
{
  sphereCopy = sphere;
  cylinderCopy = cylinder;
  axisCopy = axis;
  powerCopy = power;
  v24.receiver = self;
  v24.super_class = HKLensSpecification;
  v14 = [(HKLensSpecification *)&v24 init];
  if (v14)
  {
    v15 = [sphereCopy copy];
    sphere = v14->_sphere;
    v14->_sphere = v15;

    v17 = [cylinderCopy copy];
    cylinder = v14->_cylinder;
    v14->_cylinder = v17;

    v19 = [axisCopy copy];
    axis = v14->_axis;
    v14->_axis = v19;

    v21 = [powerCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(cylinder3) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      sphere = self->_sphere;
      sphere = [(HKLensSpecification *)v6 sphere];
      if (sphere != sphere)
      {
        sphere2 = [(HKLensSpecification *)v6 sphere];
        if (!sphere2)
        {
          LOBYTE(cylinder3) = 0;
          goto LABEL_41;
        }

        v3 = sphere2;
        v10 = self->_sphere;
        sphere3 = [(HKLensSpecification *)v6 sphere];
        if (![(HKQuantity *)v10 isEqual:sphere3])
        {
          LOBYTE(cylinder3) = 0;
LABEL_40:

          goto LABEL_41;
        }

        v40 = sphere3;
      }

      cylinder = self->_cylinder;
      cylinder = [(HKLensSpecification *)v6 cylinder];
      v41 = cylinder;
      if (cylinder != cylinder)
      {
        cylinder2 = [(HKLensSpecification *)v6 cylinder];
        if (!cylinder2)
        {
          LOBYTE(cylinder3) = 0;
          goto LABEL_38;
        }

        v16 = cylinder2;
        v17 = self->_cylinder;
        cylinder3 = [(HKLensSpecification *)v6 cylinder];
        if (![(HKQuantity *)v17 isEqual:cylinder3])
        {

          LOBYTE(cylinder3) = 0;
          goto LABEL_39;
        }

        v37 = cylinder3;
        v38 = v16;
      }

      axis = self->_axis;
      axis = [(HKLensSpecification *)v6 axis];
      if (axis == axis)
      {
        v36 = v3;
      }

      else
      {
        cylinder3 = [(HKLensSpecification *)v6 axis];
        if (!cylinder3)
        {
          v30 = v37;
          v31 = v38;
          v29 = axis;
          goto LABEL_30;
        }

        v19 = self->_axis;
        axis2 = [(HKLensSpecification *)v6 axis];
        v21 = v19;
        v22 = axis2;
        if (![(HKQuantity *)v21 isEqual:axis2])
        {

          LOBYTE(cylinder3) = 0;
          v28 = v41 == cylinder;
          goto LABEL_33;
        }

        v33 = v22;
        v35 = cylinder3;
        v36 = v3;
      }

      addPower = self->_addPower;
      addPower = [(HKLensSpecification *)v6 addPower];
      LOBYTE(cylinder3) = addPower == addPower;
      if (addPower != addPower)
      {
        addPower2 = [(HKLensSpecification *)v6 addPower];
        if (addPower2)
        {
          v26 = addPower2;
          cylinder3 = self->_addPower;
          addPower3 = [(HKLensSpecification *)v6 addPower];
          LOBYTE(cylinder3) = [cylinder3 isEqual:addPower3];

          if (axis != axis)
          {
          }

          v28 = v41 == cylinder;
          v3 = v36;
LABEL_33:
          v31 = v38;
          if (!v28)
          {

LABEL_37:
          }

LABEL_38:

LABEL_39:
          sphere3 = v40;
          if (sphere != sphere)
          {
            goto LABEL_40;
          }

LABEL_41:

          goto LABEL_42;
        }
      }

      v29 = axis;
      if (axis == axis)
      {

        v3 = v36;
        v30 = v37;
        v31 = v38;
        if (v41 == cylinder)
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

      if (v41 == cylinder)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    LOBYTE(cylinder3) = 0;
  }

LABEL_42:

  return cylinder3;
}

@end