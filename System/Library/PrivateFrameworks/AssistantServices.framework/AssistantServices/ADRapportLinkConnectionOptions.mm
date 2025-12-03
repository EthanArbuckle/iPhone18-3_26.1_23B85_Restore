@interface ADRapportLinkConnectionOptions
+ (id)newWithBuilder:(id)builder;
- (ADRapportLinkConnectionOptions)initWithBuilder:(id)builder;
- (ADRapportLinkConnectionOptions)initWithCoder:(id)coder;
- (ADRapportLinkConnectionOptions)initWithUsesOnDemandConnection:(int64_t)connection;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADRapportLinkConnectionOptions

- (void)encodeWithCoder:(id)coder
{
  usesOnDemandConnection = self->_usesOnDemandConnection;
  coderCopy = coder;
  v5 = [NSNumber numberWithInteger:usesOnDemandConnection];
  [coderCopy encodeObject:v5 forKey:@"ADRapportLinkConnectionOptions::usesOnDemandConnection"];
}

- (ADRapportLinkConnectionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportLinkConnectionOptions::usesOnDemandConnection"];

  integerValue = [v5 integerValue];

  return [(ADRapportLinkConnectionOptions *)self initWithUsesOnDemandConnection:integerValue];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usesOnDemandConnection = self->_usesOnDemandConnection;
      v6 = usesOnDemandConnection == [(ADRapportLinkConnectionOptions *)equalCopy usesOnDemandConnection];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportLinkConnectionOptions;
  v5 = [(ADRapportLinkConnectionOptions *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {usesOnDemandConnection = %lld}", v5, self->_usesOnDemandConnection];

  return v6;
}

- (ADRapportLinkConnectionOptions)initWithUsesOnDemandConnection:(int64_t)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100283C70;
  v4[3] = &unk_1005186E8;
  v4[4] = connection;
  return [(ADRapportLinkConnectionOptions *)self initWithBuilder:v4];
}

- (ADRapportLinkConnectionOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADRapportLinkConnectionOptions;
  v5 = [(ADRapportLinkConnectionOptions *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADRapportLinkConnectionOptionsMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADRapportLinkConnectionOptionsMutation *)v7 isDirty])
    {
      v6->_usesOnDemandConnection = [(_ADRapportLinkConnectionOptionsMutation *)v7 getUsesOnDemandConnection];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADRapportLinkConnectionOptionsMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
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