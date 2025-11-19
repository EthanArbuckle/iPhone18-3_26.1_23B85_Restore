@interface AirpodsLogCollectorController
- (AirpodsLogCollectorController)init;
- (void)start;
@end

@implementation AirpodsLogCollectorController

- (void)start
{
  v2 = self;
  sub_100001090();
}

- (AirpodsLogCollectorController)init
{
  sub_10000447C();
  v3 = &self->pifLogSubDirectory[OBJC_IVAR___AirpodsLogCollectorController_pifLogSubDirectory];
  *v3 = 0xD00000000000002BLL;
  *(v3 + 1) = 0x8000000100004D70;
  self->pifLogSubDirectory[OBJC_IVAR___AirpodsLogCollectorController_failureEncountered] = 0;
  self->pifLogSubDirectory[OBJC_IVAR___AirpodsLogCollectorController_filesSkippedWithParsingErrors] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AirpodsLogCollectorController();
  return [(AirpodsLogCollectorController *)&v5 init];
}

@end