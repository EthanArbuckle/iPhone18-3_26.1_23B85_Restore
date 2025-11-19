@interface _NSPlaceholderIndexSet
- (_NSPlaceholderIndexSet)init;
- (_NSPlaceholderIndexSet)initWithBitfield:(unint64_t)a3;
- (_NSPlaceholderIndexSet)initWithCoder:(id)a3;
- (_NSPlaceholderIndexSet)initWithIndex:(unint64_t)a3;
- (_NSPlaceholderIndexSet)initWithIndexSet:(id)a3;
- (_NSPlaceholderIndexSet)initWithIndexesInRange:(_NSRange)a3;
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

- (_NSPlaceholderIndexSet)initWithIndex:(unint64_t)a3
{
  if (a3 > 0x3F)
  {
    return [(_NSPlaceholderIndexSet *)self initWithIndexesInRange:?];
  }

  else
  {
    return [(_NSPlaceholderIndexSet *)self initWithBitfield:1 << a3];
  }
}

- (_NSPlaceholderIndexSet)initWithIndexesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = a3.location + a3.length;
  if (a3.length && (v5 & 0x8000000000000000) != 0)
  {
    v9 = _NSMethodExceptionProem(self, a2);
    v12.location = location;
    v12.length = length;
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range %@ exceeds maximum index value of NSNotFound - 1", v9, NSStringFromRange(v12)), 0}];
    objc_exception_throw(v10);
  }

  if (a3.length && (a3.location > 0x3F || v5 > 0x40 || v5 < a3.location))
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
    if (a3.length)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -LOBYTE(a3.length) << SLOBYTE(a3.location);
    }

    else
    {
      v6 = 0;
    }

    return [(_NSPlaceholderIndexSet *)self initWithBitfield:v6];
  }
}

- (_NSPlaceholderIndexSet)initWithBitfield:(unint64_t)a3
{
  if (_NSTaggedIndexSetAllowed != 1 || a3 && (__clz(a3) ^ 0x3C) > 0x33)
  {
    v6 = +[NSIndexSet _alloc];

    return [v6 initWithBitfield:a3];
  }

  else
  {
    result = ((8 * (a3 & 0xFFFFFFFFFFFFFLL)) | 0x8580000000000007);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

- (_NSPlaceholderIndexSet)initWithIndexSet:(id)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  if (_NSTaggedIndexSetAllowed == 1 && v5 == 0)
  {
    v3 = 0x8580000000000007;
    v10 = *MEMORY[0x1E69E5910] ^ 0x8580000000000007;
    if ((~v10 & 0xC000000000000007) != 0)
    {
      return (v10 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v10 & 7)));
    }

    return v3;
  }

  v7 = v5;
  if (v5 != 1)
  {
    v11 = objc_opt_class();
    if (NSIndexSet == v11 || _NSConstantIndexSet == v11 || NSMutableIndexSet == v11)
    {
      v14[0] = 0;
      if ([(NSIndexSet *)v3 getBitfield:v14])
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

    if (v3 && v13 == _NSConstantIndexSet)
    {
      return v3;
    }

    return [+[NSIndexSet _alloc](NSIndexSet "_alloc")];
  }

  v8 = [(NSIndexSet *)v3 firstIndex];

  return [(_NSPlaceholderIndexSet *)self initWithIndex:v8];
}

- (_NSPlaceholderIndexSet)initWithCoder:(id)a3
{
  v4 = +[NSIndexSet _alloc];

  return [v4 initWithCoder:a3];
}

@end