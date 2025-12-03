@interface CRLWPTabs
+ (id)tabs;
- (BOOL)isEqual:(id)equal;
- (CRLWPTabs)init;
- (CRLWPTabs)initWithTabs:(id)tabs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)tabAfterPosition:(double)position;
- (id)tabAtPosition:(double)position;
- (unint64_t)indexForTabWithPosition:(double)position alignment:(int)alignment leader:(id)leader;
- (void)insertTab:(id)tab;
- (void)setPosition:(double)position forTab:(id)tab;
@end

@implementation CRLWPTabs

+ (id)tabs
{
  v2 = objc_alloc_init(CRLWPTabs);

  return v2;
}

- (CRLWPTabs)init
{
  v6.receiver = self;
  v6.super_class = CRLWPTabs;
  v2 = [(CRLWPTabs *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    tabs = v2->_tabs;
    v2->_tabs = v3;
  }

  return v2;
}

- (CRLWPTabs)initWithTabs:(id)tabs
{
  tabsCopy = tabs;
  v9.receiver = self;
  v9.super_class = CRLWPTabs;
  v5 = [(CRLWPTabs *)&v9 init];
  if (v5)
  {
    v6 = [[NSMutableArray alloc] initWithArray:tabsCopy[1] copyItems:1];
    tabs = v5->_tabs;
    v5->_tabs = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithTabs:self];
}

- (id)tabAtPosition:(double)position
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tabs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 position];
        if (v9 == position || vabdd_f64(position, v9) < fabs(v9 * 0.000000999999997))
        {
          v10 = v8;
          goto LABEL_13;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (id)tabAfterPosition:(double)position
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tabs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 position];
        v10 = v9 <= position || v9 == position;
        if (!v10 && vabdd_f64(position, v9) >= 0.00999999978)
        {
          v5 = v8;
          goto LABEL_15;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

- (void)insertTab:(id)tab
{
  tabCopy = tab;
  v5 = tabCopy;
  if (tabCopy)
  {
    [tabCopy position];
    v7 = v6;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_tabs;
    v9 = 0;
    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      while (2)
      {
        v12 = 0;
        v13 = v9;
        v9 += v10;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12) position];
          if (v7 < v14)
          {
            v9 = v13;
            goto LABEL_12;
          }

          ++v13;
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(NSMutableArray *)self->_tabs insertObject:v5 atIndex:v9];
  }
}

- (void)setPosition:(double)position forTab:(id)tab
{
  tabCopy = tab;
  [tabCopy position];
  if (v6 != position)
  {
    v7 = [(CRLWPTabs *)self tabAtPosition:position];

    if (v7)
    {
      [tabCopy setPosition:position];
    }

    else
    {
      [(NSMutableArray *)self->_tabs removeObjectIdenticalTo:tabCopy];
      [tabCopy setPosition:position];
      [(CRLWPTabs *)self insertTab:tabCopy];
    }
  }
}

- (unint64_t)indexForTabWithPosition:(double)position alignment:(int)alignment leader:(id)leader
{
  leaderCopy = leader;
  v9 = [(NSMutableArray *)self->_tabs count];
  if (v9)
  {
    v10 = 0;
    if (leaderCopy)
    {
      v11 = leaderCopy;
    }

    else
    {
      v11 = @" ";
    }

    while (1)
    {
      v12 = [(NSMutableArray *)self->_tabs objectAtIndexedSubscript:v10];
      if ([v12 alignment] == alignment)
      {
        [v12 position];
        if (v13 == position || vabdd_f64(position, v13) < fabs(v13 * 0.000000999999997))
        {
          leader = [v12 leader];
          v15 = leaderCopy;
          v16 = leader;
          v17 = v16;
          v18 = v16 ? v16 : @" ";
          v19 = [(__CFString *)v11 isEqualToString:v18];

          if (v19)
          {
            break;
          }
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);
  if (v6)
  {
    tabs = self->_tabs;
    v8 = v6[1];
    if (tabs == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (tabs && v8)
      {
        v9 = [(NSMutableArray *)tabs isEqualToArray:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: tabs=%@>", v4, self->_tabs];

  return v5;
}

@end