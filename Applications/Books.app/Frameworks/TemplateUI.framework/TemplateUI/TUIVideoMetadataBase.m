@interface TUIVideoMetadataBase
- (TUIVideoMetadataBase)initWithMode:(unint64_t)a3 isMuted:(BOOL)a4 isPlaying:(BOOL)a5 mediaTimePlayed:(double)a6 mediaDuration:(double)a7 mediaId:(id)a8;
- (id)serialize;
- (id)videoModeAsString;
@end

@implementation TUIVideoMetadataBase

- (TUIVideoMetadataBase)initWithMode:(unint64_t)a3 isMuted:(BOOL)a4 isPlaying:(BOOL)a5 mediaTimePlayed:(double)a6 mediaDuration:(double)a7 mediaId:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = TUIVideoMetadataBase;
  v16 = [(TUIVideoMetadataBase *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_mode = a3;
    v16->_isMuted = a4;
    v16->_isPlaying = a5;
    v16->_mediaTimePlayed = a6;
    v16->_mediaDuration = a7;
    objc_storeStrong(&v16->_mediaId, a8);
  }

  return v17;
}

- (id)serialize
{
  v11[0] = @"videoMode";
  v3 = [(TUIVideoMetadataBase *)self videoModeAsString];
  v12[0] = v3;
  v11[1] = @"mediaTimePlayed";
  v4 = [NSNumber numberWithDouble:self->_mediaTimePlayed];
  v12[1] = v4;
  v11[2] = @"mediaDuration";
  v5 = [NSNumber numberWithDouble:self->_mediaDuration];
  v12[2] = v5;
  v11[3] = @"isMuted";
  v6 = [NSNumber numberWithBool:self->_isMuted];
  v12[3] = v6;
  v11[4] = @"isPlaying";
  v7 = [NSNumber numberWithBool:self->_isPlaying];
  v11[5] = @"mediaId";
  mediaId = self->_mediaId;
  v12[4] = v7;
  v12[5] = mediaId;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)videoModeAsString
{
  if (qword_2E6468 != -1)
  {
    sub_19B4C0();
  }

  v3 = qword_2E6460;
  mode = self->_mode;

  return [v3 objectAtIndexedSubscript:mode];
}

@end