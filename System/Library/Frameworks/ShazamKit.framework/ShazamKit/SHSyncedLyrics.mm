@interface SHSyncedLyrics
- (SHSyncedLyrics)initWithCoder:(id)coder;
- (SHSyncedLyrics)initWithLyricsStartDate:(id)date lines:(id)lines songwriters:(id)songwriters;
- (SHSyncedLyricsDelegate)delegate;
- (double)fireTimeForLine:(id)line;
- (double)offsetFromStartDate;
- (id)currentLyricLineForOffset:(double)offset;
- (void)encodeWithCoder:(id)coder;
- (void)setDelegate:(id)delegate;
- (void)setPreCueDuration:(double)duration;
- (void)setTimeWarp:(double)warp;
- (void)startSyncing;
- (void)stopSyncing;
@end

@implementation SHSyncedLyrics

- (SHSyncedLyrics)initWithLyricsStartDate:(id)date lines:(id)lines songwriters:(id)songwriters
{
  dateCopy = date;
  linesCopy = lines;
  songwritersCopy = songwriters;
  v15.receiver = self;
  v15.super_class = SHSyncedLyrics;
  v12 = [(SHSyncedLyrics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lyricsStartDate, date);
    objc_storeStrong(&v13->_songwriters, songwriters);
    objc_storeStrong(&v13->_lines, lines);
    v13->_timeWarp = 1.0;
  }

  return v13;
}

- (SHSyncedLyrics)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"lines"];

  v9 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"songwriters"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  [coderCopy decodeDoubleForKey:@"preCueDuration"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"timeWarp"];
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

- (void)encodeWithCoder:(id)coder
{
  lines = self->_lines;
  coderCopy = coder;
  [coderCopy encodeObject:lines forKey:@"lines"];
  [coderCopy encodeObject:self->_songwriters forKey:@"songwriters"];
  [coderCopy encodeObject:self->_lyricsStartDate forKey:@"startDate"];
  [coderCopy encodeDouble:@"preCueDuration" forKey:self->_preCueDuration];
  [coderCopy encodeDouble:@"timeWarp" forKey:self->_timeWarp];
}

- (SHSyncedLyricsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v4 = objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
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
  lines = [(SHSyncedLyrics *)self lines];
  v4 = [lines count];

  if (v4)
  {
    [(SHSyncedLyrics *)self offsetFromStartDate];
    v6 = v5;
    v23 = [(SHSyncedLyrics *)self currentLyricLineForOffset:?];
    lines2 = [(SHSyncedLyrics *)self lines];
    v8 = [lines2 indexOfObject:v23];

    v9 = v23;
    if (v23)
    {
      delegate = [(SHSyncedLyrics *)self delegate];
      v11 = objc_opt_respondsToSelector();

      v9 = v23;
      if (v11)
      {
        delegate2 = [(SHSyncedLyrics *)self delegate];
        [delegate2 lyricsDidUpdateToLine:v23 atLineNumber:v8];

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

    lines3 = [(SHSyncedLyrics *)self lines];
    v15 = [lines3 count];

    if (v15 > v13)
    {
      lines4 = [(SHSyncedLyrics *)self lines];
      v17 = [lines4 objectAtIndexedSubscript:v13];
      [(SHSyncedLyrics *)self timeToLine:v17 afterDuration:v6];
      v19 = v18;

      v20 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_startSyncing selector:0 userInfo:0 repeats:v19];
      [(SHSyncedLyrics *)self setTimer:v20];

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      timer = [(SHSyncedLyrics *)self timer];
      [currentRunLoop addTimer:timer forMode:*MEMORY[0x277CBE738]];
    }
  }
}

- (double)offsetFromStartDate
{
  date = [MEMORY[0x277CBEAA8] date];
  lyricsStartDate = [(SHSyncedLyrics *)self lyricsStartDate];
  [date timeIntervalSinceDate:lyricsStartDate];
  v6 = v5;

  return v6;
}

- (double)fireTimeForLine:(id)line
{
  [line offset];
  v5 = v4;
  [(SHSyncedLyrics *)self preCueDuration];
  v7 = v5 - v6;
  [(SHSyncedLyrics *)self timeWarp];
  return v7 * (1.0 / v8);
}

- (void)setPreCueDuration:(double)duration
{
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  self->_preCueDuration = duration;
}

- (void)setTimeWarp:(double)warp
{
  if (warp > 0.0)
  {
    self->_timeWarp = warp;
  }
}

- (void)stopSyncing
{
  timer = [(SHSyncedLyrics *)self timer];
  [timer invalidate];

  [(SHSyncedLyrics *)self setTimer:0];
}

- (id)currentLyricLineForOffset:(double)offset
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  lines = [(SHSyncedLyrics *)self lines];
  v6 = [lines countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(lines);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        [(SHSyncedLyrics *)self fireTimeForLine:v12];
        if (v13 > offset)
        {
          v8 = v11;
          goto LABEL_12;
        }

        v8 = v12;

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [lines countByEnumeratingWithState:&v16 objects:v20 count:16];
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