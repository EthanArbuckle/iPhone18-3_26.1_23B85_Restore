@interface MKServerFormattedStringParameters
- ($14769AC32134521FBB471D523793ADA4)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServerFormattedStringParameters:(id)parameters;
- (MKServerFormattedStringParameters)initWithCoder:(id)coder;
- (MKServerFormattedStringParameters)initWithInstructionsDistanceDetailLevel:(int64_t)level variableOverrides:(id)overrides;
- (MKServerFormattedStringParameters)initWithOptions:(id *)options variableOverrides:(id)overrides;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKServerFormattedStringParameters

- ($14769AC32134521FBB471D523793ADA4)options
{
  v3 = *&self[1].var0;
  *&retstr->var0 = *&self->var2;
  *&retstr->var2 = v3;
  return self;
}

- (unint64_t)hash
{
  [(MKServerFormattedStringParameters *)self options];
  v3 = MNFormattedStringOptionsHash();
  variableOverrides = [(MKServerFormattedStringParameters *)self variableOverrides];
  v5 = [variableOverrides hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToServerFormattedStringParameters:(id)parameters
{
  parametersCopy = parameters;
  [(MKServerFormattedStringParameters *)self options];
  if (parametersCopy)
  {
    [parametersCopy options];
  }

  if (MNFormattedStringOptionsIsEqual())
  {
    variableOverrides = [(MKServerFormattedStringParameters *)self variableOverrides];
    variableOverrides2 = [parametersCopy variableOverrides];
    if (variableOverrides | variableOverrides2)
    {
      v7 = [variableOverrides isEqual:variableOverrides2];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKServerFormattedStringParameters *)self isEqualToServerFormattedStringParameters:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DEF0];
  coderCopy = coder;
  v5 = [v4 dataWithBytes:&self->_options length:32];
  [coderCopy encodeObject:v5 forKey:@"options"];

  [coderCopy encodeObject:self->_variableOverrides forKey:@"variableOverrides"];
}

- (MKServerFormattedStringParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MKServerFormattedStringParameters;
  v5 = [(MKServerFormattedStringParameters *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    [v6 getBytes:&v5->_options length:32];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"variableOverrides"];
    v12 = [v11 copy];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v12;
  }

  return v5;
}

- (MKServerFormattedStringParameters)initWithInstructionsDistanceDetailLevel:(int64_t)level variableOverrides:(id)overrides
{
  overridesCopy = overrides;
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  +[MKTransitItemReferenceDateUpdater referenceDateAsTimeInterval];
  v11[0] = 1;
  memset(&v11[1], 0, 7);
  levelCopy = level;
  v13 = 0;
  v14 = IsRightToLeft;
  v15 = 0;
  v16 = 0;
  v17 = v8;
  v9 = [(MKServerFormattedStringParameters *)self initWithOptions:v11 variableOverrides:overridesCopy];

  return v9;
}

- (MKServerFormattedStringParameters)initWithOptions:(id *)options variableOverrides:(id)overrides
{
  overridesCopy = overrides;
  v13.receiver = self;
  v13.super_class = MKServerFormattedStringParameters;
  v7 = [(MKServerFormattedStringParameters *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&options->var2;
    *&v7->_options.abbreviatedUnits = *&options->var0;
    *&v7->_options.spoken = v9;
    v10 = [overridesCopy copy];
    variableOverrides = v8->_variableOverrides;
    v8->_variableOverrides = v10;
  }

  return v8;
}

@end