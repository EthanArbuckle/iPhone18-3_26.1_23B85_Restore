@interface ADRapportLinkConnectionOptions
+ (id)newWithBuilder:(id)a3;
- (ADRapportLinkConnectionOptions)initWithBuilder:(id)a3;
- (ADRapportLinkConnectionOptions)initWithCoder:(id)a3;
- (ADRapportLinkConnectionOptions)initWithUsesOnDemandConnection:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADRapportLinkConnectionOptions

- (void)encodeWithCoder:(id)a3
{
  usesOnDemandConnection = self->_usesOnDemandConnection;
  v4 = a3;
  v5 = [NSNumber numberWithInteger:usesOnDemandConnection];
  [v4 encodeObject:v5 forKey:@"ADRapportLinkConnectionOptions::usesOnDemandConnection"];
}

- (ADRapportLinkConnectionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConnectionOptions::usesOnDemandConnection"];

  v6 = [v5 integerValue];

  return [(ADRapportLinkConnectionOptions *)self initWithUsesOnDemandConnection:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usesOnDemandConnection = self->_usesOnDemandConnection;
      v6 = usesOnDemandConnection == [(ADRapportLinkConnectionOptions *)v4 usesOnDemandConnection];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithInteger:self->_usesOnDemandConnection];
  v3 = [v2 hash];

  return v3;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkConnectionOptions;
  v5 = [(ADRapportLinkConnectionOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {usesOnDemandConnection = %lld}", v5, self->_usesOnDemandConnection];

  return v6;
}

- (ADRapportLinkConnectionOptions)initWithUsesOnDemandConnection:(int64_t)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100283C70;
  v4[3] = &unk_1005186E8;
  v4[4] = a3;
  return [(ADRapportLinkConnectionOptions *)self initWithBuilder:v4];
}

- (ADRapportLinkConnectionOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADRapportLinkConnectionOptions;
  v5 = [(ADRapportLinkConnectionOptions *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADRapportLinkConnectionOptionsMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADRapportLinkConnectionOptionsMutation *)v7 isDirty])
    {
      v6->_usesOnDemandConnection = [(_ADRapportLinkConnectionOptionsMutation *)v7 getUsesOnDemandConnection];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADRapportLinkConnectionOptionsMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADRapportLinkConnectionOptionsMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportLinkConnectionOptions);
      v6->_usesOnDemandConnection = [(_ADRapportLinkConnectionOptionsMutation *)v5 getUsesOnDemandConnection];
    }

    else
    {
      v6 = [(ADRapportLinkConnectionOptions *)self copy];
    }
  }

  else
  {
    v6 = [(ADRapportLinkConnectionOptions *)self copy];
  }

  return v6;
}

@end