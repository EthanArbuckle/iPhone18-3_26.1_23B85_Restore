@interface VOTMagnifierService
+ (VOTMagnifierService)shared;
+ (void)setShared:(id)shared;
- (VOTMagnifierService)init;
- (void)dismissDetectionUI;
- (void)hideDetectionUI;
- (void)showDetectionUI;
- (void)stopSpeech;
- (void)toggleCurrentActivity;
- (void)toggleDetectionUI;
- (void)toggleDoorDetection;
- (void)toggleFurnitureDetection;
- (void)toggleImageDescriptions;
- (void)togglePeopleDetection;
- (void)togglePointAndSpeak;
- (void)toggleTextDetection;
@end

@implementation VOTMagnifierService

+ (VOTMagnifierService)shared
{
  if (qword_1001FE720 != -1)
  {
    swift_once();
  }

  v3 = qword_1001FF190;

  return v3;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1001FE720;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_1001FF190;
  qword_1001FF190 = sharedCopy;

  _objc_release_x1(sharedCopy, v5);
}

- (VOTMagnifierService)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___VOTMagnifierService____lazy_storage___logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR___VOTMagnifierService_service) = [objc_allocWithZone(type metadata accessor for MAGService()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(VOTMagnifierService *)&v7 init];
}

- (void)showDetectionUI
{
  selfCopy = self;
  sub_100116B54(&MAGService.presentDetectionUI());
}

- (void)dismissDetectionUI
{
  selfCopy = self;
  sub_100116B54(&MAGService.dismissUI());
}

- (void)hideDetectionUI
{
  selfCopy = self;
  sub_100116B54(&MAGService.hideUI());
}

- (void)toggleDetectionUI
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleUI());
}

- (void)toggleTextDetection
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleTextDetection());
}

- (void)toggleFurnitureDetection
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleFurnitureDetection());
}

- (void)togglePeopleDetection
{
  selfCopy = self;
  sub_100116B54(&MAGService.togglePeopleDetection());
}

- (void)toggleDoorDetection
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleDoorDetection());
}

- (void)toggleImageDescriptions
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleImageDescriptions());
}

- (void)togglePointAndSpeak
{
  selfCopy = self;
  sub_100116B54(&MAGService.togglePointAndSpeak());
}

- (void)stopSpeech
{
  selfCopy = self;
  sub_100116B54(&MAGService.stopSpeech());
}

- (void)toggleCurrentActivity
{
  selfCopy = self;
  sub_100116B54(&MAGService.toggleCurrentActivity());
}

@end