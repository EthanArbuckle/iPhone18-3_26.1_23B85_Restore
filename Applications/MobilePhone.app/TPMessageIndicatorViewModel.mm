@interface TPMessageIndicatorViewModel
- (id)initWithMessage:(id)message;
@end

@implementation TPMessageIndicatorViewModel

- (id)initWithMessage:(id)message
{
  messageCopy = message;
  [messageCopy duration];
  v5 = v4;
  identifier = [messageCopy identifier];
  stringValue = [identifier stringValue];
  dataURL = [messageCopy dataURL];
  thumbnailURL = [messageCopy thumbnailURL];
  transcript = [messageCopy transcript];
  text = [transcript text];
  isRead = [messageCopy isRead];
  isSensitive = [messageCopy isSensitive];
  messageType = [messageCopy messageType];

  LOBYTE(v17) = messageType == 2;
  v15 = [(TPMessageIndicatorViewModel *)self initWithDuration:stringValue identifier:dataURL mediaURL:thumbnailURL thumbnailURL:text transcriptSummary:isRead isRead:isSensitive isSensitive:v5 isVideo:v17 fromHandle:0];

  return v15;
}

@end