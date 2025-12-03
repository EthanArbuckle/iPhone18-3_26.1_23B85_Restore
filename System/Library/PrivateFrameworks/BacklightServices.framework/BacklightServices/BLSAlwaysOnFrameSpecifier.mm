@interface BLSAlwaysOnFrameSpecifier
- (BLSAlwaysOnFrameSpecifier)initWithTimelineEntrySpecifiers:(id)specifiers presentationInterval:(id)interval;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)correctedSpecifierWithNextSpecifier:(id)specifier;
- (id)debugDescription;
- (id)description;
- (id)entrySpecifierForTimelineIdentifier:(id)identifier;
- (int64_t)compare:(id)compare;
- (int64_t)grantedFidelity;
- (int64_t)requestedFidelity;
- (void)constrainEntriesToUpdateFidelity:(uint64_t)fidelity;
- (void)setGrantedFidelity:(int64_t)fidelity;
@end

@implementation BLSAlwaysOnFrameSpecifier

- (BLSAlwaysOnFrameSpecifier)initWithTimelineEntrySpecifiers:(id)specifiers presentationInterval:(id)interval
{
  specifiersCopy = specifiers;
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = BLSAlwaysOnFrameSpecifier;
  v8 = [(BLSAlwaysOnFrameSpecifier *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [specifiersCopy copy];
    entrySpecifiers = v9->_entrySpecifiers;
    v9->_entrySpecifiers = v10;

    v12 = [intervalCopy copy];
    presentationInterval = v9->_presentationInterval;
    v9->_presentationInterval = v12;

    v9->_grantedFidelity = -1;
  }

  return v9;
}

- (id)entrySpecifierForTimelineIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_entrySpecifiers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__BLSAlwaysOnFrameSpecifier_entrySpecifierForTimelineIdentifier___block_invoke;
  v10[3] = &unk_2784286B0;
  v6 = identifierCopy;
  v11 = v6;
  v7 = [(NSArray *)v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)v5 objectAtIndex:v7];
  }

  return v8;
}

uint64_t __65__BLSAlwaysOnFrameSpecifier_entrySpecifierForTimelineIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 timelineEntry];
  v7 = [v6 timelineIdentifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  presentationInterval = self->_presentationInterval;
  presentationInterval = [compare presentationInterval];
  v5 = [(NSDateInterval *)presentationInterval compare:presentationInterval];

  return v5;
}

- (int64_t)requestedFidelity
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_entrySpecifiers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        requestedFidelity = [*(*(&v11 + 1) + 8 * i) requestedFidelity];
        if (requestedFidelity > v5)
        {
          v5 = requestedFidelity;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)grantedFidelity
{
  os_unfair_lock_lock(&self->_lock);
  grantedFidelity = self->_grantedFidelity;
  os_unfair_lock_unlock(&self->_lock);
  return grantedFidelity;
}

- (void)setGrantedFidelity:(int64_t)fidelity
{
  os_unfair_lock_lock(&self->_lock);
  self->_grantedFidelity = fidelity;
  os_unfair_lock_unlock(&self->_lock);

  [(BLSAlwaysOnFrameSpecifier *)self constrainEntriesToUpdateFidelity:fidelity];
}

- (id)correctedSpecifierWithNextSpecifier:(id)specifier
{
  v44 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  v5 = self->_entrySpecifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      v9 = 0;
      v38 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        if ([v10 requestedFidelity] == -1)
        {
          timelineEntry = [v10 timelineEntry];
          timelineIdentifier = [timelineEntry timelineIdentifier];
          v13 = [specifierCopy entrySpecifierForTimelineIdentifier:timelineIdentifier];

          timelineEntry2 = [v13 timelineEntry];
          if ([timelineEntry isEqual:timelineEntry2])
          {
            requestedFidelity = [v13 requestedFidelity];
          }

          else
          {
            [timelineEntry2 presentationTime];
            v16 = v8;
            v17 = v5;
            v19 = v18 = specifierCopy;
            presentationTime = [timelineEntry presentationTime];
            [v19 timeIntervalSinceDate:presentationTime];
            v22 = v21;

            specifierCopy = v18;
            v5 = v17;
            v8 = v16;
            v7 = v38;
            v23 = [BLSFidelityThreshold fidelityForUpdateInterval:v22];
            if (v23 == 3)
            {
              requestedFidelity = 2;
            }

            else
            {
              requestedFidelity = v23;
            }
          }

          [v10 setRequestedFidelity:requestedFidelity];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v7);
  }

  presentationInterval = [(BLSAlwaysOnFrameSpecifier *)selfCopy presentationInterval];
  presentationInterval2 = [specifierCopy presentationInterval];
  startDate = [presentationInterval2 startDate];

  endDate = [presentationInterval endDate];
  v28 = [endDate isEqualToDate:startDate];

  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v30 = [BLSAlwaysOnFrameSpecifier alloc];
    entrySpecifiers = [(BLSAlwaysOnFrameSpecifier *)selfCopy entrySpecifiers];
    v32 = objc_alloc(MEMORY[0x277CCA970]);
    startDate2 = [presentationInterval startDate];
    v34 = [v32 initWithStartDate:startDate2 endDate:startDate];
    v29 = [(BLSAlwaysOnFrameSpecifier *)v30 initWithTimelineEntrySpecifiers:entrySpecifiers presentationInterval:v34];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)description
{
  v3 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__BLSAlwaysOnFrameSpecifier_description__block_invoke;
  v11[3] = &unk_278428688;
  v4 = v3;
  v12 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:v11];
  entrySpecifiers = self->_entrySpecifiers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__BLSAlwaysOnFrameSpecifier_description__block_invoke_2;
  v9[3] = &unk_2784286D8;
  v10 = v4;
  v6 = v4;
  [v6 appendCollection:entrySpecifiers withName:0 itemBlock:v9];
  v7 = [v6 description];

  return v7;
}

void __40__BLSAlwaysOnFrameSpecifier_description__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 32) bls_shortLoggingString];
  v2 = [v1 appendObject:v3 withName:0];
}

void __40__BLSAlwaysOnFrameSpecifier_description__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__BLSAlwaysOnFrameSpecifier_description__block_invoke_3;
  v6[3] = &unk_278428638;
  v7 = v3;
  v5 = v3;
  [v4 appendCustomFormatWithName:0 block:v6];
}

void __40__BLSAlwaysOnFrameSpecifier_description__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) timelineEntry];
  v4 = [v3 presentationTime];
  v5 = [v4 bls_shortLoggingString];
  [v13 appendString:v5];

  [v13 appendString:@" "];
  if ([v3 isAnimated])
  {
    [*(a1 + 32) percentComplete];
    [v13 appendFormat:@"%.2lf%% ", v6];
  }

  [*(a1 + 32) appendFidelityToTarget:v13];
  [v13 appendString:@" "];
  v7 = [v3 timelineIdentifier];
  v8 = v7;
  v9 = @"0x0";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(__CFString *)v10 description];

  [v13 appendString:v11];
  [v13 appendString:@" "];
  if ([*(a1 + 32) didChange])
  {
    v12 = @"∆";
  }

  else
  {
    v12 = @"-";
  }

  [v13 appendString:v12];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_loggingString = [(NSDateInterval *)self->_presentationInterval bls_loggingString];
  [v3 appendString:bls_loggingString withName:@"presentation interval"];

  v5 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnFrameSpecifier *)self grantedFidelity]);
  v6 = [v3 appendObject:v5 withName:@"grantedFidelity"];

  v7 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnFrameSpecifier *)self requestedFidelity]);
  v8 = [v3 appendObject:v7 withName:@"requestedFidelity"];

  [v3 appendArraySection:self->_entrySpecifiers withName:@"entries" skipIfEmpty:1 objectTransformer:&__block_literal_global];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentationInterval = self->_presentationInterval;
    presentationInterval = [equalCopy presentationInterval];
    if ([(NSDateInterval *)presentationInterval isEqual:presentationInterval])
    {
      entrySpecifiers = self->_entrySpecifiers;
      entrySpecifiers = [equalCopy entrySpecifiers];
      v9 = [(NSArray *)entrySpecifiers isEqualToArray:entrySpecifiers];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BLSAlwaysOnFrameSpecifier alloc];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_entrySpecifiers copyItems:1];
  v6 = [(BLSAlwaysOnFrameSpecifier *)v4 initWithTimelineEntrySpecifiers:v5 presentationInterval:self->_presentationInterval];

  return v6;
}

- (void)constrainEntriesToUpdateFidelity:(uint64_t)fidelity
{
  v17 = *MEMORY[0x277D85DE8];
  if (fidelity)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(fidelity + 24);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          requestedFidelity = [v8 requestedFidelity];
          if (requestedFidelity >= a2)
          {
            v10 = a2;
          }

          else
          {
            v10 = requestedFidelity;
          }

          [v8 setGrantedFidelity:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end