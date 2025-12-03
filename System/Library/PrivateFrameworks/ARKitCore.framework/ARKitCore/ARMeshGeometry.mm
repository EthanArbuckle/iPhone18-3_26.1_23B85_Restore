@interface ARMeshGeometry
- (ARMeshGeometry)initWithCoder:(id)coder;
- (ARMeshGeometry)initWithVertices:(id)vertices faces:(id)faces;
- (ARMeshGeometry)initWithVertices:(id)vertices normals:(id)normals faces:(id)faces;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARMeshGeometry

- (ARMeshGeometry)initWithVertices:(id)vertices normals:(id)normals faces:(id)faces
{
  verticesCopy = vertices;
  normalsCopy = normals;
  facesCopy = faces;
  v15.receiver = self;
  v15.super_class = ARMeshGeometry;
  v12 = [(ARMeshGeometry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_vertices, vertices);
    objc_storeStrong(&v13->_normals, normals);
    objc_storeStrong(&v13->_faces, faces);
  }

  return v13;
}

- (ARMeshGeometry)initWithVertices:(id)vertices faces:(id)faces
{
  verticesCopy = vertices;
  facesCopy = faces;
  v12.receiver = self;
  v12.super_class = ARMeshGeometry;
  v9 = [(ARMeshGeometry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vertices, vertices);
    objc_storeStrong(&v10->_faces, faces);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  vertices = self->_vertices;
  coderCopy = coder;
  [coderCopy encodeObject:vertices forKey:@"vertices"];
  [coderCopy encodeObject:self->_normals forKey:@"normals"];
  [coderCopy encodeObject:self->_faces forKey:@"faces"];
  [coderCopy encodeObject:self->_classification forKey:@"classification"];
  [coderCopy encodeObject:self->_colors forKey:@"colors"];
}

- (ARMeshGeometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ARMeshGeometry;
  v5 = [(ARMeshGeometry *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vertices"];
    vertices = v5->_vertices;
    v5->_vertices = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normals"];
    normals = v5->_normals;
    v5->_normals = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faces"];
    faces = v5->_faces;
    v5->_faces = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classification"];
    classification = v5->_classification;
    v5->_classification = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colors"];
    colors = v5->_colors;
    v5->_colors = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      vertices = self->_vertices;
      vertices = [(ARMeshGeometry *)v6 vertices];
      if (vertices != vertices)
      {
        v9 = self->_vertices;
        vertices2 = [(ARMeshGeometry *)v6 vertices];
        if (![(ARGeometrySource *)v9 isEqual:vertices2])
        {
          v10 = 0;
          goto LABEL_32;
        }
      }

      normals = self->_normals;
      normals = [(ARMeshGeometry *)v6 normals];
      if (normals != normals)
      {
        v13 = self->_normals;
        normals2 = [(ARMeshGeometry *)v6 normals];
        if (![(ARGeometrySource *)v13 isEqual:normals2])
        {
          v10 = 0;
LABEL_30:

LABEL_31:
          if (vertices == vertices)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:

          goto LABEL_33;
        }

        v35 = normals2;
      }

      faces = self->_faces;
      faces = [(ARMeshGeometry *)v6 faces];
      v36 = faces;
      if (faces == faces)
      {
        v33 = normals;
        v34 = vertices;
      }

      else
      {
        v17 = self->_faces;
        faces2 = [(ARMeshGeometry *)v6 faces];
        if (![(ARGeometryElement *)v17 isEqual:?])
        {
          v10 = 0;
LABEL_28:

LABEL_29:
          normals2 = v35;
          if (normals == normals)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v33 = normals;
        v34 = vertices;
      }

      classification = self->_classification;
      classification = [(ARMeshGeometry *)v6 classification];
      if (classification == classification)
      {
        v31 = vertices2;
      }

      else
      {
        v20 = self->_classification;
        classification2 = [(ARMeshGeometry *)v6 classification];
        v22 = v20;
        v23 = classification2;
        if (![(ARGeometrySource *)v22 isEqual:classification2])
        {
          v10 = 0;
          goto LABEL_26;
        }

        v30 = v23;
        v31 = vertices2;
      }

      colors = self->_colors;
      colors = [(ARMeshGeometry *)v6 colors];
      v26 = colors;
      if (colors == colors)
      {

        v10 = 1;
      }

      else
      {
        v27 = self->_colors;
        colors2 = [(ARMeshGeometry *)v6 colors];
        v10 = [(ARGeometrySource *)v27 isEqual:colors2];
      }

      v23 = v30;
      vertices2 = v31;
      if (classification == classification)
      {
LABEL_27:

        normals = v33;
        vertices = v34;
        if (v36 == faces)
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

  vertices = [(ARMeshGeometry *)self vertices];
  [v6 appendFormat:@" vertices=%@", vertices];

  normals = [(ARMeshGeometry *)self normals];
  [v6 appendFormat:@" normals=%@", normals];

  faces = [(ARMeshGeometry *)self faces];
  [v6 appendFormat:@" faces=%@", faces];

  classification = [(ARMeshGeometry *)self classification];

  if (classification)
  {
    classification2 = [(ARMeshGeometry *)self classification];
    [v6 appendFormat:@" classification=%@", classification2];
  }

  colors = [(ARMeshGeometry *)self colors];

  if (colors)
  {
    colors2 = [(ARMeshGeometry *)self colors];
    [v6 appendFormat:@" colors=%@", colors2];
  }

  [v6 appendString:@">"];

  return v6;
}

@end