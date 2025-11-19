@interface VOTMagnifierService
+ (VOTMagnifierService)shared;
+ (void)setShared:(id)a3;
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

+ (void)setShared:(id)a3
{
  v3 = qword_1001FE720;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_1001FF190;
  qword_1001FF190 = v4;

  _objc_release_x1(v4, v5);
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
  v2 = self;
  sub_100116B54(&MAGService.presentDetectionUI());
}

- (void)dismissDetectionUI
{
  v2 = self;
  sub_100116B54(&MAGService.dismissUI());
}

- (void)hideDetectionUI
{
  v2 = self;
  sub_100116B54(&MAGService.hideUI());
}

- (void)toggleDetectionUI
{
  v2 = self;
  sub_100116B54(&MAGService.toggleUI());
}

- (void)toggleTextDetection
{
  v2 = self;
  sub_100116B54(&MAGService.toggleTextDetection());
}

- (void)toggleFurnitureDetection
{
  v2 = self;
  sub_100116B54(&MAGService.toggleFurnitureDetection());
}

- (void)togglePeopleDetection
{
  v2 = self;
  sub_100116B54(&MAGService.togglePeopleDetection());
}

- (void)toggleDoorDetection
{
  v2 = self;
  sub_100116B54(&MAGService.toggleDoorDetection());
}

- (void)toggleImageDescriptions
{
  v2 = self;
  sub_100116B54(&MAGService.toggleImageDescriptions());
}

- (void)togglePointAndSpeak
{
  v2 = self;
  sub_100116B54(&MAGService.togglePointAndSpeak());
}

- (void)stopSpeech
{
  v2 = self;
  sub_100116B54(&MAGService.stopSpeech());
}

- (void)toggleCurrentActivity
{
  v2 = self;
  sub_100116B54(&MAGService.toggleCurrentActivity());
}

@end