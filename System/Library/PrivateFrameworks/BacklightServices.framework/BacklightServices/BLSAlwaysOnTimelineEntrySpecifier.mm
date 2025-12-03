@interface BLSAlwaysOnTimelineEntrySpecifier
- (BLSAlwaysOnTimelineEntrySpecifier)initWithTimelineEntry:(id)entry percentComplete:(double)complete previousTimelineEntry:(id)timelineEntry didChange:(BOOL)change;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)requestedFidelity;
- (unint64_t)hash;
- (void)appendFidelityToTarget:(id)target;
- (void)setRequestedFidelity:(int64_t)fidelity;
@end

@implementation BLSAlwaysOnTimelineEntrySpecifier

- (BLSAlwaysOnTimelineEntrySpecifier)initWithTimelineEntry:(id)entry percentComplete:(double)complete previousTimelineEntry:(id)timelineEntry didChange:(BOOL)change
{
  entryCopy = entry;
  timelineEntryCopy = timelineEntry;
  v16.receiver = self;
  v16.super_class = BLSAlwaysOnTimelineEntrySpecifier;
  v13 = [(BLSAlwaysOnTimelineEntrySpecifier *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_lock._os_unfair_lock_opaque = 0;
    v13->_requestedFidelity = -1;
    v13->_grantedFidelity = -1;
    objc_storeStrong(&v13->_timelineEntry, entry);
    v14->_percentComplete = complete;
    objc_storeStrong(&v14->_previousTimelineEntry, timelineEntry);
    v14->_didChange = change;
  }

  return v14;
}

- (int64_t)compare:(id)compare
{
  timelineEntry = self->_timelineEntry;
  timelineEntry = [compare timelineEntry];
  v5 = [(BLSAlwaysOnTimelineEntry *)timelineEntry compare:timelineEntry];

  return v5;
}

- (int64_t)requestedFidelity
{
  os_unfair_lock_lock(&self->_lock);
  requestedFidelity = self->_requestedFidelity;
  if (requestedFidelity == -1)
  {
    requestedFidelity = [(BLSAlwaysOnTimelineEntry *)self->_timelineEntry requestedFidelity];
  }

  os_unfair_lock_unlock(&self->_lock);
  return requestedFidelity;
}

- (void)setRequestedFidelity:(int64_t)fidelity
{
  os_unfair_lock_lock(&self->_lock);
  self->_requestedFidelity = fidelity;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke;
  v10 = &unk_278428688;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

void __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timelineEntry];
  v3 = [*(a1 + 32) previousTimelineEntry];
  v4 = [v2 timelineIdentifier];
  v5 = v4;
  v6 = @"0x0";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [*(a1 + 40) appendObject:v7 withName:0];
  if ([v2 isAnimated])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke_2;
    v21[3] = &unk_278428638;
    v9 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    [v9 appendCustomFormatWithName:0 block:v21];
  }

  v10 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke_3;
  v18[3] = &unk_278428660;
  v19 = v2;
  v20 = v3;
  v11 = v3;
  v12 = v2;
  [v10 appendCustomFormatWithName:0 block:v18];
  v13 = *(a1 + 40);
  if ([*(a1 + 32) didChange])
  {
    v14 = @"∆";
  }

  else
  {
    v14 = @"-";
  }

  v15 = [v13 appendObject:v14 withName:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke_4;
  v17[3] = &unk_278428638;
  v16 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  [v16 appendCustomFormatWithName:0 block:v17];
}

void __48__BLSAlwaysOnTimelineEntrySpecifier_description__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) presentationTime];
  v4 = [v3 bls_shortLoggingString];
  [v7 appendString:v4];

  if (*(a1 + 40))
  {
    [v7 appendString:@"<-"];
    v5 = [*(a1 + 40) presentationTime];
    v6 = [v5 bls_shortLoggingString];
    [v7 appendString:v6];
  }
}

- (void)appendFidelityToTarget:(id)target
{
  targetCopy = target;
  requestedFidelity = [(BLSAlwaysOnTimelineEntrySpecifier *)self requestedFidelity];
  grantedFidelity = [(BLSAlwaysOnTimelineEntrySpecifier *)self grantedFidelity];
  if (requestedFidelity == grantedFidelity)
  {
    v6 = NSStringAbbreviatedFromBLSUpdateFidelity(requestedFidelity);
    [targetCopy appendString:v6];
  }

  else
  {
    if (grantedFidelity == -1)
    {
      v10 = NSStringAbbreviatedFromBLSUpdateFidelity(requestedFidelity);
      [targetCopy appendString:v10];

      v9 = @"(r)";
    }

    else
    {
      v7 = NSStringAbbreviatedFromBLSUpdateFidelity(grantedFidelity);
      [targetCopy appendString:v7];

      objc_msgSend(targetCopy, "appendString:", @"(r:");
      v8 = NSStringAbbreviatedFromBLSUpdateFidelity(requestedFidelity);
      [targetCopy appendString:v8];

      v9 = @"");
    }

    [targetCopy appendString:v9];
  }
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendDouble:@"percentComplete" withName:2 decimalPrecision:self->_percentComplete];
  v5 = [v3 appendBool:-[BLSAlwaysOnTimelineEntrySpecifier didChange](self withName:{"didChange"), @"didChange"}];
  v6 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnTimelineEntrySpecifier *)self requestedFidelity]);
  v7 = [v3 appendObject:v6 withName:@"requestedFidelity"];

  v8 = NSStringFromBLSUpdateFidelity([(BLSAlwaysOnTimelineEntrySpecifier *)self grantedFidelity]);
  v9 = [v3 appendObject:v8 withName:@"grantedFidelity"];

  v10 = [(BLSAlwaysOnTimelineEntry *)self->_timelineEntry debugDescription];
  v11 = [v3 appendObject:v10 withName:@"entry"];

  v12 = [(BLSAlwaysOnTimelineEntry *)self->_previousTimelineEntry debugDescription];
  v13 = [v3 appendObject:v12 withName:@"previousEntry"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    timelineEntry = self->_timelineEntry;
    timelineEntry = [equalCopy timelineEntry];
    if ([(BLSAlwaysOnTimelineEntry *)timelineEntry isEqual:timelineEntry])
    {
      percentComplete = self->_percentComplete;
      [equalCopy percentComplete];
      v9 = percentComplete == v8;
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

- (unint64_t)hash
{
  v3 = [(BLSAlwaysOnTimelineEntry *)self->_timelineEntry hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_percentComplete];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BLSAlwaysOnTimelineEntrySpecifier alloc];
  timelineEntry = self->_timelineEntry;
  percentComplete = self->_percentComplete;
  previousTimelineEntry = self->_previousTimelineEntry;
  didChange = [(BLSAlwaysOnTimelineEntrySpecifier *)self didChange];

  return [(BLSAlwaysOnTimelineEntrySpecifier *)v4 initWithTimelineEntry:timelineEntry percentComplete:previousTimelineEntry previousTimelineEntry:didChange didChange:percentComplete];
}

@end