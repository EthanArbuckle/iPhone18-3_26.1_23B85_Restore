@interface BLSHPresentationDateSpecifier
+ (BLSHPresentationDateSpecifier)specifierWithPresentationDate:(id)date specifiers:(id)specifiers;
- (BLSHPresentationDateSpecifier)initWithPresentationDate:(id)date specifiers:(id)specifiers;
- (BOOL)isEqual:(id)equal;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (id)dateSpecifierForEnvironment:(id)environment;
- (id)filter:(id)filter;
- (unint64_t)encodedPresentationTime;
- (unint64_t)hash;
- (void)enumerateDateSpecifiersUsingBlock:(id)block;
@end

@implementation BLSHPresentationDateSpecifier

- (id)bls_loggingString
{
  v3 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__BLSHPresentationDateSpecifier_bls_loggingString__block_invoke;
  v14[3] = &unk_27841E538;
  v4 = v3;
  v15 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:v14];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __50__BLSHPresentationDateSpecifier_bls_loggingString__block_invoke_2;
  v11 = &unk_27841E538;
  selfCopy2 = self;
  v13 = v4;
  v5 = v4;
  [v5 appendBodySectionWithOpenDelimiter:@" {" closeDelimiter:@"} " block:&v8];
  v6 = [v5 description];

  return v6;
}

void __50__BLSHPresentationDateSpecifier_bls_loggingString__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3)
  {
    v6 = [*(v1 + 16) bls_shortLoggingString];
    v1 = *(a1 + 40);
  }

  else
  {
    v6 = @"<NULL>";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v1];
  [v2 appendString:v6 withName:v5];

  if (v3)
  {
  }
}

void __50__BLSHPresentationDateSpecifier_bls_loggingString__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v11 + 1) + 8 * v6) bls_shortLoggingString];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BLSHPresentationDateSpecifier)specifierWithPresentationDate:(id)date specifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  dateCopy = date;
  v8 = [[self alloc] initWithPresentationDate:dateCopy specifiers:specifiersCopy];

  return v8;
}

- (BLSHPresentationDateSpecifier)initWithPresentationDate:(id)date specifiers:(id)specifiers
{
  dateCopy = date;
  specifiersCopy = specifiers;
  v12.receiver = self;
  v12.super_class = BLSHPresentationDateSpecifier;
  v9 = [(BLSHPresentationDateSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentationDate, date);
    objc_storeStrong(&v10->_specifiers, specifiers);
  }

  return v10;
}

- (unint64_t)encodedPresentationTime
{
  encodedPresentationTime = self->_encodedPresentationTime;
  if (!encodedPresentationTime)
  {
    v4 = BLSHEncodePresentationTime_onceToken;
    v5 = self->_presentationDate;
    if (v4 != -1)
    {
      [BLSHPresentationDateSpecifier encodedPresentationTime];
    }

    v6 = [BLSHEncodePresentationTime_calendar components:32992 fromDate:v5];

    hour = [v6 hour];
    minute = [v6 minute];
    second = [v6 second];
    nanosecond = [v6 nanosecond];
    encodedPresentationTime = ((hour / 0xA) << 44) | ((hour % 0xA) << 40) | ((minute / 0xA) << 32) | ((minute % 0xA) << 28) | ((second / 0xA) << 20) | ((second % 0xA) << 16) | ((nanosecond + 500000) / 0x5F5E1uLL) & 0xFFFFFFFFFFFFFF00 | ((nanosecond + 500000) / 0xF4240uLL - 10 * (((nanosecond + 500000) / 0xF4240uLL * 0x199999999999999AuLL) >> 64)) | (16 * ((nanosecond + 500000) / 0x989680uLL - 10 * (((nanosecond + 500000) / 0x989680uLL * 0x199999999999999AuLL) >> 64))) | 0xC00C00C000;

    self->_encodedPresentationTime = encodedPresentationTime;
  }

  return encodedPresentationTime;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  presentationDate = self->_presentationDate;
  if (presentationDate)
  {
    bls_shortLoggingString = [(NSDate *)presentationDate bls_shortLoggingString];
    [v3 appendString:bls_shortLoggingString withName:0];
  }

  else
  {
    [v3 appendString:@"<NULL>" withName:0];
  }

  v6 = [v3 appendUnsignedInteger:-[NSArray count](self->_specifiers withName:{"count"), @"env"}];
  firstObject = [(NSArray *)self->_specifiers firstObject];
  environment = [firstObject environment];

  identifier = [environment identifier];
  v10 = [v3 appendObject:identifier withName:@"1st" skipIfNil:1];

  v11 = [v3 description];

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_presentationDate];
  specifiers = self->_specifiers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BLSHPresentationDateSpecifier_hash__block_invoke;
  v9[3] = &unk_2784206F8;
  v10 = builder;
  v6 = builder;
  [(NSArray *)specifiers enumerateObjectsUsingBlock:v9];
  v7 = [v6 hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  presentationDate = self->_presentationDate;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__BLSHPresentationDateSpecifier_isEqual___block_invoke;
  v13[3] = &unk_27841EB40;
  v7 = equalCopy;
  v14 = v7;
  v8 = [v5 appendObject:presentationDate counterpart:v13];
  if ([v5 isEqual])
  {
    specifiers = self->_specifiers;
    specifiers = [v7 specifiers];
    v11 = [(NSArray *)specifiers isEqualToArray:specifiers];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)enumerateDateSpecifiersUsingBlock:(id)block
{
  blockCopy = block;
  specifiers = self->_specifiers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__BLSHPresentationDateSpecifier_enumerateDateSpecifiersUsingBlock___block_invoke;
  v7[3] = &unk_278420720;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)specifiers enumerateObjectsUsingBlock:v7];
}

void __67__BLSHPresentationDateSpecifier_enumerateDateSpecifiersUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 dateSpecifier];
  v4 = [v3 environment];

  (*(v2 + 16))(v2, v5, v4);
}

- (id)dateSpecifierForEnvironment:(id)environment
{
  v18 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_specifiers;
  dateSpecifier = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (dateSpecifier)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != dateSpecifier; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        environment = [v9 environment];

        if (environment == environmentCopy)
        {
          dateSpecifier = [v9 dateSpecifier];
          goto LABEL_11;
        }
      }

      dateSpecifier = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (dateSpecifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return dateSpecifier;
}

- (id)filter:(id)filter
{
  v20 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_specifiers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_specifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (filterCopy[2](filterCopy, v11))
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [BLSHPresentationDateSpecifier specifierWithPresentationDate:self->_presentationDate specifiers:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end