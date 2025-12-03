@interface CLKClockComplicationCountSet
- (BOOL)isEqual:(id)equal;
- (CLKClockComplicationCountSet)init;
- (NSOrderedSet)orderedSet;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendCount:(id)count;
- (void)mergeSet:(id)set;
@end

@implementation CLKClockComplicationCountSet

- (CLKClockComplicationCountSet)init
{
  v6.receiver = self;
  v6.super_class = CLKClockComplicationCountSet;
  v2 = [(CLKClockComplicationCountSet *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    orderedSet = v2->_orderedSet;
    v2->_orderedSet = v3;
  }

  return v2;
}

- (void)appendCount:(id)count
{
  countCopy = count;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  orderedSet = self->_orderedSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CLKClockComplicationCountSet_appendCount___block_invoke;
  v9[3] = &unk_278A1F6C0;
  v6 = countCopy;
  v10 = v6;
  v11 = &v13;
  v12 = &v19;
  [(NSMutableOrderedSet *)orderedSet enumerateObjectsUsingBlock:v9];
  v7 = v14[5];
  if (v7)
  {
    v8 = [v7 mergedWith:v6];
    [(NSMutableOrderedSet *)self->_orderedSet replaceObjectAtIndex:v20[3] withObject:v8];
  }

  else
  {
    [(NSMutableOrderedSet *)self->_orderedSet addObject:v6];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __44__CLKClockComplicationCountSet_appendCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [*(a1 + 32) applicationIdentifier];
  v9 = [v11 applicationIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)mergeSet:(id)set
{
  orderedSet = [set orderedSet];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CLKClockComplicationCountSet_mergeSet___block_invoke;
  v5[3] = &unk_278A1F6E8;
  v5[4] = self;
  [orderedSet enumerateObjectsUsingBlock:v5];
}

- (NSOrderedSet)orderedSet
{
  v2 = [(NSMutableOrderedSet *)self->_orderedSet copy];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableOrderedSet *)self->_orderedSet isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CLKClockComplicationCountSet allocWithZone:?]];
  v5 = [(NSMutableOrderedSet *)self->_orderedSet mutableCopy];
  orderedSet = v4->_orderedSet;
  v4->_orderedSet = v5;

  return v4;
}

@end