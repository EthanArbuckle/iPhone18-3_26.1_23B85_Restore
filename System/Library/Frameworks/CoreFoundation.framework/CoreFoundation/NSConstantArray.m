@interface NSConstantArray
- (NSConstantArray)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)objectEnumerator;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation NSConstantArray

- (NSConstantArray)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  if ((a3 & 0x8000000000000000) != 0 || count <= a3)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    if (count)
    {
      v10 = count - 1;
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v8, "[NSConstantArray objectAtIndex:]", a3, v10);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v11, "[NSConstantArray objectAtIndex:]", a3, v10);
    }

    else
    {
      *v8 = 136315394;
      *(v8 + 4) = "[NSConstantArray objectAtIndex:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a3;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSConstantArray objectAtIndex:]", a3);
    }

    v12 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v12);
  }

  result = self->_objects[a3];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a3 && a4.length)
  {
    length = a4.length;
    v12 = _os_log_pack_size();
    v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "[NSConstantArray getObjects:range:]";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSConstantArray getObjects:range:]", length);
    goto LABEL_22;
  }

  if (a4.length >> 61)
  {
    v16 = a4.length;
    v12 = _os_log_pack_size();
    v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315394;
    *(v17 + 4) = "[NSConstantArray getObjects:range:]";
    *(v17 + 12) = 2048;
    *(v17 + 14) = v16;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSConstantArray getObjects:range:]", v16);
LABEL_22:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v18);
  }

  count = self->_count;
  if ((a4.location & 0x8000000000000000) != 0 || count < a4.location + a4.length)
  {
    location = a4.location;
    v20 = a4.length;
    v21 = _os_log_pack_size();
    v22 = _os_log_pack_fill();
    if (count)
    {
      v25 = count - 1;
      v26 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v22, "[NSConstantArray getObjects:range:]", location, v20, v25);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v26, "[NSConstantArray getObjects:range:]", location, v20, v25);
    }

    else
    {
      v23 = __os_log_helper_1_2_3_8_32_8_0_8_0(v22, "[NSConstantArray getObjects:range:]", location, v20);
      v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v23, "[NSConstantArray getObjects:range:]", location, v20);
    }

    v27 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21];
    objc_exception_throw(v27);
  }

  v5 = &self->_objects[a4.location];
  if (a4.length <= 4)
  {
    if (a4.length > 2)
    {
      if (a4.length != 3)
      {
        v7 = *v5++;
        *a3++ = v7;
      }

      v8 = *v5++;
      *a3++ = v8;
    }

    else
    {
      if (a4.length == 1)
      {
LABEL_18:
        *a3 = *v5;
LABEL_19:
        v10 = *MEMORY[0x1E69E9840];
        return;
      }

      if (a4.length != 2)
      {
        goto LABEL_19;
      }
    }

    v9 = *v5++;
    *a3++ = v9;
    goto LABEL_18;
  }

  v6 = *MEMORY[0x1E69E9840];

  memmove(a3, v5, 8 * a4.length);
}

- (id)objectEnumerator
{
  v2 = [[__NSConstantArrayEnumerator alloc] initWithConstantArray:self];

  return v2;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  if ((a3 & 0x8000000000000000) != 0 || count <= a3)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    if (count)
    {
      v10 = count - 1;
      v11 = __os_log_helper_1_2_3_8_32_8_0_8_0(v8, "[NSConstantArray objectAtIndexedSubscript:]", a3, v10);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v11, "[NSConstantArray objectAtIndexedSubscript:]", a3, v10);
    }

    else
    {
      *v8 = 136315394;
      *(v8 + 4) = "[NSConstantArray objectAtIndexedSubscript:]";
      *(v8 + 12) = 2048;
      *(v8 + 14) = a3;
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[NSConstantArray objectAtIndexedSubscript:]", a3);
    }

    v12 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v12);
  }

  result = self->_objects[a3];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end