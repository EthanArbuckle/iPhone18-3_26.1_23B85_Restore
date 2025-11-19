@interface CycleHistoryDataSource
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)significantTimeChangeDidOccur:(id)a3;
@end

@implementation CycleHistoryDataSource

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v4 = *self->analysis;
  *self->analysis = a4;
  v5 = a4;

  v6 = v5;
  sub_29E2987F8(v6);
}

- (void)significantTimeChangeDidOccur:(id)a3
{
  v3 = sub_29E2BC3F4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BC3C4();

  sub_29E2991B4(v6);

  (*(v4 + 8))(v6, v3);
}

@end