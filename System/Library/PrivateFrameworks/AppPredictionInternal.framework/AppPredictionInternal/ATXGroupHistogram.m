@interface ATXGroupHistogram
- (ATXGroupHistogram)init;
- (double)_getTotalScore;
- (double)getScoreForGroup:(id)a3;
- (void)addScore:(double)a3 group:(id)a4;
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

- (void)addScore:(double)a3 group:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    pthread_mutex_lock(&self->_lock);
    self->_isTotalScoreValid = 0;
    v8 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];
      [(ATXGroupHistogramEntry *)v9 addScore:a3];
    }

    else
    {
      v9 = [[ATXGroupHistogramEntry alloc] initWithScore:a3];
      [(NSMutableDictionary *)self->_histogram setObject:v9 forKeyedSubscript:v10];
    }

    v6 = pthread_mutex_unlock(&self->_lock);
    v7 = v10;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (double)getScoreForGroup:(id)a3
{
  v4 = a3;
  if (v4)
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
      v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v4];
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
    v3 = [(NSMutableDictionary *)self->_histogram objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 count];
          [v8 score];
          self->_total = self->_total + v9 * v10;
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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