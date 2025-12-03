@interface RKMutualExclusionGroupRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKMutualExclusionGroupRelevantContext)initWithCoder:(id)coder;
- (RKMutualExclusionGroupRelevantContext)initWithGroupIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RKMutualExclusionGroupRelevantContext

- (RKMutualExclusionGroupRelevantContext)initWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = RKMutualExclusionGroupRelevantContext;
  _init = [(RKRelevantContext *)&v9 _init];
  if (_init)
  {
    v6 = [identifierCopy copy];
    groupIdentifier = _init->_groupIdentifier;
    _init->_groupIdentifier = v6;
  }

  return _init;
}

- (RKMutualExclusionGroupRelevantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];

  v6 = [(RKMutualExclusionGroupRelevantContext *)self initWithGroupIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupIdentifier = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];
}

- (unint64_t)hash
{
  groupIdentifier = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  v3 = [groupIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      groupIdentifier = [(RKMutualExclusionGroupRelevantContext *)equalCopy groupIdentifier];
      groupIdentifier2 = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
      v7 = [groupIdentifier isEqual:groupIdentifier2];
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
  groupIdentifier = [(RKMutualExclusionGroupRelevantContext *)self groupIdentifier];
  v4 = [v2 stringWithFormat:@"<mutual exclusion group: %@>", groupIdentifier];

  return v4;
}

@end