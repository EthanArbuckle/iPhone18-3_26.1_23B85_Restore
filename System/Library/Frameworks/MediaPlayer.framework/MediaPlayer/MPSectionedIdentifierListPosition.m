@interface MPSectionedIdentifierListPosition
+ (id)positionForHeadOfSection:(id)a3;
+ (id)positionForItem:(id)a3 inSection:(id)a4;
+ (id)positionForTailOfSection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPSectionedIdentifierListPosition)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSectionedIdentifierListPosition

- (void)encodeWithCoder:(id)a3
{
  entryType = self->_entryType;
  v5 = a3;
  [v5 encodeInteger:entryType forKey:@"t"];
  [v5 encodeObject:self->_sectionIdentifier forKey:@"sid"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"iid"];
}

- (MPSectionedIdentifierListPosition)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPSectionedIdentifierListPosition;
  v5 = [(MPSectionedIdentifierListPosition *)&v11 init];
  if (v5)
  {
    v5->_entryType = [v4 decodeIntegerForKey:@"t"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iid"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)positionForTailOfSection:(id)a3
{
  v3 = a3;
  v4 = [[MPSectionedIdentifierListPosition alloc] _init];
  v4[3] = 4;
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

+ (id)positionForHeadOfSection:(id)a3
{
  v3 = a3;
  v4 = [[MPSectionedIdentifierListPosition alloc] _init];
  v4[3] = 2;
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

+ (id)positionForItem:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPSectionedIdentifierListPosition alloc] _init];
  v7[3] = 3;
  v8 = v7[1];
  v7[1] = v6;
  v9 = v6;

  v10 = v7[2];
  v7[2] = v5;

  return v7;
}

@end