@interface _NSPlaceholderIndexSet
- (_NSPlaceholderIndexSet)init;
- (_NSPlaceholderIndexSet)initWithBitfield:(unint64_t)bitfield;
- (_NSPlaceholderIndexSet)initWithCoder:(id)coder;
- (_NSPlaceholderIndexSet)initWithIndex:(unint64_t)index;
- (_NSPlaceholderIndexSet)initWithIndexSet:(id)set;
- (_NSPlaceholderIndexSet)initWithIndexesInRange:(_NSRange)range;
@end

@implementation _NSPlaceholderIndexSet

- (_NSPlaceholderIndexSet)init
{
  if (_NSTaggedIndexSetAllowed != 1)
  {
    return [(_NSPlaceholderIndexSet *)self initWithIndexesInRange:0, 0];
  }

  result = 0x8580000000000007;
  v3 = *MEMORY[0x1E69E5910] ^ 0x8580000000000007;
  if ((~v3 & 0xC000000000000007) != 0)
  {
    return (v3 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v3 & 7)));
  }

  return result;
}

- (_NSPlaceholderIndexSet)initWithIndex:(unint64_t)index
{
  if (index > 0x3F)
  {
    return [(_NSPlaceholderIndexSet *)self initWithIndexesInRange:?];
  }

  else
  {
    return [(_NSPlaceholderIndexSet *)self initWithBitfield:1 << index];
  }
}

- (_NSPlaceholderIndexSet)initWithIndexesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = range.location + range.length;
  if (range.length && (v5 & 0x8000000000000000) != 0)
  {
    v9 = _NSMethodExceptionProem(self, a2);
    v12.location = location;
    v12.length = length;
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range %@ exceeds maximum index value of NSNotFound - 1", v9, NSStringFromRange(v12)), 0}];
    objc_exception_throw(v10);
  }

  if (range.length && (range.location > 0x3F || v5 > 0x40 || v5 < range.location))
  {
    objc_opt_self();
    if (length == 1 && location < 0xA)
    {
      return (&_NSConstantIndexSets + 4 * location);
    }

    else
    {
      v8 = +[NSIndexSet _alloc];

      return [v8 initWithIndexesInRange:{location, length}];
    }
  }

  else
  {
    if (range.length)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -LOBYTE(range.length) << SLOBYTE(range.location);
    }

    else
    {
      v6 = 0;
    }

    return [(_NSPlaceholderIndexSet *)self initWithBitfield:v6];
  }
}

- (_NSPlaceholderIndexSet)initWithBitfield:(unint64_t)bitfield
{
  if (_NSTaggedIndexSetAllowed != 1 || bitfield && (__clz(bitfield) ^ 0x3C) > 0x33)
  {
    v6 = +[NSIndexSet _alloc];

    return [v6 initWithBitfield:bitfield];
  }

  else
  {
    result = ((8 * (bitfield & 0xFFFFFFFFFFFFFLL)) | 0x8580000000000007);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

- (_NSPlaceholderIndexSet)initWithIndexSet:(id)set
{
  setCopy = set;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [set count];
  if (_NSTaggedIndexSetAllowed == 1 && v5 == 0)
  {
    setCopy = 0x8580000000000007;
    v10 = *MEMORY[0x1E69E5910] ^ 0x8580000000000007;
    if ((~v10 & 0xC000000000000007) != 0)
    {
      return (v10 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v10 & 7)));
    }

    return setCopy;
  }

  v7 = v5;
  if (v5 != 1)
  {
    v11 = objc_opt_class();
    if (NSIndexSet == v11 || _NSConstantIndexSet == v11 || NSMutableIndexSet == v11)
    {
      v14[0] = 0;
      if ([(NSIndexSet *)setCopy getBitfield:v14])
      {
        return [(_NSPlaceholderIndexSet *)self initWithBitfield:v14[0]];
      }
    }

    v13 = objc_opt_class();
    if (v13 != _NSConstantIndexSet && !v7)
    {
      objc_opt_self();
      return &_NSEmptyIndexSet_struct;
    }

    if (setCopy && v13 == _NSConstantIndexSet)
    {
      return setCopy;
    }

    return [+[NSIndexSet _alloc](NSIndexSet "_alloc")];
  }

  firstIndex = [(NSIndexSet *)setCopy firstIndex];

  return [(_NSPlaceholderIndexSet *)self initWithIndex:firstIndex];
}

- (_NSPlaceholderIndexSet)initWithCoder:(id)coder
{
  v4 = +[NSIndexSet _alloc];

  return [v4 initWithCoder:coder];
}

@end