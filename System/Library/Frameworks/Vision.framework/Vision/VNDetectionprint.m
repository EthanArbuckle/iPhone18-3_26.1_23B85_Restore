@interface VNDetectionprint
+ (id)knownTensorKeysForRequestRevision:(unint64_t)a3 error:(id *)a4;
+ (id)tensorShapeForKey:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (VNDetectionprint)initWithCoder:(id)a3;
- (VNDetectionprint)initWithTensorsDictionary:(id)a3 originatingRequestSpecifier:(id)a4;
- (VNDetectionprint)initWithTensorsDictionary:(id)a3 requestRevision:(unint64_t)a4;
- (id)tensorForKey:(id)a3 error:(id *)a4;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNDetectionprint

- (unint64_t)requestRevision
{
  v2 = [(VNDetectionprint *)self originatingRequestSpecifier];
  v3 = [v2 requestRevision];

  return v3;
}

- (VNDetectionprint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tensors"];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  if (v10)
  {
    goto LABEL_3;
  }

  if ([v4 containsValueForKey:@"request"])
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v10 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(v4 error:{"decodeIntegerForKey:", @"requestRevision", &v15}];
  v14 = v15;
  v11 = v14;
  if (!v10)
  {
    [v4 failWithError:v14];
    v12 = 0;
    goto LABEL_4;
  }

LABEL_3:
  self = [(VNDetectionprint *)self initWithTensorsDictionary:v9 originatingRequestSpecifier:v10];
  v11 = v10;
  v12 = self;
LABEL_4:

LABEL_7:
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_tensorsDictionary forKey:@"tensors"];
  [v4 encodeObject:self->_originatingRequestSpecifier forKey:@"request"];
}

- (VNDetectionprint)initWithTensorsDictionary:(id)a3 requestRevision:(unint64_t)a4
{
  v6 = a3;
  v12 = 0;
  v7 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:a4 error:&v12];
  v8 = v12;
  v9 = [v8 localizedDescription];
  [VNError VNAssert:v7 != 0 log:v9];

  v10 = [(VNDetectionprint *)self initWithTensorsDictionary:v6 originatingRequestSpecifier:v7];
  return v10;
}

- (VNDetectionprint)initWithTensorsDictionary:(id)a3 originatingRequestSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = VNDetectionprint;
  v8 = [(VNDetectionprint *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    tensorsDictionary = v8->_tensorsDictionary;
    v8->_tensorsDictionary = v9;

    objc_storeStrong(&v8->_originatingRequestSpecifier, a4);
  }

  return v8;
}

- (id)tensorForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_tensorsDictionary objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    *a4 = _unavailableTensorKeyError(v6);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNDetectionprint *)self originatingRequestSpecifier];
      v7 = [(VNDetectionprint *)v5 originatingRequestSpecifier];
      v8 = [v6 isEqual:v7];

      v9 = (v8 & 1) != 0 && [(NSDictionary *)self->_tensorsDictionary isEqualToDictionary:v5->_tensorsDictionary];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)tensorShapeForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (+[VNDetectionprint tensorShapeForKey:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectionprint tensorShapeForKey:error:]::onceToken, &__block_literal_global_20201);
  }

  v6 = [+[VNDetectionprint tensorShapeForKey:error:]::tensorShapes objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (a4)
  {
    *a4 = _unavailableTensorKeyError(v5);
  }

  return v7;
}

void __44__VNDetectionprint_tensorShapeForKey_error___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"VNDetectionprintTensorKeyMixed2";
  v0 = [objc_alloc(MEMORY[0x1E69DF900]) initWithBatchNumber:1 channels:288 height:35 width:35];
  v7[0] = v0;
  v6[1] = @"VNDetectionprintTensorKeyMixed6";
  v1 = [objc_alloc(MEMORY[0x1E69DF900]) initWithBatchNumber:1 channels:768 height:17 width:17];
  v7[1] = v1;
  v6[2] = @"VNDetectionprintTensorKeyStride8FeatureMap";
  v2 = [objc_alloc(MEMORY[0x1E69DF900]) initWithBatchNumber:1 channels:128 height:45 width:45];
  v7[2] = v2;
  v6[3] = @"VNDetectionprintTensorKeyStride16FeatureMap";
  v3 = [objc_alloc(MEMORY[0x1E69DF900]) initWithBatchNumber:1 channels:168 height:23 width:23];
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = +[VNDetectionprint tensorShapeForKey:error:]::tensorShapes;
  +[VNDetectionprint tensorShapeForKey:error:]::tensorShapes = v4;
}

+ (id)knownTensorKeysForRequestRevision:(unint64_t)a3 error:(id *)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v11[0] = @"VNDetectionprintTensorKeyStride8FeatureMap";
    v11[1] = @"VNDetectionprintTensorKeyStride16FeatureMap";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v11;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12[0] = @"VNDetectionprintTensorKeyMixed2";
    v12[1] = @"VNDetectionprintTensorKeyMixed6";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v12;
LABEL_5:
    v6 = [v4 arrayWithObjects:v5 count:2];
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = [VNError errorForUnsupportedRevision:a3 ofRequestClass:objc_opt_class()];
    v9 = v8;
    v6 = 0;
    *a4 = v8;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

@end