@interface THEmptyNoteCardInfo
- (int64_t)compareToNoteCard:(id)card;
- (void)dealloc;
- (void)populateNoteCardBack:(id)back;
- (void)populateNoteCardFront:(id)front;
@end

@implementation THEmptyNoteCardInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THEmptyNoteCardInfo;
  [(THEmptyNoteCardInfo *)&v3 dealloc];
}

- (int64_t)compareToNoteCard:(id)card
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return 0;
}

- (void)populateNoteCardFront:(id)front
{
  v4 = [[THNoteCardEmptyLayer alloc] initWithStudyOptions:[(THEmptyNoteCardInfo *)self studyOptions] unfilteredContentAvailable:[(THEmptyNoteCardInfo *)self isUnfilteredContentAvailable] darkMode:[(THEmptyNoteCardInfo *)self darkMode]];
  [front setBodyLayer:v4];
}

- (void)populateNoteCardBack:(id)back
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THEmptyNoteCardInfo populateNoteCardBack:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNoteCardInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:317 description:@"no content to put on back of card"];
}

@end