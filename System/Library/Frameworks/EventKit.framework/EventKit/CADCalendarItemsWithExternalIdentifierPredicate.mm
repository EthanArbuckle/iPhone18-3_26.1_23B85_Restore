@interface CADCalendarItemsWithExternalIdentifierPredicate
@end

@implementation CADCalendarItemsWithExternalIdentifierPredicate

uint64_t __137__CADCalendarItemsWithExternalIdentifierPredicate_EKPredicateEvaluating__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke(id *a1, void *a2)
{
  v3 = [a2 objectID];
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] objectForKeyedSubscript:v3];
    if (v5)
    {
      [a1[5] removeObjectForKey:v3];
      v4 = [a1[6] ekPredicateEvaluateWithObject:v5];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

@end