@interface CRLWPCheckingResults
- (BOOL)isEqual:(id)equal;
- (CRLWPCheckingResults)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addResult:(id)result forRange:(_NSRange)range;
- (void)clear;
- (void)removeResultsForRanges:(id)ranges;
- (void)replacedTextAtRange:(_NSRange)range amount:(int64_t)amount;
@end

@implementation CRLWPCheckingResults

- (CRLWPCheckingResults)init
{
  v8.receiver = self;
  v8.super_class = CRLWPCheckingResults;
  v2 = [(CRLWPCheckingResults *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRLWPMutableRangeArray);
    ranges = v2->_ranges;
    v2->_ranges = v3;

    v5 = objc_alloc_init(NSMutableArray);
    results = v2->_results;
    v2->_results = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(CRLWPRangeArray *)self->_ranges mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSMutableArray *)self->_results mutableCopyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    v7 = self->_ranges == v6[1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = 0xCBF29CE484222325;
  if ([(CRLWPRangeArray *)self->_ranges rangeCount])
  {
    v4 = 0;
    do
    {
      v7 = 0;
      v8 = 0;
      v7 = [(CRLWPRangeArray *)self->_ranges rangeAtIndex:v4, 0, 0];
      v8 = v5;
      v3 = sub_100083B3C(&v7, 16, v3);
      ++v4;
    }

    while (v4 < [(CRLWPRangeArray *)self->_ranges rangeCount]);
  }

  return v3;
}

- (void)clear
{
  [(NSMutableArray *)self->_results removeAllObjects];
  ranges = self->_ranges;

  [(CRLWPMutableRangeArray *)ranges clear];
}

- (void)removeResultsForRanges:(id)ranges
{
  rangesCopy = ranges;
  rangeCount = [(CRLWPRangeArray *)self->_ranges rangeCount];
  if (rangeCount)
  {
    v5 = rangeCount;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      while (1)
      {
        v8 = v5--;
        v9 = [(CRLWPRangeArray *)self->_ranges rangeAtIndex:v5];
        if (![rangesCopy intersectsRange:{v9, v10}])
        {
          break;
        }

        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = v8;
        }

        v6 = v5;
        if (!v5)
        {
          goto LABEL_16;
        }
      }

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v6 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v6;
        }

        if (v6 < v7)
        {
          v7 = v6;
        }

        v12 = v11 - v7;
        [(NSMutableArray *)self->_results removeObjectsInRange:v7, v11 - v7];
        [(CRLWPMutableRangeArray *)self->_ranges removeRangesInRange:v7, v12];
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    while (v5);
LABEL_16:
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = v6;
      }

      if (v6 >= v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v6;
      }

      v15 = v13 - v14;
      [(NSMutableArray *)self->_results removeObjectsInRange:v14, v13 - v14];
      [(CRLWPMutableRangeArray *)self->_ranges removeRangesInRange:v14, v15];
    }
  }
}

- (void)replacedTextAtRange:(_NSRange)range amount:(int64_t)amount
{
  amount = [(CRLWPMutableRangeArray *)self->_ranges replacedTextAtRange:range.location delta:range.length, amount];
  if (v6)
  {
    v7 = amount;
    results = self->_results;

    [(NSMutableArray *)results removeObjectsInRange:v7, v6];
  }
}

- (void)addResult:(id)result forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  ranges = self->_ranges;
  resultCopy = result;
  v8 = [(CRLWPRangeArray *)ranges indexForRange:location, length];
  [(CRLWPMutableRangeArray *)self->_ranges insertRange:location atIndex:length, v8];
  [(NSMutableArray *)self->_results insertObject:resultCopy atIndex:v8];
}

@end