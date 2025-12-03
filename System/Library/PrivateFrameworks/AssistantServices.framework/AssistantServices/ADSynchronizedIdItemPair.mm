@interface ADSynchronizedIdItemPair
- (ADSynchronizedIdItemPair)initWithCurrent:(id)current andNext:(id)next;
- (ADSynchronizedIdItemPair)initWithRemote:(id)remote;
- (BOOL)setCurrentIfNil:(id)nil andCreationTime:(id)time andValidityDays:(unsigned int)days;
- (id)adoptRemoteIfEarly:(id)early;
- (id)selectEarliest:(id)earliest;
- (unint64_t)_populateNullsWithCreationTime:(id)time today:(id)today minValidityDays:(unsigned int)days maxValidityDays:(unsigned int)validityDays currentOption:(unint64_t)option nextOption:(unint64_t)nextOption;
@end

@implementation ADSynchronizedIdItemPair

- (BOOL)setCurrentIfNil:(id)nil andCreationTime:(id)time andValidityDays:(unsigned int)days
{
  current = self->_current;
  if (!current)
  {
    v6 = *&days;
    timeCopy = time;
    nilCopy = nil;
    v11 = [ADSynchronizedIdItem alignToMidnight:timeCopy];
    v12 = [[ADSynchronizedIdItem alloc] initWithValue:nilCopy andEffectiveFrom:v11 andValidityDays:v6 andCreatedOn:timeCopy andAdoptedOn:0 andSwitchedCount:0];

    v13 = self->_current;
    self->_current = v12;
  }

  return current == 0;
}

- (unint64_t)_populateNullsWithCreationTime:(id)time today:(id)today minValidityDays:(unsigned int)days maxValidityDays:(unsigned int)validityDays currentOption:(unint64_t)option nextOption:(unint64_t)nextOption
{
  v10 = *&validityDays;
  v11 = *&days;
  timeCopy = time;
  todayCopy = today;
  if (self->_current)
  {
    option = 0;
  }

  else
  {
    if (v10 != v11)
    {
      v11 = arc4random_uniform(v10 - v11) + v11;
    }

    v16 = [ADSynchronizedIdItem alloc];
    v17 = objc_alloc_init(NSUUID);
    v18 = [(ADSynchronizedIdItem *)v16 initWithValue:v17 andEffectiveFrom:todayCopy andValidityDays:v11 andCreatedOn:timeCopy andAdoptedOn:0 andSwitchedCount:0];
    current = self->_current;
    self->_current = v18;
  }

  if (!self->_next && [(ADSynchronizedIdItem *)self->_current expirationDaysFrom:todayCopy]<= 14)
  {
    v20 = [ADSynchronizedIdItem alloc];
    v21 = objc_alloc_init(NSUUID);
    expirationDate = [(ADSynchronizedIdItem *)self->_current expirationDate];
    v23 = [(ADSynchronizedIdItem *)v20 initWithValue:v21 andEffectiveFrom:expirationDate andValidityDays:v10 andCreatedOn:timeCopy andAdoptedOn:0 andSwitchedCount:0];
    next = self->_next;
    self->_next = v23;

    option |= nextOption;
  }

  return option;
}

- (id)adoptRemoteIfEarly:(id)early
{
  earlyCopy = early;
  v5 = earlyCopy;
  if (!earlyCopy)
  {
    selfCopy = self;
    goto LABEL_18;
  }

  current = self->_current;
  current = [earlyCopy current];
  v8 = current;
  if (current)
  {

    v9 = self->_current;
    if (v8)
    {
      current2 = [v5 current];
      v8 = [(ADSynchronizedIdItem *)v9 selectEarliest:current2];
    }

    else
    {
      v8 = v9;
    }
  }

  next = self->_next;
  next = [v5 next];
  v14 = next;
  if (next)
  {

    v15 = self->_next;
    if (v14)
    {
      next2 = [v5 next];
      v14 = [(ADSynchronizedIdItem *)v15 selectEarliest:next2];
    }

    else
    {
      v14 = v15;
    }
  }

  if (v8 != self->_current)
  {
    v17 = [[ADSynchronizedIdItem alloc] initAndAdopt:v8 andSwitchedCount:[(ADSynchronizedIdItem *)self->_current switchedCount]+ 1];

    v18 = self->_next;
    v8 = v17;
LABEL_14:
    if (v14 != v18)
    {
      v19 = [[ADSynchronizedIdItem alloc] initAndAdopt:v14 andSwitchedCount:[(ADSynchronizedIdItem *)self->_next switchedCount]+ 1];

      v14 = v19;
    }

    selfCopy2 = [[ADSynchronizedIdItemPair alloc] initWithCurrent:v8 andNext:v14];
    goto LABEL_17;
  }

  v18 = self->_next;
  if (v14 != v18)
  {
    goto LABEL_14;
  }

  selfCopy2 = self;
LABEL_17:
  selfCopy = selfCopy2;

LABEL_18:

  return selfCopy;
}

- (id)selectEarliest:(id)earliest
{
  earliestCopy = earliest;
  v5 = earliestCopy;
  if (!earliestCopy)
  {
    selfCopy = self;
    goto LABEL_18;
  }

  current = self->_current;
  current = [earliestCopy current];
  v8 = current;
  if (current)
  {

    v9 = self->_current;
    if (v8)
    {
      current2 = [v5 current];
      v8 = [(ADSynchronizedIdItem *)v9 selectEarliest:current2];
    }

    else
    {
      v8 = v9;
    }
  }

  next = self->_next;
  next = [v5 next];
  v14 = next;
  if (next)
  {

    v15 = self->_next;
    if (v14)
    {
      next2 = [v5 next];
      v14 = [(ADSynchronizedIdItem *)v15 selectEarliest:next2];
    }

    else
    {
      v14 = v15;
    }
  }

  v17 = self->_next;
  if (v8 == self->_current)
  {
    if (v14 == v17)
    {
      selfCopy2 = self;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v14 == v17)
  {
LABEL_15:
    selfCopy2 = [[ADSynchronizedIdItemPair alloc] initWithCurrent:v8 andNext:v14];
    goto LABEL_17;
  }

  selfCopy2 = v5;
LABEL_17:
  selfCopy = selfCopy2;

LABEL_18:

  return selfCopy;
}

- (ADSynchronizedIdItemPair)initWithRemote:(id)remote
{
  remoteCopy = remote;
  v17.receiver = self;
  v17.super_class = ADSynchronizedIdItemPair;
  v5 = [(ADSynchronizedIdItemPair *)&v17 init];
  if (v5)
  {
    current = [remoteCopy current];

    if (current)
    {
      v7 = [ADSynchronizedIdItem alloc];
      current2 = [remoteCopy current];
      v9 = [(ADSynchronizedIdItem *)v7 initAndAdopt:current2];
      current = v5->_current;
      v5->_current = v9;
    }

    next = [remoteCopy next];

    if (next)
    {
      v12 = [ADSynchronizedIdItem alloc];
      next2 = [remoteCopy next];
      v14 = [(ADSynchronizedIdItem *)v12 initAndAdopt:next2];
      next = v5->_next;
      v5->_next = v14;
    }
  }

  return v5;
}

- (ADSynchronizedIdItemPair)initWithCurrent:(id)current andNext:(id)next
{
  currentCopy = current;
  nextCopy = next;
  v12.receiver = self;
  v12.super_class = ADSynchronizedIdItemPair;
  v9 = [(ADSynchronizedIdItemPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_current, current);
    objc_storeStrong(&v10->_next, next);
  }

  return v10;
}

@end