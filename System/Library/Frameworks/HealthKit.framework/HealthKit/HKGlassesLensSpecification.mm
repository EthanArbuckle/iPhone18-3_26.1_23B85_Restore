@interface HKGlassesLensSpecification
- (BOOL)isEqual:(id)a3;
- (HKGlassesLensSpecification)initWithCoder:(id)a3;
- (HKGlassesLensSpecification)initWithSphere:(HKQuantity *)sphere cylinder:(HKQuantity *)cylinder axis:(HKQuantity *)axis addPower:(HKQuantity *)addPower vertexDistance:(HKQuantity *)vertexDistance prism:(HKVisionPrism *)prism farPupillaryDistance:(HKQuantity *)farPupillaryDistance nearPupillaryDistance:(HKQuantity *)nearPupillaryDistance;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HKLensSpecification *)self sphere];
      v8 = [(HKLensSpecification *)v6 sphere];
      if (v7 != v8)
      {
        v80 = [(HKLensSpecification *)v6 sphere];
        if (!v80)
        {
          v10 = 0;

          goto LABEL_100;
        }

        v3 = [(HKLensSpecification *)self sphere];
        v9 = [(HKLensSpecification *)v6 sphere];
        if (![v3 isEqual:v9])
        {
          v10 = 0;
LABEL_45:

LABEL_99:
          goto LABEL_100;
        }

        v77 = v9;
      }

      v11 = [(HKLensSpecification *)self cylinder];
      v12 = [(HKLensSpecification *)v6 cylinder];
      if (v11 != v12)
      {
        v13 = [(HKLensSpecification *)v6 cylinder];
        if (!v13)
        {

          v10 = 0;
          goto LABEL_97;
        }

        v74 = v13;
        v14 = [(HKLensSpecification *)self cylinder];
        v75 = [(HKLensSpecification *)v6 cylinder];
        v76 = v14;
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_43;
        }
      }

      v15 = [(HKLensSpecification *)self axis];
      [(HKLensSpecification *)v6 axis];
      v79 = v78 = v15;
      v16 = v15 == v79;
      v17 = v15 != v79;
      if (v16)
      {
        v71 = v17;
      }

      else
      {
        v18 = [(HKLensSpecification *)v6 axis];
        if (!v18)
        {

          v10 = 0;
          if (v11 != v12)
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
        v68 = v18;
        v19 = [(HKLensSpecification *)self axis];
        v69 = [(HKLensSpecification *)v6 axis];
        v70 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v20 = v78;
          goto LABEL_42;
        }
      }

      v21 = [(HKLensSpecification *)self addPower];
      v73 = [(HKLensSpecification *)v6 addPower];
      v67 = v21 != v73;
      if (v21 == v73)
      {
        v72 = v21;
        v66 = v3;
      }

      else
      {
        v22 = [(HKLensSpecification *)v6 addPower];
        if (!v22)
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

        v62 = v22;
        v23 = [(HKLensSpecification *)self addPower];
        v63 = [(HKLensSpecification *)v6 addPower];
        v64 = v23;
        v72 = v21;
        if (![v23 isEqual:?])
        {
          v10 = 0;
          goto LABEL_41;
        }

        v66 = v3;
      }

      vertexDistance = self->_vertexDistance;
      v65 = [(HKGlassesLensSpecification *)v6 vertexDistance];
      v61 = vertexDistance;
      v16 = vertexDistance == v65;
      v26 = vertexDistance != v65;
      if (!v16)
      {
        v27 = [(HKGlassesLensSpecification *)v6 vertexDistance];
        if (!v27)
        {

          v10 = 0;
          v3 = v66;
          if (v72 != v73)
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

            v24 = v11 != v12;
            if (v11 != v12)
            {
LABEL_94:

              if (!v24)
              {
LABEL_96:

LABEL_97:
                if (v7 != v8)
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

        v59 = v27;
        v28 = self->_vertexDistance;
        v60 = [(HKGlassesLensSpecification *)v6 vertexDistance];
        if (![(HKQuantity *)v28 isEqual:?])
        {
          v10 = 0;
          v29 = v65;
          goto LABEL_32;
        }
      }

      prism = self->_prism;
      v32 = [(HKGlassesLensSpecification *)v6 prism];
      v58 = prism;
      v16 = prism == v32;
      v33 = v32;
      if (!v16)
      {
        v34 = [(HKGlassesLensSpecification *)v6 prism];
        if (!v34)
        {

          v10 = 0;
          v29 = v65;
          if (v61 != v65)
          {
            goto LABEL_82;
          }

          goto LABEL_85;
        }

        v56 = v34;
        v35 = self->_prism;
        v55 = [(HKGlassesLensSpecification *)v6 prism];
        if (![(HKVisionPrism *)v35 isEqual:?])
        {
          v10 = 0;
          v36 = v33;
          v29 = v65;
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
      v57 = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
      if (farPupillaryDistance == v57)
      {
        v54 = farPupillaryDistance;
      }

      else
      {
        v39 = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
        if (!v39)
        {
          v36 = v33;
          v10 = 0;
          goto LABEL_79;
        }

        v53 = v39;
        v54 = farPupillaryDistance;
        v40 = self->_farPupillaryDistance;
        v41 = [(HKGlassesLensSpecification *)v6 farPupillaryDistance];
        if (![(HKQuantity *)v40 isEqual:v41])
        {

          v10 = 0;
          goto LABEL_66;
        }

        v50 = v41;
      }

      nearPupillaryDistance = self->_nearPupillaryDistance;
      v43 = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
      v10 = nearPupillaryDistance == v43;
      if (v10)
      {
      }

      else
      {
        v52 = v43;
        v44 = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
        if (v44)
        {
          v45 = self->_nearPupillaryDistance;
          v46 = v44;
          v47 = [(HKGlassesLensSpecification *)v6 nearPupillaryDistance];
          v10 = [(HKQuantity *)v45 isEqual:v47];

          if (v54 != v57)
          {
          }

LABEL_66:
          v3 = v66;
          if (v58 != v33)
          {
          }

          if (v61 != v65)
          {
          }

          v48 = v73;
          if (v72 != v73)
          {

            v48 = v73;
          }

          if (v78 != v79)
          {
          }

          if (v11 == v12)
          {
LABEL_44:

            v9 = v77;
            if (v7 != v8)
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

      if (v54 == v57)
      {

        v36 = v33;
        v29 = v65;
        if (v58 != v33)
        {
          goto LABEL_80;
        }

        goto LABEL_109;
      }

      v36 = v33;

LABEL_79:
      v29 = v65;

      if (v58 != v36)
      {
        goto LABEL_80;
      }

LABEL_109:

      if (v61 != v29)
      {
LABEL_32:

        v3 = v66;
        if (v72 == v73)
        {
          goto LABEL_90;
        }

LABEL_41:

        v20 = v78;
        if (v78 != v79)
        {
LABEL_42:

          if (v11 != v12)
          {
            goto LABEL_43;
          }

          goto LABEL_96;
        }

        goto LABEL_93;
      }

LABEL_87:

      v3 = v66;
      v37 = v67;
      if (v72 != v73)
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

  [v8 encodeObject:self->_vertexDistance forKey:@"VertexDistance"];
  [v8 encodeObject:self->_prism forKey:@"Prism"];
  [v8 encodeObject:self->_farPupillaryDistance forKey:@"FarPupillaryDistance"];
  [v8 encodeObject:self->_nearPupillaryDistance forKey:@"NearPupillaryDistance"];
}

- (HKGlassesLensSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sphere"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Cyclinder"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Axis"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AddPower"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VertexDistance"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Prism"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FarPupillaryDistance"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NearPupillaryDistance"];

  v13 = [(HKGlassesLensSpecification *)self initWithSphere:v5 cylinder:v6 axis:v7 addPower:v8 vertexDistance:v9 prism:v10 farPupillaryDistance:v11 nearPupillaryDistance:v12];
  return v13;
}

@end