@interface MTLTensorExtents
- (BOOL)isEqual:(id)a3;
- (MTLTensorExtents)initWithRank:(unint64_t)a3 values:(const int64_t *)a4;
- (id)formattedDescription:(unint64_t)a3;
- (int64_t)extentAtDimensionIndex:(unint64_t)a3;
@end

@implementation MTLTensorExtents

- (MTLTensorExtents)initWithRank:(unint64_t)a3 values:(const int64_t *)a4
{
  if (a3 > 0x10)
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  if (a3 && !a4)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = MTLTensorExtents;
  result = [(MTLTensorExtents *)&v16 init];
  if (result)
  {
    *&v14[0] = a3;
    if (a3)
    {
      v9 = 0;
      do
      {
        *(v14 + v9 + 1) = a4[v9];
        ++v9;
      }

      while (v9 < *&v14[0]);
    }

    v10 = v14[4];
    *&result->_private.extents[9] = v14[5];
    v11 = v14[7];
    *&result->_private.extents[11] = v14[6];
    *&result->_private.extents[13] = v11;
    v12 = v14[0];
    *&result->_private.extents[1] = v14[1];
    v13 = v14[3];
    *&result->_private.extents[3] = v14[2];
    *&result->_private.extents[5] = v13;
    *&result->_private.extents[7] = v10;
    result->_private.extents[15] = v15;
    *&result->_private.rank = v12;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  ClassName = object_getClassName(self);
  if (ClassName != object_getClassName(a3))
  {
    return 0;
  }

  rank = self->_private.rank;
  if (rank != *(a3 + 1))
  {
    return 0;
  }

  if (!rank)
  {
    return 1;
  }

  extents = self->_private.extents;
  v8 = (a3 + 16);
  v9 = rank - 1;
  do
  {
    v11 = *extents++;
    v10 = v11;
    v13 = *v8++;
    v12 = v13;
    v15 = v9-- != 0;
    result = v10 == v12;
  }

  while (v10 == v12 && v15);
  return result;
}

- (int64_t)extentAtDimensionIndex:(unint64_t)a3
{
  if (self->_private.rank <= a3)
  {
    return -1;
  }

  else
  {
    return self->_private.extents[a3];
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v15[8] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [MEMORY[0x1E696AD60] string];
  rank = self->_private.rank;
  if (rank)
  {
    extents = self->_private.extents;
    v8 = self->_private.rank;
    do
    {
      v9 = *extents++;
      [v5 appendFormat:@"%ld", v9];
      if (v8 != 1)
      {
        [v5 appendString:{@", "}];
      }

      --v8;
    }

    while (v8);
  }

  v10 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MTLTensorExtents;
  v11 = [(MTLTensorExtents *)&v14 description];
  v15[0] = v4;
  v15[1] = @"Rank =";
  v15[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:rank];
  v15[3] = @" ";
  v15[4] = v4;
  v15[5] = @"Extents = [";
  v15[6] = v5;
  v15[7] = @"]";
  result = [v10 stringWithFormat:@"%@%@", v11, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 8), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end