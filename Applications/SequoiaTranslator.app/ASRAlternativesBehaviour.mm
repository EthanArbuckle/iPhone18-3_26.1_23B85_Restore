@interface ASRAlternativesBehaviour
- (BOOL)handleTapWithRecognizer:(id)recognizer;
- (void)asrAlternativeSelectedWithIndex:(int64_t)index;
- (void)dealloc;
- (void)menuDidHideWithSender:(id)sender;
@end

@implementation ASRAlternativesBehaviour

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ASRAlternativesBehaviour();
  [(ASRAlternativesBehaviour *)&v6 dealloc];
}

- (BOOL)handleTapWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = sub_100012674(recognizerCopy);

  return self & 1;
}

- (void)asrAlternativeSelectedWithIndex:(int64_t)index
{
  selfCopy = self;
  sub_1000127BC(index);
}

- (void)menuDidHideWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001297C();

  sub_100008664(&v5);
}

@end