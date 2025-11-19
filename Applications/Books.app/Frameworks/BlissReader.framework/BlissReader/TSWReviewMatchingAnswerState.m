@interface TSWReviewMatchingAnswerState
- (BOOL)hasUserSelected;
- (TSWReviewMatchingAnswerState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)numSelectedTargets;
- (unint64_t)placardForTarget:(unint64_t)a3;
- (unint64_t)targetForPlacard:(unint64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setTarget:(unint64_t)a3 forPlacard:(unint64_t)a4;
@end

@implementation TSWReviewMatchingAnswerState

- (void)dealloc
{
  self->mPlacardToTargetMap = 0;
  v3.receiver = self;
  v3.super_class = TSWReviewMatchingAnswerState;
  [(TSWReviewMatchingAnswerState *)&v3 dealloc];
}

- (TSWReviewMatchingAnswerState)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSWReviewMatchingAnswerState;
  v4 = [(TSWReviewAnswerState *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->mPlacardToTargetMap = [a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"TSWReviewAnswerStateChoiceForSource"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWReviewMatchingAnswerState;
  [(TSWReviewAnswerState *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->mPlacardToTargetMap forKey:@"TSWReviewAnswerStateChoiceForSource"];
}

- (unint64_t)targetForPlacard:(unint64_t)a3
{
  mPlacardToTargetMap = self->mPlacardToTargetMap;
  if (!mPlacardToTargetMap)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(NSMutableArray *)mPlacardToTargetMap count]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [(NSMutableArray *)self->mPlacardToTargetMap objectAtIndex:a3];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v6 unsignedIntegerValue];
}

- (unint64_t)placardForTarget:(unint64_t)a3
{
  mPlacardToTargetMap = self->mPlacardToTargetMap;
  if (!mPlacardToTargetMap || ![(NSMutableArray *)mPlacardToTargetMap count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(NSMutableArray *)self->mPlacardToTargetMap objectAtIndex:v6];
    if (v7)
    {
      if ([v7 unsignedIntegerValue] == a3)
      {
        break;
      }
    }

    if (++v6 >= [(NSMutableArray *)self->mPlacardToTargetMap count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (void)setTarget:(unint64_t)a3 forPlacard:(unint64_t)a4
{
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    mPlacardToTargetMap = self->mPlacardToTargetMap;
    if (!mPlacardToTargetMap)
    {
      mPlacardToTargetMap = objc_alloc_init(NSMutableArray);
      self->mPlacardToTargetMap = mPlacardToTargetMap;
    }

    if ([(NSMutableArray *)mPlacardToTargetMap count]<= a4)
    {
      v8 = [(NSMutableArray *)self->mPlacardToTargetMap count];
      if ((a4 + 1) != v8)
      {
        if (a4 + 1 - v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = a4 + 1 - v8;
        }

        do
        {
          [(NSMutableArray *)self->mPlacardToTargetMap addObject:[NSNumber numberWithUnsignedInteger:0x7FFFFFFFFFFFFFFFLL]];
          --v9;
        }

        while (v9);
      }
    }

    v10 = [(TSWReviewMatchingAnswerState *)self placardForTarget:a3];
    if (v10 != a4)
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->mPlacardToTargetMap replaceObjectAtIndex:v10 withObject:[NSNumber numberWithUnsignedInteger:0x7FFFFFFFFFFFFFFFLL]];
      }

      v11 = [NSNumber numberWithUnsignedInteger:a3];
      v12 = self->mPlacardToTargetMap;

      [(NSMutableArray *)v12 replaceObjectAtIndex:a4 withObject:v11];
    }
  }
}

- (unint64_t)numSelectedTargets
{
  mPlacardToTargetMap = self->mPlacardToTargetMap;
  if (!mPlacardToTargetMap)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableArray *)mPlacardToTargetMap countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(mPlacardToTargetMap);
      }

      if ([*(*(&v9 + 1) + 8 * i) unsignedIntegerValue] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v5;
      }
    }

    v4 = [(NSMutableArray *)mPlacardToTargetMap countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (BOOL)hasUserSelected
{
  mPlacardToTargetMap = self->mPlacardToTargetMap;
  if (mPlacardToTargetMap)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMutableArray *)mPlacardToTargetMap countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(mPlacardToTargetMap);
          }

          if ([*(*(&v8 + 1) + 8 * i) unsignedIntegerValue] != 0x7FFFFFFFFFFFFFFFLL)
          {
            LOBYTE(v3) = 1;
            return v3;
          }
        }

        v4 = [(NSMutableArray *)mPlacardToTargetMap countByEnumeratingWithState:&v8 objects:v12 count:16];
        LOBYTE(v3) = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)description
{
  mPlacardToTargetMap = self->mPlacardToTargetMap;
  if (mPlacardToTargetMap)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"matchAnswer<<%@>>", [-[NSMutableArray arrayPiecewiseTransformedBy:](mPlacardToTargetMap arrayPiecewiseTransformedBy:{&stru_45D740), "componentsJoinedByString:", @", "}]);
  }

  else
  {
    return @"<matchAnswer<>>";
  }
}

@end