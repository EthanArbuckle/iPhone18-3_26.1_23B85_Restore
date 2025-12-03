@interface NSSimpleAttributeDictionaryEnumerator
- (NSSimpleAttributeDictionaryEnumerator)initWithAttributeDictionary:(id)dictionary;
- (id)nextObject;
- (void)dealloc;
@end

@implementation NSSimpleAttributeDictionaryEnumerator

- (NSSimpleAttributeDictionaryEnumerator)initWithAttributeDictionary:(id)dictionary
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSSimpleAttributeDictionaryEnumerator;
  v4 = [(NSSimpleAttributeDictionaryEnumerator *)&v6 init];
  if (v4)
  {
    v4->dictionary = dictionary;
    v4->nextElement = 0;
  }

  return v4;
}

- (id)nextObject
{
  nextElement = self->nextElement;
  dictionary = self->dictionary;
  if (nextElement == dictionary->numElements)
  {
    return 0;
  }

  self->nextElement = nextElement + 1;
  return dictionary->elements[nextElement].key;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSimpleAttributeDictionaryEnumerator;
  [(NSSimpleAttributeDictionaryEnumerator *)&v3 dealloc];
}

@end