@interface EKUIViewHierarchyFromComponents
- (CGAffineTransform)ekui_affineTransform;
- (CGSize)ekui_size;
- (EKUIViewHierarchyFromComponents)initWithCoder:(id)a3;
- (EKUIViewHierarchyFromComponents)initWithSize:(CGSize)a3 verticalSizeClass:(int64_t)a4 horizontalSizeClass:(int64_t)a5 interfaceOrientation:(int64_t)a6 tintColor:(id)a7 affineTranform:(CGAffineTransform *)a8;
- (void)encodeWithCoder:(id)a3;
- (void)setEkui_affineTransform:(CGAffineTransform *)a3;
@end

@implementation EKUIViewHierarchyFromComponents

- (EKUIViewHierarchyFromComponents)initWithSize:(CGSize)a3 verticalSizeClass:(int64_t)a4 horizontalSizeClass:(int64_t)a5 interfaceOrientation:(int64_t)a6 tintColor:(id)a7 affineTranform:(CGAffineTransform *)a8
{
  height = a3.height;
  width = a3.width;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = EKUIViewHierarchyFromComponents;
  v17 = [(EKUIViewHierarchyFromComponents *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_ekui_size.width = width;
    v17->_ekui_size.height = height;
    v17->_ekui_width = width;
    v17->_ekui_height = height;
    ekui_rootViewHierarchy = v17->_ekui_rootViewHierarchy;
    v17->_ekui_rootViewHierarchy = 0;

    v18->_ekui_horizontalSizeClass = a5;
    v18->_ekui_verticalSizeClass = a4;
    v18->_ekui_interfaceOrientation = a6;
    objc_storeStrong(&v18->_ekui_tintColor, a7);
    v20 = *&a8->a;
    v21 = *&a8->tx;
    *&v18->_ekui_affineTransform.c = *&a8->c;
    *&v18->_ekui_affineTransform.tx = v21;
    *&v18->_ekui_affineTransform.a = v20;
  }

  return v18;
}

- (EKUIViewHierarchyFromComponents)initWithCoder:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = EKUIViewHierarchyFromComponents;
  v6 = [(EKUIViewHierarchyFromComponents *)&v36 init];
  if (v6)
  {
    [v5 decodeCGSizeForKey:@"size"];
    v6->_ekui_size.width = v7;
    v6->_ekui_size.height = v8;
    v6->_ekui_width = v7;
    v6->_ekui_height = v8;
    ekui_rootViewHierarchy = v6->_ekui_rootViewHierarchy;
    v6->_ekui_rootViewHierarchy = 0;

    v6->_ekui_verticalSizeClass = [v5 decodeIntegerForKey:@"verticalSizeClass"];
    v6->_ekui_horizontalSizeClass = [v5 decodeIntegerForKey:@"horizontalSizeClass"];
    v6->_ekui_interfaceOrientation = [v5 decodeIntegerForKey:@"interfaceOrientation"];
    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    ekui_tintColor = v6->_ekui_tintColor;
    v6->_ekui_tintColor = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v5 decodeObjectOfClasses:v14 forKey:@"affineTransform"];

    if ([v15 count] == 6)
    {
      v16 = [v15 objectAtIndexedSubscript:0];
      [v16 floatValue];
      v18 = v17;
      v19 = [v15 objectAtIndexedSubscript:1];
      [v19 floatValue];
      v21 = v20;
      v22 = [v15 objectAtIndexedSubscript:2];
      [v22 floatValue];
      v24 = v23;
      v25 = [v15 objectAtIndexedSubscript:3];
      [v25 floatValue];
      v27 = v26;
      v28 = [v15 objectAtIndexedSubscript:4];
      [v28 floatValue];
      v30 = v29;
      v31 = [v15 objectAtIndexedSubscript:5];
      [v31 floatValue];
      v33 = v32;

      v6->_ekui_affineTransform.a = v18;
      v6->_ekui_affineTransform.b = v21;
      v6->_ekui_affineTransform.c = v24;
      v6->_ekui_affineTransform.d = v27;
      v6->_ekui_affineTransform.tx = v30;
      v6->_ekui_affineTransform.ty = v33;
    }

    else
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:v6 file:@"EKUIViewHierarchy.m" lineNumber:135 description:@"affineTransform serialized array must only contain 6 elements"];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v14[6] = *MEMORY[0x1E69E9840];
  width = self->_ekui_size.width;
  height = self->_ekui_size.height;
  v6 = a3;
  [v6 encodeCGSize:@"size" forKey:{width, height}];
  [v6 encodeInteger:self->_ekui_verticalSizeClass forKey:@"verticalSizeClass"];
  [v6 encodeInteger:self->_ekui_horizontalSizeClass forKey:@"horizontalSizeClass"];
  [v6 encodeInteger:self->_ekui_interfaceOrientation forKey:@"interfaceOrientation"];
  [v6 encodeObject:self->_ekui_tintColor forKey:@"tintColor"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.a];
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.b];
  v14[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.c];
  v14[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.d];
  v14[3] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.tx];
  v14[4] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ekui_affineTransform.ty];
  v14[5] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:6];

  [v6 encodeObject:v13 forKey:@"affineTransform"];
}

- (CGSize)ekui_size
{
  width = self->_ekui_size.width;
  height = self->_ekui_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)ekui_affineTransform
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (void)setEkui_affineTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_ekui_affineTransform.c = *&a3->c;
  *&self->_ekui_affineTransform.tx = v4;
  *&self->_ekui_affineTransform.a = v3;
}

@end