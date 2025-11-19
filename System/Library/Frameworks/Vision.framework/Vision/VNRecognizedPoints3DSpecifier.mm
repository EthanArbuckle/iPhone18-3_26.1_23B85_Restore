@interface VNRecognizedPoints3DSpecifier
- (BOOL)isEqual:(id)a3;
- (VNRecognizedPoints3DSpecifier)initWithCoder:(id)a3;
- (VNRecognizedPoints3DSpecifier)initWithOriginatingRequestSpecifier:(id)a3 allRecognizedPoints:(id)a4;
- (id)recognizedPointForKey:(id)a3 error:(id *)a4;
- (id)recognizedPointsForGroupKey:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedPoints3DSpecifier

- (id)recognizedPointForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_allRecognizedPoints objectForKey:v6];
  v8 = v7;
  if (!a4 || v7)
  {
    v10 = v7;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to locate point '%@'", v6];
    *a4 = [VNError errorForInvalidArgumentWithLocalizedDescription:v9];

    v10 = 0;
  }

  return v10;
}

- (VNRecognizedPoints3DSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Req"];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"AllPoints3D"];
  if (v10)
  {
    self = [(VNRecognizedPoints3DSpecifier *)self initWithOriginatingRequestSpecifier:v5 allRecognizedPoints:v10];
    v11 = self;
  }

  else
  {
    v12 = [VNError errorForDataUnavailableWithLocalizedDescription:@"recognized points are not available"];
    [v4 failWithError:v12];

    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  originatingRequestSpecifier = self->_originatingRequestSpecifier;
  v5 = a3;
  [v5 encodeObject:originatingRequestSpecifier forKey:@"Req"];
  [v5 encodeObject:self->_allRecognizedPoints forKey:@"AllPoints3D"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      originatingRequestSpecifier = self->_originatingRequestSpecifier;
      v7 = [(VNRecognizedPoints3DSpecifier *)v5 originatingRequestSpecifier];
      LODWORD(originatingRequestSpecifier) = [(VNRequestSpecifier *)originatingRequestSpecifier isEqual:v7];

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

- (id)recognizedPointsForGroupKey:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"VNIPOAll"])
  {
    v7 = self->_allRecognizedPoints;
  }

  else
  {
    v8 = [(VNRecognizedPoints3DSpecifier *)self pointKeyGroupLabelsMapping];
    v9 = [v8 objectForKey:v6];
    if (v9)
    {
      v18 = v8;
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

      v8 = v18;
    }

    else if (a4)
    {
      [VNError errorForInvalidArgument:v6 named:@"groupKey"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (VNRecognizedPoints3DSpecifier)initWithOriginatingRequestSpecifier:(id)a3 allRecognizedPoints:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VNRecognizedPoints3DSpecifier;
  v9 = [(VNRecognizedPoints3DSpecifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originatingRequestSpecifier, a3);
    v11 = [v8 copy];
    allRecognizedPoints = v10->_allRecognizedPoints;
    v10->_allRecognizedPoints = v11;
  }

  return v10;
}

@end