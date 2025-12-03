@interface ASDDeviceAppFetcher.QueryObservation
- (NSString)description;
- (_TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation)init;
- (void)appQuery:(id)query resultsDidChange:(id)change;
@end

@implementation ASDDeviceAppFetcher.QueryObservation

- (NSString)description
{
  selfCopy = self;
  sub_2225E9448();

  v3 = sub_22261B1D0();

  return v3;
}

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  sub_2225D83D0(0, &qword_280D9F278, 0x277CEC328);
  v5 = sub_22261B2B0();
  v6 = *&self->taskScheduler[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_taskScheduler + 16];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_taskScheduler), *&self->taskScheduler[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_taskScheduler + 8]);
  v8 = *(&self->super.isa + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_observer);
  v7 = *&self->appQuery[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_observer];
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v5;
  selfCopy = self;

  sub_22261AF60();
}

- (_TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end