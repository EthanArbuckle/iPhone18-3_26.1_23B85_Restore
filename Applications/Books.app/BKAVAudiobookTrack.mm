@interface BKAVAudiobookTrack
- (BKAVAudiobookTrack)initWithAssetURL:(id)l;
- (BKAudiobook)audiobook;
- (NSString)description;
- (void)dealloc;
- (void)setArtwork:(CGImage *)artwork;
@end

@implementation BKAVAudiobookTrack

- (BKAVAudiobookTrack)initWithAssetURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = BKAVAudiobookTrack;
  v6 = [(BKAVAudiobookTrack *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetURL, l);
    v8 = objc_opt_new();
    avChapters = v7->_avChapters;
    v7->_avChapters = v8;
  }

  return v7;
}

- (void)dealloc
{
  CGImageRelease(self->_artwork);
  v3.receiver = self;
  v3.super_class = BKAVAudiobookTrack;
  [(BKAVAudiobookTrack *)&v3 dealloc];
}

- (void)setArtwork:(CGImage *)artwork
{
  CGImageRetain(artwork);
  CGImageRelease(self->_artwork);
  self->_artwork = artwork;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  assetURL = [(BKAVAudiobookTrack *)self assetURL];
  title = [(BKAVAudiobookTrack *)self title];
  author = [(BKAVAudiobookTrack *)self author];
  artwork = [(BKAVAudiobookTrack *)self artwork];
  hasAlternateArtwork = [(BKAVAudiobookTrack *)self hasAlternateArtwork];
  [(BKAVAudiobookTrack *)self duration];
  v11 = [NSMutableString stringWithFormat:@"<%@:%p url=%@ title=%@ author=%@ artwork=%p hasAlternateArtwork=%d duration=%lf chapters=\n", v4, self, assetURL, title, author, artwork, hasAlternateArtwork, v10];

  v12 = [(NSMutableArray *)self->_avChapters count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      v15 = [(NSMutableArray *)self->_avChapters objectAtIndexedSubscript:v14];
      v16 = [v15 description];
      v17 = v16;
      if (--v13)
      {
        v18 = @",";
      }

      else
      {
        v18 = &stru_100A30A68;
      }

      [v11 appendFormat:@"  %@%@\n", v16, v18];

      ++v14;
    }

    while (v13);
  }

  [v11 appendFormat:@">"];

  return v11;
}

- (BKAudiobook)audiobook
{
  WeakRetained = objc_loadWeakRetained(&self->audiobook);

  return WeakRetained;
}

@end