@interface MPSectionedIdentifierListPosition
+ (id)positionForHeadOfSection:(id)section;
+ (id)positionForItem:(id)item inSection:(id)section;
+ (id)positionForTailOfSection:(id)section;
- (BOOL)isEqual:(id)equal;
- (MPSectionedIdentifierListPosition)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSectionedIdentifierListPosition

- (void)encodeWithCoder:(id)coder
{
  entryType = self->_entryType;
  coderCopy = coder;
  [coderCopy encodeInteger:entryType forKey:@"t"];
  [coderCopy encodeObject:self->_sectionIdentifier forKey:@"sid"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"iid"];
}

- (MPSectionedIdentifierListPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPSectionedIdentifierListPosition;
  v5 = [(MPSectionedIdentifierListPosition *)&v11 init];
  if (v5)
  {
    v5->_entryType = [coderCopy decodeIntegerForKey:@"t"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iid"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_entryType == v5->_entryType)
      {
        sectionIdentifier = v5->_sectionIdentifier;
        v8 = self->_sectionIdentifier;
        v9 = v8;
        if (v8 == sectionIdentifier)
        {
        }

        else
        {
          v10 = [(NSString *)v8 isEqual:sectionIdentifier];

          if (!v10)
          {
            goto LABEL_6;
          }
        }

        itemIdentifier = self->_itemIdentifier;
        v13 = v6->_itemIdentifier;
        v14 = itemIdentifier;
        v15 = v14;
        if (v14 == v13)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v14 isEqual:v13];
        }

        goto LABEL_14;
      }

LABEL_6:
      v11 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  entryType = self->_entryType;
  v4 = [(NSString *)self->_sectionIdentifier hash]^ entryType;
  return v4 ^ [(NSString *)self->_itemIdentifier hash];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p> ", objc_opt_class(), self];
  v4 = v3;
  entryType = self->_entryType;
  switch(entryType)
  {
    case 2:
      [v3 appendFormat:@"Head: %@", self->_sectionIdentifier, v8];
      break;
    case 4:
      [v3 appendFormat:@"Tail: %@", self->_sectionIdentifier, v8];
      break;
    case 3:
      [v3 appendFormat:@"Item: %@ - %@", self->_sectionIdentifier, self->_itemIdentifier];
      break;
  }

  v6 = [v4 copy];

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPSectionedIdentifierListPosition;
  return [(MPSectionedIdentifierListPosition *)&v3 init];
}

+ (id)positionForTailOfSection:(id)section
{
  sectionCopy = section;
  _init = [[MPSectionedIdentifierListPosition alloc] _init];
  _init[3] = 4;
  v5 = _init[1];
  _init[1] = sectionCopy;

  return _init;
}

+ (id)positionForHeadOfSection:(id)section
{
  sectionCopy = section;
  _init = [[MPSectionedIdentifierListPosition alloc] _init];
  _init[3] = 2;
  v5 = _init[1];
  _init[1] = sectionCopy;

  return _init;
}

+ (id)positionForItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  _init = [[MPSectionedIdentifierListPosition alloc] _init];
  _init[3] = 3;
  v8 = _init[1];
  _init[1] = sectionCopy;
  v9 = sectionCopy;

  v10 = _init[2];
  _init[2] = itemCopy;

  return _init;
}

@end