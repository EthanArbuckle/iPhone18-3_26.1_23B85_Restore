@interface MeteringSession
- (void)handleRecordingStateChanged:(id)changed;
@end

@implementation MeteringSession

- (void)handleRecordingStateChanged:(id)changed
{
  v3 = sub_18B6C400C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C3FEC();

  sub_18B5240C8(v7);

  (*(v4 + 8))(v7, v3);
}

@end