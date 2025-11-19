@interface ASCSignpostPredicate
- (ASCSignpostPredicate)init;
- (ASCSignpostPredicate)initWithCoder:(id)a3;
- (ASCSignpostPredicate)initWithSpans:(id)a3;
- (ASCSignpostPredicate)initWithTags:(id)a3 dateRanges:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)predicateByAddingDateRange:(id)a3;
- (id)predicateByAddingTag:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCSignpostPredicate

- (ASCSignpostPredicate)initWithTags:(id)a3 dateRanges:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCSignpostPredicate;
  v8 = [(ASCSignpostPredicate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    tags = v8->_tags;
    v8->_tags = v9;

    v11 = [v7 copy];
    dateRanges = v8->_dateRanges;
    v8->_dateRanges = v11;
  }

  return v8;
}

- (ASCSignpostPredicate)initWithSpans:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 dateRange];
        if (v12)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "primaryTag")}];
          [v4 addObject:v13];

          v14 = [v11 supplementaryTags];
          [v4 unionSet:v14];

          [v5 addObject:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(ASCSignpostPredicate *)buf initWithSpans:v11, &v24];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [(ASCSignpostPredicate *)self initWithTags:v4 dateRanges:v5];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (ASCSignpostPredicate)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(ASCSignpostPredicate *)self initWithTags:v3 dateRanges:MEMORY[0x277CBEBF8]];

  return v4;
}

- (ASCSignpostPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"tags"];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"dateRanges"];
    if (v12)
    {
      self = [(ASCSignpostPredicate *)self initWithTags:v8 dateRanges:v12];
      v13 = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCSignpostPredicate initWithCoder:];
      }

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCSignpostPredicate initWithCoder:];
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCSignpostPredicate *)self tags];
  [v4 encodeObject:v5 forKey:@"tags"];

  v6 = [(ASCSignpostPredicate *)self dateRanges];
  [v4 encodeObject:v6 forKey:@"dateRanges"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCSignpostPredicate *)self tags];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCSignpostPredicate *)self dateRanges];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCSignpostPredicate *)self tags];
    v9 = [v7 tags];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCSignpostPredicate *)self dateRanges];
      v12 = [v7 dateRanges];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCSignpostPredicate *)self tags];
  [(ASCDescriber *)v3 addObject:v4 withName:@"tags"];

  v5 = [(ASCSignpostPredicate *)self dateRanges];
  [(ASCDescriber *)v3 addObject:v5 withName:@"dateRanges"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

- (BOOL)isEmpty
{
  v3 = [(ASCSignpostPredicate *)self tags];
  if ([v3 count])
  {
    v4 = [(ASCSignpostPredicate *)self dateRanges];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)predicateByAddingTag:(unint64_t)a3
{
  v5 = [(ASCSignpostPredicate *)self tags];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [v5 setByAddingObject:v6];

  v8 = objc_alloc(objc_opt_class());
  v9 = [(ASCSignpostPredicate *)self dateRanges];
  v10 = [v8 initWithTags:v7 dateRanges:v9];

  return v10;
}

- (id)predicateByAddingDateRange:(id)a3
{
  v4 = a3;
  v5 = [(ASCSignpostPredicate *)self dateRanges];
  v6 = [v5 arrayByAddingObject:v4];

  v7 = objc_alloc(objc_opt_class());
  v8 = [(ASCSignpostPredicate *)self tags];
  v9 = [v7 initWithTags:v8 dateRanges:v6];

  return v9;
}

- (void)initWithSpans:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Discarding span without valid range range %@", buf, 0xCu);
}

@end