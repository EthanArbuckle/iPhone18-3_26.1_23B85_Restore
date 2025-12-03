@interface BKTextIndexQueryResult
- (BKTextIndexQueryResult)initWithOrdinals:(id)ordinals allOrdinals:(id)allOrdinals;
- (BOOL)isCandidateOrdinal:(unint64_t)ordinal isMissing:(BOOL *)missing;
@end

@implementation BKTextIndexQueryResult

- (BKTextIndexQueryResult)initWithOrdinals:(id)ordinals allOrdinals:(id)allOrdinals
{
  ordinalsCopy = ordinals;
  allOrdinalsCopy = allOrdinals;
  v12.receiver = self;
  v12.super_class = BKTextIndexQueryResult;
  v9 = [(BKTextIndexQueryResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ordinals, ordinals);
    objc_storeStrong(&v10->_allOrdinals, allOrdinals);
  }

  return v10;
}

- (BOOL)isCandidateOrdinal:(unint64_t)ordinal isMissing:(BOOL *)missing
{
  ordinal = [NSString stringWithFormat:@"%lu", ordinal];
  v7 = [(NSSet *)self->_ordinals containsObject:ordinal];
  allOrdinals = self->_allOrdinals;
  if (allOrdinals)
  {
    v9 = ![(NSSet *)allOrdinals containsObject:ordinal];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  *missing = v9;
  v10 = v7 | v9;

  return v10 & 1;
}

@end