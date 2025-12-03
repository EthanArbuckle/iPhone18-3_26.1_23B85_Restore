@interface ASCSignpostPredicate
- (ASCSignpostPredicate)init;
- (ASCSignpostPredicate)initWithCoder:(id)coder;
- (ASCSignpostPredicate)initWithSpans:(id)spans;
- (ASCSignpostPredicate)initWithTags:(id)tags dateRanges:(id)ranges;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)predicateByAddingDateRange:(id)range;
- (id)predicateByAddingTag:(unint64_t)tag;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCSignpostPredicate

- (ASCSignpostPredicate)initWithTags:(id)tags dateRanges:(id)ranges
{
  tagsCopy = tags;
  rangesCopy = ranges;
  +[ASCEligibility assertCurrentProcessEligibility];
  v14.receiver = self;
  v14.super_class = ASCSignpostPredicate;
  v8 = [(ASCSignpostPredicate *)&v14 init];
  if (v8)
  {
    v9 = [tagsCopy copy];
    tags = v8->_tags;
    v8->_tags = v9;

    v11 = [rangesCopy copy];
    dateRanges = v8->_dateRanges;
    v8->_dateRanges = v11;
  }

  return v8;
}

- (ASCSignpostPredicate)initWithSpans:(id)spans
{
  v25 = *MEMORY[0x277D85DE8];
  spansCopy = spans;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = spansCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        dateRange = [v11 dateRange];
        if (dateRange)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "primaryTag")}];
          [v4 addObject:v13];

          supplementaryTags = [v11 supplementaryTags];
          [v4 unionSet:supplementaryTags];

          [v5 addObject:dateRange];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(ASCSignpostPredicate *)buf initWithSpans:v11, &v23];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [(ASCSignpostPredicate *)self initWithTags:v4 dateRanges:v5];
  return v15;
}

- (ASCSignpostPredicate)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(ASCSignpostPredicate *)self initWithTags:v3 dateRanges:MEMORY[0x277CBEBF8]];

  return v4;
}

- (ASCSignpostPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"tags"];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dateRanges"];
    if (v12)
    {
      self = [(ASCSignpostPredicate *)self initWithTags:v8 dateRanges:v12];
      selfCopy = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASCSignpostPredicate initWithCoder:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCSignpostPredicate initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tags = [(ASCSignpostPredicate *)self tags];
  [coderCopy encodeObject:tags forKey:@"tags"];

  dateRanges = [(ASCSignpostPredicate *)self dateRanges];
  [coderCopy encodeObject:dateRanges forKey:@"dateRanges"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  tags = [(ASCSignpostPredicate *)self tags];
  [(ASCHasher *)v3 combineObject:tags];

  dateRanges = [(ASCSignpostPredicate *)self dateRanges];
  [(ASCHasher *)v3 combineObject:dateRanges];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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
    tags = [(ASCSignpostPredicate *)self tags];
    tags2 = [v7 tags];
    v10 = tags2;
    if (tags && tags2)
    {
      if ([tags isEqual:tags2])
      {
        goto LABEL_10;
      }
    }

    else if (tags == tags2)
    {
LABEL_10:
      dateRanges = [(ASCSignpostPredicate *)self dateRanges];
      dateRanges2 = [v7 dateRanges];
      v13 = dateRanges2;
      if (dateRanges && dateRanges2)
      {
        v14 = [dateRanges isEqual:dateRanges2];
      }

      else
      {
        v14 = dateRanges == dateRanges2;
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
  tags = [(ASCSignpostPredicate *)self tags];
  [(ASCDescriber *)v3 addObject:tags withName:@"tags"];

  dateRanges = [(ASCSignpostPredicate *)self dateRanges];
  [(ASCDescriber *)v3 addObject:dateRanges withName:@"dateRanges"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (BOOL)isEmpty
{
  tags = [(ASCSignpostPredicate *)self tags];
  if ([tags count])
  {
    dateRanges = [(ASCSignpostPredicate *)self dateRanges];
    v5 = [dateRanges count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)predicateByAddingTag:(unint64_t)tag
{
  tags = [(ASCSignpostPredicate *)self tags];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:tag];
  v7 = [tags setByAddingObject:v6];

  v8 = objc_alloc(objc_opt_class());
  dateRanges = [(ASCSignpostPredicate *)self dateRanges];
  v10 = [v8 initWithTags:v7 dateRanges:dateRanges];

  return v10;
}

- (id)predicateByAddingDateRange:(id)range
{
  rangeCopy = range;
  dateRanges = [(ASCSignpostPredicate *)self dateRanges];
  v6 = [dateRanges arrayByAddingObject:rangeCopy];

  v7 = objc_alloc(objc_opt_class());
  tags = [(ASCSignpostPredicate *)self tags];
  v9 = [v7 initWithTags:tags dateRanges:v6];

  return v9;
}

- (void)initWithSpans:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Discarding span without valid range range %@", buf, 0xCu);
}

@end