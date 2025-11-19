@interface TPMessageIndicatorViewModel
- (id)initWithMessage:(id)a3;
@end

@implementation TPMessageIndicatorViewModel

- (id)initWithMessage:(id)a3
{
  v3 = a3;
  [v3 duration];
  v5 = v4;
  v6 = [v3 identifier];
  v7 = [v6 stringValue];
  v8 = [v3 dataURL];
  v9 = [v3 thumbnailURL];
  v10 = [v3 transcript];
  v11 = [v10 text];
  v12 = [v3 isRead];
  v13 = [v3 isSensitive];
  v14 = [v3 messageType];

  LOBYTE(v17) = v14 == 2;
  v15 = [(TPMessageIndicatorViewModel *)self initWithDuration:v7 identifier:v8 mediaURL:v9 thumbnailURL:v11 transcriptSummary:v12 isRead:v13 isSensitive:v5 isVideo:v17 fromHandle:0];

  return v15;
}

@end