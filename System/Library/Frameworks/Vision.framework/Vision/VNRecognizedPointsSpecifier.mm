@interface VNRecognizedPointsSpecifier
- (BOOL)isEqual:(id)equal;
- (VNRecognizedPointsSpecifier)initWithCoder:(id)coder;
- (VNRecognizedPointsSpecifier)initWithOriginatingRequestSpecifier:(id)specifier allRecognizedPoints:(id)points;
- (id)populatedMLMultiArrayAndReturnError:(id *)error;
- (id)recognizedPointForKey:(id)key error:(id *)error;
- (id)recognizedPointsForGroupKey:(id)key error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedPointsSpecifier

- (VNRecognizedPointsSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Req"];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"AllPoints"];
  if (v10)
  {
    self = [(VNRecognizedPointsSpecifier *)self initWithOriginatingRequestSpecifier:v5 allRecognizedPoints:v10];
    selfCopy = self;
  }

  else
  {
    v12 = [VNError errorForDataUnavailableWithLocalizedDescription:@"recognized points are not available"];
    [coderCopy failWithError:v12];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  originatingRequestSpecifier = self->_originatingRequestSpecifier;
  coderCopy = coder;
  [coderCopy encodeObject:originatingRequestSpecifier forKey:@"Req"];
  [coderCopy encodeObject:self->_allRecognizedPoints forKey:@"AllPoints"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      originatingRequestSpecifier = self->_originatingRequestSpecifier;
      originatingRequestSpecifier = [(VNRecognizedPointsSpecifier *)v5 originatingRequestSpecifier];
      LODWORD(originatingRequestSpecifier) = [(VNRequestSpecifier *)originatingRequestSpecifier isEqual:originatingRequestSpecifier];

      if (originatingRequestSpecifier)
      {
        v8 = self->_allRecognizedPoints;
        v9 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)recognizedPointForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(NSDictionary *)self->_allRecognizedPoints objectForKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (error)
  {
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to locate point '%@'", keyCopy];
    *error = [VNError errorForInvalidArgumentWithLocalizedDescription:keyCopy];
  }

  return v8;
}

- (id)recognizedPointsForGroupKey:(id)key error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"VNIPOAll"])
  {
    v7 = self->_allRecognizedPoints;
  }

  else
  {
    pointKeyGroupLabelsMapping = [(VNRecognizedPointsSpecifier *)self pointKeyGroupLabelsMapping];
    v9 = [pointKeyGroupLabelsMapping objectForKey:keyCopy];
    if (v9)
    {
      v18 = pointKeyGroupLabelsMapping;
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [(NSDictionary *)self->_allRecognizedPoints objectForKeyedSubscript:v15];
            [(NSDictionary *)v7 setValue:v16 forKey:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      pointKeyGroupLabelsMapping = v18;
    }

    else if (error)
    {
      [VNError errorForInvalidArgument:keyCopy named:@"groupKey"];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)populatedMLMultiArrayAndReturnError:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (VNRecognizedPointsSpecifier)initWithOriginatingRequestSpecifier:(id)specifier allRecognizedPoints:(id)points
{
  specifierCopy = specifier;
  pointsCopy = points;
  v14.receiver = self;
  v14.super_class = VNRecognizedPointsSpecifier;
  v9 = [(VNRecognizedPointsSpecifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originatingRequestSpecifier, specifier);
    v11 = [pointsCopy copy];
    allRecognizedPoints = v10->_allRecognizedPoints;
    v10->_allRecognizedPoints = v11;
  }

  return v10;
}

@end