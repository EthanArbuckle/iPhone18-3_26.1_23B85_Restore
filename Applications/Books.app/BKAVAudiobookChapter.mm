@interface BKAVAudiobookChapter
- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInAudiobook;
- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInTrack;
- (BKAudiobook)audiobook;
- (BKAudiobookTrack)track;
- (NSString)description;
- (NSString)identifier;
- (void)dealloc;
- (void)setArtwork:(CGImage *)artwork;
- (void)setTimeRangeInAudiobook:(id *)audiobook;
- (void)setTimeRangeInTrack:(id *)track;
@end

@implementation BKAVAudiobookChapter

- (BKAudiobook)audiobook
{
  track = [(BKAVAudiobookChapter *)self track];
  audiobook = [track audiobook];

  return audiobook;
}

- (NSString)identifier
{
  assetURL = [(BKAVAudiobookChapter *)self assetURL];
  absoluteString = [assetURL absoluteString];

  if ([absoluteString length])
  {
    track = [(BKAVAudiobookChapter *)self track];
    audiobook = [track audiobook];
    chapters = [audiobook chapters];
    v8 = [chapters indexOfObject:self];

    uUIDString = [NSString stringWithFormat:@"%@.%ld", absoluteString, v8];
  }

  else
  {
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
  }

  return uUIDString;
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
  title = [(BKAVAudiobookChapter *)self title];
  author = [(BKAVAudiobookChapter *)self author];
  customTitle = [(BKAVAudiobookChapter *)self customTitle];
  [(BKAVAudiobookChapter *)self timeRangeInAudiobook];
  time = v12;
  Seconds = CMTimeGetSeconds(&time);
  [(BKAVAudiobookChapter *)self duration];
  v10 = [NSString stringWithFormat:@"<%@:%p title=%@ author=%@ customTitle=%@ range=(%.1lf, %.1lf)>", v4, self, title, author, customTitle, *&Seconds, v9];

  return v10;
}

- (void)setArtwork:(CGImage *)artwork
{
  CGImageRetain(artwork);
  CGImageRelease(self->_artwork);
  self->_artwork = artwork;
}

- ($C9B3965AAA5284750DDDB08D9AABF973)timeRangeInTrack
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setTimeRangeInTrack:(id *)track
{
  v3 = *&track->var0.var0;
  v4 = *&track->var1.var1;
  *&self->timeRangeInTrack.start.epoch = *&track->var0.var3;
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

- (void)setTimeRangeInAudiobook:(id *)audiobook
{
  v3 = *&audiobook->var0.var0;
  v4 = *&audiobook->var1.var1;
  *&self->timeRangeInAudiobook.start.epoch = *&audiobook->var0.var3;
  *&self->timeRangeInAudiobook.duration.timescale = v4;
  *&self->timeRangeInAudiobook.start.value = v3;
}

- (BKAudiobookTrack)track
{
  WeakRetained = objc_loadWeakRetained(&self->_track);

  return WeakRetained;
}

@end