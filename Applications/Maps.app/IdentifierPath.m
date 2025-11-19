@interface IdentifierPath
+ (IdentifierPath)identifierPathWithIdentifier:(id)a3;
+ (IdentifierPath)identifierPathWithIdentifiers:(id)a3;
+ (id)identifierPath;
- (BOOL)hasPrefix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IdentifierPath)init;
- (IdentifierPath)initWithIdentifiers:(id)a3;
- (NSString)visualDescription;
- (id)identifierPathByAppendingIdentifier:(id)a3;
- (id)identifierPathByPrependingIdentifier:(id)a3;
- (id)identifierPathByRemovingFirstIdentifier;
- (id)identifierPathByRemovingLastIdentifier;
- (unint64_t)hash;
@end

@implementation IdentifierPath

- (BOOL)hasPrefix:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 length], v6 <= -[NSArray count](self->_identifiers, "count")))
  {
    if ([v5 length])
    {
      v9 = 0;
      do
      {
        v10 = [v5 identifiers];
        v11 = [v10 objectAtIndexedSubscript:v9];
        v12 = [(NSArray *)self->_identifiers objectAtIndexedSubscript:v9];
        v7 = [v11 isEqualToString:v12];

        if ((v7 & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < [v5 length]);
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

- (id)identifierPathByRemovingFirstIdentifier
{
  if ([(NSArray *)self->_identifiers count])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(NSArray *)self->_identifiers subarrayWithRange:1, [(NSArray *)self->_identifiers count]- 1];
    v5 = [v3 initWithIdentifiers:v4];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)identifierPathByPrependingIdentifier:(id)a3
{
  identifiers = self->_identifiers;
  v5 = a3;
  v6 = [NSMutableArray arrayWithCapacity:[(NSArray *)identifiers count]+ 1];
  [v6 addObject:v5];

  [v6 addObjectsFromArray:self->_identifiers];
  v7 = [objc_alloc(objc_opt_class()) initWithIdentifiers:v6];

  return v7;
}

- (id)identifierPathByRemovingLastIdentifier
{
  if ([(NSArray *)self->_identifiers count])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(NSArray *)self->_identifiers subarrayWithRange:0, [(NSArray *)self->_identifiers count]- 1];
    v5 = [v3 initWithIdentifiers:v4];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)identifierPathByAppendingIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSArray *)self->_identifiers arrayByAddingObject:v4];

  v7 = [v5 initWithIdentifiers:v6];

  return v7;
}

- (NSString)visualDescription
{
  v2 = [(IdentifierPath *)self identifiers];
  v3 = [v2 componentsJoinedByString:@" - "];
  v4 = [NSString stringWithFormat:@"{%@}", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IdentifierPath *)v4 identifiers];
      v6 = [v5 isEqualToArray:self->_identifiers];
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
  v3 = 0;
  for (i = 0; ; ++i)
  {
    v5 = [(NSArray *)self->_identifiers count]> 7 ? 8 : [(NSArray *)self->_identifiers count];
    if (i >= v5)
    {
      break;
    }

    v6 = [(NSArray *)self->_identifiers objectAtIndexedSubscript:i];
    v3 = [v6 hash] ^ (2 * v3);
  }

  return v3;
}

- (IdentifierPath)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IdentifierPath;
  v5 = [(IdentifierPath *)&v9 init];
  if (v5)
  {
    v6 = [NSArray arrayWithArray:v4];
    identifiers = v5->_identifiers;
    v5->_identifiers = v6;
  }

  return v5;
}

- (IdentifierPath)init
{
  v6.receiver = self;
  v6.super_class = IdentifierPath;
  v2 = [(IdentifierPath *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifiers = v2->_identifiers;
    v2->_identifiers = &__NSArray0__struct;
  }

  return v3;
}

+ (IdentifierPath)identifierPathWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifiers:v4];

  return v5;
}

+ (IdentifierPath)identifierPathWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  v7 = [v5 initWithIdentifiers:v6];

  return v7;
}

+ (id)identifierPath
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end