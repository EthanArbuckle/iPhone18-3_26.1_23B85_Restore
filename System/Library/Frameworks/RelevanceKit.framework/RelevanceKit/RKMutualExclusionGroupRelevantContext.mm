@interface RKMutualExclusionGroupRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKMutualExclusionGroupRelevantContext)initWithCoder:(id)a3;
- (RKMutualExclusionGroupRelevantContext)initWithGroupIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RKMutualExclusionGroupRelevantContext

- (RKMutualExclusionGroupRelevantContext)initWithGroupIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RKMutualExclusionGroupRelevantContext;
  v5 = [(RKRelevantContext *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (RKMutualExclusionGroupRelevantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];

  v6 = [(RKMutualExclusionGroupRelevantContext *)self initWithGroupIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  [v4 encodeObject:v5 forKey:@"groupIdentifier"];
}

- (unint64_t)hash
{
  v2 = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RKMutualExclusionGroupRelevantContext *)v4 groupIdentifier];
      v6 = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  v4 = [v2 stringWithFormat:@"<mutual exclusion group: %@>", v3];

  return v4;
}

@end