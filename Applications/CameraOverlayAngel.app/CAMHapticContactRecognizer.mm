@interface CAMHapticContactRecognizer
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
@end

@implementation CAMHapticContactRecognizer

- (void)contactBeganWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001FF14();
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001F9AC(v4);
}

- (void)contactEndedWithAction:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001FD78(a3);
}

@end