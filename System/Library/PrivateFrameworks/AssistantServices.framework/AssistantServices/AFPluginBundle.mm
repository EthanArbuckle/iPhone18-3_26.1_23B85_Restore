@interface AFPluginBundle
- (AFPluginBundle)init;
- (BOOL)supportsClassIdentifier:(id)identifier forDomainKey:(id)key groupIdentifier:(id)groupIdentifier;
- (void)registerClassIdentifier:(id)identifier forDomain:(id)domain inGroup:(id)group;
@end

@implementation AFPluginBundle

- (BOOL)supportsClassIdentifier:(id)identifier forDomainKey:(id)key groupIdentifier:(id)groupIdentifier
{
  if (!identifier || !key || !groupIdentifier)
  {
    return 0;
  }

  groupIdentifierCopy = groupIdentifier;
  keyCopy = key;
  identifierCopy = identifier;
  classIdentifiers = [(AFPluginBundle *)self classIdentifiers];
  v12 = [classIdentifiers objectForKeyedSubscript:keyCopy];

  v13 = [v12 objectForKeyedSubscript:groupIdentifierCopy];

  LOBYTE(groupIdentifierCopy) = [v13 containsObject:identifierCopy];
  return groupIdentifierCopy;
}

- (void)registerClassIdentifier:(id)identifier forDomain:(id)domain inGroup:(id)group
{
  identifierCopy = identifier;
  domainCopy = domain;
  groupCopy = group;
  if (identifierCopy && domainCopy && groupCopy)
  {
    classIdentifiers = [(AFPluginBundle *)self classIdentifiers];
    dictionary = [classIdentifiers objectForKeyedSubscript:domainCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      classIdentifiers2 = [(AFPluginBundle *)self classIdentifiers];
      [classIdentifiers2 setObject:dictionary forKeyedSubscript:domainCopy];
    }

    array = [dictionary objectForKeyedSubscript:groupCopy];
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      [dictionary setObject:array forKeyedSubscript:groupCopy];
    }

    [array addObject:identifierCopy];
  }
}

- (AFPluginBundle)init
{
  v6.receiver = self;
  v6.super_class = AFPluginBundle;
  v2 = [(AFPluginBundle *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    classIdentifiers = v2->_classIdentifiers;
    v2->_classIdentifiers = dictionary;
  }

  return v2;
}

@end