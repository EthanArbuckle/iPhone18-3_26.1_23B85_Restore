@interface NSDictionary
- (id)dictionaryByAddingEntriesFromDictionary:(id)dictionary;
- (id)tui_valueForProperty:(id)property;
@end

@implementation NSDictionary

- (id)tui_valueForProperty:(id)property
{
  if (property)
  {
    v4 = [(NSDictionary *)self objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dictionaryByAddingEntriesFromDictionary:(id)dictionary
{
  selfCopy = self;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v6 = [(NSDictionary *)selfCopy mutableCopy];
    [(NSDictionary *)v6 addEntriesFromDictionary:dictionaryCopy];

    selfCopy = v6;
  }

  return selfCopy;
}

@end