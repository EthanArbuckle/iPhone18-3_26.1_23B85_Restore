@interface VNDetectionprint
+ (id)knownTensorKeysForRequestRevision:(unint64_t)revision error:(id *)error;
+ (id)tensorShapeForKey:(id)key error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VNDetectionprint)initWithCoder:(id)coder;
- (VNDetectionprint)initWithTensorsDictionary:(id)dictionary originatingRequestSpecifier:(id)specifier;
- (VNDetectionprint)initWithTensorsDictionary:(id)dictionary requestRevision:(unint64_t)revision;
- (id)tensorForKey:(id)key error:(id *)error;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNDetectionprint

- (unint64_t)requestRevision
{
  originatingRequestSpecifier = [(VNDetectionprint *)self originatingRequestSpecifier];
  requestRevision = [originatingRequestSpecifier requestRevision];

  return requestRevision;
}

- (VNDetectionprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tensors"];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  if (v10)
  {
    goto LABEL_3;
  }

  if ([coderCopy containsValueForKey:@"request"])
  {
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v15 = 0;
  v10 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(coderCopy error:{"decodeIntegerForKey:", @"requestRevision", &v15}];
  v14 = v15;
  v11 = v14;
  if (!v10)
  {
    [coderCopy failWithError:v14];
    selfCopy = 0;
    goto LABEL_4;
  }

LABEL_3:
  self = [(VNDetectionprint *)self initWithTensorsDictionary:v9 originatingRequestSpecifier:v10];
  v11 = v10;
  selfCopy = self;
LABEL_4:

LABEL_7:
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_tensorsDictionary forKey:@"tensors"];
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"request"];
}

- (VNDetectionprint)initWithTensorsDictionary:(id)dictionary requestRevision:(unint64_t)revision
{
  dictionaryCopy = dictionary;
  v12 = 0;
  v7 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:revision error:&v12];
  v8 = v12;
  localizedDescription = [v8 localizedDescription];
  [VNError VNAssert:v7 != 0 log:localizedDescription];

  v10 = [(VNDetectionprint *)self initWithTensorsDictionary:dictionaryCopy originatingRequestSpecifier:v7];
  return v10;
}

- (VNDetectionprint)initWithTensorsDictionary:(id)dictionary originatingRequestSpecifier:(id)specifier
{
  dictionaryCopy = dictionary;
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = VNDetectionprint;
  v8 = [(VNDetectionprint *)&v12 init];
  if (v8)
  {
    v9 = [dictionaryCopy copy];
    tensorsDictionary = v8->_tensorsDictionary;
    v8->_tensorsDictionary = v9;

    objc_storeStrong(&v8->_originatingRequestSpecifier, specifier);
  }

  return v8;
}

- (id)tensorForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(NSDictionary *)self->_tensorsDictionary objectForKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (error)
  {
    *error = _unavailableTensorKeyError(keyCopy);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      originatingRequestSpecifier = [(VNDetectionprint *)self originatingRequestSpecifier];
      originatingRequestSpecifier2 = [(VNDetectionprint *)v5 originatingRequestSpecifier];
      v8 = [originatingRequestSpecifier isEqual:originatingRequestSpecifier2];

      v9 = (v8 & 1) != 0 && [(NSDictionary *)self->_tensorsDictionary isEqualToDictionary:v5->_tensorsDictionary];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)tensorShapeForKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (+[VNDetectionprint tensorShapeForKey:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectionprint tensorShapeForKey:error:]::onceToken, &__block_literal_global_20201);
  }

  v6 = [+[VNDetectionprint tensorShapeForKey:error:]::tensorShapes objectForKeyedSubscript:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (error)
  {
    *error = _unavailableTensorKeyError(keyCopy);
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

+ (id)knownTensorKeysForRequestRevision:(unint64_t)revision error:(id *)error
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (revision == 2)
  {
    v11[0] = @"VNDetectionprintTensorKeyStride8FeatureMap";
    v11[1] = @"VNDetectionprintTensorKeyStride16FeatureMap";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v11;
    goto LABEL_5;
  }

  if (revision == 1)
  {
    v12[0] = @"VNDetectionprintTensorKeyMixed2";
    v12[1] = @"VNDetectionprintTensorKeyMixed6";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v12;
LABEL_5:
    v6 = [v4 arrayWithObjects:v5 count:2];
    goto LABEL_9;
  }

  if (error)
  {
    v8 = [VNError errorForUnsupportedRevision:revision ofRequestClass:objc_opt_class()];
    v9 = v8;
    v6 = 0;
    *error = v8;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

@end