@interface CycleTrackingFinishSetupDataSource
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)pregnancyModelDidUpdate:(id)update;
- (void)shouldShowCycleTrackingEducationTileUpdatedWithDidUpdate:(BOOL)update;
@end

@implementation CycleTrackingFinishSetupDataSource

- (void)pregnancyModelDidUpdate:(id)update
{
  sub_29DF99968(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_29E2C3734();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29E2C3714();
  updateCopy = update;
  swift_retain_n();
  v10 = updateCopy;
  v11 = sub_29E2C3704();
  v12 = swift_allocObject();
  v13 = MEMORY[0x29EDCA390];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = self;
  sub_29E13C63C(0, 0, v7, &unk_29E2D5EF8, v12);
}

- (void)shouldShowCycleTrackingEducationTileUpdatedWithDidUpdate:(BOOL)update
{

  sub_29DF98578(update);
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  v5 = *self->analysis;
  *self->analysis = analysis;
  analysisCopy = analysis;
}

@end