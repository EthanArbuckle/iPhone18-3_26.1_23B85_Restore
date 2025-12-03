@interface _ATXCategoricalHistogram
- (_ATXCategoricalHistogram)init;
- (_ATXCategoricalHistogram)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerate:(id)enumerate;
@end

@implementation _ATXCategoricalHistogram

- (_ATXCategoricalHistogram)init
{
  v6.receiver = self;
  v6.super_class = _ATXCategoricalHistogram;
  v2 = [(_ATXCategoricalHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastDates = v2->_lastDates;
    v2->_lastDates = v3;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_entries);
  v3.receiver = self;
  v3.super_class = _ATXCategoricalHistogram;
  [(_ATXCategoricalHistogram *)&v3 dealloc];
}

- (void)enumerate:(id)enumerate
{
  if (self->_count)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      (*(enumerate + 2))(enumerate, LOWORD(self->_entries[v5].var1), LOWORD(self->_entries[v5].var2), self->_entries[v5].var0);
      ++v6;
      ++v5;
    }

    while (v6 < self->_count);
  }
}

- (_ATXCategoricalHistogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _ATXCategoricalHistogram;
  v6 = [(_ATXCategoricalHistogram *)&v19 init];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [coderCopy decodeInt32ForKey:@"count"];
  v6->_count = v8;
  v6->_capacity = v8;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entries"];
  if ([v9 length] != 16 * v6->_capacity)
  {
    [(_ATXCategoricalHistogram *)a2 initWithCoder:v6];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v9)
  {
LABEL_4:
    v10 = malloc_type_calloc(v6->_capacity, 0x10uLL, 0x1000040451B5BE8uLL);
    v6->_entries = v10;
    memcpy(v10, [v9 bytes], objc_msgSend(v9, "length"));
  }

LABEL_5:
  if ([coderCopy containsValueForKey:@"lastDates"])
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDates"];
    lastDates = v6->_lastDates;
    v6->_lastDates = v11;
  }

  else
  {
    v13 = objc_opt_new();
    lastDates = [MEMORY[0x277CBEAA8] date];
    if (v6->_count)
    {
      v14 = 0;
      v15 = 12;
      do
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v6->_entries->var0 + v15)];
        [(NSDictionary *)v13 setObject:lastDates forKeyedSubscript:v16];

        ++v14;
        v15 += 16;
      }

      while (v14 < v6->_count);
    }

    v17 = v6->_lastDates;
    v6->_lastDates = v13;
  }

  objc_autoreleasePoolPop(v7);
LABEL_12:

  return v6;
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

  [coderCopy encodeObject:self->_lastDates forKey:@"lastDates"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXCategoricalHistogram.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"entryData.length == _capacity * sizeof(bucket_t)"}];
}

@end