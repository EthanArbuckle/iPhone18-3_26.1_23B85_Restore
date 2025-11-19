@interface PKVectorMultiTimestamp
- (BOOL)isEqual:(id)a3;
- (PKVectorMultiTimestamp)initWithArchive:(const void *)a3 andCapacity:(unint64_t)a4;
- (PKVectorMultiTimestamp)initWithCapacity:(unint64_t)a3;
- (PKVectorMultiTimestamp)initWithData:(id)a3 andCapacity:(unint64_t)a4;
- (PKVectorMultiTimestamp)initWithTimestamps:(id)a3;
- (id)clockElementForUUID:(id)a3 atIndex:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serialize;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)a3 atIndex:(unint64_t)a4;
- (unint64_t)compareTo:(id)a3;
- (unint64_t)hash;
- (void)mergeWithTimestamp:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)setClock:(unint64_t)a3 forUUID:(id)a4 atIndex:(unint64_t)a5;
- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5 atIndex:(unint64_t)a6;
@end

@implementation PKVectorMultiTimestamp

- (PKVectorMultiTimestamp)initWithData:(id)a3 andCapacity:(unint64_t)a4
{
  v11 = &unk_1F47695B0;
  memset(v12, 0, sizeof(v12));
  v6 = a3;
  v7 = [v6 bytes];
  [v6 length];
  PB::Reader::Reader(buf, v7);
  LODWORD(v7) = unk_1F47695C0(&v11, buf);

  if (v7)
  {
    self = [(PKVectorMultiTimestamp *)self initWithArchive:&v11 andCapacity:a4];
    v8 = self;
  }

  else
  {
    v9 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "PKVectorMultiTimestamp protobuf corrupt.", buf, 2u);
    }

    v8 = 0;
  }

  v11 = &unk_1F47695B0;
  *buf = v12;
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](buf);
  PB::Base::~Base(&v11);

  return v8;
}

- (PKVectorMultiTimestamp)initWithArchive:(const void *)a3 andCapacity:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [(PKVectorMultiTimestamp *)self initWithCapacity:a4];
  v7 = v6;
  if (!v6)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v8 = v6;
  v9 = *(a3 + 2) - *(a3 + 1);
  if (v9)
  {
    v10 = 0;
    if ((v9 >> 3) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 >> 3;
    }

    while (1)
    {
      v12 = *(*(a3 + 1) + 8 * v10);
      v13 = v12[4];
      if (!v13 || *(v13 + 8) != 16)
      {
        break;
      }

      v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v12[4]];
      v16 = v12[1];
      v15 = v12[2];
      v17 = (v15 - v16) >> 3;
      if (v17 != a4)
      {
        v21 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = 134218240;
          v25 = v17;
          v26 = 2048;
          v27 = a4;
          _os_log_error_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_ERROR, "PKVectorMultiTimestamp requires the same number of clocks as capacity %zu != %ld.", &v24, 0x16u);
        }

        goto LABEL_19;
      }

      if (v15 != v16)
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = *(v12[1] + 8 * v18);
          [(PKVectorMultiTimestamp *)v7 setClock:*(v20 + 8) subclock:*(v20 + 12) forUUID:v14 atIndex:?];
          v18 = v19++;
        }

        while (v18 < a4);
      }

      if (++v10 == v11)
      {
        v8 = v7;
        goto LABEL_21;
      }
    }

    v14 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "PKVectorMultiTimestamp clock requires uuids.", &v24, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  v22 = v8;

  return v22;
}

- (void)saveToArchive:(void *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  obj = [(PKVectorMultiTimestamp *)self sortedUUIDs];
  if ([obj countByEnumeratingWithState:v4 objects:v5 count:16])
  {
    PB::PtrVector<legacy_drawing::VectorTimestampClock>::emplace_back<>();
  }
}

- (id)serialize
{
  v5 = &unk_1F47695B0;
  memset(v6, 0, sizeof(v6));
  [(PKVectorMultiTimestamp *)self saveToArchive:&v5];
  PB::Writer::Writer(&v7);
  v5[3](&v5, &v7);
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = [v2 initWithBytes:v8 length:v7 - v8];
  PB::Writer::~Writer(&v7);
  v5 = &unk_1F47695B0;
  v7 = v6;
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v7);
  PB::Base::~Base(&v5);

  return v3;
}

- (PKVectorMultiTimestamp)initWithCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = PKVectorMultiTimestamp;
  v4 = [(PKVectorMultiTimestamp *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    timestamps = v4->_timestamps;
    v4->_timestamps = v5;

    if (a3)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(PKVectorTimestamp);
        [(NSArray *)v4->_timestamps setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (a3 != v7);
    }
  }

  return v4;
}

- (PKVectorMultiTimestamp)initWithTimestamps:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKVectorMultiTimestamp;
  v5 = [(PKVectorMultiTimestamp *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    timestamps = v5->_timestamps;
    v5->_timestamps = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKVectorMultiTimestamp alloc] initWithCapacity:[(NSArray *)self->_timestamps count]];
  [(PKVectorMultiTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKVectorMultiTimestamp *)self compareTo:v4]== 0;

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PKVectorMultiTimestamp *)self timestamps];
  v3 = [v2 count];

  return v3;
}

- (id)clockElementForUUID:(id)a3 atIndex:(unint64_t)a4
{
  timestamps = self->_timestamps;
  v6 = a3;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:a4];
  v8 = [v7 clockElementForUUID:v6];

  return v8;
}

- (unint64_t)clockForUUID:(id)a3 atIndex:(unint64_t)a4
{
  timestamps = self->_timestamps;
  v6 = a3;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:a4];
  v8 = [v7 clockForUUID:v6];

  return v8;
}

- (void)setClock:(unint64_t)a3 forUUID:(id)a4 atIndex:(unint64_t)a5
{
  timestamps = self->_timestamps;
  v8 = a4;
  v9 = [(NSArray *)timestamps objectAtIndexedSubscript:a5];
  [v9 setClock:a3 forUUID:v8];
}

- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5 atIndex:(unint64_t)a6
{
  timestamps = self->_timestamps;
  v10 = a5;
  v11 = [(NSArray *)timestamps objectAtIndexedSubscript:a6];
  [v11 setClock:a3 subclock:a4 forUUID:v10];
}

- (id)sortedUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v8 = [v7 allUUIDs];
      [v3 addObjectsFromArray:v8];
    }
  }

  v9 = [v3 allObjects];
  v10 = [v9 sortedArrayUsingSelector:sel_PK_compare_];

  return v10;
}

- (unint64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_timestamps count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v10 = [v4 timestamps];
      v11 = [v10 objectAtIndexedSubscript:i];
      v7 |= [v9 compareTo:v11];

      if (v7 == 5)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWithTimestamp:(id)a3
{
  v10 = a3;
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v8 = [v10 timestamps];
      v9 = [v8 objectAtIndexedSubscript:i];
      [v7 mergeWithTimestamp:v9];
    }
  }
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p [", v5, self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_timestamps;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = &stru_1F476BD20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) shortDescription];
        [v3 appendFormat:@"%@(%@)", v10, v12, v14];

        v10 = @", ";
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v10 = @", ";
    }

    while (v8);
  }

  [v3 appendString:@"]>"];

  return v3;
}

@end