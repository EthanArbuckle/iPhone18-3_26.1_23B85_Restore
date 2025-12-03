@interface HKGlassesLensSpecification
- (BOOL)isEqual:(id)equal;
- (HKGlassesLensSpecification)initWithCoder:(id)coder;
- (HKGlassesLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower vertexDistance:(HKQuantity *)vertexDistance prism:(HKVisionPrism *)prism farPupillaryDistance:(HKQuantity *)farPupillaryDistance nearPupillaryDistance:(HKQuantity *)nearPupillaryDistance;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKGlassesLensSpecification

- (HKGlassesLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower vertexDistance:(HKQuantity *)vertexDistance prism:(HKVisionPrism *)prism farPupillaryDistance:(HKQuantity *)farPupillaryDistance nearPupillaryDistance:(HKQuantity *)nearPupillaryDistance
{
  v16 = vertexDistance;
  v17 = prism;
  v18 = farPupillaryDistance;
  v19 = nearPupillaryDistance;
  v30.receiver = self;
  v30.super_class = HKGlassesLensSpecification;
  v20 = [(HKLensSpecification *)&v30 _initWithSphere:sphere cylinder:cylinder axis:axis addPower:addPower];
  if (v20)
  {
    v21 = [(HKQuantity *)v16 copy];
    v22 = v20->_vertexDistance;
    v20->_vertexDistance = v21;

    v23 = [(HKVisionPrism *)v17 copy];
    v24 = v20->_prism;
    v20->_prism = v23;

    v25 = [(HKQuantity *)v18 copy];
    v26 = v20->_farPupillaryDistance;
    v20->_farPupillaryDistance = v25;

    v27 = [(HKQuantity *)v19 copy];
    v28 = v20->_nearPupillaryDistance;
    v20->_nearPupillaryDistance = v27;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  vertexDistance = self->_vertexDistance;
  farPupillaryDistance = self->_farPupillaryDistance;
  v8 = [v3 stringWithFormat:@"<%@:%p Vertex=%@, Prism=%@, FarPupillaryDistance=%@, NearPupillaryDistance=%@>", v5, self, vertexDistance, self->_prism, farPupillaryDistance, self->_nearPupillaryDistance];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      sphere = [(HKLensSpecification *)self sphere];
      sphere2 = [(HKLensSpecification *)v6 sphere];
      if (sphere != sphere2)
      {
        sphere3 = [(HKLensSpecification *)v6 sphere];
        if (!sphere3)
        {
          v10 = 0;

          goto LABEL_100;
        }

        sphere4 = [(HKLensSpecification *)self sphere];
        sphere5 = [(HKLensSpecification *)v6 sphere];
        if (![sphere4 isEqual:sphere5])
        {
          v10 = 0;
LABEL_45:

LABEL_99:
          goto LABEL_100;
        }

        v77 = sphere5;
      }

      cylinder = [(HKLensSpecification *)self cylinder];
      cylinder2 = [(HKLensSpecification *)v6 cylinder];
      if (cylinder != cylinder2)
      {
        cylinder3 = [(HKLensSpecification *)v6 cylinder];
        if (!cylinder3)
        {

          v10 = 0;
          goto LABEL_97;
        }

        v74 = cylinder3;
        cylinder4 = [(HKLensSpecification *)self cylinder];
        cylinder5 = [(HKLensSpecification *)v6 cylinder];
        v76 = cylinder4;
        if (![cylinder4 isEqual:?])
        {
          v10 = 0;
          goto LABEL_43;
        }
      }

      axis = [(HKLensSpecification *)self axis];
      [(HKLensSpecification *)v6 axis];
      v79 = v78 = axis;
      v16 = axis == v79;
      v17 = axis != v79;
      if (v16)
      {
        v71 = v17;
      }

      else
      {
        axis2 = [(HKLensSpecification *)v6 axis];
        if (!axis2)
        {

          v10 = 0;
          if (cylinder != cylinder2)
          {
            LOBYTE(v24) = 1;
            goto LABEL_94;
          }

          v24 = 0;
LABEL_102:
          if (!v24)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

        v71 = v17;
        v68 = axis2;
        axis3 = [(HKLensSpecification *)self axis];
        axis4 = [(HKLensSpecification *)v6 axis];
        v70 = axis3;
        if (![axis3 isEqual:?])
        {
          v10 = 0;
          v20 = v78;
          goto LABEL_42;
        }
      }

      addPower = [(HKLensSpecification *)self addPower];
      addPower2 = [(HKLensSpecification *)v6 addPower];
      v67 = addPower != addPower2;
      if (addPower == addPower2)
      {
        v72 = addPower;
        v66 = sphere4;
      }

      else
      {
        addPower3 = [(HKLensSpecification *)v6 addPower];
        if (!addPower3)
        {

          v10 = 0;
          if (v78 != v79)
          {
            LOBYTE(v30) = 1;
            goto LABEL_91;
          }

          v30 = 0;
          goto LABEL_104;
        }

        v62 = addPower3;
        addPower4 = [(HKLensSpecification *)self addPower];
        addPower5 = [(HKLensSpecification *)v6 addPower];
        v64 = addPower4;
        v72 = addPower;
        if (![addPower4 isEqual:?])
        {
          v10 = 0;
          goto LABEL_41;
        }

        v66 = sphere4;
      }

      vertexDistance = self->_vertexDistance;
      vertexDistance = [(HKGlassesLensSpecification *)v6 vertexDistance];
      v61 = vertexDistance;
      v16 = vertexDistance == vertexDistance;
      v26 = vertexDistance != vertexDistance;
      if (!v16)
      {
        vertexDistance2 = [(HKGlassesLensSpecification *)v6 vertexDistance];
        if (!vertexDistance2)
        {

          v10 = 0;
          sphere4 = v66;
          if (v72 != addPower2)
          {
            LOBYTE(v37) = 1;
            goto LABEL_88;
          }

          v37 = 0;
LABEL_106:
          if (!v37)
          {
LABEL_90:

            v30 = v71;
            if (v78 != v79)
            {
LABEL_91:

              v20 = v78;
              if (!v30)
              {
                goto LABEL_93;
              }

              goto LABEL_92;
            }

LABEL_104:
            v20 = v78;
            if (v30)
            {
LABEL_92:
            }

LABEL_93:

            v24 = cylinder != cylinder2;
            if (cylinder != cylinder2)
            {
LABEL_94:

              if (!v24)
              {
LABEL_96:

LABEL_97:
                if (sphere != sphere2)
                {

                  goto LABEL_99;
                }

                goto LABEL_100;
              }

LABEL_95:

              goto LABEL_96;
            }

            goto LABEL_102;
          }

LABEL_89:

          goto LABEL_90;
        }

        v59 = vertexDistance2;
        v28 = self->_vertexDistance;
        vertexDistance3 = [(HKGlassesLensSpecification *)v6 vertexDistance];
        if (![(HKQuantity *)v28 isEqual:?])
        {
          v10 = 0;
          v29 = vertexDistance;
          goto LABEL_32;
        }
      }

      prism = self->_prism;
      prism = [(HKGlassesLensSpecification *)v6 prism];
      v58 = prism;
      v16 = prism == prism;
      v33 = prism;
      if (!v16)
      {
        prism2 = [(HKGlassesLensSpecification *)v6 prism];
        if (!prism2)
        {

          v10 = 0;
          v29 = vertexDistance;
          if (v61 != vertexDistance)
          {
            goto LABEL_82;
          }

          goto LABEL_85;
        }

        v56 = prism2;
        v35 = self->_prism;
        prism3 = [(HKGlassesLensSpecification *)v6 prism];
        if (![(HKVisionPrism *)v35 isEqual:?])
        {
          v10 = 0;
          v36 = v33;
          v29 = vertexDistance;
LABEL_80:

          if (v61 != v29)
          {
            LOBYTE(v26) = 1;
LABEL_82:

            if (!v26)
            {
              goto LABEL_87;
            }

LABEL_86:

            goto LABEL_87;
          }

          v26 = 0;
LABEL_85:
          if (!v26)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }
      }

      farPupillaryDistance = self->_farPupillaryDistance;
      farPupillaryDistance = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
      if (farPupillaryDistance == farPupillaryDistance)
      {
        v54 = farPupillaryDistance;
      }

      else
      {
        farPupillaryDistance2 = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
        if (!farPupillaryDistance2)
        {
          v36 = v33;
          v10 = 0;
          goto LABEL_79;
        }

        v53 = farPupillaryDistance2;
        v54 = farPupillaryDistance;
        v40 = self->_farPupillaryDistance;
        farPupillaryDistance3 = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
        if (![(HKQuantity *)v40 isEqual:farPupillaryDistance3])
        {

          v10 = 0;
          goto LABEL_66;
        }

        v50 = farPupillaryDistance3;
      }

      nearPupillaryDistance = self->_nearPupillaryDistance;
      nearPupillaryDistance = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
      v10 = nearPupillaryDistance == nearPupillaryDistance;
      if (v10)
      {
      }

      else
      {
        v52 = nearPupillaryDistance;
        nearPupillaryDistance2 = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
        if (nearPupillaryDistance2)
        {
          v45 = self->_nearPupillaryDistance;
          v46 = nearPupillaryDistance2;
          nearPupillaryDistance3 = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
          v10 = [(HKQuantity *)v45 isEqual:nearPupillaryDistance3];

          if (v54 != farPupillaryDistance)
          {
          }

LABEL_66:
          sphere4 = v66;
          if (v58 != v33)
          {
          }

          if (v61 != vertexDistance)
          {
          }

          v48 = addPower2;
          if (v72 != addPower2)
          {

            v48 = addPower2;
          }

          if (v78 != v79)
          {
          }

          if (cylinder == cylinder2)
          {
LABEL_44:

            sphere5 = v77;
            if (sphere != sphere2)
            {
              goto LABEL_45;
            }

LABEL_100:

            goto LABEL_101;
          }

LABEL_43:

          goto LABEL_44;
        }
      }

      if (v54 == farPupillaryDistance)
      {

        v36 = v33;
        v29 = vertexDistance;
        if (v58 != v33)
        {
          goto LABEL_80;
        }

        goto LABEL_109;
      }

      v36 = v33;

LABEL_79:
      v29 = vertexDistance;

      if (v58 != v36)
      {
        goto LABEL_80;
      }

LABEL_109:

      if (v61 != v29)
      {
LABEL_32:

        sphere4 = v66;
        if (v72 == addPower2)
        {
          goto LABEL_90;
        }

LABEL_41:

        v20 = v78;
        if (v78 != v79)
        {
LABEL_42:

          if (cylinder != cylinder2)
          {
            goto LABEL_43;
          }

          goto LABEL_96;
        }

        goto LABEL_93;
      }

LABEL_87:

      sphere4 = v66;
      v37 = v67;
      if (v72 != addPower2)
      {
LABEL_88:

        if (!v37)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      goto LABEL_106;
    }

    v10 = 0;
  }

LABEL_101:

  return v10;
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

  [coderCopy encodeObject:self->_vertexDistance forKey:@"VertexDistance"];
  [coderCopy encodeObject:self->_prism forKey:@"Prism"];
  [coderCopy encodeObject:self->_farPupillaryDistance forKey:@"FarPupillaryDistance"];
  [coderCopy encodeObject:self->_nearPupillaryDistance forKey:@"NearPupillaryDistance"];
}

- (HKGlassesLensSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sphere"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Cyclinder"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Axis"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AddPower"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VertexDistance"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Prism"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FarPupillaryDistance"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NearPupillaryDistance"];

  v13 = [(HKGlassesLensSpecification *)self initWithSphere:v5 cylinder:v6 axis:v7 addPower:v8 vertexDistance:v9 prism:v10 farPupillaryDistance:v11 nearPupillaryDistance:v12];
  return v13;
}

@end