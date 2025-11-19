@interface _TUIIdentifier
+ (id)fromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_TUIIdentifier)initWithOther:(id)a3;
- (_TUIIdentifier)initWithUUID:(id)a3 indexPath:(id)a4 identifier:(id)a5;
- (_TUIIdentifier)initWithUUID:(id)a3 indexes:(void *)a4 identifiers:(id)a5;
- (id).cxx_construct;
- (id)tui_identifierByAppendingIndex:(unint64_t)a3;
- (id)tui_identifierByAppendingString:(id)a3;
- (id)tui_identifierByPrependingUUID:(id)a3;
- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3;
- (id)tui_identifierToString;
- (id)tui_identifierWithoutUUID;
- (void)_appendIdentifier:(id)a3;
- (void)_computeHash;
@end

@implementation _TUIIdentifier

- (_TUIIdentifier)initWithUUID:(id)a3 indexes:(void *)a4 identifiers:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _TUIIdentifier;
  v11 = [(_TUIIdentifier *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_UUID, a3);
    begin = v12->_indexes.__begin_;
    v12->_indexes.__begin_ = *a4;
    *a4 = begin;
    end = v12->_indexes.__end_;
    v12->_indexes.__end_ = *(a4 + 1);
    *(a4 + 1) = end;
    cap = v12->_indexes.__cap_;
    v12->_indexes.__cap_ = *(a4 + 2);
    *(a4 + 2) = cap;
    v16 = [v10 copy];
    identifiers = v12->_identifiers;
    v12->_identifiers = v16;

    [(_TUIIdentifier *)v12 _computeHash];
  }

  return v12;
}

- (_TUIIdentifier)initWithOther:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TUIIdentifier;
  v5 = [(_TUIIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_UUID, v4->_UUID);
    objc_storeStrong(&v6->_identifiers, v4->_identifiers);
    if (v6 != v4)
    {
      sub_10739C(&v6->_indexes.__begin_, v4->_indexes.__begin_, v4->_indexes.__end_, v4->_indexes.__end_ - v4->_indexes.__begin_);
    }

    v6->_hash = v4->_hash;
  }

  return v6;
}

- (id)tui_identifierWithoutUUID
{
  v2 = [[_TUIIdentifier alloc] initWithOther:self];
  UUID = v2->_UUID;
  v2->_UUID = 0;

  [(_TUIIdentifier *)v2 _computeHash];

  return v2;
}

- (void)_appendIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_identifiers count];
  v6 = [(NSArray *)self->_identifiers arrayByAddingObject:v4];
  identifiers = self->_identifiers;
  self->_identifiers = v6;

  v8 = 2 * v5;
  sub_101404(&self->_indexes.__begin_, &v8);
}

- (_TUIIdentifier)initWithUUID:(id)a3 indexPath:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = _TUIIdentifier;
  v11 = [(_TUIIdentifier *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v22 = v10;
    v14 = [NSArray arrayWithObjects:&v22 count:1];
    identifiers = v11->_identifiers;
    v11->_identifiers = v14;

    v16 = [v9 length];
    sub_113D40(&v11->_indexes.__begin_, v16 + 1);
    if (v16)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        v18 = [v9 indexAtPosition:i];
        begin = v11->_indexes.__begin_;
        begin[i] = (2 * v18) | 1;
      }
    }

    else
    {
      begin = v11->_indexes.__begin_;
    }

    begin[v16] = 0;
    [(_TUIIdentifier *)v11 _computeHash];
  }

  return v11;
}

- (void)_computeHash
{
  begin = self->_indexes.__begin_;
  end = self->_indexes.__end_;
  if (begin == end)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *begin++;
      v5 = v6 ^ (16 * v5);
    }

    while (begin != end);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_identifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [v11 hash];

        v5 ^= v12;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  self->_hash = [(NSUUID *)self->_UUID hash]^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    begin = self->_indexes.__begin_;
    v6 = (self->_indexes.__end_ - begin);
    v7 = v4->_indexes.__begin_;
    if (v6 == (v4->_indexes.__end_ - v7) && !memcmp(begin, v7, v6))
    {
      identifiers = self->_identifiers;
      if (identifiers == v4->_identifiers || [(NSArray *)identifiers isEqual:?])
      {
        UUID = self->_UUID;
        if (UUID != v4->_UUID)
        {
          v8 = [(NSUUID *)UUID isEqual:?];
          goto LABEL_11;
        }

LABEL_10:
        v8 = 1;
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)tui_identifierByAppendingString:(id)a3
{
  v4 = a3;
  if (v4 && !self->_UUID)
  {
    v5 = [[_TUIIdentifier alloc] initWithOther:self];
    [(_TUIIdentifier *)v5 _appendIdentifier:v4];
    [(_TUIIdentifier *)v5 _computeHash];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tui_identifierByAppendingIndex:(unint64_t)a3
{
  if (self->_UUID)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[_TUIIdentifier alloc] initWithOther:self];
    [(_TUIIdentifier *)v3 _appendIndex:a3];
    [(_TUIIdentifier *)v3 _computeHash];
  }

  return v3;
}

- (id)tui_identifierByPrependingUUID:(id)a3
{
  v5 = a3;
  if (self->_UUID)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[_TUIIdentifier alloc] initWithOther:self];
    objc_storeStrong(&v6->_UUID, a3);
    [(_TUIIdentifier *)v6 _computeHash];
  }

  return v6;
}

- (id)tui_identifierToString
{
  v3 = [[NSMutableString alloc] initWithCapacity:64];
  UUID = self->_UUID;
  if (UUID)
  {
    v5 = [(NSUUID *)UUID UUIDString];
    [v3 appendFormat:@"%@", v5];
  }

  for (i = self->_indexes.__begin_; i != self->_indexes.__end_; ++i)
  {
    v7 = *i;
    if (v7)
    {
      [v3 appendFormat:@"/%lu", v7 >> 1];
    }

    else
    {
      v8 = [(NSArray *)self->_identifiers objectAtIndexedSubscript:v7 >> 1];
      [v3 appendFormat:@";%@", v8];
    }
  }

  v9 = [v3 copy];

  return v9;
}

- (id)tui_identifierDescribeForDebuggingWithPackage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  UUID = self->_UUID;
  if (UUID)
  {
    v7 = [(NSUUID *)UUID UUIDString];
    [v5 addObject:v7];
  }

  for (i = self->_indexes.__begin_; i != self->_indexes.__end_; ++i)
  {
    v9 = *i;
    if (v9)
    {
      v10 = [TUIIdentifierMap describeForDebuggingIdentifierIndex:v9 >> 1 package:v4];
      [v5 addObject:v10];
    }

    else
    {
      v10 = [(NSArray *)self->_identifiers objectAtIndexedSubscript:v9 >> 1];
      v11 = [NSString stringWithFormat:@"Identifier:%@", v10];
      [v5 addObject:v11];
    }
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)fromString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  __p = 0;
  v25 = 0;
  v26 = 0;
  v5 = [[NSScanner alloc] initWithString:v3];
  v6 = [NSCharacterSet characterSetWithCharactersInString:@"/"];;
  if ([v5 isAtEnd])
  {
    v7 = 0;
  }

  else
  {
    v23 = 0;
    [v5 scanUpToCharactersFromSet:v6 intoString:&v23];
    v11 = v23;
    if ([v11 length])
    {
      v7 = [[NSUUID alloc] initWithUUIDString:v11];
    }

    else
    {
      v7 = 0;
    }

    v12 = 0;
    while (2)
    {

      while (1)
      {
        if ([v5 isAtEnd])
        {
          if (v12)
          {
            v8 = [[_TUIIdentifier alloc] initWithUUID:v7 indexes:&__p identifiers:v4];
          }

          else
          {
            v17 = __p;
            if (v25 - __p == 4)
            {
              v8 = [NSNumber numberWithUnsignedInteger:*__p >> 1];
            }

            else if (__p == v25)
            {
              v8 = 0;
            }

            else
            {
              v8 = 0;
              do
              {
                if (v8)
                {
                  v18 = [(_TUIIdentifier *)v8 indexPathByAddingIndex:*v17 >> 1];

                  v8 = v18;
                }

                else
                {
                  v8 = [NSIndexPath indexPathWithIndex:*v17 >> 1];
                }

                ++v17;
              }

              while (v17 != v25);
            }

            if (v7)
            {
              v19 = [(_TUIIdentifier *)v8 tui_identifierByPrependingUUID:v7];

              v8 = v19;
            }
          }

          goto LABEL_4;
        }

        v13 = [v5 string];
        v14 = [v13 characterAtIndex:{objc_msgSend(v5, "scanLocation")}];

        [v5 setScanLocation:{objc_msgSend(v5, "scanLocation") + 1}];
        if (v14 != 47)
        {
          break;
        }

        v22 = 0;
        if (([v5 scanUnsignedLongLong:&v22] & 1) == 0)
        {
          goto LABEL_3;
        }

        v21 = (2 * v22) | 1;
        sub_101404(&__p, &v21);
      }

      if (v14 != 59)
      {
        goto LABEL_3;
      }

      v20 = 0;
      v15 = [v5 scanUpToCharactersFromSet:v6 intoString:&v20];
      v16 = v20;
      v11 = v16;
      if (v15)
      {
        [v4 addObject:v16];
        LODWORD(v22) = 2 * v12;
        sub_101404(&__p, &v22);
        ++v12;
        continue;
      }

      break;
    }
  }

LABEL_3:
  v8 = 0;
LABEL_4:
  v9 = v8;

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end