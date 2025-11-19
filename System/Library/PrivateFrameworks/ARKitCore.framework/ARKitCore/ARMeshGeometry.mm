@interface ARMeshGeometry
- (ARMeshGeometry)initWithCoder:(id)a3;
- (ARMeshGeometry)initWithVertices:(id)a3 faces:(id)a4;
- (ARMeshGeometry)initWithVertices:(id)a3 normals:(id)a4 faces:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARMeshGeometry

- (ARMeshGeometry)initWithVertices:(id)a3 normals:(id)a4 faces:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ARMeshGeometry;
  v12 = [(ARMeshGeometry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_vertices, a3);
    objc_storeStrong(&v13->_normals, a4);
    objc_storeStrong(&v13->_faces, a5);
  }

  return v13;
}

- (ARMeshGeometry)initWithVertices:(id)a3 faces:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ARMeshGeometry;
  v9 = [(ARMeshGeometry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vertices, a3);
    objc_storeStrong(&v10->_faces, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  vertices = self->_vertices;
  v5 = a3;
  [v5 encodeObject:vertices forKey:@"vertices"];
  [v5 encodeObject:self->_normals forKey:@"normals"];
  [v5 encodeObject:self->_faces forKey:@"faces"];
  [v5 encodeObject:self->_classification forKey:@"classification"];
  [v5 encodeObject:self->_colors forKey:@"colors"];
}

- (ARMeshGeometry)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ARMeshGeometry;
  v5 = [(ARMeshGeometry *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vertices"];
    vertices = v5->_vertices;
    v5->_vertices = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"normals"];
    normals = v5->_normals;
    v5->_normals = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faces"];
    faces = v5->_faces;
    v5->_faces = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classification"];
    classification = v5->_classification;
    v5->_classification = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      vertices = self->_vertices;
      v8 = [(ARMeshGeometry *)v6 vertices];
      if (vertices != v8)
      {
        v9 = self->_vertices;
        v3 = [(ARMeshGeometry *)v6 vertices];
        if (![(ARGeometrySource *)v9 isEqual:v3])
        {
          v10 = 0;
          goto LABEL_32;
        }
      }

      normals = self->_normals;
      v12 = [(ARMeshGeometry *)v6 normals];
      if (normals != v12)
      {
        v13 = self->_normals;
        v14 = [(ARMeshGeometry *)v6 normals];
        if (![(ARGeometrySource *)v13 isEqual:v14])
        {
          v10 = 0;
LABEL_30:

LABEL_31:
          if (vertices == v8)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:

          goto LABEL_33;
        }

        v35 = v14;
      }

      faces = self->_faces;
      v16 = [(ARMeshGeometry *)v6 faces];
      v36 = faces;
      if (faces == v16)
      {
        v33 = normals;
        v34 = vertices;
      }

      else
      {
        v17 = self->_faces;
        v32 = [(ARMeshGeometry *)v6 faces];
        if (![(ARGeometryElement *)v17 isEqual:?])
        {
          v10 = 0;
LABEL_28:

LABEL_29:
          v14 = v35;
          if (normals == v12)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v33 = normals;
        v34 = vertices;
      }

      classification = self->_classification;
      v19 = [(ARMeshGeometry *)v6 classification];
      if (classification == v19)
      {
        v31 = v3;
      }

      else
      {
        v20 = self->_classification;
        v21 = [(ARMeshGeometry *)v6 classification];
        v22 = v20;
        v23 = v21;
        if (![(ARGeometrySource *)v22 isEqual:v21])
        {
          v10 = 0;
          goto LABEL_26;
        }

        v30 = v23;
        v31 = v3;
      }

      colors = self->_colors;
      v25 = [(ARMeshGeometry *)v6 colors];
      v26 = v25;
      if (colors == v25)
      {

        v10 = 1;
      }

      else
      {
        v27 = self->_colors;
        v28 = [(ARMeshGeometry *)v6 colors];
        v10 = [(ARGeometrySource *)v27 isEqual:v28];
      }

      v23 = v30;
      v3 = v31;
      if (classification == v19)
      {
LABEL_27:

        normals = v33;
        vertices = v34;
        if (v36 == v16)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_26:

      goto LABEL_27;
    }

    v10 = 0;
  }

LABEL_34:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARMeshGeometry *)self vertices];
  [v6 appendFormat:@" vertices=%@", v7];

  v8 = [(ARMeshGeometry *)self normals];
  [v6 appendFormat:@" normals=%@", v8];

  v9 = [(ARMeshGeometry *)self faces];
  [v6 appendFormat:@" faces=%@", v9];

  v10 = [(ARMeshGeometry *)self classification];

  if (v10)
  {
    v11 = [(ARMeshGeometry *)self classification];
    [v6 appendFormat:@" classification=%@", v11];
  }

  v12 = [(ARMeshGeometry *)self colors];

  if (v12)
  {
    v13 = [(ARMeshGeometry *)self colors];
    [v6 appendFormat:@" colors=%@", v13];
  }

  [v6 appendString:@">"];

  return v6;
}

@end