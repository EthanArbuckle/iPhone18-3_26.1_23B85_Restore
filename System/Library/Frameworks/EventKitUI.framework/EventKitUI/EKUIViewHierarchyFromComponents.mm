@interface EKUIViewHierarchyFromComponents
- (CGAffineTransform)ekui_affineTransform;
- (CGSize)ekui_size;
- (EKUIViewHierarchyFromComponents)initWithCoder:(id)coder;
- (EKUIViewHierarchyFromComponents)initWithSize:(CGSize)size verticalSizeClass:(int64_t)class horizontalSizeClass:(int64_t)sizeClass interfaceOrientation:(int64_t)orientation tintColor:(id)color affineTranform:(CGAffineTransform *)tranform;
- (void)encodeWithCoder:(id)coder;
- (void)setEkui_affineTransform:(CGAffineTransform *)transform;
@end

@implementation EKUIViewHierarchyFromComponents

- (EKUIViewHierarchyFromComponents)initWithSize:(CGSize)size verticalSizeClass:(int64_t)class horizontalSizeClass:(int64_t)sizeClass interfaceOrientation:(int64_t)orientation tintColor:(id)color affineTranform:(CGAffineTransform *)tranform
{
  height = size.height;
  width = size.width;
  colorCopy = color;
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

    v18->_ekui_horizontalSizeClass = sizeClass;
    v18->_ekui_verticalSizeClass = class;
    v18->_ekui_interfaceOrientation = orientation;
    objc_storeStrong(&v18->_ekui_tintColor, color);
    v20 = *&tranform->a;
    v21 = *&tranform->tx;
    *&v18->_ekui_affineTransform.c = *&tranform->c;
    *&v18->_ekui_affineTransform.tx = v21;
    *&v18->_ekui_affineTransform.a = v20;
  }

  return v18;
}

- (EKUIViewHierarchyFromComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = EKUIViewHierarchyFromComponents;
  v6 = [(EKUIViewHierarchyFromComponents *)&v36 init];
  if (v6)
  {
    [coderCopy decodeCGSizeForKey:@"size"];
    v6->_ekui_size.width = v7;
    v6->_ekui_size.height = v8;
    v6->_ekui_width = v7;
    v6->_ekui_height = v8;
    ekui_rootViewHierarchy = v6->_ekui_rootViewHierarchy;
    v6->_ekui_rootViewHierarchy = 0;

    v6->_ekui_verticalSizeClass = [coderCopy decodeIntegerForKey:@"verticalSizeClass"];
    v6->_ekui_horizontalSizeClass = [coderCopy decodeIntegerForKey:@"horizontalSizeClass"];
    v6->_ekui_interfaceOrientation = [coderCopy decodeIntegerForKey:@"interfaceOrientation"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    ekui_tintColor = v6->_ekui_tintColor;
    v6->_ekui_tintColor = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"affineTransform"];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"EKUIViewHierarchy.m" lineNumber:135 description:@"affineTransform serialized array must only contain 6 elements"];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v14[6] = *MEMORY[0x1E69E9840];
  width = self->_ekui_size.width;
  height = self->_ekui_size.height;
  coderCopy = coder;
  [coderCopy encodeCGSize:@"size" forKey:{width, height}];
  [coderCopy encodeInteger:self->_ekui_verticalSizeClass forKey:@"verticalSizeClass"];
  [coderCopy encodeInteger:self->_ekui_horizontalSizeClass forKey:@"horizontalSizeClass"];
  [coderCopy encodeInteger:self->_ekui_interfaceOrientation forKey:@"interfaceOrientation"];
  [coderCopy encodeObject:self->_ekui_tintColor forKey:@"tintColor"];
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

  [coderCopy encodeObject:v13 forKey:@"affineTransform"];
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

- (void)setEkui_affineTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_ekui_affineTransform.c = *&transform->c;
  *&self->_ekui_affineTransform.tx = v4;
  *&self->_ekui_affineTransform.a = v3;
}

@end