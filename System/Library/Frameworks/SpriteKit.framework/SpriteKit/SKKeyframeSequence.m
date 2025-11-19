@interface SKKeyframeSequence
- (BOOL)isEqualToSequence:(id)a3;
- (CGFloat)getKeyframeTimeForIndex:(NSUInteger)index;
- (Class)_valueClass;
- (SKCKeyframeSequence)_createSKCKeyframeSequence;
- (SKKeyframeSequence)initWithCapacity:(NSUInteger)numItems;
- (SKKeyframeSequence)initWithCoder:(NSCoder *)aDecoder;
- (SKKeyframeSequence)initWithCount:(unint64_t)a3;
- (SKKeyframeSequence)initWithKeyframeValues:(NSArray *)values times:(NSArray *)times;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getKeyframeValueForIndex:(NSUInteger)index;
- (id)sampleAtTime:(CGFloat)time;
- (void)_dirtySKCKeyframeSequence;
- (void)addKeyframeValue:(id)value time:(CGFloat)time;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllKeyframes;
- (void)removeKeyframeAtIndex:(NSUInteger)index;
- (void)removeLastKeyframe;
- (void)setKeyframeTime:(CGFloat)time forIndex:(NSUInteger)index;
- (void)setKeyframeValue:(id)value forIndex:(NSUInteger)index;
- (void)setKeyframeValue:(id)value time:(CGFloat)time forIndex:(NSUInteger)index;
@end

@implementation SKKeyframeSequence

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKKeyframeSequence *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SKKeyframeSequence alloc];
  values = self->_values;
  times = self->_times;

  return [(SKKeyframeSequence *)v4 initWithKeyframeValues:values times:times];
}

- (SKKeyframeSequence)initWithCoder:(NSCoder *)aDecoder
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = aDecoder;
  v16.receiver = self;
  v16.super_class = SKKeyframeSequence;
  v5 = [(SKKeyframeSequence *)&v16 init];
  if (v5)
  {
    [(SKKeyframeSequence *)v5 setInterpolationMode:[(NSCoder *)v4 decodeIntegerForKey:@"_interpolationMode"]];
    [(SKKeyframeSequence *)v5 setRepeatMode:[(NSCoder *)v4 decodeIntegerForKey:@"_repeatMode"]];
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    [v6 addObjectsFromArray:v7];

    v8 = [(NSCoder *)v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = [(NSCoder *)v4 decodeObjectOfClasses:v6 forKey:@"_values"];
    values = v5->_values;
    v5->_values = v9;

    v11 = [(NSCoder *)v4 decodeObjectOfClasses:v6 forKey:@"_times"];
    times = v5->_times;
    v5->_times = v11;

    v5->_cKeyframeSequence = 0;
    v13 = [(NSMutableArray *)v5->_values count];
    if (v13 != [(NSMutableArray *)v5->_times count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"'values' and 'times'  arrays must have equal counts"];

      v14 = 0;
      goto LABEL_6;
    }

    v5->_count = [(NSMutableArray *)v5->_values count];
  }

  v14 = v5;
LABEL_6:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SKKeyframeSequence interpolationMode](self forKey:{"interpolationMode"), @"_interpolationMode"}];
  [v4 encodeInteger:-[SKKeyframeSequence repeatMode](self forKey:{"repeatMode"), @"_repeatMode"}];
  [v4 encodeObject:self->_values forKey:@"_values"];
  [v4 encodeObject:self->_times forKey:@"_times"];
}

- (SKKeyframeSequence)initWithCapacity:(NSUInteger)numItems
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:numItems];
  v7 = [(SKKeyframeSequence *)self initWithKeyframeValues:v5 times:v6];

  return v7;
}

- (SKKeyframeSequence)initWithKeyframeValues:(NSArray *)values times:(NSArray *)times
{
  v6 = values;
  v7 = times;
  v16.receiver = self;
  v16.super_class = SKKeyframeSequence;
  v8 = [(SKKeyframeSequence *)&v16 init];
  if (v8)
  {
    v9 = [(NSArray *)v6 count];
    if (v9 != [(NSArray *)v7 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"'values' and 'times'  arrays must have equal counts"];
      v14 = 0;
      goto LABEL_6;
    }

    v8->_count = v9;
    v10 = [(NSArray *)v6 mutableCopy];
    v11 = v8->_values;
    v8->_values = v10;

    v12 = [(NSArray *)v7 mutableCopy];
    v13 = v8->_times;
    v8->_times = v12;

    *&v8->_interpolationMode = vdupq_n_s64(1uLL);
    v8->_cKeyframeSequence = 0;
  }

  v14 = v8;
LABEL_6:

  return v14;
}

- (void)addKeyframeValue:(id)value time:(CGFloat)time
{
  v6 = value;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v9 = v6;
  [(NSMutableArray *)self->_values addObject:v6];
  times = self->_times;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [(NSMutableArray *)times addObject:v8];

  self->_count = [(NSMutableArray *)self->_values count];
}

- (void)removeLastKeyframe
{
  [(NSMutableArray *)self->_values removeLastObject];
  [(NSMutableArray *)self->_times removeLastObject];
  self->_count = [(NSMutableArray *)self->_values count];
}

- (void)removeAllKeyframes
{
  [(NSMutableArray *)self->_values removeAllObjects];
  [(NSMutableArray *)self->_times removeAllObjects];
  self->_count = [(NSMutableArray *)self->_values count];
}

- (void)removeKeyframeAtIndex:(NSUInteger)index
{
  [(NSMutableArray *)self->_values removeObjectAtIndex:?];
  [(NSMutableArray *)self->_times removeObjectAtIndex:index];
  self->_count = [(NSMutableArray *)self->_values count];
}

- (void)setKeyframeValue:(id)value forIndex:(NSUInteger)index
{
  v6 = value;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v7 = v6;
  [(NSMutableArray *)self->_values replaceObjectAtIndex:index withObject:v6];
  [(SKKeyframeSequence *)self _dirtySKCKeyframeSequence];
}

- (void)setKeyframeTime:(CGFloat)time forIndex:(NSUInteger)index
{
  times = self->_times;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [(NSMutableArray *)times replaceObjectAtIndex:index withObject:v7];

  [(SKKeyframeSequence *)self _dirtySKCKeyframeSequence];
}

- (void)setKeyframeValue:(id)value time:(CGFloat)time forIndex:(NSUInteger)index
{
  v8 = value;
  [SKKeyframeSequence setKeyframeValue:"setKeyframeValue:forIndex:" forIndex:?];
  [(SKKeyframeSequence *)self setKeyframeTime:index forIndex:time];
  [(SKKeyframeSequence *)self _dirtySKCKeyframeSequence];
}

- (id)getKeyframeValueForIndex:(NSUInteger)index
{
  v3 = [(NSMutableArray *)self->_values objectAtIndex:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (Class)_valueClass
{
  if (self->_count)
  {
    v2 = [(NSMutableArray *)self->_values objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v3 = objc_opt_class();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SKCKeyframeSequence)_createSKCKeyframeSequence
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_count >= 1)
  {
    v3 = [(NSMutableArray *)self->_values objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = self->_values;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (!v6)
      {
        goto LABEL_22;
      }

      v7 = *v14;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
          if (!v6)
          {
LABEL_22:

            if (isKindOfClass)
            {
              operator new();
            }

            operator new();
          }

          goto LABEL_5;
        }
      }

      NSLog(&cfstr_AllValuesInASk.isa, v13);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_Skkeyframesequ.isa);
LABEL_28:

        return 0;
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = self->_values;
      v9 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = *v18;
LABEL_16:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (!v9)
          {
            goto LABEL_22;
          }

          goto LABEL_16;
        }
      }

      NSLog(&cfstr_AllValuesInASk.isa);
    }

    goto LABEL_28;
  }

  return 0;
}

- (void)_dirtySKCKeyframeSequence
{
  cKeyframeSequence = self->_cKeyframeSequence;
  if (cKeyframeSequence)
  {
    SKCKeyframeSequence::~SKCKeyframeSequence(cKeyframeSequence);
    MEMORY[0x21CF0A160]();
    self->_cKeyframeSequence = 0;
  }
}

- (id)sampleAtTime:(CGFloat)time
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_cKeyframeSequence)
  {
    self->_cKeyframeSequence = [(SKKeyframeSequence *)self _createSKCKeyframeSequence];
  }

  v5 = [(SKKeyframeSequence *)self _valueClass];
  if (v5)
  {
    v6 = v5;
    if (v5 == objc_opt_class())
    {
      v7 = time;
      SKCKeyframeSequence::sample(self->_cKeyframeSequence, v7, v10);
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:v10[0]];
    }

    else if (v6 == objc_opt_class())
    {
      v8 = time;
      SKCKeyframeSequence::sample(self->_cKeyframeSequence, v8, v10);
      v5 = [MEMORY[0x277D75348] colorWithRed:v10[0] green:v10[1] blue:v10[2] alpha:v10[3]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CGFloat)getKeyframeTimeForIndex:(NSUInteger)index
{
  v3 = [(NSMutableArray *)self->_times objectAtIndex:index];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (SKKeyframeSequence)initWithCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v5 addObject:v7];

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    [i addObject:v8];
  }

  v9 = [(SKKeyframeSequence *)self initWithKeyframeValues:v5 times:i];

  return v9;
}

- (BOOL)isEqualToSequence:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(SKKeyframeSequence *)self interpolationMode];
    if (v5 == [(SKKeyframeSequence *)v4 interpolationMode]&& (v6 = [(SKKeyframeSequence *)self repeatMode], v6 == [(SKKeyframeSequence *)v4 repeatMode]))
    {
      v7 = 0;
      while ([(NSMutableArray *)self->_values count]> v7)
      {
        if ([(NSMutableArray *)v4->_values count]> v7)
        {
          v8 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:v7];
          v9 = [(NSMutableArray *)v4->_values objectAtIndexedSubscript:v7];
          v10 = [v8 isEqual:v9];

          ++v7;
          if (v10)
          {
            continue;
          }
        }

        goto LABEL_8;
      }

      v13 = 0;
      do
      {
        v14 = [(NSMutableArray *)self->_times count];
        v11 = v14 <= v13;
        if (v14 <= v13)
        {
          break;
        }

        if ([(NSMutableArray *)v4->_times count]<= v13)
        {
          break;
        }

        v15 = [(NSMutableArray *)self->_times objectAtIndexedSubscript:v13];
        v16 = [(NSMutableArray *)v4->_times objectAtIndexedSubscript:v13];
        v17 = [v15 isEqualToNumber:v16];

        ++v13;
      }

      while ((v17 & 1) != 0);
    }

    else
    {
LABEL_8:
      v11 = 0;
    }
  }

  return v11;
}

@end