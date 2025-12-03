@interface NSSortDescriptor
+ (NSSortDescriptor)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr;
+ (NSSortDescriptor)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending selector:(SEL)selector;
+ (NSSortDescriptor)sortDescriptorWithKey:(id)key ascending:(BOOL)ascending reverseNullOrder:(BOOL)order;
+ (void)initialize;
- (BOOL)_isEqualToSortDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (NSComparator)comparator;
- (NSComparisonResult)compareObject:(id)object1 toObject:(id)object2;
- (NSSortDescriptor)initWithCoder:(NSCoder *)coder;
- (NSSortDescriptor)initWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr;
- (NSSortDescriptor)initWithKey:(id)key ascending:(BOOL)ascending reverseNullOrder:(BOOL)order selector:(SEL)selector;
- (NSString)key;
- (SEL)selector;
- (id)_selectorName;
- (id)description;
- (id)replacementObjectForPortCoder:(id)coder;
- (id)reversedSortDescriptor;
- (void)_setKey:(id)key;
- (void)_setSelectorName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setReverseNullOrder:(BOOL)order;
@end

@implementation NSSortDescriptor

- (SEL)selector
{
  if ((self->_sortDescriptorFlags & 2) != 0)
  {
    return 0;
  }

  p_selector = &self->_selector;
  selector = self->_selector;
  if (selector)
  {
    return selector;
  }

  selectorOrBlock = self->_selectorOrBlock;
  if (selectorOrBlock)
  {
    v5 = NSSelectorFromString(selectorOrBlock);
    if (v5)
    {
      selector = v5;
    }

    else
    {
      selector = 0;
    }

    *p_selector = selector;
  }

  if (selector)
  {
    return selector;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  v2 = self->_key;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSortDescriptor;
  [(NSSortDescriptor *)&v3 dealloc];
}

- (NSComparator)comparator
{
  if ((self->_sortDescriptorFlags & 2) != 0)
  {
    return self->_selectorOrBlock;
  }

  else
  {
    return 0;
  }
}

+ (void)initialize
{
  if (NSSortDescriptor == self)
  {
    _NSInternalCompareObject = class_getMethodImplementation(self, sel_compareObject_toObject_);
  }
}

- (id)_selectorName
{
  if ((self->_sortDescriptorFlags & 2) != 0)
  {
    return 0;
  }

  selector = self->_selector;
  if (selector)
  {
    return NSStringFromSelector(selector);
  }

  else
  {
    return self->_selectorOrBlock;
  }
}

- (id)reversedSortDescriptor
{
  sortDescriptorFlags = self->_sortDescriptorFlags;
  v4 = objc_opt_class();
  v5 = [(NSSortDescriptor *)self key];
  ascending = [(NSSortDescriptor *)self ascending];
  if ((sortDescriptorFlags & 2) != 0)
  {
    comparator = [(NSSortDescriptor *)self comparator];

    return [v4 sortDescriptorWithKey:v5 ascending:!ascending comparator:comparator];
  }

  else
  {
    selector = [(NSSortDescriptor *)self selector];

    return [v4 sortDescriptorWithKey:v5 ascending:!ascending selector:selector];
  }
}

- (id)description
{
  sortDescriptorFlags = self->_sortDescriptorFlags;
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = &stru_1EEEFDF90;
  }

  if ([(NSSortDescriptor *)self ascending])
  {
    v5 = @"ascending";
  }

  else
  {
    v5 = @"descending";
  }

  reverseNullOrder = [(NSSortDescriptor *)self reverseNullOrder];
  if ((sortDescriptorFlags & 2) != 0)
  {
    if (reverseNullOrder)
    {
      ascending = [(NSSortDescriptor *)self ascending];
      v9 = @"NULLS FIRST";
      if (ascending)
      {
        v9 = @"NULLS LAST";
      }
    }

    else
    {
      v9 = @"NO";
    }

    return [NSString stringWithFormat:@"(%@, %@, %@, BLOCK(%p))", key, v5, v9, self->_selectorOrBlock];
  }

  else
  {
    if (reverseNullOrder)
    {
      if ([(NSSortDescriptor *)self ascending])
      {
        v7 = @"NULLS LAST";
      }

      else
      {
        v7 = @"NULLS FIRST";
      }
    }

    else
    {
      v7 = @"NO";
    }

    return [NSString stringWithFormat:@"(%@, %@, %@, %@)", key, v5, v7, [(NSSortDescriptor *)self _selectorName]];
  }
}

+ (NSSortDescriptor)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending selector:(SEL)selector
{
  v5 = [[self alloc] initWithKey:key ascending:ascending selector:selector];

  return v5;
}

+ (NSSortDescriptor)sortDescriptorWithKey:(id)key ascending:(BOOL)ascending reverseNullOrder:(BOOL)order
{
  v5 = [[self alloc] initWithKey:key ascending:ascending reverseNullOrder:order];

  return v5;
}

+ (NSSortDescriptor)sortDescriptorWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr
{
  v5 = [[self alloc] initWithKey:key ascending:ascending comparator:cmptr];

  return v5;
}

- (NSSortDescriptor)initWithKey:(id)key ascending:(BOOL)ascending reverseNullOrder:(BOOL)order selector:(SEL)selector
{
  orderCopy = order;
  ascendingCopy = ascending;
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSSortDescriptor;
  v10 = [(NSSortDescriptor *)&v15 init];
  if (v10)
  {
    v11 = [key length];
    if (v11)
    {
      v11 = [key copy];
    }

    v12 = 8;
    if (!orderCopy)
    {
      v12 = 0;
    }

    v10->_sortDescriptorFlags |= v12 | ascendingCopy;
    v10->_key = v11;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = sel_compare_;
    }

    v10->_selector = selectorCopy;
    v10->_selectorOrBlock = 0;
  }

  return v10;
}

- (NSSortDescriptor)initWithKey:(NSString *)key ascending:(BOOL)ascending comparator:(NSComparator)cmptr
{
  v6 = ascending;
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSSortDescriptor;
  v8 = [(NSSortDescriptor *)&v11 init];
  if (v8)
  {
    v9 = [(NSString *)key length];
    if (v9)
    {
      v9 = [(NSString *)key copy];
    }

    v8->_sortDescriptorFlags |= v6 | 2;
    v8->_key = v9;
    v8->_selector = 0;
    v8->_selectorOrBlock = [cmptr copy];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  if ((self->_sortDescriptorFlags & 2) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSortDescriptor using Blocks cannot be encoded." userInfo:0]);
  }

  ascending = [(NSSortDescriptor *)self ascending];
  v11 = ascending;
  reverseNullOrder = [(NSSortDescriptor *)self reverseNullOrder];
  _selectorName = [(NSSortDescriptor *)self _selectorName];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  key = self->_key;
  if (allowsKeyedCoding)
  {
    if (key)
    {
      [coder encodeObject:key forKey:@"NSKey"];
    }

    [coder encodeBool:ascending forKey:@"NSAscending"];
    if (_selectorName)
    {
      [coder encodeObject:_selectorName forKey:@"NSSelector"];
    }

    [coder encodeBool:reverseNullOrder forKey:@"NSReverseNullOrder"];
  }

  else
  {
    [coder encodeObject:key];
    [coder encodeValuesOfObjCTypes:{"c", &v11}];
    if (reverseNullOrder)
    {
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "NSCoding is deprecated, and does not support NSSortDescriptor's reverseNullOrder property.  Please use keyed archiving instead.", buf, 2u);
      }
    }

    [coder encodeObject:_selectorName];
  }
}

- (NSSortDescriptor)initWithCoder:(NSCoder *)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (![(NSCoder *)coder allowsKeyedCoding])
  {
    decodeObject = [(NSCoder *)coder decodeObject];
    [(NSCoder *)coder decodeValuesOfObjCTypes:"c", &v14];
    decodeObject2 = [(NSCoder *)coder decodeObject];
    v7 = 0;
    requiresSecureCoding = 0;
    v6 = v14;
    goto LABEL_8;
  }

  decodeObject = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSKey"];
  if (decodeObject)
  {
    if (_NSIsNSString())
    {
      goto LABEL_4;
    }

LABEL_15:

    v12 = @"Sort descriptor key is not a string";
LABEL_18:
    [(NSCoder *)coder failWithError:[NSError _readCorruptErrorWithFormat:v12]];
    return 0;
  }

  if ([(NSCoder *)coder error])
  {
    goto LABEL_15;
  }

LABEL_4:
  v6 = [(NSCoder *)coder decodeBoolForKey:@"NSAscending"];
  v14 = v6;
  v7 = [(NSCoder *)coder decodeBoolForKey:@"NSReverseNullOrder"];
  decodeObject2 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSSelector"];
  if (!decodeObject2)
  {
    if (![(NSCoder *)coder error])
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
LABEL_17:

    v12 = @"Sort descriptor selector name is not a string";
    goto LABEL_18;
  }

LABEL_6:
  requiresSecureCoding = [(NSCoder *)coder requiresSecureCoding];
LABEL_8:
  v10 = [(NSSortDescriptor *)self initWithKey:decodeObject ascending:v6];
  v11 = v10;
  if (decodeObject2)
  {
    [(NSSortDescriptor *)v10 _setSelectorName:decodeObject2];
  }

  if (requiresSecureCoding)
  {
    [(NSSortDescriptor *)v11 _disallowEvaluation];
  }

  if (v7)
  {
    [(NSSortDescriptor *)v11 setReverseNullOrder:1];
  }

  return v11;
}

- (void)_setKey:(id)key
{
  key = self->_key;
  if (key != key)
  {

    self->_key = [key copy];
  }
}

- (void)setReverseNullOrder:(BOOL)order
{
  v3 = 8;
  if (!order)
  {
    v3 = 0;
  }

  self->_sortDescriptorFlags |= v3;
}

- (void)_setSelectorName:(id)name
{
  if ((self->_sortDescriptorFlags & 2) == 0)
  {
    selectorOrBlock = self->_selectorOrBlock;
    if (selectorOrBlock != name)
    {

      v6 = [name copy];
      self->_selector = 0;
      self->_selectorOrBlock = v6;
    }
  }
}

- (NSComparisonResult)compareObject:(id)object1 toObject:(id)object2
{
  if ((self->_sortDescriptorFlags & 4) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Sort descriptor was decoded from a secure archive and local evaluation is not enabled." userInfo:0]);
  }

  selector = [(NSSortDescriptor *)self selector];
  null = [MEMORY[0x1E695DFB0] null];
  if (self->_key)
  {
    object1 = [object1 valueForKeyPath:?];
    if (self->_key)
    {
      object2 = [object2 valueForKeyPath:?];
    }
  }

  if (object1 == null)
  {
    object1 = 0;
  }

  if (object1)
  {
    if ((self->_sortDescriptorFlags & 2) != 0)
    {
      selector = 0;
      selectorOrBlock = self->_selectorOrBlock;
    }

    else
    {
      v9 = objc_opt_class();
      selectorOrBlock = class_getMethodImplementation(v9, selector);
    }
  }

  else
  {
    selector = sel_compare_;
    selectorOrBlock = _NSNullCompare;
  }

  if (object2 == null)
  {
    object2 = 0;
  }

  ascending = [(NSSortDescriptor *)self ascending];
  reverseNullOrder = [(NSSortDescriptor *)self reverseNullOrder];

  return _NSCompareObject(object1, object2, selectorOrBlock, selector, ascending, reverseNullOrder);
}

- (BOOL)_isEqualToSortDescriptor:(id)descriptor
{
  ascending = [(NSSortDescriptor *)self ascending];
  if (ascending == [descriptor ascending] && (v6 = -[NSSortDescriptor reverseNullOrder](self, "reverseNullOrder"), v6 == objc_msgSend(descriptor, "reverseNullOrder")))
  {
    v12 = [(NSSortDescriptor *)self key];
    v7 = v12 == [descriptor key] || -[NSString isEqualToString:](-[NSSortDescriptor key](self, "key"), "isEqualToString:", objc_msgSend(descriptor, "key"));
  }

  else
  {
    v7 = 0;
  }

  sortDescriptorFlags = self->_sortDescriptorFlags;
  v9 = *(descriptor + 1);
  if ((sortDescriptorFlags & 2) != 0 && (v9 & 2) != 0)
  {
    v10 = self->_selectorOrBlock == *(descriptor + 4);
  }

  else if (((sortDescriptorFlags | v9) & 2) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [-[NSSortDescriptor _selectorName](self "_selectorName")];
  }

  return v7 & v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSSortDescriptor *)self _isEqualToSortDescriptor:equal];
}

- (id)replacementObjectForPortCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  if ([coder isByref])
  {
    v6.receiver = self;
    v6.super_class = NSSortDescriptor;
    return [(NSSortDescriptor *)&v6 replacementObjectForPortCoder:coder];
  }

  return self;
}

@end