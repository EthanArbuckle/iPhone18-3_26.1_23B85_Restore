@interface SHSyncedLyrics
- (SHSyncedLyrics)initWithCoder:(id)a3;
- (SHSyncedLyrics)initWithLyricsStartDate:(id)a3 lines:(id)a4 songwriters:(id)a5;
- (SHSyncedLyricsDelegate)delegate;
- (double)fireTimeForLine:(id)a3;
- (double)offsetFromStartDate;
- (id)currentLyricLineForOffset:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPreCueDuration:(double)a3;
- (void)setTimeWarp:(double)a3;
- (void)startSyncing;
- (void)stopSyncing;
@end

@implementation SHSyncedLyrics

- (SHSyncedLyrics)initWithLyricsStartDate:(id)a3 lines:(id)a4 songwriters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHSyncedLyrics;
  v12 = [(SHSyncedLyrics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lyricsStartDate, a3);
    objc_storeStrong(&v13->_songwriters, a5);
    objc_storeStrong(&v13->_lines, a4);
    v13->_timeWarp = 1.0;
  }

  return v13;
}

- (SHSyncedLyrics)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"lines"];

  v9 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"songwriters"];

  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  [v5 decodeDoubleForKey:@"preCueDuration"];
  v15 = v14;
  [v5 decodeDoubleForKey:@"timeWarp"];
  v17 = v16;

  v18 = [(SHSyncedLyrics *)self initWithLyricsStartDate:v13 lines:v8 songwriters:v12];
  v19 = v18;
  if (v18)
  {
    v18->_preCueDuration = v15;
    v18->_timeWarp = v17;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  lines = self->_lines;
  v5 = a3;
  [v5 encodeObject:lines forKey:@"lines"];
  [v5 encodeObject:self->_songwriters forKey:@"songwriters"];
  [v5 encodeObject:self->_lyricsStartDate forKey:@"startDate"];
  [v5 encodeDouble:@"preCueDuration" forKey:self->_preCueDuration];
  [v5 encodeDouble:@"timeWarp" forKey:self->_timeWarp];
}

- (SHSyncedLyricsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = objc_storeWeak(&self->_delegate, a3);
  if (a3)
  {
    [(SHSyncedLyrics *)self startSyncing];
  }

  else
  {
    [(SHSyncedLyrics *)self stopSyncing];
  }
}

- (void)startSyncing
{
  [(SHSyncedLyrics *)self stopSyncing];
  v3 = [(SHSyncedLyrics *)self lines];
  v4 = [v3 count];

  if (v4)
  {
    [(SHSyncedLyrics *)self offsetFromStartDate];
    v6 = v5;
    v23 = [(SHSyncedLyrics *)self currentLyricLineForOffset:?];
    v7 = [(SHSyncedLyrics *)self lines];
    v8 = [v7 indexOfObject:v23];

    v9 = v23;
    if (v23)
    {
      v10 = [(SHSyncedLyrics *)self delegate];
      v11 = objc_opt_respondsToSelector();

      v9 = v23;
      if (v11)
      {
        v12 = [(SHSyncedLyrics *)self delegate];
        [v12 lyricsDidUpdateToLine:v23 atLineNumber:v8];

        v9 = v23;
      }
    }

    if (v9)
    {
      v13 = v8 + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(SHSyncedLyrics *)self lines];
    v15 = [v14 count];

    if (v15 > v13)
    {
      v16 = [(SHSyncedLyrics *)self lines];
      v17 = [v16 objectAtIndexedSubscript:v13];
      [(SHSyncedLyrics *)self timeToLine:v17 afterDuration:v6];
      v19 = v18;

      v20 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_startSyncing selector:0 userInfo:0 repeats:v19];
      [(SHSyncedLyrics *)self setTimer:v20];

      v21 = [MEMORY[0x277CBEB88] currentRunLoop];
      v22 = [(SHSyncedLyrics *)self timer];
      [v21 addTimer:v22 forMode:*MEMORY[0x277CBE738]];
    }
  }
}

- (double)offsetFromStartDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(SHSyncedLyrics *)self lyricsStartDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (double)fireTimeForLine:(id)a3
{
  [a3 offset];
  v5 = v4;
  [(SHSyncedLyrics *)self preCueDuration];
  v7 = v5 - v6;
  [(SHSyncedLyrics *)self timeWarp];
  return v7 * (1.0 / v8);
}

- (void)setPreCueDuration:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->_preCueDuration = a3;
}

- (void)setTimeWarp:(double)a3
{
  if (a3 > 0.0)
  {
    self->_timeWarp = a3;
  }
}

- (void)stopSyncing
{
  v3 = [(SHSyncedLyrics *)self timer];
  [v3 invalidate];

  [(SHSyncedLyrics *)self setTimer:0];
}

- (id)currentLyricLineForOffset:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SHSyncedLyrics *)self lines];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        [(SHSyncedLyrics *)self fireTimeForLine:v12];
        if (v13 > a3)
        {
          v8 = v11;
          goto LABEL_12;
        }

        v8 = v12;

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

@end