@interface ARCoachingHeuristicCollection
- (ARCoachingHeuristicCollection)init;
- (int64_t)requirements;
- (void)addHeuristic:(id)a3;
- (void)clear;
- (void)updateWithFrame:(id)a3 cache:(id)a4;
@end

@implementation ARCoachingHeuristicCollection

- (ARCoachingHeuristicCollection)init
{
  v6.receiver = self;
  v6.super_class = ARCoachingHeuristicCollection;
  v2 = [(ARCoachingHeuristicCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    heuristics = v2->_heuristics;
    v2->_heuristics = v3;
  }

  return v2;
}

- (int64_t)requirements
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_heuristics;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) requirements];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = self;
  v8 = self->_heuristics;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    LODWORD(v13) = 1;
    *&v10 = 138544130;
    v26 = v10;
    v27 = *v31;
    do
    {
      v14 = 0;
      v29 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v15 satisfied];
        [v15 updateWithFrame:v6 cache:v7];
        v17 = [v15 satisfied];
        if (v16 != v17)
        {
          v18 = _ARLogCoaching_3();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = v22;
            *buf = v26;
            v24 = @"unsatisfied";
            if (v17)
            {
              v24 = @"satisfied";
            }

            v35 = v20;
            v36 = 2048;
            v37 = v28;
            v12 = v27;
            v38 = 2112;
            v39 = v22;
            v40 = 2112;
            v41 = v24;
            _os_log_impl(&dword_23D3AE000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Coaching heuristic %@ became %@", buf, 0x2Au);

            v11 = v29;
          }
        }

        v13 = v13 & v17;
        ++v14;
      }

      while (v11 != v14);
      v11 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  [(ARCoachingHeuristic *)v28 setSatisfied:v13];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)addHeuristic:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableArray *)self->_heuristics addObject:v4];
  v5 = _ARLogCoaching_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138543874;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Added coaching heuristic %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  v11 = *MEMORY[0x277D85DE8];
  [(ARCoachingHeuristic *)self setSatisfied:0];
  [(NSMutableArray *)self->_heuristics removeAllObjects];
  v3 = _ARLogCoaching_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Cleared coaching heuristics", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end