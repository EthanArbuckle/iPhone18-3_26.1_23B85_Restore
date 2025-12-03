@interface __NSArrayReversed
- (__NSArrayReversed)initWithArray:(id)array;
- (id)objectAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSArrayReversed

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
      v13 = __os_log_helper_1_2_3_8_32_8_0_8_0(v10, "[__NSArrayReversed objectAtIndex:]", index, v12);
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v13, "[__NSArrayReversed objectAtIndex:]", index, v12);
    }

    else
    {
      *v10 = 136315394;
      *(v10 + 4) = "[__NSArrayReversed objectAtIndex:]";
      *(v10 + 12) = 2048;
      *(v10 + 14) = index;
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSArrayReversed objectAtIndex:]", index);
    }

    v14 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11) osLogPack:0 size:v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9];
    objc_exception_throw(v14);
  }

  array = self->_array;
  v5 = *MEMORY[0x1E69E9840];
  v6 = cnt + ~index;

  return [array objectAtIndex:v6];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objectsCopy = objects;
  v26[1] = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    v11 = _os_log_pack_size();
    v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = _os_log_pack_fill();
    *v13 = 136315394;
    *(v13 + 4) = "[__NSArrayReversed getObjects:range:]";
    *(v13 + 12) = 2048;
    *(v13 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSArrayReversed getObjects:range:]", length);
    goto LABEL_12;
  }

  if (range.length >> 61)
  {
    v11 = _os_log_pack_size();
    v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[__NSArrayReversed getObjects:range:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = length;
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSArrayReversed getObjects:range:]", length);
LABEL_12:
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v12, v11];
    objc_exception_throw(v16);
  }

  v8 = [(__NSArrayReversed *)self count];
  if ((location & 0x8000000000000000) != 0 || v8 < location + length)
  {
    if (v8)
    {
      v22 = v8;
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill();
      v24 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v23, "[__NSArrayReversed getObjects:range:]", location, length, --v22);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v24, "[__NSArrayReversed getObjects:range:]", location, length, v22);
    }

    else
    {
      v17 = _os_log_pack_size();
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "[__NSArrayReversed getObjects:range:]", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v20, "[__NSArrayReversed getObjects:range:]", location, length);
    }

    v25 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v17];
    objc_exception_throw(v25);
  }

  if (length)
  {
    v9 = ~location;
    do
    {
      *objectsCopy++ = [self->_array objectAtIndex:v9 + self->_cnt];
      --v9;
      --length;
    }

    while (length);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (__NSArrayReversed)initWithArray:(id)array
{
  v4 = [array copy];
  self->_array = v4;
  self->_cnt = [v4 count];
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSArrayReversed;
  [(__NSArrayReversed *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

@end