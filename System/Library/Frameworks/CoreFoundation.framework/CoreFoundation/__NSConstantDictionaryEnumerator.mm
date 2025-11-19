@interface __NSConstantDictionaryEnumerator
- (__NSConstantDictionaryEnumerator)initWithConstantDictionary:(id)a3 enumerateKeys:(BOOL)a4;
- (id)nextObject;
@end

@implementation __NSConstantDictionaryEnumerator

- (__NSConstantDictionaryEnumerator)initWithConstantDictionary:(id)a3 enumerateKeys:(BOOL)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = __NSConstantDictionaryEnumerator;
  result = [(__NSConstantDictionaryEnumerator *)&v8 init];
  result->_underlyingDictionary = a3;
  result->_currentIndex = 0;
  result->_isForKeys = a4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)nextObject
{
  underlyingDictionary = self->_underlyingDictionary;
  currentIndex = self->_currentIndex;
  if (currentIndex >= underlyingDictionary->_count)
  {
    return 0;
  }

  if (self->_isForKeys)
  {
    v4 = &OBJC_IVAR___NSConstantDictionary__keys;
  }

  else
  {
    v4 = &OBJC_IVAR___NSConstantDictionary__objects;
  }

  v5 = (*(&underlyingDictionary->super.super.isa + *v4))[currentIndex];
  self->_currentIndex = currentIndex + 1;
  return v5;
}

@end