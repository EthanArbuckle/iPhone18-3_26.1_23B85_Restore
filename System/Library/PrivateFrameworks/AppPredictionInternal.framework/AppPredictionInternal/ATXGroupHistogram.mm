@interface ATXGroupHistogram
- (ATXGroupHistogram)init;
- (double)_getTotalScore;
- (double)getScoreForGroup:(id)group;
- (void)addScore:(double)score group:(id)group;
- (void)dealloc;
@end

@implementation ATXGroupHistogram

- (ATXGroupHistogram)init
{
  v6.receiver = self;
  v6.super_class = ATXGroupHistogram;
  v2 = [(ATXGroupHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    histogram = v2->_histogram;
    v2->_histogram = v3;

    v2->_total = 0.0;
    v2->_isTotalScoreValid = 1;
    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = ATXGroupHistogram;
  [(ATXGroupHistogram *)&v3 dealloc];
}

- (void)addScore:(double)score group:(id)group
{
  groupCopy = group;
  v7 = groupCopy;
  if (groupCopy)
  {
    v10 = groupCopy;
    pthread_mutex_lock(&self->_lock);
    self->_isTotalScoreValid = 0;
    v8 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];
      [(ATXGroupHistogramEntry *)v9 addScore:score];
    }

    else
    {
      v9 = [[ATXGroupHistogramEntry alloc] initWithScore:score];
      [(NSMutableDictionary *)self->_histogram setObject:v9 forKeyedSubscript:v10];
    }

    groupCopy = pthread_mutex_unlock(&self->_lock);
    v7 = v10;
  }

  MEMORY[0x2821F96F8](groupCopy, v7);
}

- (double)getScoreForGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    pthread_mutex_lock(&self->_lock);
    [(ATXGroupHistogram *)self _getTotalScore];
    if (v5 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v6 = v5;
      v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:groupCopy];
      [v7 score];
      v9 = v8 / v6;
    }

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)_getTotalScore
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_isTotalScoreValid)
  {
    self->_total = 0.0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_histogram objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 count];
          [v8 score];
          self->_total = self->_total + v9 * v10;
        }

        v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    self->_isTotalScoreValid = 1;
  }

  result = self->_total;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end