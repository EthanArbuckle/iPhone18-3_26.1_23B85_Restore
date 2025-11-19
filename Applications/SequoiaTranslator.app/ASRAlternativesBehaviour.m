@interface ASRAlternativesBehaviour
- (BOOL)handleTapWithRecognizer:(id)a3;
- (void)asrAlternativeSelectedWithIndex:(int64_t)a3;
- (void)dealloc;
- (void)menuDidHideWithSender:(id)a3;
@end

@implementation ASRAlternativesBehaviour

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for ASRAlternativesBehaviour();
  [(ASRAlternativesBehaviour *)&v6 dealloc];
}

- (BOOL)handleTapWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100012674(v4);

  return self & 1;
}

- (void)asrAlternativeSelectedWithIndex:(int64_t)a3
{
  v4 = self;
  sub_1000127BC(a3);
}

- (void)menuDidHideWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001297C();

  sub_100008664(&v5);
}

@end