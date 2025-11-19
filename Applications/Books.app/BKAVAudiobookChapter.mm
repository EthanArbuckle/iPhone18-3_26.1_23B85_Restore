@interface BKAVAudiobookChapter
- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInAudiobook;
- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInTrack;
- (BKAudiobook)audiobook;
- (BKAudiobookTrack)track;
- (NSString)description;
- (NSString)identifier;
- (void)dealloc;
- (void)setArtwork:(CGImage *)a3;
- (void)setTimeRangeInAudiobook:(id *)a3;
- (void)setTimeRangeInTrack:(id *)a3;
@end

@implementation BKAVAudiobookChapter

- (BKAudiobook)audiobook
{
  v2 = [(BKAVAudiobookChapter *)self track];
  v3 = [v2 audiobook];

  return v3;
}

- (NSString)identifier
{
  v3 = [(BKAVAudiobookChapter *)self assetURL];
  v4 = [v3 absoluteString];

  if ([v4 length])
  {
    v5 = [(BKAVAudiobookChapter *)self track];
    v6 = [v5 audiobook];
    v7 = [v6 chapters];
    v8 = [v7 indexOfObject:self];

    v9 = [NSString stringWithFormat:@"%@.%ld", v4, v8];
  }

  else
  {
    v10 = +[NSUUID UUID];
    v9 = [v10 UUIDString];
  }

  return v9;
}

- (void)dealloc
{
  CGImageRelease(self->_artwork);
  v3.receiver = self;
  v3.super_class = BKAVAudiobookChapter;
  [(BKAVAudiobookChapter *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKAVAudiobookChapter *)self title];
  v6 = [(BKAVAudiobookChapter *)self author];
  v7 = [(BKAVAudiobookChapter *)self customTitle];
  [(BKAVAudiobookChapter *)self timeRangeInAudiobook];
  time = v12;
  Seconds = CMTimeGetSeconds(&time);
  [(BKAVAudiobookChapter *)self duration];
  v10 = [NSString stringWithFormat:@"<%@:%p title=%@ author=%@ customTitle=%@ range=(%.1lf, %.1lf)>", v4, self, v5, v6, v7, *&Seconds, v9];

  return v10;
}

- (void)setArtwork:(CGImage *)a3
{
  CGImageRetain(a3);
  CGImageRelease(self->_artwork);
  self->_artwork = a3;
}

- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInTrack
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setTimeRangeInTrack:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->timeRangeInTrack.start.epoch = *&a3->var0.var3;
  *&self->timeRangeInTrack.duration.timescale = v4;
  *&self->timeRangeInTrack.start.value = v3;
}

- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInAudiobook
{
  v3 = *&self[3].var1.var1;
  *&retstr->var0.var0 = *&self[3].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var0.var0;
  return self;
}

- (void)setTimeRangeInAudiobook:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->timeRangeInAudiobook.start.epoch = *&a3->var0.var3;
  *&self->timeRangeInAudiobook.duration.timescale = v4;
  *&self->timeRangeInAudiobook.start.value = v3;
}

- (BKAudiobookTrack)track
{
  WeakRetained = objc_loadWeakRetained(&self->_track);

  return WeakRetained;
}

@end