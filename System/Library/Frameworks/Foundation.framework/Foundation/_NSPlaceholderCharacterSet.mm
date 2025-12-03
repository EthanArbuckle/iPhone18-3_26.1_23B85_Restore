@interface _NSPlaceholderCharacterSet
- (BOOL)_isDeallocating;
- (BOOL)_tryRetain;
- (BOOL)hasMemberInPlane:(unsigned __int8)plane;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupersetOfSet:(id)set;
- (_NSPlaceholderCharacterSet)autorelease;
- (_NSPlaceholderCharacterSet)initWithSet:(id)set options:(unint64_t)options;
- (_NSPlaceholderCharacterSet)retain;
- (__CFCharacterSet)_expandedCFCharacterSet;
- (id)bitmapRepresentation;
- (id)invertedSet;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)replacementObjectForCoder:(id)coder;
- (id)replacementObjectForKeyedArchiver:(id)archiver;
- (unint64_t)retainCount;
- (void)_expandInverted;
- (void)dealloc;
- (void)release;
@end

@implementation _NSPlaceholderCharacterSet

- (_NSPlaceholderCharacterSet)initWithSet:(id)set options:(unint64_t)options
{
  optionsCopy = options;
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _NSPlaceholderCharacterSet;
  v6 = [(NSCharacterSet *)&v11 init];
  v7 = *(v6 + 6) & 0xFFFFFFFC | optionsCopy & 3;
  *(v6 + 6) = v7;
  if (optionsCopy)
  {
    v8 = 0;
  }

  else
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v6 + 6);
  }

  *(v6 + 6) = v7 & 0xFFFFFFFB | v8;
  if ((v7 & 1) != 0 && [set isMutable])
  {
    v9 = [set mutableCopyWithZone:0];
    [(_NSPlaceholderCharacterSet *)v9 invert];
    [(NSCharacterSet *)v9 makeImmutable];

    return v9;
  }

  else
  {
    *(v6 + 1) = set;
  }

  return v6;
}

- (__CFCharacterSet)_expandedCFCharacterSet
{
  if ((*&self->_flags & 4) != 0)
  {
    return self->_original;
  }

  else
  {
    return 0;
  }
}

- (void)_expandInverted
{
  if ((*&self->_flags & 1) != 0 && !self->_invertedSet)
  {
    v4 = [(NSCharacterSet *)self->_original mutableCopyWithZone:0];
    [v4 invert];
    v3 = 0;
    atomic_compare_exchange_strong(&self->_invertedSet, &v3, v4);
    if (v3)
    {
    }
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  invertedSet = self->_invertedSet;
  if (invertedSet)
  {

    return [(NSCharacterSet *)invertedSet mutableCopyWithZone:0];
  }

  else
  {
    v6 = [(NSCharacterSet *)self->_original mutableCopyWithZone:0];
    v7 = v6;
    if (*&self->_flags)
    {
      [v6 invert];
    }

    return v7;
  }
}

- (BOOL)isSupersetOfSet:(id)set
{
  invertedSet = self->_invertedSet;
  if (invertedSet)
  {
    return CFCharacterSetIsSupersetOfSet(invertedSet, set) != 0;
  }

  IsSupersetOfSet = CFCharacterSetIsSupersetOfSet(self->_original, set);
  if (IsSupersetOfSet)
  {
    result = (*&self->_flags & 1) == 0;
  }

  else
  {
    result = 0;
  }

  if ((*&self->_flags & 1) != 0 && !IsSupersetOfSet)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    invertedSet = self->_invertedSet;
    return CFCharacterSetIsSupersetOfSet(invertedSet, set) != 0;
  }

  return result;
}

- (BOOL)hasMemberInPlane:(unsigned __int8)plane
{
  planeCopy = plane;
  v5 = &OBJC_IVAR____NSPlaceholderCharacterSet__original;
  if (*&self->_flags)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    v5 = &OBJC_IVAR____NSPlaceholderCharacterSet__invertedSet;
  }

  return CFCharacterSetHasMemberInPlane(*(&self->super.super.isa + *v5), planeCopy) != 0;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  original = self->_original;
  flags = self->_flags;
  if ((*&flags & 4) != 0)
  {
    if (original == [equal _expandedCFCharacterSet])
    {
      return 1;
    }

    flags = self->_flags;
  }

  if (*&flags)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    original = self->_invertedSet;
  }

  return CFEqual(original, equal) != 0;
}

- (id)bitmapRepresentation
{
  v3 = &OBJC_IVAR____NSPlaceholderCharacterSet__original;
  if (*&self->_flags)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    v3 = &OBJC_IVAR____NSPlaceholderCharacterSet__invertedSet;
  }

  BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(0, *(&self->super.super.isa + *v3));

  return BitmapRepresentation;
}

- (BOOL)isEmpty
{
  if ((*&self->_flags & 1) == 0 || [(NSCharacterSet *)self->_original isEmpty])
  {
    return 0;
  }

  [(_NSPlaceholderCharacterSet *)self _expandInverted];
  invertedSet = self->_invertedSet;

  return [(NSCharacterSet *)invertedSet isEmpty];
}

- (id)invertedSet
{
  result = self->_original;
  if ((*&self->_flags & 1) == 0)
  {
    return [result invertedSet];
  }

  return result;
}

- (_NSPlaceholderCharacterSet)autorelease
{
  v3 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSPlaceholderCharacterSet;
    return [(_NSPlaceholderCharacterSet *)&v2 autorelease];
  }

  return self;
}

- (_NSPlaceholderCharacterSet)retain
{
  v3 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSPlaceholderCharacterSet;
    return [(_NSPlaceholderCharacterSet *)&v2 retain];
  }

  return self;
}

- (unint64_t)retainCount
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    return -1;
  }

  v3.receiver = self;
  v3.super_class = _NSPlaceholderCharacterSet;
  return [(_NSPlaceholderCharacterSet *)&v3 retainCount];
}

- (void)release
{
  v3 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSPlaceholderCharacterSet;
    [(_NSPlaceholderCharacterSet *)&v2 release];
  }
}

- (BOOL)_isDeallocating
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = _NSPlaceholderCharacterSet;
  return [(_NSPlaceholderCharacterSet *)&v3 _isDeallocating];
}

- (BOOL)_tryRetain
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = _NSPlaceholderCharacterSet;
  return [(_NSPlaceholderCharacterSet *)&v3 _tryRetain];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) == 0)
  {

    v3.receiver = self;
    v3.super_class = _NSPlaceholderCharacterSet;
    [(_NSPlaceholderCharacterSet *)&v3 dealloc];
  }
}

- (id)replacementObjectForKeyedArchiver:(id)archiver
{
  v4 = &OBJC_IVAR____NSPlaceholderCharacterSet__original;
  if (*&self->_flags)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    v4 = &OBJC_IVAR____NSPlaceholderCharacterSet__invertedSet;
  }

  return *(&self->super.super.isa + *v4);
}

- (id)replacementObjectForCoder:(id)coder
{
  v4 = &OBJC_IVAR____NSPlaceholderCharacterSet__original;
  if (*&self->_flags)
  {
    [(_NSPlaceholderCharacterSet *)self _expandInverted];
    v4 = &OBJC_IVAR____NSPlaceholderCharacterSet__invertedSet;
  }

  return *(&self->super.super.isa + *v4);
}

@end