@interface __NSOrderedSetReversed
- (__NSOrderedSetReversed)initWithOrderedSet:(id)set;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)indexOfObject:(id)object;
- (void)dealloc;
@end

@implementation __NSOrderedSetReversed

- (__NSOrderedSetReversed)initWithOrderedSet:(id)set
{
  v4 = [set copy];
  self->_orderedSet = v4;
  self->_cnt = [v4 count];
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSOrderedSetReversed;
  [(__NSOrderedSetReversed *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)indexOfObject:(id)object
{
  v4 = [self->_orderedSet indexOfObject:object];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_cnt + ~v4;
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  v15[1] = *MEMORY[0x1E69E9840];
  cnt = self->_cnt;
  if ((index & 0x8000000000000000) != 0 || cnt <= index)
  {
    v9 = _os_log_pack_size();
    v10 = _os_log_pack_fill();
    if (cnt)
    {
      v12 = cnt - 1;
      v13 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[__NSOrderedSetReversed objectAtIndex:]", index, v12);
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v13, "[__NSOrderedSetReversed objectAtIndex:]", index, v12);
    }

    else
    {
      *v10 = 136315394;
      *(v10 + 4) = "[__NSOrderedSetReversed objectAtIndex:]";
      *(v10 + 12) = 2048;
      *(v10 + 14) = index;
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "[__NSOrderedSetReversed objectAtIndex:]", index);
    }

    v14 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v14);
  }

  orderedSet = self->_orderedSet;
  v5 = *MEMORY[0x1E69E9840];
  v6 = cnt + ~index;

  return [orderedSet objectAtIndex:v6];
}

@end