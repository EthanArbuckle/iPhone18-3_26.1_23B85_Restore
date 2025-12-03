@interface APOrderedMutableDictionary
+ (id)dictionary;
+ (id)dictionaryWithCapacity:(unint64_t)capacity;
- (APOrderedMutableDictionary)init;
- (APOrderedMutableDictionary)initWithCapacity:(unint64_t)capacity;
- (NSArray)allKeys;
- (id)firstObject;
- (id)lastObject;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation APOrderedMutableDictionary

- (APOrderedMutableDictionary)init
{
  v8.receiver = self;
  v8.super_class = APOrderedMutableDictionary;
  v2 = [(APOrderedMutableDictionary *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    mutableOrderedSet = v2->_mutableOrderedSet;
    v2->_mutableOrderedSet = v5;
  }

  return v2;
}

- (APOrderedMutableDictionary)initWithCapacity:(unint64_t)capacity
{
  v14.receiver = self;
  v14.super_class = APOrderedMutableDictionary;
  v6 = [(APOrderedMutableDictionary *)&v14 init];
  if (v6)
  {
    v7 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v4, capacity, v5);
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;

    v11 = objc_msgSend_orderedSetWithCapacity_(MEMORY[0x1E695DFA0], v9, capacity, v10);
    mutableOrderedSet = v6->_mutableOrderedSet;
    v6->_mutableOrderedSet = v11;
  }

  return v6;
}

+ (id)dictionary
{
  v2 = objc_alloc_init(APOrderedMutableDictionary);

  return v2;
}

+ (id)dictionaryWithCapacity:(unint64_t)capacity
{
  v4 = [APOrderedMutableDictionary alloc];
  v7 = objc_msgSend_initWithCapacity_(v4, v5, capacity, v6);

  return v7;
}

- (NSArray)allKeys
{
  v4 = objc_msgSend_array(self->_mutableOrderedSet, a2, v2, v3);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    if (valueCopy)
    {
      objc_msgSend_setObject_forKey_(self, valueCopy, valueCopy, keyCopy);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(self, 0, keyCopy, v6);
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object && key)
  {
    mutableOrderedSet = self->_mutableOrderedSet;
    keyCopy = key;
    objectCopy = object;
    v10 = objc_msgSend_indexOfObject_(mutableOrderedSet, v8, keyCopy, v9);
    v13 = self->_mutableOrderedSet;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_addObject_(self->_mutableOrderedSet, v11, keyCopy, v12);
    }

    else
    {
      v15 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v11, v10, v12);
      v19 = objc_msgSend_count(self->_mutableOrderedSet, v16, v17, v18);
      objc_msgSend_moveObjectsAtIndexes_toIndex_(v13, v20, v15, v19 - 1);
    }

    objc_msgSend_setObject_forKey_(self->_dictionary, v14, objectCopy, keyCopy);
  }
}

- (void)removeObjectForKey:(id)key
{
  if (key)
  {
    mutableOrderedSet = self->_mutableOrderedSet;
    keyCopy = key;
    objc_msgSend_removeObject_(mutableOrderedSet, v5, keyCopy, v6);
    objc_msgSend_removeObjectForKey_(self->_dictionary, v7, keyCopy, v8);
  }
}

- (id)firstObject
{
  v7 = objc_msgSend_firstObject(self->_mutableOrderedSet, a2, v2, v3);
  if (v7)
  {
    v8 = objc_msgSend_objectForKey_(self->_dictionary, v5, v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)lastObject
{
  v7 = objc_msgSend_lastObject(self->_mutableOrderedSet, a2, v2, v3);
  if (v7)
  {
    v8 = objc_msgSend_objectForKey_(self->_dictionary, v5, v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end