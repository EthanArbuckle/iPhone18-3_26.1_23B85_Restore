@interface MKServerFormattedStringParameters
- ($14769AC32134521FBB471D523793ADA4)options;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServerFormattedStringParameters:(id)a3;
- (MKServerFormattedStringParameters)initWithCoder:(id)a3;
- (MKServerFormattedStringParameters)initWithInstructionsDistanceDetailLevel:(int64_t)a3 variableOverrides:(id)a4;
- (MKServerFormattedStringParameters)initWithOptions:(id *)a3 variableOverrides:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(MKServerFormattedStringParameters *)self variableOverrides];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToServerFormattedStringParameters:(id)a3
{
  v4 = a3;
  [(MKServerFormattedStringParameters *)self options];
  if (v4)
  {
    [v4 options];
  }

  if (MNFormattedStringOptionsIsEqual())
  {
    v5 = [(MKServerFormattedStringParameters *)self variableOverrides];
    v6 = [v4 variableOverrides];
    if (v5 | v6)
    {
      v7 = [v5 isEqual:v6];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKServerFormattedStringParameters *)self isEqualToServerFormattedStringParameters:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v6 = a3;
  v5 = [v4 dataWithBytes:&self->_options length:32];
  [v6 encodeObject:v5 forKey:@"options"];

  [v6 encodeObject:self->_variableOverrides forKey:@"variableOverrides"];
}

- (MKServerFormattedStringParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MKServerFormattedStringParameters;
  v5 = [(MKServerFormattedStringParameters *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    [v6 getBytes:&v5->_options length:32];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"variableOverrides"];
    v12 = [v11 copy];
    variableOverrides = v5->_variableOverrides;
    v5->_variableOverrides = v12;
  }

  return v5;
}

- (MKServerFormattedStringParameters)initWithInstructionsDistanceDetailLevel:(int64_t)a3 variableOverrides:(id)a4
{
  v6 = a4;
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  +[MKTransitItemReferenceDateUpdater referenceDateAsTimeInterval];
  v11[0] = 1;
  memset(&v11[1], 0, 7);
  v12 = a3;
  v13 = 0;
  v14 = IsRightToLeft;
  v15 = 0;
  v16 = 0;
  v17 = v8;
  v9 = [(MKServerFormattedStringParameters *)self initWithOptions:v11 variableOverrides:v6];

  return v9;
}

- (MKServerFormattedStringParameters)initWithOptions:(id *)a3 variableOverrides:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = MKServerFormattedStringParameters;
  v7 = [(MKServerFormattedStringParameters *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&a3->var2;
    *&v7->_options.abbreviatedUnits = *&a3->var0;
    *&v7->_options.spoken = v9;
    v10 = [v6 copy];
    variableOverrides = v8->_variableOverrides;
    v8->_variableOverrides = v10;
  }

  return v8;
}

@end