@interface _ATXTimeHistogram
- (_ATXTimeHistogram)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerate:(id)enumerate;
@end

@implementation _ATXTimeHistogram

- (void)dealloc
{
  free(self->_entries);
  v3.receiver = self;
  v3.super_class = _ATXTimeHistogram;
  [(_ATXTimeHistogram *)&v3 dealloc];
}

- (void)enumerate:(id)enumerate
{
  if (self->_count)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      (*(enumerate + 2))(enumerate, LOWORD(self->_entries[v5].var1), self->_entries[v5].var2, self->_entries[v5].var0);
      ++v6;
      ++v5;
    }

    while (v6 < self->_count);
  }
}

- (_ATXTimeHistogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _ATXTimeHistogram;
  v5 = [(_ATXTimeHistogram *)&v16 init];
  if (!v5)
  {
LABEL_15:
    v13 = v5;
    goto LABEL_16;
  }

  v6 = objc_autoreleasePoolPush();
  v5->_count = [coderCopy decodeInt32ForKey:@"count"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entries"];
  v8 = [v7 length];
  count = v5->_count;
  if (v8 == 16 * count)
  {
    if (v7)
    {
      v10 = malloc_type_calloc(count, 0x10uLL, 0x100004099076E91uLL);
      v5->_entries = v10;
      memcpy(v10, [v7 bytes], objc_msgSend(v7, "length"));
    }

    if ([coderCopy containsValueForKey:@"bucketCount"])
    {
      v11 = [coderCopy decodeInt32ForKey:@"bucketCount"];
    }

    else
    {
      v11 = 200;
    }

    v5->_bucketCount = v11;
    if ([coderCopy containsValueForKey:@"applyFilter"])
    {
      v14 = [coderCopy decodeBoolForKey:@"applyFilter"];
    }

    else
    {
      v14 = 1;
    }

    v5->_applyFilter = v14;

    objc_autoreleasePoolPop(v6);
    goto LABEL_15;
  }

  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_ATXTimeHistogram initWithCoder:v12];
  }

  objc_autoreleasePoolPop(v6);
  v13 = 0;
LABEL_16:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_count forKey:@"count"];
  if (self->_entries)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_entries length:16 * self->_count];
    [coderCopy encodeObject:v4 forKey:@"entries"];
  }

  [coderCopy encodeInt32:self->_bucketCount forKey:@"bucketCount"];
  [coderCopy encodeBool:self->_applyFilter forKey:@"applyFilter"];
}

@end